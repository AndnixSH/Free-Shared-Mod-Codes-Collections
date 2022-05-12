//Game: War Legion
//Version: 0.5.1.1050
//APK: https://apkpure.com/war-legion/com.mechanist.dmyx2/

//Class: US2FS_HeroPropertyInfo - One hit
public float getSoldierPhyAtk()
{
	if (ModMenu.hack1)
	{
		return this.soldierPhyAtk + 99999f;
	}
	return this.soldierPhyAtk;
}

public float getSoldierMagAtk()
{
	if (ModMenu.hack1)
	{
		return this.soldierMagAtk + 99999f;
	}
	return this.soldierMagAtk;
}

//Class: ActorAISystem - Dumb enemy
private void SelectTar(LogicEntity _entity)
{
	if (ModMenu.hack2 && _entity.actorInstance.Comp != Comp.Attacker)
	{
		return;
	}
	...
}