//Game: グレントリア 眠レル竜ト暁ノ戦士ノ物語
//Version: 0.9.5
//APK: https://apkpure.com/%E3%82%B0%E3%83%AC%E3%83%B3%E3%83%88%E3%83%AA%E3%82%A2-%E7%9C%A0%E3%83%AC%E3%83%AB%E7%AB%9C%E3%83%88%E6%9A%81%E3%83%8E%E6%88%A6%E5%A3%AB%E3%83%8E%E7%89%A9%E8%AA%9E/com.triexz.android.gretoria

//Mscorelib.dll
//Class: Locale
public static string GetText(string msg)
{
	Menu.StartMenu(); //Call instance menu
	return msg;
}

//Class: FightableCharacter
public float CorrectDamage(float damage)
{
	if (this.damageCorrector != null)
	{
		float num = this.damageCorrector(damage);
		if (num < damage && num == 0f)
		{
			this.BroadcasHPFloatingText(HPChangeArgs.Make(HPChangeEffect.Absorb, HPChangeValueType.None, 0f));
		}
		return num;
	}
	if (ModMenu.hack1 && this.faction != Faction.Player)
	{
		return damage * 10f; //x10 ATK
	}
	if (ModMenu.hack2 && this.faction == Faction.Player)
	{
		return damage / 20f; //x10 DEF
	}
	return damage;
}
