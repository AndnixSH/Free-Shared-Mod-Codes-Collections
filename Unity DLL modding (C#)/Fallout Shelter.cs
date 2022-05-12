//UIRoot
Put toast in it

//EmergencyParameters.cs
	public int AfterRaidersExperienceReward
	{
		get
		{
			return 2130706432;
		}
	}

	public int AfterDeathclawExperienceReward
	{
		get
		{
			return 2130706432;
		}
	}

	public int AfterGhoulExperienceReward
	{
		get
		{
			return 2130706432;
		}
	}

	public int AfterMoleratExperienceReward
	{
		get
		{
			return 2130706432;
		}
	}

	public int AfterFireExperienceReward
	{
		get
		{
			return 2130706432;
		}
	}

	public int AfterRadroachesExperienceReward
	{
		get
		{
			return 2130706432;
		}
	}

	public int AfterRadscorpionsExperienceReward
	{
		get
		{
			return 2130706432;
		}
	}

	//GameResources
	public static GameResources operator -(GameResources A, GameResources B)
	{
		GameResources gameResources = new GameResources();
		int num = 0;
		while (num < A.m_Resources.Length && num < B.m_Resources.Length)
		{
			gameResources.m_Resources[num] = A.m_Resources[num] + B.m_Resources[num]; //
			num++;
		}
		return gameResources;
	}


//Inventory
	public int ItemCountMax
	{
		get
		{
			this.m_itemCountMax = 2130706432;
			return this.m_itemCountMax;
		}
	}
	
//ProductionLevel.cs
	public int SuccessRushExperienceReward
	{
		get
		{
			return 2130706432;
		}
	}
	
//Vault.cs
	public void RemoveLunchBox(LunchBox box)
	{
	}
