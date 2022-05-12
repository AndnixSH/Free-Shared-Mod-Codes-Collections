//Game: 塔防三國志 群英齊聚 重溫經典
//Version: 4.6.01
//APK: https://apkpure.com/%E5%A1%94%E9%98%B2%E4%B8%89%E5%9C%8B%E5%BF%97%EF%BC%9A%E7%BE%A4%E8%8B%B1%E9%BD%8A%E8%81%9A-%E9%87%8D%E6%BA%AB%E7%B6%93%E5%85%B8/com.bigbull.tdsgtw

//Class: DamageHandler
public float Damage(AttackDamage.DamageType damageType, float totalDamage, WizardController attacker, Shield[] shields, float attackDuration, bool allowMultiHirForMana = false, bool takeDamage = true)
{
	if (damageType != AttackDamage.DamageType.Heal)
	{
		float num = 0f;
		foreach (Shield shield in shields)
		{
			num += shield.ResistanceDamage(totalDamage, damageType);
		}
		totalDamage -= num;
	}
	if (totalDamage < 1E-05f)
	{
		totalDamage = 0f;
	}
	if (damageType == AttackDamage.DamageType.Damage && takeDamage)
	{
		if (attacker.team == WizardController.Team.Left)
		{
			this.wizardController.health -= totalDamage * 100f;
		}
		else
		{
			this.wizardController.health -= totalDamage / 100f;
		}
	}
}
	
//Class: GameManager
public void OnGUI()
{
	ModMenu.OnGUI();
}

//For mod menu
SessionDb.DB.currency.Add(CurrencyType.Coins, 99999);
SessionDb.DB.currency.Add(CurrencyType.Gems, 99999);