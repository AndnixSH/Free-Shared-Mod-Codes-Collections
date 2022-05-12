//Game: TEKKEN™
//Version: 1.5
//APK: https://apkpure.com/tekken%E2%84%A2/eu.bandainamcoent.tekkenmobile

//Class: FighterInfo
//God mode
		public void ApplyHealth(int health, int maxHp)
		{
			if (ModMenu.hack1 && !this.IsAI)
			{
				this.FighterHPMax = maxHp + 100000;
				this.FighterHPCurrent = health + 100000;
			}
			else
			{
				this.FighterHPMax = maxHp;
				this.FighterHPCurrent = health;
			}
			this.FighterTimeStamp = (double)DateTimeHelper.UtcTimeInMilliseconds();
			this.FighterKnockedOut = (health <= 0);
		}

		public int FighterHPCurrent
		{
			get
			{
				//Auto win
				if (ModMenu.hack3 && this.IsAI)
				{
					return 0;
				}
				//1 hit kill
				if (ModMenu.hack2 && this.IsAI)
				{
					return 1;
				}
				if (this.IsLockedFighter && this.LockedAttacker != null)
				{
					return this.LockedAttacker.FighterHPCurrent;
				}
				return this.fighterHPCurrent;
			}
		}