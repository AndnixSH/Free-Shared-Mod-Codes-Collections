//Game: Blank City
//Version: v1.1.3
//APK: https://apkpure.com/blank-city/com.flerogames.aos.espher

//Class: CharacterStatus
protected virtual void ProcesseDamage(DamageInfo damage_info)
{
	if (ModMenu.hack1 && TagInfo.IsPlayerFriendly(this.CharacterTag))
	{
		num5 = 0;
	}
	if (ModMenu.hack2 && !TagInfo.IsPlayerFriendly(this.CharacterTag))
	{
		num5 = this.hp;
	}
}