//Game: 《花千骨》─最受女生歡迎社交手遊
//Version: 4.2.0
//APK: https://play.google.com/store/apps/details?id=com.pps.kiyu.hqg

//Namespace: Data.Beans
//Class: t_skillBean, t_skill_growBean - No cooldown
public int t_cooldown
{
	get
	{
		return this.m_t_cooldown;
	}
	set
	{
		this.m_t_cooldown = 0;
	}
}

//Class: CharacterProperty - 10x attack
[ProtoMember(5, IsRequired = true, Name = "Attack", DataFormat = DataFormat.TwosComplement)]
public long Attack
{
	get
	{
		return this._Attack * 10L;
	}
	set
	{
		this._Attack = value;
	}
}