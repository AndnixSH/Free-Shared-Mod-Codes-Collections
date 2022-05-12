//Shared.Battle
//Unit
		public int luckBonus
		{
			get
			{
				if (this.isEnemyType)
				{
					return 0;
				}
				return this._luckBonus * 1000;
			}
		}

		public int attackDamageBonus
		{
			get
			{
				if (!ModMenu.Hack1)
				{
					return this._attackDamageBonus;
				}
				if (this.isEnemyType)
				{
					return 0;
				}
				return this._attackDamageBonus * 1000;
			}
		}
		
		public int defense
		{
			get
			{
				if (!ModMenu.Hack1)
				{
					return this._defense;
				}
				if (this.isEnemyType)
				{
					return 0;
				}
				return this._defense * 1000;
			}
		}
		
		public int defenseBonus
		{
			get
			{
				if (!ModMenu.Hack1)
				{
					return this._defenseBonus;
				}
				if (this.isEnemyType)
				{
					return 0;
				}
				return this._defenseBonus * 1000;
			}
		}
		
		public int criticalDamageBonus
		{
			get
			{
				if (!ModMenu.Hack1)
				{
					return this._criticalDamageBonus;
				}
				if (this.isEnemyType)
				{
					return 0;
				}
				return this._criticalDamageBonus * 1000;
			}
		}