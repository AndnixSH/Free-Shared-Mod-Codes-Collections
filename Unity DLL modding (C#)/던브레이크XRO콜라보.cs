//Game: 던브레이크xRO콜라보
//Version: 1.0.65651
//APK: https://apkpure.com/%EB%8D%98%EB%B8%8C%EB%A0%88%EC%9D%B4%ED%81%ACxro%EC%BD%9C%EB%9D%BC%EB%B3%B4/com.gravity.dab.aos

//Class: AttributeData
public int ATTACK
{
	get
	{
		//x100 DMG
		if (ModMenu.hack1)
		{
			return MathHelper.FloorToInt(((float)this._AttributeStaticData.ATTACK + this._AttributeStaticData.StrToDMG) * ((float)AttributeStaticData.BASE_ATK_RATE + this._AttributeStaticData.ATK_RATE)) * 100;
		}
		return MathHelper.FloorToInt(((float)this._AttributeStaticData.ATTACK + this._AttributeStaticData.StrToDMG) * ((float)AttributeStaticData.BASE_ATK_RATE + this._AttributeStaticData.ATK_RATE));
	}
}

//Class: CharacterControl
public bool IsInvincibility
{
	get
	{
		return (ModMenu.hack2 && this.IsMainPlayer) || this.CharacterSkillControl.IsInvincibility || this.CharacterAnimatorControl.IsInvincibility;
	}
}