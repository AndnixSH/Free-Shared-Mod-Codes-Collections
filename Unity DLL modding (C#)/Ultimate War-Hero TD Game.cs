//Game: Ultimate War-Hero TD Game
//Version: 1.5.19
//APK: https://apkpure.com/ultimate-war-hero-td-game/com.shanggame.tewxtf

//Calling Mod menu
//Class: UIRoot
public void OnGUI()
{
	ModMenu.ButtonMenu();
}

//Class: ActorAIBase
//One hit and god mode 
public void Hurt(ActorAIBase attackFrom, float damage)
{
	if (!this.IsAlive(SkillTriggerConditions.Always))
	{
		return;
	}
	this.actorInfo.ModifyHp((int)(-(int)damage));
	if (ModMenu.hack1 && this.actorInfo.camp == CampType.Enemy)
	{
		this.actorInfo.ModifyHp((int)(-(int)(damage * 999f)));
	}
	if (ModMenu.hack2 && this.actorInfo.camp != CampType.Enemy)
	{
		return;
	}
	if (this.actorInfo.curHp <= 0L)
	{
		bool flag = false;
		HeroAI heroAI = this as HeroAI;
		if (heroAI != null && heroAI.heroTemp != null && heroAI.heroTemp.heroID == 100001)
		{
			flag = true;
		}
		if (flag)
		{
			this.actorInfo.curHp = 1L;
		}
		else
		{
			this.actorInfo.curHp = 0L;
			this.ChangeState(ActorStatus.Die);
			this.ReportDie();
		}
	}
	this.UpdateHpShow();
}

//Class: SkillAIBase
//No skill CD
public SkillAIBase()
{
	if (ModMenu.hack3)
	{
		this.skillCDSpeed = 99f;
	}
	else
	{
		this.skillCDSpeed = 1f;
	}
	base..ctor();
}