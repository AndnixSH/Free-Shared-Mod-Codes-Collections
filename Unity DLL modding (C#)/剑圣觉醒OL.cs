//Game: 剑圣觉醒OL
//Version: 0.31.0
//APK: https://apkpure.com/%E5%89%91%E5%9C%A3%E8%A7%89%E9%86%92ol/com.summonersquest.arpg.avidly

//UIRoot
public void OnGUI()
{
	ModMenu.OnGUI();
}

//MonsterSpawnpoint
private Character.Configuration BuildConfiguration(int monsterId, int syncIdHint)
{
	Character.Configuration configuration = this.BuildConfiguration(monsterId);
	configuration.isMasterObject = BattlefieldManager.Instance.isHost;
	configuration.controller = ((!configuration.isMasterObject) ? null : new AIController(0));
	configuration.syncIdHint = syncIdHint;
	MonstersRecord monstersRecord = null;
	MonstersReferenceRecord monstersReferenceRecord = null;
	if (!MonsterSpawnpoint.MonsterRecord(monsterId, out monstersRecord, out monstersReferenceRecord))
	{
		Debug.LogError("monster record isn't found: " + monsterId);
		return null;
	}
	float num = (float)monstersReferenceRecord.hp * this.mAttrFactor.hp;
	if (ModMenu.toggle1)
	{
		num = 1f;
	}
	else
	{
		num = (float)monstersReferenceRecord.hp * this.mAttrFactor.hp;
	}
	configuration.baseAttr[0] = (int)num;
	float num2 = (float)monstersReferenceRecord.atk * this.mAttrFactor.atk;
	if (ModMenu.toggle2)
	{
		num2 = 1f;
	}
	else
	{
		num2 = (float)monstersReferenceRecord.atk * this.mAttrFactor.atk;
	}
}