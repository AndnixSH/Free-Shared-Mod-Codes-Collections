//Game: Overload Online PvP Car Shooter Game
//Version: v4.0.2
//APK: https://apkpure.com/overload-online-pvp-car-shooter-game/com.sugastudio.overload

//Class: SoundManager
public void OnGUI()
{
	ModMenu.OnGUI();
}

//Class: PlayerControllerNetwork
//God mode
public void OnDie()
{
	if (ModMenu.hack1)
	{
		return;
	}
	...
}

public void RpcOnDie(uint killerId, string strAssists, ushort killerKillStreak, ushort victimKillStreak, ushort curMultiKill)
{
	if (ModMenu.hack1)
	{
		return;
	}
	...
}
	
	