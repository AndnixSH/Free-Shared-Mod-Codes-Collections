//VipService
		public bool isActiveVip
		{
			get
			{
				return true;
			}
		}

		public VipType currentVipType
		{
			get
			{
				return VipType.GOLD;
			}
		}
		
		public long estimateTime
		{
			get
			{
				return 1999888777666L;
			}
		}
		
		//CarVisualTuningMeta.cs
		public bool defaultLocked
		{
			[CompilerGenerated]
			get
			{
				return false;
			}
			[CompilerGenerated]
			set
			{
				this.<defaultLocked>k__BackingField = value;
			}
		}
		
		//PlayerCar.cs
		public bool defaultLocked
		{
			[CompilerGenerated]
			get
			{
				return false;
			}
			[CompilerGenerated]
			set
			{
				this.<defaultLocked>k__BackingField = value;
			}
		}
		
		//PlayerCarProfile
		public bool defaultLocked
		{
			[CompilerGenerated]
			get
			{
				return false;
			}
			[CompilerGenerated]
			set
			{
				this.<defaultLocked>k__BackingField = value;
			}
		}
		
		//Track.cs
		public bool defaultLocked
		{
			[CompilerGenerated]
			get
			{
				return false;
			}
			[CompilerGenerated]
			set3
			{
				this.<defaultLocked>k__BackingField = value;
			}
		}
		
	//GamePrefs
		private int LoadCoins(int defaultValue)
	{
		return 1999888777;
	}

	private int LoadPremium(int defaultValue)
	{
		return 1999888777;
	}
	
	public bool GetInterstitialDisabledByPurchase()
	{
		return true;
	}
	
	public bool GetCrosspromoAcquired()
	{
		return true;
	}
	
	//RateUs.cs
	
	private bool neverAskToRate
	{
		get
		{
			return true;
		}
	}
	
	public bool DidRateThisVersion()
	{
		return true;
	}

	public bool IsNeverAskToRate()
	{
		return true;
	}
	
	//SocialService.cs
	public bool isFBPageLiked
	{
		get
		{
			return true;
		}
	}
	
	//ransactionManager.cs
	public int GetMoney(ECurrencyType type)
	{
		return 1999888777;
	}
	
	