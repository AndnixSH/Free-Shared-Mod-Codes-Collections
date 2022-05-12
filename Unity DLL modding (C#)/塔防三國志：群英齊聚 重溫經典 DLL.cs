//Game: 塔防三國志 群英齊聚 重溫經典
//Version: 4.6.01
//APK: https://apkpure.com/%E5%A1%94%E9%98%B2%E4%B8%89%E5%9C%8B%E5%BF%97%EF%BC%9A%E7%BE%A4%E8%8B%B1%E9%BD%8A%E8%81%9A-%E9%87%8D%E6%BA%AB%E7%B6%93%E5%85%B8/com.bigbull.tdsgtw

// UIRoot
private void OnGUI()
{
	ModMenu.OnGUI();
}

//ActorAIBase
public void Hurt(ActorAIBase attackFrom, float damage)
{
	if (!this.IsAlive())
	{
		return;
	}
	if (ModMenu.hack1)
	{
		this.actorInfo.ModifyHp(-(int)damage * 100);
	}
	else
	{
		this.actorInfo.ModifyHp(-(int)damage);
	}
	this.actorInfo.ModifyHp(-(int)damage * ModMenu.dmgMulti);
}
	
//MonsterAI
public override bool CanAttack(ActorAIBase targetActor)
{
	return !ModMenu.hack2 && !PathfindingCenter.IsCrossRoadEdge(this.myTransform.position, targetActor.myTransform.position) && base.CanAttack(targetActor);
}

public override bool AttackOrAssault()
{
	if (ModMenu.hack2)
	{
		return false;
	}
}

private bool MoveOnPortal(float speed)
{
	if (ModMenu.hack2)
	{
		return false;
	}
}

private bool MoveOnPath(float speed)
{
	if (ModMenu.hack2)
	{
		return false;
	}
}
	
protected void BuildActorInfo()
{
	if (this.enemyTemp == null)
	{
		return;
	}
	if (!string.IsNullOrEmpty(this.enemyTemp.nameID))
	{
		this.actorInfoBackUp.name = (this.actorInfo.name = StormLocalization.Get(this.enemyTemp.nameID));
	}
	this.actorInfoBackUp.myId = (this.actorInfo.myId = this.enemyTemp.monsterID);
	base.SetType(this.enemyTemp.monsterType, this.enemyTemp.target);
	this.actorInfoBackUp.camp = (this.actorInfo.camp = CampType.Enemy);
	this.actorInfoBackUp.moveSpeed = (this.actorInfo.moveSpeed = (float)this.enemyTemp.moveSpeed);
	this.actorInfoBackUp.warning = (this.actorInfo.warning = this.enemyTemp.warning);
	this.actorInfoBackUp.range = (this.actorInfo.range = this.enemyTemp.range);
	this.actorInfoBackUp.colliderRadius = (this.actorInfo.colliderRadius = this.enemyTemp.colliderRadius);
	long num = (long)this.enemyTemp.hp;
	long num2 = num * (long)LevelManagerBattle.enemyHpRatio / 100L; //
	num = 1L;
	this.actorInfoBackUp.curHp = (this.actorInfoBackUp.maxHp = (this.actorInfo.curHp = (this.actorInfo.maxHp = num)));
	num = (long)this.enemyTemp.attack;
	if (ModMenu.hack2)
		num = num * (long)LevelManagerBattle.enemyAttackRatio * 0L;
	else
	num = num * (long)LevelManagerBattle.enemyAttackRatio / 100L;
	
	num3
}
	
//LevelManagerBattle - InitializeLevel()
if (ModMenu.hack2)
{
	LevelManagerBattle.enemyHpRatio = LevelManagerBattle.enemyHpRatio = 0;
	LevelManagerBattle.enemyAttackRatio = LevelManagerBattle.enemyAttackRatio = 0;
}