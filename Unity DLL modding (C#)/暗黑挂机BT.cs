//Game: 暗黑挂机BT
//Version: 2.0.3
//APK: (Game removed)

//UIRoot
public void OnGUI()
{
	ModMenu.OnGUI();
}

//BattleLogic
public static BigDecimal CalculateClickDamage(BaseBattleInfo attackerInfo, BaseBattleInfo defenderInfo, out bool isCritical, out bool isParry, float extraDMGMultiplier, float awakePowerMultiStrikeMultiplier)
{
	if (!defenderInfo.isGoblin)
	{
		double num = Math.Pow(1.05, Math.Log((double)(attackerInfo.criticalRate / defenderInfo.parryRate) + 1.0, 2.0)) - 1.0;
		double num2 = Math.Pow(1.05, Math.Log((double)(defenderInfo.parryRate / attackerInfo.criticalRate) + 1.0, 2.0)) - 1.0;
		float num3 = (!(attackerInfo is PlayerBattleInfo)) ? 0f : (attackerInfo as PlayerBattleInfo).extraCriticalRate;
		float num4 = (!(defenderInfo is PlayerBattleInfo)) ? 0f : (defenderInfo as PlayerBattleInfo).extraParryRate;
		num += (double)(num3 / 100f - num4 / 100f);
		num2 += (double)(num4 / 100f - num3 / 100f);
		num = Math.Max(num, 0.0);
		num2 = Math.Max(num2, 0.0);
		num = Math.Min(num, 0.95);
		num2 = Math.Min(num2, 0.75);
		BigDecimal bigDecimal = 0;
		isCritical = false;
		isParry = false;
		float num5 = Random.Range(0f, 1f);
		if ((double)num5 < num)
		{
			bigDecimal = attackerInfo.criticalDamage;
			isCritical = true;
			isParry = false;
		}
		else if ((double)num5 > 1.0 - num2)
		{
			bigDecimal = -defenderInfo.parryDamage;
			isCritical = false;
			isParry = (bigDecimal < 0);
		}
		else
		{
			bigDecimal = 0;
			isCritical = false;
			isParry = false;
		}
		BigDecimal bigDecimal2 = attackerInfo.damageAttack - defenderInfo.damageReduction + bigDecimal;
		bigDecimal2 *= (double)extraDMGMultiplier;
		bigDecimal2 *= (double)awakePowerMultiStrikeMultiplier;
		if (bigDecimal2 < 0)
		{
			bigDecimal2 = 0;
		}
		if (!defenderInfo.isImmortal && !defenderInfo.isGoblin)
		{
			//////
			if (ModMenu.hack1)
			{
				if (defenderInfo is PlayerBattleInfo)
				{
					defenderInfo.recentHP -= bigDecimal2 * 0;
				}
				else
				{
					defenderInfo.recentHP -= bigDecimal2 * 1000;
				}
			}
			
			if (BT.toggle1 && !(defenderInfo is PlayerBattleInfo))
			{
				defenderInfo.recentHP -= bigDecimal2 * 1000;
			}
			else if (BT.toggle2 && defenderInfo is PlayerBattleInfo)
			{
				defenderInfo.recentHP -= bigDecimal2 * 0;
			}
			
			//////
			else
			{
				defenderInfo.recentHP -= bigDecimal2;
			}
			if (defenderInfo.recentHP < 0)
			{
				defenderInfo.recentHP = 0;
			}
		}
		else
		{
			defenderInfo.accumulatedDamage += bigDecimal2;
		}
		return bigDecimal2;
	}
	...
}