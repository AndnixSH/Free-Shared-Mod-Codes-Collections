//Game: Ultimate Heroes
//Version: 1.7.1.0521
//APK: https://www.apkmonk.com/app/com.morlia.txyx/

//Calling Mod menu
//Class: UIRoot
public void OnGUI()
{
	ModMenu.ButtonMenu();
}

//Class: BattleAtk (Fast Win)
	private AttackInfo CollectAtkInfo(Attack atk)
		{
			if (ModMenu.hack1 && !this.attackerUnit.isSelf)
			{
				atk.damages.Clear();
			}
		}