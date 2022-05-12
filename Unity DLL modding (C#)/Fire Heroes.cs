//Game: BattleRoleBase
//Version: 1.0
//APK: https://apkpure.com/fire-heroes-bring-the-war-to-the-summoners-world/com.xp101.mmorpg.fire

//Class: 
public void TakeDamage(DamagedType damageType, bool isMutiBuff, int effectId, int curHp, int curMaxHp, int specialType, int nWord)
{
	if (this.battleRoleType != BattleRoleType.Enemy)
	{
		return;
	}
	
	...
}