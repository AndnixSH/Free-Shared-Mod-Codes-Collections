//Game: Dream Raiders Empires
//Version: 1.0.0.62
//APK: https://apkpure.com/dream-raiders-empires/com.mechanist.dmyx.slg

//Class: ActorAISystem
private void SelectTar(LogicEntity _entity)
{
	//God mode
	if (_entity.actorInstance.Comp != Comp.Attacker)
	{
		return;
	}
	...
}

//Class: BattleController
private ActorProperties GetHeroProperties(int _heroID, int _armyID, int _troops, ActorLvl _heroData, US2FS_FightingHero _fightHero)
{
	DelegateBridge _Hotfix0_GetHeroProperties = BattleController.__Hotfix0_GetHeroProperties;
	if (_Hotfix0_GetHeroProperties != null)
	{
		return _Hotfix0_GetHeroProperties.__Gen_Delegate_Imp580(this, _heroID, _armyID, _troops, _heroData, _fightHero);
	}
	ActorProperties actorProperties = new ActorProperties();
	US2FS_HeroPropertyInfo property = _fightHero.getProperty();
	int starLvl = property.getStarLvl();
	actorProperties.Level = property.getLvl();
	actorProperties.ActiveSkillID = _heroData.ActiveSkillId(starLvl);
	actorProperties.MoveSpeed = property.getMoveSpeed();
	actorProperties.AtkSpeed = property.getAtkSpeed();
	actorProperties.Anger = property.getAnger();
	actorProperties.AtkRange = (int)property.getAtkRange();
	actorProperties.Strength = property.getStrength();
	actorProperties.Intellect = property.getIntellect();
	actorProperties.Physique = property.getPhysique();
	actorProperties.MaxTroops = property.getTroops();
	actorProperties.Troops = actorProperties.MaxTroops;
	actorProperties.HeroPhyAtk = property.getHeroPhyAtk();
	actorProperties.HeroMagAtk = property.getHeroMagAtk();
	actorProperties.HeroPhyDef = property.getHeroPhyDef();
	actorProperties.HeroMagDef = property.getHeroMagDef();
	actorProperties.DodgeValue = property.getDodgeValue();
	actorProperties.CritValue = property.getCritValue();
	actorProperties.PercisionValue = property.getPercisionValue();
	actorProperties.CritResistValue = property.getCritResistValue();
	actorProperties.CritDamagePer = property.getCritDamagePer();
	actorProperties.PhysDmgBounus = property.getPhysDmgBounus();
	actorProperties.PhysDmgReduction = property.getPhysDmgReduction();
	actorProperties.MagicDmgBounus = property.getMagicDmgBounus();
	actorProperties.MagicDmgReduction = property.getMagicDmgReduction();
	actorProperties.NormalAtkDmgBounus = property.getNormalAtkDmgBounus();
	actorProperties.NormalAtkDmgReduction = property.getNormalAtkDmgReduction();
	actorProperties.SkillDmgBounus = property.getSkillDmgBounus();
	actorProperties.SkillDmgReduction = property.getSkillDmgReduction();
	actorProperties.FinalDmgBounus = property.getFinalDmgBounus();
	actorProperties.FinalDmgReduction = property.getFinalDmgReduction();
	actorProperties.SoldierMagAtk = property.getSoldierMagAtk() + 99999f; // 1 hit KO
	actorProperties.SoldierMagDef = property.getSoldierMagDef();
	actorProperties.SoldierPhyAtk = property.getSoldierPhyAtk() + 99999f; // 1 hit KO
	actorProperties.SoldierPhyDef = property.getSoldierPhyDef();
	actorProperties.SoldierHp = property.getSoldierHp();
	return actorProperties;
}