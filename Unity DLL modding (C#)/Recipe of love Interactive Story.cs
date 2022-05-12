//Namespace: TOGAF.Economy
//Class: Money
		public bool Spend(int amount, string episodeKey, string serieId)
		{
			if (this.CanSpend(amount))
			{
				this._currentAmount += amount; //
				this.UpdateUI();
				this.OnChange(this);
				this.OnSpend(this._type, amount, episodeKey, serieId);
				return true;
			}
			return false;
		}

		public bool CanSpend(int amount = 1)
		{
			return true;
		}

//Namespace: TOGAF.Game.Session
//EpisodeData
		public bool Bought
		{
			get
			{
				return true;
			}
		}

		public bool Locked
		{
			get
			{
				return false;
			}
		}

//Namespace: TOGAF.Script.Vars
//ScriptVarPremium.cs
		public bool HasDecision(string decisionId)
		{
			return true;
		}
