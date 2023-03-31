-- @Battle.BattleDataUnit.lua
function BattleDataUnit:getAttributeValue(attribute)
	local retValue = 0
	if attribute == G.GameAttributes.ATK then
		if self._side == BattleConfig.SIDE_LEFT then
			retValue = self:getAtk() * 999
		else 
			retValue = self:getAtk() / 999
		end
	elseif attribute == G.GameAttributes.DEF then
		retValue = self:getDef()
	elseif attribute == G.GameAttributes.NNATK then
		retValue = self:getNnAtk()
	elseif attribute == G.GameAttributes.NNDEF then
		retValue = self:getNnDef()
	elseif attribute == G.GameAttributes.MAGICATK then
		retValue = self:getMagicAtk()
	elseif attribute == G.GameAttributes.MAGICDEF then
		retValue = self:getMagicDef()
	elseif attribute == G.GameAttributes.CRIT then
		retValue = self:getCrit()
	elseif attribute == G.GameAttributes.DODGE then
		retValue = self:getDodge()
	elseif attribute == G.GameAttributes.HIT then
		retValue = self:getHit()
	elseif attribute == G.GameAttributes.HPMAX then
		retValue = self:getHpMax()
	elseif attribute == G.GameAttributes.LIFE_STEAL then
		retValue = self:getLifeSteal()
	end
	return retValue
end