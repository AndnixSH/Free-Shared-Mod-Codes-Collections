//PlayerDataManager
public int Diamond
	{
		get
		{
			if (ModMenu.Hack1)
			{
				return 9999999;
			}
			return this.mDiamond;
		}
	}

	public int Gold
	{
		get
		{
			if (ModMenu.Hack1)
			{
				return 99999;
			}
			return this.mGold;
		}
		set
		{
			this.mGold = value;
		}
	}

	public int Hungry
	{
		get
		{
			if (ModMenu.Hack1)
			{
				return 9999;
			}
			return this.mHungry;
		}
	}

	public bool IsCold
	{
		get
		{
			return !ModMenu.Hack1 && this.ColdDefVal <= this.ColdVal;
		}
	}

	public bool IsNearFire
	{
		get
		{
			return !ModMenu.Hack1 && this.mIsNearFire;
		}
		set
		{
			this.mIsNearFire = value;
		}
	}

	public bool IsPoison
	{
		get
		{
			return !ModMenu.Hack1 && this.mPoisonVal >= 100;
		}
	}

	public bool IsSick
	{
		get
		{
			return !ModMenu.Hack1 && this.mSickVal >= GameDefine.DefaultSickVal;
		}
	}

	public void InitPlayerInfoData()
	{
		this.BuffList.Clear();
		if (ModMenu.Hack1)
		{
			this.CurLevelMaxHp = 8888888;
		}
		else
		{
			this.CurLevelMaxHp = GameDefine.DefaultHpMaxVal;
		}
		this.CurLevelMaxHungry = GameDefine.DefaultHungryMaxVal;
		this.CurLevelMaxThirsty = GameDefine.DefaultThistyMaxVal;
		this.CurLevelColdDef = GameDefine.DefaultColdDefVal;
		this.CurLevelDef = GameDefine.DefaultDefVal;
		this.CurLevelAtk = GameDefine.DefaultAtkVal;
		this.CurLevelRunSpeed = (float)GameDefine.DefaultRunSpeed;
		this.CurLevelCollectSpeed = (float)GameDefine.DefaultCollectSpeed;
		this.CurLevelPoisonDamage = GameDefine.DefaultPoisonReduceHpVal;
		this.CurLevelHungryDamage = GameDefine.DefaultHungryReduceHpVal;
		this.CurLevelThistyDamage = GameDefine.DefaultThistyReduceHpVal;
		this.CurLevelWorldSpeed = (float)GameDefine.DefaultWorldSpeed;
		this.CurLevelPackNum = GameDefine.DefaultPackSlot;
		this.CurLevelLoseCondition = GameDefine.DefaultLoseCondition;
		this.CurLevelSilverReward = GameDefine.DefaultSilverReward;
		for (int i = 0; i < this.PlayerUpgradeDataList.Count; i++)
		{
			UpgradeData upgradeDataById = DataManager.GetUpgradeDataById(this.PlayerUpgradeDataList[i]);
			this.ChangeLevelVal(upgradeDataById.EffectTypeE, upgradeDataById.Eff_Value);
		}
		if (this.BackPackContainer.ContainerSize < this.CurLevelPackNum)
		{
			this.BackPackContainer.AddContainerSize(this.CurLevelPackNum);
		}
	}
