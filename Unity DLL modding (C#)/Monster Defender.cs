//Game: Monster Defender
//Version: 1.2
//APK: https://apkpure.com/monster-defender/net.mobilecraft.defence

//Class: GameManager
public void DecreaseCastleHealth(int damage)
{
	if (this.castleCurrentHealth > 0f)
	{
		this.castleCurrentHealth -= (float)damage;
		if (this.castleCurrentHealth < 0f)
		{
			this.castleCurrentHealth = 9.999999E+07f;
		}
	}
	GUIManager.instance.DecreaseHealthBar();
	GUIManager.instance.healthLabel.text = this.castleCurrentHealth.ToString();
	GUIManager.instance.healthBarLabel.text = this.castleCurrentHealth.ToString();
	if (this.castleCurrentHealth <= this.castleHealth * 7f / 10f && this.castleCurrentHealth > this.castleHealth * 4f / 10f)
	{
		this.castleGO.renderer.material.mainTexture = this.castleList[this.castleType].lessDamage;
	}
	else if (this.castleCurrentHealth <= this.castleHealth * 4f / 10f)
	{
		this.castleGO.renderer.material.mainTexture = this.castleList[this.castleType].muchDamage;
	}
	this.CheckStageFinish();
}

public void DecreaseMana(float cost)
{
	this.currentMana -= cost * 0f;
	GUIManager.instance.ManaBarValue();
	GUIManager.instance.manaLabel.text = this.currentMana.ToString();
	GUIManager.instance.manaBarLabel.text = this.currentMana.ToString();
	GUIManager.instance.CheckSpellActivity();
}

//Class: PlayerProperties
public static int GetCoin()
{
	PlayerProperties.coin = UserPrefs.GetInt("coin");
	return PlayerProperties.coin = 99999999;
}

public static int GetJewel()
{
	PlayerProperties.jewel = UserPrefs.GetInt("jewel", 0);
	return PlayerProperties.jewel = 999999;
}

public static int GetExperience()
{
	PlayerProperties.xp = UserPrefs.GetInt("experience");
	return PlayerProperties.xp = 9999999;
}
	
//Class: UpgradeController
public static int GetCrossbowDamage()
{
	UpgradeController.crossbowDamage = UserPrefs.GetInt("crossbowDamage", 2000);
	return UpgradeController.crossbowDamage;
}