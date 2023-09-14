//BattleCore
private int GetDamageSkill(Unit attacker, Unit defender, SkillData skill, LogSkill log)
{
	if (!GameModPro.hack1)
	{
		int num = this.CalcAtkPointSkill(attacker, defender, skill, log);
		int num2 = this.CalcDefPointSkill(attacker, defender, skill, log);
		int num3 = Math.Max(num - num2, 0);
		if (skill.IsJewelAttack())
		{
			num3 = BattleCore.Sqrt(num3) * 2;
		}
		else
		{
			num3 = this.GetResistDamageForAttackDetailType(defender, skill, num3);
			num3 = this.GetResistDamageForUnitDefense(defender, skill, num3);
		}
		return num3;
	}
	if (attacker.Side != EUnitSide.Enemy)
	{
		return 999999;
	}
	return 0;
}

//AssetManager
public void OnGUI()
{
	GameModPro.OnGUI();
}