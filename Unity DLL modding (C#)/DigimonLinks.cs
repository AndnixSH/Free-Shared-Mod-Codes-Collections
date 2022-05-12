//Game: DigimonLinks
//Version: 2.6.0
//APK: https://www.apkmonk.com/app/com.bandainamcoent.digimon_linkz_ww/

//Calling Mod menu
//Class: UIRoot
public void OnGUI()
{
	ModMenu.OnGUI();
}

//Class: InitializeExtraStatus
//x200 dmg
private void InitializeExtraStatus()
{
	List<ExtraEffectStatus> invocationList = ExtraEffectStatus.GetInvocationList(BattleStateManager.current.battleStateData.extraEffectStatus, EffectStatusBase.EffectTriggerType.Usually);
	int defaultMaxHpWithLeaderSkill = this.defaultMaxHpWithLeaderSkill;
	int baseValue;
	int baseValue2;
	if ((ModMenu.hack1)
	{
		if (!PlayerStatus.Match(this._characterStatus))
		{
			baseValue = 0;
			baseValue2 = 0;
		}
		else
		{
			baseValue = this._characterStatus.attackPower * 200;
			baseValue2 = this._characterStatus.specialAttackPower * 200;
		}
	}
	else
	{
		baseValue = this._characterStatus.attackPower;
		baseValue2 = this._characterStatus.specialAttackPower;
	}
	int defencePower = this._characterStatus.defencePower;
	int specialDefencePower = this._characterStatus.specialDefencePower;
	int speed = this._characterStatus.speed;
	this.m_extraMaxHp = ExtraEffectStatus.GetExtraEffectValue(invocationList, defaultMaxHpWithLeaderSkill, this, EffectStatusBase.ExtraEffectType.Hp);
	this.m_extraAttackPower = ExtraEffectStatus.GetExtraEffectValue(invocationList, baseValue, this, EffectStatusBase.ExtraEffectType.Atk);
	this.m_extraDefencePower = ExtraEffectStatus.GetExtraEffectValue(invocationList, defencePower, this, EffectStatusBase.ExtraEffectType.Def);
	this.m_extraSpecialAttackPower = ExtraEffectStatus.GetExtraEffectValue(invocationList, baseValue2, this, EffectStatusBase.ExtraEffectType.Satk);
	this.m_extraSpecialDefencePower = ExtraEffectStatus.GetExtraEffectValue(invocationList, specialDefencePower, this, EffectStatusBase.ExtraEffectType.Sdef);
	this.m_extraSpeed = ExtraEffectStatus.GetExtraEffectValue(invocationList, speed, this, EffectStatusBase.ExtraEffectType.Speed);
}
	
//Class: CharacterStateControl
//God mode
public int hp
{
	get
	{
		if (ModMenu.hack2 && PlayerStatus.Match(this._characterStatus))
		{
			return 9999999;
		}
		return this._currentHp;
	}
}