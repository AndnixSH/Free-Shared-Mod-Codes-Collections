//Game: Doom Watch
//Version: 1.1.6.0
//APK: https://apkpure.com/doom-watch/com.idreamsky.doomwatch.gp

//Calling Mod menu
//mscorelib
//Locale
	public static string GetText(string msg)
	{
		ModMenu.StartMenu();
		return msg;
	}
	
//Class: ActorBase
	public virtual void ChangeHP(int changeValue, ActorBase causeChangeActor, float breakHurtPercent, bool isCrit = false, bool isChangeAnger = true, bool isHurtBack = false, SkillEnum.FloatTextType floatType = SkillEnum.FloatTextType.Default)
	{
		if (ModMenu.hack2 && this.m_type == ActorType.Hero)
		{
			changeValue = 0;
		}
		if (ModMenu.hack1 && this.m_type != ActorType.Hero)
		{
			changeValue = -99999;
		}
		....
	}