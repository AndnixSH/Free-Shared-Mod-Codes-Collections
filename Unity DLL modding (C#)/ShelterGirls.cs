//Game: Entity
//Version: 0.0.1 (52)
//APK: https://apkcombo.com/sheltergirls/com.YHdatabase.Sheltergirls/

//Class: Monster
public virtual void OnDamage(int amount)
{
	if (this.isDead)
	{
		return;
	}
	//Split here
	if (this.team == Team.Enemy)
	{
		this.CurrentHealthPoint -= amount * 10; //10x DMG
	}
	else
	{
		this.CurrentHealthPoint -= amount / 10; //10x DEF
	}
	this.isOnHit = true;
}