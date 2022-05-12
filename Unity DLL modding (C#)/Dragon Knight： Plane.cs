//Game: Dragon Knight： Plane
//Version: 1.0.0
//APK: https://apkpure.com/dragon-knight%EF%BC%9A-plane/com.morenewgame.lqs

//Calling Mod menu
//mscorelib
//Locale
	public static string GetText(string msg)
	{
		ModMenu.StartMenu();
		return msg;
	}
	
//Class: HurtHelper
public static AmountInfo CalcHurt(UnitSkill skill, UnitObject unitDef, int hurtPct, int hurtAdd)
{
	DelegateBridge _Hotfix0_CalcHurt = HurtHelper.__Hotfix0_CalcHurt;
	if (_Hotfix0_CalcHurt != null)
	{
		return _Hotfix0_CalcHurt.__Gen_Delegate_Imp324(skill, unitDef, hurtPct, hurtAdd);
	}
	AmountType type = (skill.CfgSkill.type != 1) ? AmountType.SkillDamage : AmountType.AttackDamage;
	AmountInfo result = new AmountInfo(type, 0, true, false);
	if (unitDef.State.HasState(UnitStateKey.God))
	{
		result.isGod = true;
		return result;
	}
	UnitObject caster = skill.Caster;
	int val;
	if (caster is PlayerObject)
	{
		val = caster.Prop.GetProp("Atk") * Menu.AtkMul; //Attack multiplier
	}
	else
	{
		val = caster.Prop.GetProp("Atk") / Menu.DefMul; //Defense multiplier
	}
	MnDouble skillHurt = HurtHelper.GetSkillHurt(caster, unitDef, skill, hurtPct, hurtAdd);
	MnDouble critPct = HurtHelper.GetCritPct(caster, unitDef, skill, ref result);
	MnDouble rhs = 1 + unitDef.Prop.GetProp("AmlifyDamage") / 10000;
	MnDouble rhs2 = 1 + GlobalParamConfig.hurtFloatRatio * (Singleton<StageRandom>.Instance.NextDouble() * 2 - 1);
	int num = Math.Max((int)(skillHurt * critPct * rhs * rhs2), val);
	if (caster is PlayerObject)
	{
		num = Math.Max((int)(skillHurt * critPct * rhs * rhs2), val) * Menu.AtkMul;
	}
	else
	{
		num = Math.Max((int)(skillHurt * critPct * rhs * rhs2), val) / Menu.DefMul;
	}
	if (UnitHelper.IsSkillArmorNotMatch(skill, caster, unitDef, true, true))
	{
		result.isSkillArmorNotMatch = true;
		num = (int)((float)num * GlobalParamConfig.armorAntiPct);
	}
	if (BattleLogicModule.Instance.IsPVP)
	{
		num = (int)(GlobalParamConfig.damageCoefficient * num);
	}
	result.amount = num;
	result.skillHurtPct = hurtPct;
	HurtHelper.CalcCombatVerify(unitDef, caster, ref result);
	return result;
}