//Game: Rules of Fantasy World
//Version: 1.1.0
//APK: https://apkpure.com/rules-of-fantasy-world/com.rofw.google
//https://apkcombo.com/rules-of-fantasy-world/com.rofw.google/download/1.1.0-3-zip

//Class: Monster
public override void UpdateAttributes()
{
	this.mMonsterAttrib = Singleton<MonsterGrowBaseManager>.Instance.GetItem(base.UnitInfo_0.UnitID, base.Level);
	if (this.mMonsterAttrib != null)
	{
		if (ModMenu.hack1)
		{
			this.SetAttrib(FightAttrib.HPMax, 1L);
		}
		else
		{
			this.SetAttrib(FightAttrib.HPMax, (long)((ulong)this.mMonsterAttrib.HPMax));
		}
		this.SetAttrib(FightAttrib.AbsorbHP, (long)this.mMonsterAttrib.AbsorbHP);
		this.SetAttrib(FightAttrib.CritDamage, (long)this.mMonsterAttrib.CritDamage);
		this.SetAttrib(FightAttrib.CritImmune, (long)this.mMonsterAttrib.CritImmune);
		this.SetAttrib(FightAttrib.CritRate, (long)this.mMonsterAttrib.CritRate);
		this.SetAttrib(FightAttrib.CritResist, (long)this.mMonsterAttrib.CritResist);
		if (ModMenu.hack2)
		{
			this.SetAttrib(FightAttrib.Damage, 1L);
		}
		else
		{
			this.SetAttrib(FightAttrib.Damage, (long)this.mMonsterAttrib.Damage);
		}
		....
	}
	....
}

//Clas: SkillItem
public float MpConsume
{
	get
	{
		if (ModMenu.hack3)
		{
			return Mathf.Clamp((float)this.SkillAttrib.MpConsume - this.MpIncrement, (float)this.SkillAttrib.MpConsume * 0.4f, (float)this.SkillAttrib.MpConsume * 0f);
		}
		return Mathf.Clamp((float)this.SkillAttrib.MpConsume - this.MpIncrement, (float)this.SkillAttrib.MpConsume * 0.4f, (float)this.SkillAttrib.MpConsume);
	}
}

public float CD
{
	get
	{
		if (ModMenu.hack4)
		{
			return Mathf.Clamp((float)this.SkillAttrib.CD * 0.001f - this.CDIncrement, (float)this.SkillAttrib.CD * 0.001f * 0.4f, (float)this.SkillAttrib.CD * 0f);
		}
		return Mathf.Clamp((float)this.SkillAttrib.CD * 0.001f - this.CDIncrement, (float)this.SkillAttrib.CD * 0.001f * 0.4f, (float)this.SkillAttrib.CD * 0.001f);
	}
}