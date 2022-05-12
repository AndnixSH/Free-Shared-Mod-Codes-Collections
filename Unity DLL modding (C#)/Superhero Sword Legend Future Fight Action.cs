//Game: Superhero Sword Legend Future Fight: Action RPG
//Version: 1.1.24
//APK: https://apkpure.com/superhero-sword-legend-future-fight-action-rpg/com.unimob.superhero.sword

//Mod menu
public MainControl _Main;
DataControl.Instance.AddGold(999999, this.goldText);
DataControl.Instance.AddDiamond(99999, this.diamondText);

//AudioManager
public void OnGUI()
{
	ModMenu.OnGUI();
}

//EnemyControl
public void SetHealth(float damagePlayer, int isCrit)
{
	damagePlayer = Mathf.Round(damagePlayer);
	if (!this.isDie)
	{
		this.maxHealthEnemy = this.healthNow / this.healthBarImage.fillAmount;
		if (ModMenu.toggle1)
		{
			this.healthNow -= damagePlayer * 20f;
		}
		else
		{
			this.healthNow -= damagePlayer;
		}
	}
}

//PlayerControl
public void SetHealth(float damageEnemy, GameObject enemy, int isCrit)
{
	float armorEnemy;
	float damageEnemy2;
	if (!this.isPvP)
	{
		armorEnemy = enemy.GetComponent<EnemyControl>().armorEnemy;
		damageEnemy2 = enemy.GetComponent<EnemyControl>().damageEnemy;
	}
	else
	{
		armorEnemy = enemy.GetComponent<PvPPlayerControl>().armorPlayer;
		damageEnemy2 = enemy.GetComponent<PvPPlayerControl>().damagePlayer;
	}
	int num = Random.Range(0, 1000);
	if (num > this.neTranh)
	{
		float[] array = HeroRecipe.Instance.GameDamageCalculationFormula(damageEnemy2, damageEnemy2, 1f, this.armorPlayer, 1f);
		this.SpawnBeHitEffect(base.transform.position);
		this.maxHealthPlayer = this.healthNow / this.healthBarImage.fillAmount;
		if (this.phanSatThuong > 0)
		{
			float[] array2 = HeroRecipe.Instance.GameDamageCalculationFormula((float)this.phanSatThuong, (float)this.phanSatThuong, 1f, armorEnemy, 1f);
			if (!this.isPvP)
			{
				enemy.GetComponent<EnemyControl>().SetHealth(array2[0], 1);
			}
			else
			{
				enemy.GetComponent<PvPPlayerControl>().SetHealth(array2[0], base.gameObject, 1);
			}
		}
		if (isCrit == 2)
		{
			array[0] *= 2f;
		}
		int num2 = (int)(array[0] - (float)this.boQuaSatThuong);
		if (num2 <= 0)
		{
			num2 = 1;
		}
		if (ModMenu.toggle2)
		{
			this.healthNow -= (float)num2 * 0f;
		}
		else
		{
			this.healthNow -= (float)num2;
		}
		...
	}
	...
}