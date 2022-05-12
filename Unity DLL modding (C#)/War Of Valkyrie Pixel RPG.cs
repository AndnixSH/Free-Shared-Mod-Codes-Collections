public void OnGUI()
	{
		if (GUI.Button(new Rect((float)(Screen.width / 2 - 50), 20f, 130f, 30f), "SHOW/HIDE"))
		{
			MainControoler.ShowHide = !MainControoler.ShowHide;
		}
		if (MainControoler.ShowHide)
		{
			GUI.Box(new Rect((float)(Screen.width / 2 - 50), 50f, 180f, 245f), "");
			if (GUI.Button(new Rect((float)(Screen.width / 2 - 50), 80f, 180f, 30f), "Add 10k Souls"))
			{
				GlobalParam.haveGold += 10000L;
			}
			if (GUI.Button(new Rect((float)(Screen.width / 2 - 50), 115f, 180f, 30f), "Add 10k RunePower"))
			{
				GlobalParam.haveRunePowerPoint += 10000;
			}
			if (GUI.Button(new Rect((float)(Screen.width / 2 - 50), 150f, 180f, 30f), "Skip Enemy"))
			{
				GlobalParam.enemyPartyNum--;
				GlobalParam.enemyLiveNum--;
			}
			if (GUI.Button(new Rect((float)(Screen.width / 2 - 50), 185f, 180f, 30f), "Add 10 DragonSouls"))
			{
				PlayerPrefs.SetInt("HaveDragonSoul", PlayerPrefs.GetInt("HaveDragonSoul") + 10);
			}
			if (GUI.Button(new Rect((float)(Screen.width / 2 - 50), 220f, 180f, 30f), "Shorten Distance"))
			{
				GlobalParam.Distance--;
			}
			if (GUI.Button(new Rect((float)(Screen.width / 2 - 50), 255f, 180f, 30f), "Visit Sbenny.com"))
			{
				Application.OpenURL("https://platinmods.com");
			}
		}
	}