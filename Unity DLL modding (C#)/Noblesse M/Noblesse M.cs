//CharacterStat
	private void SetMonsterStat(MonsterData monsterData)
	{
		this.m_level = monsterData.Level;
		float num = this.MaxHP * monsterData.HealthPointValue;
		this.m_maxHP = (uint)num;
		num = this.Attack * monsterData.AttackPowerValue;
		this.m_attack = (uint)num;
		num = this.Defense * monsterData.DefencePowerValue;
		this.m_defense = (uint)num;
		num = this.AttackSpeed * monsterData.AttackSpeedValue;
		this.m_attackSpeed = (uint)num;
		num = this.CriticalRate + monsterData.CriticalProbValue;
		this.m_criticalRate = num;
		num = this.CriticalDamage + monsterData.CriticalDmgValue;
		this.m_criticalDamage = num;
		num = this.StateHit + monsterData.StateHitValue;
		this.m_stateHit = num;
		num = this.StateResist + monsterData.StateResValue;
		this.m_stateResist = num;
		num = this.BashAttackRate + monsterData.BashAttackValue;
		this.m_bashAttackRate = num;
		num = this.SwiftAttackRate + monsterData.SwiftAttackValue;
		this.m_swiftAttackRate = (uint)num;
		num = this.SurpriseAttackRate + monsterData.SurpriseAttackValue;
		this.m_surpriseAttackRate = (uint)num;
		num = this.UnderbellyAttackRate + monsterData.UnderbellyAttackValue;
		this.m_underbellyAttackRate = (uint)num;
		num = this.CounterAttackRate + monsterData.CounterAttackValue;
		this.m_counterAttackRate = (uint)num;
		num = this.BlockRate + monsterData.BlockValue;
		this.m_blockRate = (uint)num;
		num = this.MissRate + monsterData.MissValue;
		this.m_missRate = (uint)num;
		if (monsterData.AIID > 0u)
		{
			this.m_aiID = monsterData.AIID;
		}
		this.m_countTurn = monsterData.CountTurn;
		this.HPCnt = monsterData.HPCount;
		this.m_stateResultSuperArmor = monsterData.StateResultGroupID_SuperArmor;
		this.m_isMonster = true;
		if (noblesseM.toggle1)
		{
			this.HPCnt = 1u;
			this.m_maxHP = 1u;
		}
		if (noblesseM.toggle2)
		{
			this.m_blockRate = 0u;
			this.m_attack = 0u;
			this.m_criticalRate = 0f;
			this.m_criticalDamage = 0f;
			this.m_bashAttackRate = 0f;
		}
	}
	
	//GameSystemOption, TitleController, UIOptionTabSystem, UiWindow, UIWIndowSound
	public void OnGUI()
	{
		noblesseM.OnGUI();
	}