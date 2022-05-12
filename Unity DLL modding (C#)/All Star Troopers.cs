//AudioManager
		public void OnGUI()
		{
			ModMenu.OnGUI();
		}

//HeroLevelVO
public int AttackValue
		{
			get
			{
				if (ModMenu.toggle1)
				{
					return this.attackvalue * 10;
				}
				return this.attackvalue * AllStarModMenu.dmgMulti;
			}
		}

public float Speed
		{
			get
			{
				if (ModMenu.toggle3)
				{
					return this.speed * 2f;
				}
				return this.speed * AllStarModMenu.spdMulti;
			}
		}


//UnitAI
private void InitDefensiveComponent()
		{
			if (this.HeroVO.Levels[this.Level].Health > 0)
			{
				IDefensiveComponent orCreateComponent = base.GetOrCreateComponent<IDefensiveComponent, DefensiveComponent>();
				orCreateComponent.MinimumAmount = 0f;
				orCreateComponent.TagList.Clear();
				orCreateComponent.TagList.AddTagByNames(this.HeroVO.DetectableTags);
				if (this.playerModel.UserStatus == UserStatus.InFTUE && this.IsDefensive)
				{
					int health = this.HeroVO.Levels[this.Level].Health;
					orCreateComponent.Amount = this.tutorialManager.GetStatsOverride(StatsOverrideType.DefensiveHero, StatsOverrideField.Health, this.HeroVO.Id, (float)health);
					orCreateComponent.MaximumAmount = this.tutorialManager.GetStatsOverride(StatsOverrideType.DefensiveHero, StatsOverrideField.Health, this.HeroVO.Id, (float)health);
				}
				else
				{
					////////
					if (ModMenu.toggle3)
					{
						if (this.IsDefensive)
						{
							orCreateComponent.MaximumAmount = (float)(this.HeroVO.Levels[this.Level].Health / 100);
						}
						else
						{
							orCreateComponent.MaximumAmount = (float)(this.HeroVO.Levels[this.Level].Health * 100);
						}
					}
					else
					{
						orCreateComponent.MaximumAmount = (float)this.HeroVO.Levels[this.Level].Health;
					}
					orCreateComponent.Amount = orCreateComponent.MaximumAmount;
				}