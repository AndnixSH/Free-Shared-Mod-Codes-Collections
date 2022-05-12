//FPSPlayer
	public void ApplyDamage(float damage)
	{
		PlayerR player = PlayerRManager.GetPlayer();
		if (GameR.gameState != GameState.GAMEPLAY || player.blood <= 0f)
		{
			return;
		}
		FPSRigidBodyWalker component = base.GetComponent<FPSRigidBodyWalker>();
		player.blood -= damage * 0f; // god mode
		if (player.blood <= 0f)
		{
			player.blood = 0f;
			GameR.gameManager.bGameOver = false;
			GameR.gameManager.bWin = true; //Win if you die
			OverUI.overUIScript.ShowGameOver(0);
		}
		...
	}

//NumericalBreakBombModeManager, NumericalCompetitiveModeManager, NumericalHostageRescueModeManager, NumericalKnifeModeManager 
	public static float geHp()
	{
		return 0f;
	}
	
//NumericalZombieModeManager
	public static float getHp(int level, ZMB zmb)
	{
		if (level >= 20)
		{
			level = 20;
		}
		float num = 0f;
		if (zmb != ZMB.Zombie)
		{
			if (zmb != ZMB.MediumBoss)
			{
				if (zmb == ZMB.Boss)
				{
					num = 1000f * ((float)level + 0.1f * (float)level);
				}
			}
			else
			{
				num = 60f * ((float)level + 0.1f * (float)level);
			}
		}
		else
		{
			num = 100f * ((float)level + 0.1f * (float)level);
		}
		if (level >= 20)
		{
			num = UnityEngine.Random.Range(0.8f * num, 1.2f * num);
		}
		return num * 0f;
	}