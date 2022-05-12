//Game: GODLIKE Creatures
//Version: 1.7.0
//APK: https://apkpure.com/godlike-creatures/com.godlike.creatures.th

//Namespace: Creatures
//Class: CreatureActivatior : CreatureBase
public void DecreaseHP(int damage)
{
	if (ModMenu.hack1 && GameHandler.data.currentTeam == TeamEnum.BlueTeam)
	{
		damage *= 9999;
	}
}

//Class: UIRect
public void OnGUI()
{
	ModMenu.OnGUI();
}