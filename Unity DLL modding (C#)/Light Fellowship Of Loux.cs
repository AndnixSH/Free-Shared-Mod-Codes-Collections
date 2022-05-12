//Game: Light Fellowship of Loux
//Version: 2.2.1
//APK: https://apkpure.com/light-fellowship-of-loux/com.com2us.thelight.normal.freefull.google.global.android.common
//Dump hidden dll from memory. Assembly name called xgame1.6.01535942274. Rename it to Assembly-UnityScript.dll

//Note: It have Appguard protection but we will not give bypass  method unless the service has been discontinued

//Calling Mod menu
//Class: BattleStage, GameMgr, Lobby, MainWindow
public void OnGUI()
{
	ModMenu.ButtonMenu();
}

//Class: ActorStatus
	public void AddDamage(HitType hitType, int damage, InfluenceType influenceType = InfluenceType.None)
	{
		if (!base.owner.IsPlaying)
		{
			return;
		}
		int num;
		//1 hit kill
		if (ModMenu.hack1 && base.owner.actorType == ActorType.Enemy)
		{
			num = ((hitType != HitType.Heal) ? (this.basicStat.curHP - this.maxHP) : (this.basicStat.curHP + damage));
		}
		//God mode
		else if (ModMenu.hack2 && base.owner.actorType == ActorType.Player)
		{
			num = ((hitType != HitType.Heal) ? (this.basicStat.curHP + this.maxHP) : (this.basicStat.curHP + damage));
		}
		//Normal
		else
		{
			num = ((hitType != HitType.Heal) ? (this.basicStat.curHP - damage) : (this.basicStat.curHP + damage));
		}
		if (num < 0)
		{
			num = 0;
		}
		this.PrintInfluence(hitType, damage, influenceType);
		this.SetCurHP(num);
	}