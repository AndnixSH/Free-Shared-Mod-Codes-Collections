//Game: Spirit Wars Online Turn-based RPG
//Version: 0.1.5
//APK: https://apkpure.com/spirit-wars-online-turn-based-rpg/com.Medrick.RoosterUnity

//Calling Mod menu
//Namespace RWreboot
//Class: GameManager, SoundManager
public void OnGUI()
{
	ModMenu.ButtonMenu();
}

//Class: FightSystem
public int calculateDamage(SecretLong attackerHeroId, SecretLong defenderHeroId, SecretInt32 attackPower)
		{
			int num;
			// Mod here //
			if (ModMenu.toggle1)
			{
				if (this.isMyTurn())
				{
					num = attackPower * 20; // x20 DMG
				}
				else
				{
					num = attackPower - attackPower; // God mode
				}
			}
			// //////// //
			else
			{
				num = attackPower;
			}
			if (this.fightData != null)
			{
				if (attackerHeroId >= 0L)
				{
					foreach (Ability ability in this.fightData.getTriggeredAbilitiesOnAttackerDamage(attackerHeroId))
					{
						if (ability != null)
						{
							num = ability.doOperationOnDamage(num, attackerHeroId, defenderHeroId);
						}
					}
				}
				if (defenderHeroId >= 0L)
				{
					foreach (Ability ability2 in this.fightData.getTriggeredAbilitiesOnDefenderDamage(defenderHeroId))
					{
						if (ability2 != null)
						{
							num = ability2.doOperationOnDamage(num, attackerHeroId, defenderHeroId);
						}
					}
				}
			}
			Debug.Log("DAMAGE: " + num);
			return num;
		}