//Game: Anime Chaos
//Version: 1.0.28
//APK: https://apkcombo.com/apk-downloader/?device=&arch=&android=&q=com.szxytd.jumpforcetcg

//Namespace: BattleHost
//Class: Role
public bool TryChangePropertity(RoleProperty roleProperty, long deita, ReasonForRolePropertityChange reson = null)
{
	if (roleProperty == RoleProperty.Hp && deita < 0L)
	{
		if (this.roleIndex >= 0 && this.roleIndex <= 5)
		{
			deita /= (long)ModMenu.DefMul; //Defense multiplier
		}
		if (this.roleIndex >= 9 && this.roleIndex <= 14)
		{
			deita *= (long)ModMenu.AtkMul; //Attack multiplier
		}
	}
	...
}