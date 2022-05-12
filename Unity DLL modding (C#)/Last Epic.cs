//Game: Last Epic
//Version: 1.08
//APK: https://apkcombo.com/last-epic-unreleased/com.ifreyr.legend.gp/

//Class: AudioManager
public void OnGUI()
{
	ModMenu.OnGUI();
}

// legend.battle.logic.Character
public int CalculateDamage(Character c, int skillDamage, int damageAdded, int attribute, string range, int skillAccuracy, int turnID, bool lastHit, ActionResult ar, CharacterResult cr, Order o, bool isDotDamage, bool testDamage)
{
	....
	if (ModMenu.hack2)
	{
		if (this.IsEnemy())
		{
			return 0;
		}
		if (ModMenu.hack1)
		{
			return num * 20;
		}
	}
	return num;
}
