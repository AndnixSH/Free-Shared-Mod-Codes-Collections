//Game: Kings and Magic Heroes Duel
//Version: 1.0.0.9
//APK: https://apkpure.com/kings-and-magic-heroes-duel/com.kingstar.lom

//Class: UILabel
public void OnGUI()
{
	ModMenu.OnGUI();
}


//Class: BattleBaseController ONE HIT/GOD MODE
private long caclSkillDamageValue(BattleBaseController caster, BattleBaseController target, out long specialDamage, int skillBaseDamage, int skillDamageRate, long criticalDamage, int specialDamageRateAdd, int damageEffectAdd, int damageAddOrDec)
{
	int num2;
	long num3;
	long num = BattleBaseController.DamageNormalize(this.calcNormalDamage(caster, target, out num2, out num3, skillBaseDamage, skillDamageRate, criticalDamage, damageEffectAdd, true) + (long)damageAddOrDec);
	specialDamage = BattleBaseController.damageFlaot2Int((double)((float)(num3 * (long)num2 * (long)specialDamageRateAdd) / 1000000f));
	if (specialDamageRateAdd > 0 && specialDamage == 0L)
	{
		specialDamage = 1L;
	}
	if (!ModMenu.hack1)
	{
		return num;
	}
	if (caster.p_teamFaction == BattleCore.Faction.ATTACK)
	{
		return num * 99999L;
	}
	return 0L;
}