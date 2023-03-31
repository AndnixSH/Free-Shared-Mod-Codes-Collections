-- AttackCommand.lua

function slot7.Damage(slot0, slot1, slot2, slot3, slot4, slot5, slot6, slot7)
	slot8 = nil
	slot9 = slot1.entities[slot6]
	if slot2.team.playerIndex == 1 then
		slot12 = slot1:CauseDamage(slot1:CalculateBasicAttackDamage(slot2, slot9, slot4, slot5, (not slot7 or slot3.scaler[1]) and slot3.scaler[2]) / 999, slot6, slot2.entityId
	else
		slot12 = slot1:CauseDamage(slot1:CalculateBasicAttackDamage(slot2, slot9, slot4, slot5, (not slot7 or slot3.scaler[1]) and slot3.scaler[2]) * 999, slot6, slot2.entityId)
	end
	slot12.targetId = slot6
	slot12.targetIndex = slot1:SerializeToIndex(slot9.position.x, slot9.position.y)

	return slot12
end
