-- Decrypt lua by yourself

-- File: @Battle.game.common.logic.sprite.basic.sprite_hp_b_logic.lua
function logic:skill_damage(fromobj, toobj, rate, cast_table, source_table)

    local damage_type = fromobj.static.class == HERO_CLASS.MENTALITY and DAMAGE_TYPE.MAGIC or DAMAGE_TYPE.PHYSICS
    fromobj:sendmessage(eventdef.before_skill_damage, { fromobj = fromobj, toobj = toobj, damage_type = damage_type, source = source_table })
    local final_damage, crit = self:_total_hurt(fromobj, toobj, rate, cast_table)
    local damage_table = { fromobj = fromobj, toobj = toobj, value = final_damage, crit = crit, damage_type = damage_type, source = source_table }
    local mdf_table = fromobj:callmessage(eventdef.check_skill_damage, damage_table)
    if mdf_table ~= nil then
        if type(mdf_table) == 'table' then
            for k, v in pairs(mdf_table) do
                damage_table[k] = v
            end
        else
            global.debug.warning("check_skill_damage返回值不是一个table", source_table.castid)
            if not mdf_table then -- 兼容旧写法false返回无伤害
                return
            end
        end
    end

    final_damage, crit = damage_table.value, damage_table.crit
    if final_damage <= 0 then -- 伤害小于0
        return
    end
	
	--self:change_hp(fromobj, toobj, -final_damage, crit, cast_table.battack_mp_add)
	-------------------- Mod here --------------------
	if (fromobj.prop.camp == 1) then
	    self:change_hp(fromobj, toobj, -(final_damage * 99), crit, cast_table.battack_mp_add)
	else
	    self:change_hp(fromobj, toobj, -(final_damage / 99), crit, cast_table.battack_mp_add)
	end
	--------------------------------------------------
	
    fromobj:sendmessage(eventdef.skill_damage, damage_table)
    -- 驱散buff
    local disperselist = fromobj.caller.hp:get_buffdisperse()
    if disperselist and toobj.caller.buff then
        for i, disperse_table in ipairs(disperselist) do
            toobj.caller.buff:disperse(disperse_table.type, disperse_table.count, self.owner)
        end
    end

    -- 吸血
    local leech = tsmath.floor(final_damage * (fromobj.attr.leech / LEECH_CONST.A + (fromobj.attr.leech_rate - fromobj.attr.leech_rate_d) / 1000))
    self:heal(fromobj, fromobj, leech)
    -- 技能吸血
    local skill_leach = tsmath.floor(final_damage * (fromobj.attr.skill_leech_rate / 1000))
    self:heal(fromobj, fromobj, skill_leach)
    fromobj:sendmessage(eventdef.skill_leach, { leech = leech, skill_leach = skill_leach })

end

function logic:_total_hurt(fromobj, toobj, rate, cast_table)

    local dmgtype = fromobj.static.class == HERO_CLASS.MENTALITY and DAMAGE_TYPE.MAGIC or DAMAGE_TYPE.PHYSICS
    local attr = CONST.ATTR[cast_table.attr] or "atk"
    local skill_damage = -tsmath.rate(cast_table.target == 1 and fromobj.attr[attr] or toobj.attr[attr], rate)
    local targetdef = (cast_table.ignore_def == 1) and 1 or toobj.attr.def
    if targetdef < 0 then targetdef = 1 end
    local basic_damage = tsmath.floor(tsmath.pow(skill_damage, DMG_CONST.A) / (skill_damage + DMG_CONST.B * targetdef))
    -- print('cast_table', global.debug.table(cast_table))
    -- print('skill_damage', skill_damage)
    -- print('basic_damage', basic_damage)


    local level_diff = fromobj.attr.level - toobj.attr.level
    -- 等级修正
    local level_rate = DMG_CONST.D
    if level_diff > DMG_CONST.I then
        level_rate = (level_diff <= DMG_CONST.G and DMG_CONST.D or DMG_CONST.E) + tsmath.pow(level_diff, 2) / DMG_CONST.F
        level_rate = tsmath.clamp(level_rate, 0, DMG_CONST.J)
    end

    -- 增减益修正
    local addition_rate = fromobj.attr.dmg_rate - fromobj.attr.dmg_rate_d + toobj.attr.harm_rate - toobj.attr.harm_rate_d
    if dmgtype == DAMAGE_TYPE.PHYSICS then
        addition_rate = addition_rate + toobj.attr.pharm_rate - toobj.attr.pharm_rate_d
    elseif dmgtype == DAMAGE_TYPE.MAGIC then
        addition_rate = addition_rate + toobj.attr.mharm_rate - toobj.attr.mharm_rate_d
    else
        global.debug.error("非法技能伤害类型", dmgtype)
    end
    addition_rate = tsmath.max(addition_rate, -950)

    -- 阵营修正
    local race_rate = 0
    if fromobj.static.race_suppress == toobj.static.race then
        race_rate = fromobj.attr.suppress_rate + DMG_CONST.C
    end

    -- print('level_rate', level_rate)
    -- print('addition_rate', addition_rate)
    -- print('race_rate', race_rate)


    local final_damage = tsmath.floor(basic_damage * level_rate)
    final_damage = final_damage + tsmath.rate(final_damage, addition_rate)
    final_damage = final_damage + tsmath.rate(final_damage, race_rate)
    cast_table.final_rate = cast_table.final_rate or 1000
    cast_table.final_rate = tsmath.max(0, cast_table.final_rate)
    final_damage = tsmath.rate(final_damage, cast_table.final_rate)

    -- 是否暴击
    local crit = false
    if cast_table.must_crit == 1 or fromobj.buff.must_hit then
        crit = true
    else
        local crit_prob = CRIT_CONST.A + fromobj.attr.crit_rate - toobj.attr.crit_resist_rate + (toobj.attr.trigger_crit_rate or 0)
        crit_prob = tsmath.clamp(crit_prob, CRIT_CONST.D, CRIT_CONST.C)
        crit = tsmath.random_match(crit_prob)
    end

    if crit then
        final_damage = tsmath.rate(final_damage, CRIT_CONST.B + fromobj.attr.crit)
    end

    final_damage = tsmath.max(DMG_CONST.H, final_damage)
    final_damage = adjust_damage(final_damage, fromobj)
    gamelog.level(2).sprite(fromobj, toobj, setmetatable({ skill_damage = skill_damage, basic_damage = basic_damage, level_rate = level_rate, addition_rate = addition_rate, race_rate = race_rate, final_damage = final_damage, final_rate = cast_table.final_rate, crit = crit }, dmgmt))
	
	-------------------- Mod here --------------------
	if fromobj.prop.camp == CAMP.RED then
	    final_damage = final_damage * 99
    else
	    final_damage = final_damage / 99
	end
	    final_damage = tsmath.floor(final_damage)
	--------------------------------------------------
	
    return final_damage, crit
end