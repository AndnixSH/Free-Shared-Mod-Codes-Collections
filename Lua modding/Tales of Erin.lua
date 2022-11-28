--BattleDamageCompute.lua

-----------------------------------------1级私有函数-----------------------------------------

--普通攻击.dmgType为0
function BattleDamageCompute:computeDamage_NormalAttack(attacker,defender,hitData,isCrit)
    if not hitData then --忍受不了各种配错表取不到数据了，没数据时暂时不管了
        return
    end

    local atk = self:getSoloATK(attacker.attributeManager:getAttack() * (100 + attacker.attr[AE.add_atk_normal]) * hitData/10000) if attacker.entityType == 2 or attacker.isBoss then atk = atk / 100 else atk = atk * 100 end
	
	--orig
	local atk = self:getSoloATK(attacker.attributeManager:getAttack() * (100 + attacker.attr[AE.add_atk_normal]) * hitData/10000)



--技能（包含常规技能和神格技能） dmgType可能是除治疗和固定伤害外的任意类型。
function BattleDamageCompute:computeDamage_Skill(type,attacker,defender,skillData,hitData,isCrit,dmgType)
    --基础伤害
    local dmg
    if type == 1 then
        dmg = self:getBaseDmg_Skill(attacker,defender,skillData,hitData,isCrit)
    elseif type == 2 then
        dmg = self:getBaseDmg_PrincessSkill(attacker,defender,skillData,hitData,isCrit)
    else
        print("出错了 computeDamage_Skill")
		end if attacker.entityType == 2 or attacker.isBoss then dmg = dmg / 100 else dmg = dmg * 100
    end
	
--BattleGlobals.lua
--EntityType
BattleGlobals.EntityType = {}
BattleGlobals.EntityType.Role = 1;
BattleGlobals.EntityType.Monster = 2;