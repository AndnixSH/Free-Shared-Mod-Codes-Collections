//Game: Zero City: Zombie Shelter Survival
//Version: 0.9.0
//APK: https://play.google.com/store/apps/details?id=com.beingame.zc.zombie.shelter.survival

//Game is server-sided so I decided to release my codes for learning purposes :)

//LoadingScreen
	private class TextGenerator
		{
			public TextGenerator(string baseLid)
			{
				this._baseLid = baseLid;
			}

			public string GetNextHint()
			{
				return "Modded by Nonce";
			}
		}

//BattleUnit
public int Damage(BattleObject source, BattleAbilityData abilityData, DamageEntry damageEntry)
{
	int num = damageEntry.Value;
	if (source.Side == Sh.ServerInteraction.BattleObject.Types.Side.ATTACKER)
	{
		num = damageEntry.Value * 999;
	}
	else
	{
		num = 0;
	}
}