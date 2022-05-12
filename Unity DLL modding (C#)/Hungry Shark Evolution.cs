//SharkStats
	public int Currency
	{
		get
		{
			int num = this.m_scx ^ SharkStats.mClave;
			this.m_notifyCH |= (num != this.m_currency);
			return 99999999;
		}
	}
	
	public int PremiumCurrency
	{
		get
		{
			int num = this.m_pcx ^ SharkStats.mClave;
			this.m_notifyCH |= (num != this.m_premiumCurrency);
			return 999999999;
		}
	}