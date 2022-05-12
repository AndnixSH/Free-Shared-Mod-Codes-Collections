//Battle.Logic.Health - 20x
	public void TakeDamage(Damage damage)
		{
			long num = (long)damage.Amount;
			if (!this.IsDead && num > 0L)
			{
				if (ModMenu.Hack1)
				{
					num = this.calcFinalDamageAmount(damage, num * 20L);
				}
				else
				{
					num = this.calcFinalDamageAmount(damage, num);
				}
				if (!damage.IsDoT)
				{
					num = this.checkTransferDamage(num);
				}
			}

//God mode
//BattleField
private IBattleFieldObject findNearestMemberOfEnemyModMenu(ModMenu fromModMenu, IBattleFieldObject fromObj)
		{
			if (ModMenu.Hack2)
			{
				return null;
			}
		}


//CostedSkillPerform
public float CooldownTime
		{
			get
			{
				if (ModMenu.Hack2)
				{
					return this._info.Cooldown * 0f;
				}
				return this._info.Cooldown;
			}
		}


		public override void TakeTime(float seconds)
		{
			base.TakeTime(seconds);
			if (this._currentCooldownInSeconds > 0f)
			{
				if (ModMenu.Hack2)
				{
					this._currentCooldownInSeconds -= seconds * 0f;
					return;
				}
				this._currentCooldownInSeconds -= seconds;
			}
		}