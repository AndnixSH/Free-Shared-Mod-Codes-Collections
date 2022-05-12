//Game: Dragon Spear
//Version: 1.25
//APK: https://apkpure.com/dragon-spear/com.entermate.dragonspear

//Calling Mod menu
//Class: SoundManager
public void OnGUI()
{
	ModMenu.ButtonMenu();
}

//Namespace: BossMonster
//Class: Calculater
public static void CalculateDamage(BaseEntity attacker, BaseEntity defender, SkillType skill_type, int power_attribute, ref float attack_power, ref float spell_power, ref bool is_critical)
{
	//code above blah blah ...
	// Mod here below //
	if (ModMenu.hack1 && attacker.category == EntityCategory.kHero)
	{
		attack_power = num2 * 10f;
		spell_power = num3 * 10f;
	}
	else if (ModMenu.hack2 && attacker.category != EntityCategory.kHero)
	{
		attack_power = 1f;
		spell_power = 1f;
	}
	else
	{
		attack_power = num2;
		spell_power = num3;
	}
	// //
}