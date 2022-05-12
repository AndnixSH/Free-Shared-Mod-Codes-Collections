//Game: Stars of Ravahla - Heroes RPG
//Version: 2.0.7
//APK: https://apkpure.com/stars-of-ravahla-heroes-rpg/com.seedstudio.seed19android

//AudioManager
public void OnGUI()
{
	ModMenu.OnGUI();
}

//MonsterInfo
//1 hit
public int HP
{
	get
	{
		if (ModMenu.hack1)
		{
			return 1;
		}
		return (this.m_Content == null) ? 1 : this.m_Content.hp;
	}
}

//God mode
public int Attack
{
	get
	{
		if (ModMenu.hack2)
		{
			return 0;
		}
		return (this.m_Content == null) ? 0 : this.m_Content.atk;
	}
}