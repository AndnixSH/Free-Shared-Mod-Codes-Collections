//Game: Dragon Samurai
//Version: 1.0.0
//APK: http://www.3733.com/ahxyfkb/

//Class: SoundControl
public void OnGUI()
{
	ModMenu.OnGUI();
}

//DMG X 50
//Class: FightModule
private void ModifyDamageByFormula(LocalCore pBase, ObjectID self, ObjectID skill, ObjectID target, FightDefine.EHIT_TYPE ePhyHitType, ref float fDamageValue, ref float perDeathblowDamage, ref float perRealDamage)
{
	if (!pBase.Exists(skill))
	{
		return;
	}
	LocalObj gameObj = pBase.GetGameObj(skill);
	LocalObj gameObj2 = pBase.GetGameObj(self);
	LocalObj gameObj3 = pBase.GetGameObj(target);
	string config = gameObj.config;
	if (SkillDataManager.GetSkillMainParam(config) == null)
	{
		return;
	}
	float num = 1f;
	int skillLevel = SkillAccess.GetInstance.GetSkillLevel(pBase, self, skill);
	SkillUpgradeDataMgr.GetSkillDamageParams(config, skillLevel, ref num, ref fDamageValue);
	if (!pBase.Exists(self))
	{
	}
	int baseDamage = FightDataAccess.GetInstance.GetBaseDamage(pBase, gameObj2, gameObj3);
	FightCheckModule.AddDamageInfo(pBase, self, skill, target, (long)baseDamage);
	float num2;
	float num2 * ModMenu.dmgMulti;
	if (ModMenu.hack1)
	{
		num2 = 50f;
	}
	else
	{
		num2 = 1f;
	}
	...
}

//DUMP ENEMY
//Class: NpcInterface 
public bool GetCantUseSkill(LocalObj pGameObj)
{
	return ModMenu.toggle2 || (pGameObj.FindAttr("CantUseSkill") && pGameObj.QueryInt("CantUseSkill") != 0);
}