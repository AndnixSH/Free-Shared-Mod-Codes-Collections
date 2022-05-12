//Game: 惡搞三國 : Q版三國無雙策略遊戲
//Version: 4.0.1
//APK: https://apkpure.com/%E6%83%A1%E6%90%9E%E4%B8%89%E5%9C%8B-q%E7%89%88%E4%B8%89%E5%9B%BD%E7%84%A1%E9%9B%99%E7%AD%96%E7%95%A5%E5%8D%A1%E7%89%8C/com.youkia.sanguogotcn.ig

//UIRoot
//SystemMirror.Run();
public void OnGUI()
{
	ModMenu.OnGUI();
}

//BattleSystem.dll
//BattleUtils
public static double CalculateDamage(BattleRoleData casterData, BattleRoleData targetData, BattleRoleDef.eRoleAtkType atkType, double atkFactor, BattleRoleDef.eRoleProp extraProp, double extraPropFactor, double fixDamage, double targetArmorRate, bool ignorDef = false, List<DamageEffect.ExtraPro> extra = null, uint level = 0U, uint passiveLevel = 0U, uint extraLv = 0U)
{
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
		if (targetData.Uid == "UID1041_3_0")
		{
			BattleLog.Info(new object[]
			{
				""
			});
		}
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
	if (ModMenu.hack1 && casterData.DB.RoleUnitType == BattleRoleDef.eRoleUnitType.HeroRole)
	{
		return num * 100.0;
	}
	return num;
}