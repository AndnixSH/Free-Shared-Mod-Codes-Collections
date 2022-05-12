//Game: Epic & Magic
//Version: 2.3.2
//APK: https://apkpure.com/epic-magic/leyi.epicandmagic

//UIRoot
public void OnGUI()
{
	ModMenu.OnGUI();
}

//BSMUtil - x10 dmg
public static int TotalAtk(BSMCard card)
{
	return BSMUtil.FloorToInt((double)card.battle_info.atk * (1.0 + (double)card.battle_info.round_buff_impact.attack / 10000.0) * ModMenu.dmgMulti);
}

//god mode
private static bool CanTakeDamge(BSMCard target)
{
	if (ModMenu.toggle2)
	{
		return !target.battle_info.is_player;
	}
	...
}