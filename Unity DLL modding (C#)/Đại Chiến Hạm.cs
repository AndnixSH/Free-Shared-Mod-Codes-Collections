//Game: Đại Chiến Hạm
//Version: 1.1.0
//APK: https://apkpure.com/%C4%91%E1%BA%A1i-chi%E1%BA%BFn-h%E1%BA%A1m/vn.funtap.daichienham

//Calling Mod menu
//Class: UIRoot
public void OnGUI()
{
	ModMenu.OnGUI();
}

//Class: WarShip
//Battle speed, dumb enemy
public void CheckEnemyShip()
{
	if (this.team == FightCamp.Self || this.team == FightCamp.Friend)
	{
		list = ShipController.Instance.EnemyShip;
	}
	else if (this.team == FightCamp.Enemy)
	{
		if (Menu.hack1)
		{
			list = ShipController.Instance.EnemyShip;
		}
		else
		{
			list = ShipController.Instance.MyShip;
		}
	}
}