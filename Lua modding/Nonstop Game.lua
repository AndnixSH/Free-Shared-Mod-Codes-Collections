--File: GameState.BSM.BattleEvaluators.lua
Utils.ProcessDMG = function(field, caster, receiver, value, info, actionInfo, status, factor, isPostEfxs)
    local tb = {}
    if
        caster.team == receiver.team and
        info ~= nil and info.TARGET ~= B.Constants.Target.SELF and
        not caster:HasRawBuff(B.Constants.Effect.CONFUSED)
    then
        return tb
    end

    if status == nil or factor == nil then
        status, factor = _GetEffectStatus(field, caster, receiver)
    end

    --
    if actionInfo ~= nil and actionInfo.TRIGGER == B.Constants.Condition.MANUAL then
        factor = factor + caster:Get(field, 'SKILL_DMG_RATE')
    end

    if _IsRaceSuperior(field, caster, receiver) then
        factor = factor + B.Constants.PRECISION * 0.3 +  caster:Get(field, 'TYPE_ADV_RATE')
    end

    if receiver.data.RACE == B.Constants.Race.MACHINE then
        factor = factor + caster:Get(field, 'ADD_DMG_MACHINE_RATE')
    elseif receiver.data.RACE == B.Constants.Race.BIO then
        factor = factor + caster:Get(field, 'ADD_DMG_BIO_RATE')
    elseif receiver.data.RACE == B.Constants.Race.GENE then
        factor = factor + caster:Get(field, 'ADD_DMG_GENE_RATE')
    elseif receiver.data.RACE == B.Constants.Race.ALIEN then
        factor = factor + caster:Get(field, 'ADD_DMG_ALIEN_RATE')
    elseif receiver.data.RACE == B.Constants.Race.MYTH then
        factor = factor + caster:Get(field, 'ADD_DMG_MYTH_RATE')
    end

    if caster:HasRawBuff(B.Constants.Effect.BOOM_ENERGY) then
        for _, v in ipairs(caster:GetBuffs('BOOM_ENERGY')) do
            factor = factor + v['ARG_1']
        end
    end

    local reduceRate = receiver:Get(field, 'DMG_REDUCE_RATE')
    if receiver.data.POSITION > 2 then
        local buffs = receiver:GetBuffs('REAR_DMG_REDUCE_RATE_UP')
        if #buffs > 0 then
            for _, v in ipairs(field:GetHeroes(receiver.team)) do
                if v.data.POSITION <= 2 and v:IsAlive() then
                    local z = reduceRate
                    for _, w in ipairs(buffs) do
                        reduceRate = reduceRate + w['ARG_1']
                    end
                    break
                end
            end
        end
    end

    -- Orig:
	factor = factor / (1 + math.max(0, B.Constants.PERCENTAGE(reduceRate)))
	-- Mod:
	if caster.team == B.Constants.Team.PLAYER then
		factor = factor * (100 + math.max(0, B.Constants.PERCENTAGE(reduceRate)))
	else
		factor = factor / (99999 + math.max(0, B.Constants.PERCENTAGE(reduceRate)))
	end

    local weakExtraRate = 0
    if receiver:HasRawBuff(B.Constants.Effect.WEAK) then
        for _, v in ipairs(receiver:GetBuffs('WEAK')) do
            weakExtraRate = weakExtraRate + v['ARG_1']
        end
    end

    if caster ~= nil then
        if receiver:HasRawBuff(B.Constants.Effect.WEAK_SELF) then
            for _, v in ipairs(receiver:GetBuffs('WEAK_SELF')) do
                if v['CASTER'] == caster.id then
                    weakExtraRate = weakExtraRate + v['ARG_1']
                end
            end
        end
    end

    factor = factor * (1 +  B.Constants.PERCENTAGE(weakExtraRate))

    if receiver:HasBuff('IMMUNE_ALL', 'IMMUNE_ALL_DIE', 'IMMUNE_DAMAGE') then
        factor = 0
        status = B.Constants.EffectStatus.INVINCIBLE
    end

    if factor > 0 then
        if receiver:HasBuff('IMMUNE_DAMAGE_ONCE') then
            factor = 0
            status = B.Constants.EffectStatus.INVINCIBLE

            table.append(tb, Utils.ProcessDISPEL(field, caster, receiver, nil, function(v)
                return v['TYPE'] == B.Constants.Effect.IMMUNE_DAMAGE_ONCE
            end))
        end
    end

    if factor > 0 then
        local slosh = field.rand:Next(B.Constants.PRECISION * 0.2) - B.Constants.PRECISION * 0.1
        value = math.max(math.ceil(value * B.Constants.PERCENTAGE(factor + slosh)), 1)
    else
        value = 0
    end

    if value > 0 then
        if receiver:HasRawBuff(B.Constants.Effect.SHIELD_HP) then
            local lastValue = value
            for _, v in ipairs(receiver:GetBuffs('SHIELD_HP')) do
                if v['ARG_1'] > 0 and value > 0 then
                    if v['ARG_1'] > value then
                        v['ARG_1'] = v['ARG_1'] - value
                        value = 0
                    else
                        v['ARG_1'] = 0
                        value = value - v['ARG_1']
                    end
                end
            end

            factor = factor * value / lastValue
            status = B.Constants.EffectStatus.SHIELD

            table.append(tb, Utils.ProcessDISPEL(field, nil, receiver, 9999, function(v)
                return v['TYPE'] == B.Constants.Effect.SHIELD_HP and v['ARG_1'] <= 0
            end))
        end
    end

    local tb2, realDMG = Utils.ProcessREAL_DMG(field, caster, receiver, value, actionInfo, status, factor, isPostEfxs)
    table.append(tb, tb2)
    return tb, realDMG
end