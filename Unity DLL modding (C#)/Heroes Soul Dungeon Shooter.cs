//Game: Heroes Soul Dungeon Shooter
//Version: 1.1.0
//APK: https://apkpure.com/heroes-soul-dungeon-shooter/com.mygame.heroessoul

//GameOverPanel
private void CalculateRewards()
{
	if (GameOverPanel.s_dontReward)
	{
		this.m_rewards[0] = 0;
		this.m_rewards[1] = 0;
		GameOverPanel.s_dontReward = false;
		return;
	}
	MapConfig_GameDesigner configGameDesigner = GameStats.m_mapGenerator.m_configGameDesigner;
	int @int = PlayerPrefs.GetInt(GameStorage.KEY_CURRENT_MAP);
	int num = PlayerPrefs.GetInt(GameStorage.KEY_CURRENT_LEVEL);
	int num2 = 0;
	this.m_rewards[0] = 0;
	if (GameOverPanel.s_isWinGame)
	{
		num++;
		GameOverPanel.s_isWinGame = false;
	}
	for (int i = 0; i <= @int; i++)
	{
		MapConfig_GameDesigner.MapLevelConfig mapLevelConfig = configGameDesigner.mapsConfig[i];
		int num3;
		if (i == @int)
		{
			num3 = num;
		}
		else
		{
			num3 = mapLevelConfig.levelsConfig.Length;
		}
		for (int j = 0; j < num3; j++)
		{
			num2++;
			this.m_rewards[0] += mapLevelConfig.levelsConfig[j].gemsReward * 200; //x200 reward
		}
	}
	this.m_rewards[1] = 50 * num2 + (this.m_killedEnemies + GameStats.m_playerController.Golds) * 200; //x200 reward
}

//Class: PlayerController
public int Golds
{
	get
	{
		return this.<Golds>k__BackingField * 999;
	}
}

public int CurrentMana
{
	get
	{
		return 99999;
	}
}

protected override void DoTakeDamage(int dam, bool isCritical, string perpetrator)
{
	if (base.BelongingRoom)
	{
		string characterName = this.m_config.characterName;
		int @int = PlayerPrefs.GetInt(GameStorage.KEY_CURRENT_MAP);
		int int2 = PlayerPrefs.GetInt(GameStorage.KEY_CURRENT_LEVEL);
		int roomID = base.BelongingRoom.RoomID;
		string layoutID = base.BelongingRoom.LayoutID;
		int waveId = base.BelongingRoom.WaveId;
		TrackingManager.TrackHeroDamaged(characterName, dam, @int, int2, roomID, perpetrator, layoutID, waveId);
	}
	if (!MainMenu.IsCompletedTutorial() && dam >= this.CurrentArmor + this.CurrentHealth)
	{
		dam = this.CurrentArmor + this.CurrentHealth - 1; //Changed
	}
	base.StartCoroutine(base.MakeUnhurtable(0.1f));
	this.m_armorRecoverTimeAcc = -this.m_armorRecoverTime;
	GameStats.m_cameraShake.ShakeCamera(0.1f, 0.0015f);
	base.DoTakeDamage(dam, isCritical, perpetrator);
}

public void ChangeMana(int delta)
{
	if (this.m_notInGame)
	{
		return;
	}
	this.CurrentMana += delta;
	this.CurrentMana = Mathf.Clamp(this.CurrentMana, 0, this.CurrentLevel.mana);
	if (this.CurrentMana == 0)
	{
		int @int = PlayerPrefs.GetInt(GameStorage.KEY_CURRENT_MAP);
		int int2 = PlayerPrefs.GetInt(GameStorage.KEY_CURRENT_LEVEL);
		TrackingManager.TrackOutMana(this.m_config.characterName, @int, int2);
	}
	if (delta > 0)
	{
		GameStats.m_messageNotifier.PushMessage(base.transform.position, Vector2.zero, string.Format("+{0}", delta), MessageNotifier.COLOR_MANA, 0, 0); //Change -1,0 to 0,0
		GameStats.m_soundManager.PlayOneShot(GameStats.m_heroManager.m_pickupSound);
	}
}