//UIRoot
		public void OnGUI()
		{
			ModMenu.OnGUI();
		}

//PlayerData
		public int Health
		{
			get
			{
				if (ModMenu.Hack1)
				{
					return 9999999;
				}
				return this.health;
			}
		}
		
		public int Jacket
		{
			get
			{
				if (ModMenu.Hack3)
				{
					return 999999;
				}
				return this._jacket;
			}
		}
		
		public int MedKits
		{
			get
			{
				if (ModMenu.Hack3)
				{
					return 999999;
				}
				return this.medKits;
			}
		}
		
//PlayerSlot
		public int Ammo
		{
			get
			{
				if (ModMenu.Hack2)
				{
					return 99999;
				}
				return this.ammo;
			}
		}