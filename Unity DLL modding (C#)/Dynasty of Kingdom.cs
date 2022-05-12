//Game: Dynasty of Kingdom
//Version: 1.0.923.1
//APK: https://apkpure.com/br/dynasty-of-kingdom/com.haichuang.dzsgz.gp

//Class: UIRoot
public void OnGUI()
{
	ModMenu.OnGUI();
}

//Class: BattleCardModel
public float DodgeRate
{
	get
	{
		if (ModMenu.hack1)
		{
			if (this.Faction == CardFaction.Red)
				return 999999f;
			else
				return 0f;
		}
	}
}

public int HealthPoint
{
	get
	{
		if (ModMenu.hack1)
		{
			if (this.Faction == CardFaction.Red)
				return 9999999;
			else
				return 1;
		}
	}
}

public int Attack
{
	get
	{
		if (ModMenu.hack2)
		{
			if (this.Faction == CardFaction.Red)
				return 9999999;
			else
				return -9999999;
		}
	}
}
