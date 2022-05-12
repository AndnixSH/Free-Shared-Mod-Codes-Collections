//Game: 吞食天下_吞食天下公益服_变态版吞食天下无限元宝服_吞食天下官网_3733手机游戏
//Version: 0.4.2
//APK: Game has been deleted

//BattleSystem.dll

//Call mod menu
//Class: UIRoot
public void OnGUI()
{
	ModMenu.OnGUI();
}

//Class: BattleUtils
public static double CalculateDamage(BattleRoleData casterData, BattleRoleData targetData, BattleRoleDef.eRoleAtkType atkType, double atkFactor, BattleRoleDef.eRoleProp extraProp, double extraPropFactor, double fixDamage, double targetArmorRate, bool ignorDef = false, List<DamageEffect.ExtraPro> extra = null, uint level = 0U, uint passiveLevel = 0U, uint extraLv = 0U)
{
	//GOD MODE
	if (ModMenu.hack2 && casterData.DB.RoleUnitType == BattleRoleDef.eRoleUnitType.Enemy)
	{
		return 0.0;
	}
	if (ModMenu.hack2 && casterData.DB.RoleUnitType == BattleRoleDef.eRoleUnitType.BOSS)
	{
		return 0.0;
	}
	double num;
	if (atkType == BattleRoleDef.eRoleAtkType.Physical && BattleUtils.checkGod(targetData[BattleRoleDef.eRoleProp.God], BattleRoleDef.eRoleGodType.SuperPhysical))
	{
		num = 0.0;
	}
	else if (atkType == BattleRoleDef.eRoleAtkType.Magic && BattleUtils.checkGod(targetData[BattleRoleDef.eRoleProp.God], BattleRoleDef.eRoleGodType.SuperMagic))
	{
		num = 0.0;
	}
	else
	{
		double num2 = 0.0;
		double num3 = 0.0;
		double num4 = 0.0;
		if (atkType != BattleRoleDef.eRoleAtkType.Physical)
		{
			if (atkType == BattleRoleDef.eRoleAtkType.Magic)
			{
				double num5 = (double)(casterData[BattleRoleDef.eRoleProp.Attack] - targetData[BattleRoleDef.eRoleProp.BeMHurtAttackAdd]);
				num3 = (ignorDef ? 0.0 : ((double)(targetData[BattleRoleDef.eRoleProp.MArmor] - casterData[BattleRoleDef.eRoleProp.MPiercing]) * targetArmorRate));
				num4 = num5 * atkFactor + fixDamage;
				num4 += ((extraProp == BattleRoleDef.eRoleProp.Null) ? 0.0 : ((double)casterData[extraProp] * extraPropFactor));
				if (extra != null)
				{
					foreach (DamageEffect.ExtraPro extraPro in extra)
					{
						num4 += (double)casterData[extraPro.ExtraProp] * extraPro.ExtraPropFactor.Get(level, passiveLevel, extraLv, casterData.FuseSkill);
					}
				}
				num2 = num4;
				num2 /= 1.0 + num3 / (double)casterData[BattleRoleDef.eRoleProp.MAttackStrength];
				num2 = Math.Max(num2, 1.0);
			}
		}
		else
		{
			double num6 = (double)(casterData[BattleRoleDef.eRoleProp.Attack] - targetData[BattleRoleDef.eRoleProp.BePHurtAttackAdd]);
			num3 = (ignorDef ? 0.0 : ((double)(targetData[BattleRoleDef.eRoleProp.PArmor] - casterData[BattleRoleDef.eRoleProp.PPiercing]) * targetArmorRate));
			num4 = num6 * atkFactor + fixDamage;
			num4 += ((extraProp == BattleRoleDef.eRoleProp.Null) ? 0.0 : ((double)casterData[extraProp] * extraPropFactor));
			if (extra != null)
			{
				foreach (DamageEffect.ExtraPro extraPro2 in extra)
				{
					num4 += (double)casterData[extraPro2.ExtraProp] * extraPro2.ExtraPropFactor.Get(level, passiveLevel, extraLv, casterData.FuseSkill);
				}
			}
			num2 = num4;
			num2 /= 1.0 + num3 / (double)casterData[BattleRoleDef.eRoleProp.PAttackStrength];
			num2 = MathEx.Max(num2, 1.0);
		}
		num = num2;
	}
	//x100 DMG
	if (ModMenu.hack1 && casterData.DB.RoleUnitType == BattleRoleDef.eRoleUnitType.HeroRole)
	{
		return num * 100.0;
	}
	return num;
}