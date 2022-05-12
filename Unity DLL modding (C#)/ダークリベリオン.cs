//Uiroot
	public void OnGUI()
	{
		ModMenu.Callme();
	}

// BattleActor
	public int MagicalAttack
	{
		get
		{
			float num = 1f;
			foreach (BattleActor.BuffData buffData in this.Buffs)
			{
				BattleActor.BuffType type = buffData.Type;
				if (type != BattleActor.BuffType.MagicalOffenseUp)
				{
					if (type == BattleActor.BuffType.MagicalOffenseDown)
					{
						num -= buffData.Rate;
					}
				}
				else
				{
					num += buffData.Rate;
				}
			}
			if (ModMenu.Hack1 && this.TargetActor.Team == BattleActor.TeamType.Enemy)
			{
				return Mathf.CeilToInt((float)this.BaseMagicalAttack * num) * 20;
			}
			if (ModMenu.Hack2 && this.TargetActor.Team == BattleActor.TeamType.Player)
			{
				return Mathf.CeilToInt((float)this.BaseMagicalAttack * num) / 20;
			}
			return Mathf.CeilToInt((float)this.BaseMagicalAttack * num);
		}
	}