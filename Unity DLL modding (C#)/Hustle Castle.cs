//Game: Hustle Castle: Fantasy Kingdom (server-sided)
//Version: 1.11.5
//APK: https://play.google.com/store/apps/details?id=com.my.hc.rpg.kingdom.simulator

//AudioSystem
public void OnGUI()
		{
			ModMenu.OnGUI();
		}

//BattleEndScreen


//BattleEmulation.BattleUnit
	public int Damage(BattleObject source, BattleAbilityData abilityData, DamageType damageType, AbilityResultAction.Types.Result result, int damageValue, bool crit)
		{
			//With mod menu
			int num;
			if (ModMenu.toggle2 && base.Side == Sh.ServerInteraction.BattleObject.Types.Side.ATTACKER)
			{
				num = 0;
			}
			else if (base.Side != Sh.ServerInteraction.BattleObject.Types.Side.ATTACKER)
			{
				num = damageEntry.Value * ModMenu.dmgMulti;
			}
			else
			{
				num = damageEntry.Value;
			}
			
			//Without menu
			int num;
			if (this.Side == BattleObject.Types.Side.ATTACKER)
			{
				num = damageEntry.Value * 0;
			}
			else
			{
				num = damageEntry.Value * 10;
			}
			
			//
			double num = (double)damageValue * base.BattleCalculator.GetGlobalDamageMultiplier(damageType);
			if (ModMenu.toggle2 && this.Side == Sh.ServerInteraction.BattleObject.Types.Side.ATTACKER)
			{
				num = (float)damageValue * base.BattleCalculator.GetGlobalDamageMultiplier(damageType) * 1E-05f;
			}
			if (this.Side != Sh.ServerInteraction.BattleObject.Types.Side.ATTACKER)
			{
				num = (float)damageValue * base.BattleCalculator.GetGlobalDamageMultiplier(damageType) * ModMenu.dmgMulti;
			}
		}