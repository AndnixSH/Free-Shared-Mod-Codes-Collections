// WorldToScreenHudItem
//01 00 A0 E3 1E FF 2F E1
	public bool VisibleThroughWalls // 0xB17E10
	{
		//X86: AE1A79
		get
		{
			return true;
		}
	}

	public bool InView // 0xB17E20
	{
		//X86: AE1A8D
		get
		{
			return true;
		}
	}
	
//TankData (patched)
		public float TurretSpeed
		{
			get
			{
				return this._turretSpeed * 4f;
			}
		}