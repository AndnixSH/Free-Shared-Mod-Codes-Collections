//Game: Summoner Legends
//Version: 1.1.7 
//APK: https://apkpure.com/summoner-legends-rpg/com.appfame.iliq

//Calling Mod menu
//Class: SoundManager
public void OnGUI()
{
	ModMenu.OnGUI();
}

//Class: MonsterLevelStaticItem
	public double Hp
	{
		get
		{
			if (ModMenu.hack1)
			{
				return this.m_hp / this.m_hp;
			}
			return this.m_hp;
		}
	}

	public double Atk
	{
		get
		{
		
			if (ModMenu.hack2)
			{
				return this.m_atk / this.m_atk;
			}
			return this.m_atk;
		}
	}