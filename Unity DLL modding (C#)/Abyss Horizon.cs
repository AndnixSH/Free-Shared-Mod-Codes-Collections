//DamageCalculate
public static int CaculateCannonDamage(BoatUnit srcBoat, BoatUnit tagBoat, BoatGroup srcGroup, DamageBuff dmgBuff, bool isCritical)
{
	float num = dmgBuff.Buff_Damage(DamageType.Cannon, srcBoat, tagBoat);
	float num2 = dmgBuff.Buff_CriticalScale(srcBoat, tagBoat, isCritical);
	float num3 = (float)srcBoat.Pro_AdditionDamage * dmgBuff.Buff_AdditionBuff(srcBoat, tagBoat);
	float num4 = Singleton<BBuffManager>.Ins.m_fireCoe[tagBoat.BaseInfo.bodyType, srcBoat.BaseInfo.cannonType];
	float num5 = DamageCalculate.DefendValue((float)tagBoat.Pro_Defense, DamageType.Cannon);
	if (srcBoat.m_self)
	{
		return (int)(((float)srcBoat.Pro_Attack * num5 * num4 * dmgBuff.sailDirector * num2 + num3) * num) * Menu.AtkMul;
	}
	return (int)(((float)srcBoat.Pro_Attack * num5 * num4 * dmgBuff.sailDirector * num2 + num3) * num) / Menu.DefMul;
}

public static int CaculateFlightDamage(BoatUnit srcBoat, BoatUnit tagBoat, BoatGroup srcGroup, DamageBuff dmgBuff, bool isCritical)
{
	float num = dmgBuff.Buff_Damage(DamageType.Flight, srcBoat, tagBoat);
	float num2 = dmgBuff.Buff_CriticalScale(srcBoat, tagBoat, isCritical);
	float num3 = (float)srcBoat.Pro_AdditionDamage * dmgBuff.Buff_AdditionBuff(srcBoat, tagBoat);
	float num4 = DamageCalculate.DefendValue((float)tagBoat.Pro_AntiAir, DamageType.Flight);
	float num5 = Singleton<BBuffManager>.Ins.m_fireCoe[tagBoat.BaseInfo.bodyType, 1];
	float num6 = Singleton<BBuffManager>.Ins.m_fireCoe[tagBoat.BaseInfo.bodyType, 4];
	float num7 = (float)srcBoat.Self_Attack;
	float num8 = (float)srcBoat.Self_Thunder;
	float num9 = DamageCalculate.AirConsoleCoefficient[(int)srcGroup.m_airConsoleState];
	float num10 = 0f;
	float num11 = 0f;
	foreach (EquipEntity equipEntity in srcBoat.m_boat.Equips)
	{
		if (equipEntity != null)
		{
			if (equipEntity.GetBaseInfo().equipTypeID == 52)
			{
				num11 += (num8 + (float)equipEntity.GetPro_Thunder()) * num6;
				num10 += num3;
			}
			else if (equipEntity.GetBaseInfo().equipTypeID == 51)
			{
				num11 += (num7 + (float)equipEntity.GetPro_Attack()) * num5;
				num10 += num3;
			}
		}
	}
	if (srcBoat.m_self)
	{
		return (int)((num11 * num4 * num2 * num9 + num10) * num) * Menu.AtkMul;
	}
	return (int)((num11 * num4 * num2 * num9 + num10) * num) / Menu.DefMul;
}

public static int CaculateTorpedoDamage(BoatUnit srcBoat, BoatUnit tagBoat, BoatGroup srcGroup, DamageBuff dmgBuff, bool isCritical)
{
	float num = dmgBuff.Buff_Damage(DamageType.Torpedo, srcBoat, tagBoat);
	float num2 = dmgBuff.Buff_CriticalScale(srcBoat, tagBoat, isCritical);
	float num3 = (float)srcBoat.Pro_AdditionDamage * dmgBuff.Buff_AdditionBuff(srcBoat, tagBoat);
	float num4 = Singleton<BBuffManager>.Ins.m_fireCoe[tagBoat.BaseInfo.bodyType, 4];
	float num5 = DamageCalculate.DefendValue((float)tagBoat.Pro_Defense, DamageType.Torpedo);
	int pro_Thunder = srcBoat.Pro_Thunder;
	if (srcBoat.m_self)
	{
		return (int)(((float)srcBoat.Pro_Thunder * num5 * num4 * dmgBuff.sailDirector * num2 + num3) * num) * Menu.AtkMul;
	}
	return (int)(((float)srcBoat.Pro_Thunder * num5 * num4 * dmgBuff.sailDirector * num2 + num3) * num) / Menu.DefMul;
}

public static int GetAuxiliaryGunDamage(BoatUnit srcUnit, BoatUnit targetUnit, float distanceCoe, DamageBuff dmgBuff)
{
	float num = (float)srcUnit.Pro_AdditionDamage * dmgBuff.Buff_AdditionBuff(srcUnit, targetUnit);
	if (srcUnit.m_self)
	{
		return Mathf.FloorToInt(((float)srcUnit.Pro_AuxiliaryAttack * DamageCalculate.DefendValue((float)(targetUnit.Pro_Defense + targetUnit.m_boat.m_def_auxi), DamageType.Auxiliary) + num) * distanceCoe * targetUnit.m_auxiSkillCoe * dmgBuff.Auxi_Percent(srcUnit, targetUnit)) * Menu.AtkMul;
	}
	return Mathf.FloorToInt(((float)srcUnit.Pro_AuxiliaryAttack * DamageCalculate.DefendValue((float)(targetUnit.Pro_Defense + targetUnit.m_boat.m_def_auxi), DamageType.Auxiliary) + num) * distanceCoe * targetUnit.m_auxiSkillCoe * dmgBuff.Auxi_Percent(srcUnit, targetUnit)) / Menu.DefMul;
}