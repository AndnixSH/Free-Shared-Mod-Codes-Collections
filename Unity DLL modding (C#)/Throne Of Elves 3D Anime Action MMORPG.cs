//Game: Throne of Elves 3D Anime Action MMORPG
//Version: 2.18.10
//APK: https://apkpure.com/throne-of-elves-3d-anime-action-mmorpg/com.poppace.toe.dragon.souls.anime.brave.mmorpg.action.blades.arpg.online.games

//Class: DamageMgr
public static void HpChange(int value, Unit self, Unit target, bool crit, bool cure, bool showNumber, bool bPhyle, bool isBehind, int skillId)
{
	if (ModMenu.hack1 && self.Data.Type != UnitType.Enemy && target.Data.Type == UnitType.Enemy)
	{
		value *= 20;
	}
	else if (ModMenu.hack2 && self.Data.Type != UnitType.Player && target.Data.Type == UnitType.Player)
	{
		value /= 10000;
	}
	...
	...
}

//Class: PlayerControl
public void OnGUI()
{
	ModMenu.OnGUI();
}