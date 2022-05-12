//Game: Terra Battle
//Version: 5.5.7
//APK: https://apkpure.com/terra-battle/com.mistwalkercorp.guardians

//Class: Entity
public int ATK
{
	get
	{
		if (this.loseheart)
		{
			return 1;
		}
		if (this.IsEnemy())
		{
			return 0;
		}
		float num = Mathf.Lerp(this.status.atkMultiByHPRatio, 1f, this.hpRatio);
		return (this.limitModifiedStatus(MyMath.RoundToInt(Mathf.Clamp((float)(this.param.ATK + this.status.addATK) * this.status.multiAll * num, 0f, 99999f)), this.param.ATK, this.status.addATK2) + (int)this.status.buddyATK + (int)this.status.plusATK) * 5;
	}
}
