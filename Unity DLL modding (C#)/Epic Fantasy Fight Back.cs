//Game: Epic Fantasy Fight Back
//Version: 1.0.1
//APK: https://apkpure.com/epic-fantasy-fight-back/com.wzfs01.epicfantasy

//Class: UIRoot
public void OnGUI()
{
	ModMenu.ButtonMenu();
}

//Class: BattleCalculator
public static float CalculateAttack(FightForce attackerForce, BattleCommon.ePlayerType attackType, FightForce targetForce, BattleCommon.ePlayerType targetType, SkillCfgWraper cfg, ref bool isCritical)
		{
			float num;
			// God mode
			if (ModMenu.toggle2)
			{
				if (CharacterUtil.IsMonster(attackType))
				{
					return 0f;
				}
				if (targetForce == null || attackerForce == null || cfg == null)
				{
					return 0f;
				}
				num = 0f;
				int num2 = (targetForce.level != 0) ? targetForce.level : 1;
				float num3 = (float)(80 * num2);
				isCritical = BattleCalculator.IsCritical;
				Tuple<int, float> atkAndDef = BattleCalculator.AtkAndDefFormula.Instance.GetAtkAndDef(cfg.m_SkillType, attackerForce, attackType, targetForce, targetType);
				int p = atkAndDef.p1;
				float p2 = atkAndDef.p2;
				float num4 = 0f;
				if (CharacterUtil.IsMonster(attackType))
				{
					num4 = Mathf.Max((float)(attackerForce.level - GameData.MainRole.Level) * 0.05f, 0f);
				}
				if (CharacterUtil.IsMonster(targetType))
				{
					num4 = Mathf.Max(Math.Min((float)(GameData.MainRole.Level - targetForce.level) * 0.05f, 0f), -0.95f);
				}
				num = (Mathf.Max(cfg.SkillRate * (float)p + (float)cfg.SkillDamage - p2, 0f) + (float)cfg.ExtraDamage) * (1f + (attackerForce.attackHurt - (float)targetForce.cutHurt) / 10000f) * (1f + num4);
				if (isCritical)
				{
					num *= Mathf.Max(1.5f, 2f + (float)attackerForce.criticalHurt * 0.00025f - (float)targetForce.cutCritHurt * 0.00033f);
				}
				if (num <= (float)p * 0.2f)
				{
					if (CharacterUtil.IsMonster(attackType) || CharacterUtil.IsMonster(targetType))
					{
						float a = Mathf.Max(num4, 0.1f);
						float b = (float)((double)num * 0.9 / (double)((float)p * cfg.SkillRate + (float)cfg.SkillDamage + p2) + 0.1);
						num = (float)p * Mathf.Max(a, b);
					}
					else
					{
						float num5 = Mathf.Max(0.1f, ((float)p * cfg.SkillRate + (float)cfg.SkillDamage - p2) * 0.9f / ((float)p * cfg.SkillRate + (float)cfg.SkillDamage + p2) + 0.1f);
						num = (float)p * num5;
					}
				}
				else if (CharacterUtil.IsMonster(attackType) || CharacterUtil.IsMonster(targetType))
				{
					num = Math.Max(num, (float)p * num4);
				}
				num *= BattleUtil.Random(90f, 105f) / 100f;
				if (float.IsNaN(num) || float.IsInfinity(num))
				{
					num = 0f;
				}
			}
			// x20 DMG
			if (ModMenu.toggle1)
			{
				return num * 20f;
			}
			return num;
		}