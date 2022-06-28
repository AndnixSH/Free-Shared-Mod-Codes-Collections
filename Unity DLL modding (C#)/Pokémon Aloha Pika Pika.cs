//Tried it, doesn't work well. The game has power check server-side
	private void Hurt(HurtData hurtData)
	{
		long damage = hurtData.damage;
		ActorAIBase attacker = hurtData.attacker;
		if (damage > 0L)
		{
			BattleDebug.model.Log("{0} : Hurt curHp:{1} -hp:{2}", base.GetPosStr(), this.actorValue.hp, damage);
		}
		else
		{
			BattleDebug.model.Log("{0} : Hurt curHp:{1} +hp:{2}", base.GetPosStr(), this.actorValue.hp, -damage);
		}
		long num = this.actorValue.hp - damage;
		//Mod here
		if (attacker.CampType == CAMP_TYPE.OUR)
		{
			num = this.actorValue.hp - damage * (long)ModMenu.AttackMultiplier;
		}
		if (attacker.CampType != CAMP_TYPE.OUR)
		{
			num = this.actorValue.hp - damage / (long)ModMenu.DefenceMultiplier;
		}
		//---------
		this.SetHp(num);
		BattleManager.instance.buffMgr.DoEffectHp(this);
		if (damage > 0L)
		{
			long num2;
			if (num >= 0L)
			{
				num2 = damage;
			}
			else
			{
				num2 = damage + num;
			}
			attacker.Damage += num2;
			this.actorValue.LastDamage = num2;
			if (this.actorState is PokemonStateHurt)
			{
				Debugger.LogError(string.Empty);
			}
			else
			{
				this.hurtData = hurtData;
				this.ChangeActorState<PokemonStateHurt>();
			}
		}
		else if (!BattleManager.instance.Skip)
		{
			attacker.PlayEffectBehit(this);
			this.ShowHarmWord(-damage, hurtData.harmEffect);
		}
	}