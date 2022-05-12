//Game: Rise of Dragons
//Version: 1.3.0
//APK: https://play.google.com/store/apps/details?id=leyi.riseofdragons

//Server-sided. No rewards if you win

//Class: BSMUtil
private static void TakeDamage(BSMCard target, int damage)
{
	if (ModMenu.hack2 && target.battle_info.is_player)
	{
		return;
	}
	if (ModMenu.hack1 && !target.battle_info.is_player)
	{
		target.battle_info.current_hp -= damage * 100;
	}
	else
	{
		target.battle_info.current_hp -= damage;
	}
	if (target.battle_info.current_hp < 0)
	{
		target.battle_info.current_hp = 0;
	}
}

//Class: UIRoot
public void OnGUI()
{
	ModMenu.OnGUI();
}