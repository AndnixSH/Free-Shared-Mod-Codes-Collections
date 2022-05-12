using System;
using System.Collections.Generic;
using System.Runtime.CompilerServices;
using Reborn.TaskManaging;
using UnityEngine;
using UnityEngine.Events;
using UnityEngine.UI;

public class DeveloperMenu : MonoBehaviour
{
	public static bool DeveloperMenuEnabled
	{
		[CompilerGenerated]
		get
		{
			return true;
		}
		[CompilerGenerated]
		private set
		{
			DeveloperMenu.<DeveloperMenuEnabled>k__BackingField = value;
		}
	}

	public static bool VideoMode { get; private set; }

	public static bool SaveGameEnabled { get; set; }

	public static bool TutorialEnabled { get; set; }

	private void Awake()
	{
		this.cityLevelSlider.onValueChanged.AddListener(delegate(float arg0)
		{
			this.currentCityLevel = (int)this.cityLevelSlider.value;
			this.citylevel.text = this.currentCityLevel.ToString();
		});
		this.writeTextWindow = Object.Instantiate<WriteTextWindow>(this.writeTextWindow);
		this.writeTextWindow.transform.SetParent(base.transform, false);
		this.saveGameToggle.onValueChanged.AddListener(delegate(bool arg0)
		{
			DeveloperMenu.SaveGameEnabled = arg0;
			if (arg0)
			{
				PlayerPrefs.SetInt("EnableSaveGame", 1);
				return;
			}
			PlayerPrefs.SetInt("EnableSaveGame", 0);
		});
		this.tutorialtoggle.onValueChanged.AddListener(delegate(bool arg0)
		{
			DeveloperMenu.TutorialEnabled = arg0;
			if (arg0)
			{
				PlayerPrefs.SetInt("EnableTutorial", 1);
				return;
			}
			PlayerPrefs.SetInt("EnableTutorial", 0);
		});
		this.fillResourcesToMax.onClick.AddListener(new UnityAction(this.FillResourcesToMax));
		this.FighterToggle(this.swordButton, FighterTypes.SWORD_SHIELD);
		this.FighterToggle(this.twoHandedButton, FighterTypes.TWO_HANDED);
		this.FighterToggle(this.dualButton, FighterTypes.DUAL_WEAPON);
		this.FighterToggle(this.spearButton, FighterTypes.SPEAR);
		this.pathSelection.options.Clear();
		if (this.mapManager != null)
		{
			MissionPath[] paths = this.mapManager.paths;
			for (int i = 0; i < paths.Length; i++)
			{
				Dropdown.OptionData item = new Dropdown.OptionData(paths[i].id);
				this.pathSelection.options.Add(item);
				this.selectedPath = 0;
			}
		}
		this.pathSelection.value = this.selectedPath;
		this.pathSelection.RefreshShownValue();
		this.RefreshMissionDropdown();
		this.pathSelection.onValueChanged.AddListener(delegate(int arg0)
		{
			this.selectedPath = arg0;
			this.RefreshMissionDropdown();
		});
		this.missionSelection.onValueChanged.AddListener(delegate(int arg0)
		{
			this.selectedMission = arg0;
		});
		this.unlockPaths.onClick.AddListener(delegate()
		{
			if (this.mapManager != null)
			{
				MapManager.UnlockPaths(this.selectedPath, this.selectedMission, this.mapManager, false);
			}
		});
		this.addArmorySlots.onClick.AddListener(delegate()
		{
			GameFSM.gameData.AddArmorySlots(SlotType.Generic, 5);
		});
		this.addRandomWeapons.onClick.AddListener(delegate()
		{
			List<EquipableItemPrefab> allWeaponsAndItems = GFFEquipableItemManager.Instance.GetAllWeaponsAndItems();
			for (int l = 0; l < 5; l++)
			{
				int index = Random.Range(0, allWeaponsAndItems.Count);
				GameFSM.gameData.armory.AddItem(new EquipableItemData(allWeaponsAndItems[index].infoPrefabPath), true);
			}
		});
		this.addOrbsButton.onClick.AddListener(delegate()
		{
			OrbManager.OrbColor value = (OrbManager.OrbColor)this.orbColor.value;
			OrbManager.OrbSize value2 = (OrbManager.OrbSize)this.orbSize.value;
			string key = OrbManager.GetKey(value, value2);
			OrbManager.Instance.Add(key, 1, null);
			this.orbQuantity.text = OrbManager.Instance.GetOrbQuantity(key).ToString();
		});
		this.clearOrbsButton.onClick.AddListener(delegate()
		{
			OrbManager.OrbColor value = (OrbManager.OrbColor)this.orbColor.value;
			OrbManager.OrbSize value2 = (OrbManager.OrbSize)this.orbSize.value;
			string key = OrbManager.GetKey(value, value2);
			OrbManager.Instance.Substract(key, 999999999, null);
			this.orbQuantity.text = OrbManager.Instance.GetOrbQuantity(key).ToString();
		});
		this.orbSize.onValueChanged.AddListener(delegate(int arg0)
		{
			OrbManager.OrbColor value = (OrbManager.OrbColor)this.orbColor.value;
			OrbManager.OrbSize value2 = (OrbManager.OrbSize)this.orbSize.value;
			string key = OrbManager.GetKey(value, value2);
			this.orbQuantity.text = OrbManager.Instance.GetOrbQuantity(key).ToString();
		});
		this.orbColor.onValueChanged.AddListener(delegate(int arg0)
		{
			OrbManager.OrbColor value = (OrbManager.OrbColor)this.orbColor.value;
			OrbManager.OrbSize value2 = (OrbManager.OrbSize)this.orbSize.value;
			string key = OrbManager.GetKey(value, value2);
			this.orbQuantity.text = OrbManager.Instance.GetOrbQuantity(key).ToString();
		});
		DeveloperMenu.DeveloperMenuEnabled = true;
		this.addFighterButton.onClick.AddListener(delegate()
		{
			if (this.swordButton.isOn)
			{
				this.AddFighter(FighterTypes.SWORD_SHIELD);
				return;
			}
			if (this.dualButton.isOn)
			{
				this.AddFighter(FighterTypes.DUAL_WEAPON);
				return;
			}
			if (this.spearButton.isOn)
			{
				this.AddFighter(FighterTypes.SPEAR);
				return;
			}
			if (this.twoHandedButton.isOn)
			{
				this.AddFighter(FighterTypes.TWO_HANDED);
			}
		});
		FighterManager.GladiatorClass fighterClass = FighterManager.Instance.GetFighterClass(FighterTypes.SWORD_SHIELD);
		List<string> list = new List<string>();
		foreach (FighterManager.CharacterInfo characterInfo in fighterClass.prefabsCollection)
		{
			list.Add(characterInfo.visualPrefab);
		}
		this.visualAspects.options.Clear();
		this.visualAspects.AddOptions(list);
		this.openAdminDBMenuButton.onClick.AddListener(delegate()
		{
			this.adminDBMenu.Open();
		});
		this.cityNameButton.onClick.AddListener(delegate()
		{
			this.writeTextWindow.Open("Your city name here", "City Name", 60, null, new Text[]
			{
				this.cityName
			});
		});
		this.writeTextWindow.OnWriteNameEnd += delegate(string _newName)
		{
			GameFSM.userSaveGame.GetUserInfo().SetUserName(_newName);
			this.cityName.text = _newName;
			string text = GFFOnlineManager.Instance.UserMaintenanceID;
			if (string.IsNullOrEmpty(text))
			{
				text = GameFSM.userSaveGame.GetUserInfo().GetUserId(false);
			}
			if (!string.IsNullOrEmpty(text))
			{
				GFFOnlineManager.Instance.ChangeUserName(text, _newName, null);
			}
		};
		this.fameInputField.onEndEdit.AddListener(delegate(string arg0)
		{
			GameFSM.userSaveGame.GetUserInfo().OverrideFame(int.Parse(arg0));
		});
		this.cityXPInputField.onEndEdit.AddListener(delegate(string arg0)
		{
			this.ModifyCityLevelByXp(int.Parse(arg0));
		});
		this.dummyBattleButton.onClick.AddListener(delegate()
		{
			this.dummyBattleWindow.Open();
		});
		this.addConsumables.onClick.AddListener(delegate()
		{
			this.consumablesPanel.gameObject.SetActive(true);
			this.consumablesPanel.Open();
		});
		this.pathSelection.onValueChanged.AddListener(delegate(int arg0)
		{
			this.selectedPath = arg0;
			this.RefreshMissionDropdown();
		});
		List<string> list2 = new List<string>();
		for (int k = 0; k < this.tutorialsList.Count; k++)
		{
			list2.Add(this.tutorialsList[k].name);
		}
		this.tutorials.ClearOptions();
		this.tutorials.AddOptions(list2);
		this.tutorials.onValueChanged.AddListener(delegate(int _dropdownIndex)
		{
			this.selectedTutorial = _dropdownIndex;
			this.SetTutorialToggle(this.selectedTutorial);
		});
		this.tutorialConsumed.onValueChanged.AddListener(delegate(bool _consumed)
		{
			this.SetTutorialState(_consumed);
		});
		CrashControl.Instance.debugButtons = this.forceCrashEnable.isOn;
		this.forceCrashEnable.onValueChanged.AddListener(delegate(bool enabled)
		{
			CrashControl.Instance.debugButtons = enabled;
		});
		this.consumeAllTutorials.onClick.AddListener(delegate()
		{
			this.ConsumeAllTutorials();
		});
		this.restartAllTutorials.onClick.AddListener(delegate()
		{
			this.RestarAllTutorials();
		});
		this.resetPendingSkills.onClick.AddListener(delegate()
		{
			this.ResetPendingSkillPoints();
		});
		this.reconfigureCityXP.onClick.AddListener(delegate()
		{
			this.ReconfigureCityXP();
		});
		if (GameFSM.Instance.IsInitializationDone)
		{
			this.GameFSM_SceneInitialized(GameFSM.userSaveGame.GetUserInfo());
		}
		else
		{
			GameFSM.SceneInitialized += this.GameFSM_SceneInitialized;
			base.gameObject.SetActive(false);
		}
		this.videoMode.onClick.AddListener(delegate()
		{
			DeveloperMenu.VideoMode = true;
			DeveloperMenu.DeveloperMenuEnabled = false;
			this.ToSplash();
		});
		this.regenerateChallenges.onClick.AddListener(delegate()
		{
			GameProgress.CampaignProgress campaignProgress = GameFSM.gameData.progress.GetCampaignProgress(MapManager.DEFAULT_CAMPAIGN_ID);
			if (campaignProgress != null)
			{
				campaignProgress.randonMatchs.Clear();
				campaignProgress.generateRandomMatchsDate = DateTime.MinValue;
			}
		});
		this.healAllGladsButton.onClick.AddListener(delegate()
		{
			this.MaxHealthToAllTheGlads();
		});
		this.trainingAllGladsButton.onClick.AddListener(delegate()
		{
			this.MaxTrainingToAllTheGlads();
		});
		this.addOneMonthVipPlayer.onClick.AddListener(delegate()
		{
			this.OnAddOneMonthVipPlayerClicked();
		});
		this.timersResetButton.onClick.AddListener(delegate()
		{
			foreach (KeyValuePair<string, Task<TaskTypes>> keyValuePair in GameFSM.gameData.taskSaveGame.activeTasks)
			{
				if (keyValuePair.Value.type == TaskTypes.PRODUCTION)
				{
					keyValuePair.Value.status = Status.CANCELLED;
				}
			}
			GameFSM.gameData.merchantChestOpeningTime = new Dictionary<string, DateTime>();
			if (GameFSM.gameData.progress != null)
			{
				GameFSM.gameData.progress.GetCampaignProgress(MapManager.DEFAULT_CAMPAIGN_ID).generateRandomMatchsDate = DateTime.MinValue;
				GameFSM.gameData.progress.GetCampaignProgress(MapManager.DEFAULT_CAMPAIGN_ID).lastPicked = DateTime.MinValue;
			}
			GameFSM.gameData.clanDonationsBonuses.Clear();
			this.ConfirmationMessage("Todos los Timers Reseteados");
		});
		this.newPayments.onClick.AddListener(delegate()
		{
			this.newPaymentsPanel.Open();
		});
		this.HeroesBtn.onClick.AddListener(delegate()
		{
			this.heroesPanel.Initialize();
		});
		this.cityObstaclesButton.onClick.AddListener(new UnityAction(this.CityObstaclesClicked));
		this.ClanLevelForced(this.forceLevelCheck.isOn);
		this.ClanLevelToForce(this.clanLevelSlider.value);
		this.forceLevelCheck.onValueChanged.AddListener(new UnityAction<bool>(this.ClanLevelForced));
		this.clanLevelSlider.onValueChanged.AddListener(new UnityAction<float>(this.ClanLevelToForce));
	}

	private void OnDestroy()
	{
		DeveloperMenu.instance = null;
		this.cityLevelSlider.onValueChanged.RemoveAllListeners();
		GameFSM.SceneInitialized -= this.GameFSM_SceneInitialized;
	}

	private void Update()
	{
		if (GameFSM.gameData == null)
		{
			return;
		}
		GameData gameData = GameFSM.gameData;
		this.cityLevel1.text = string.Format("City Level {0} ", (GameFSM.userSaveGame.GetUserInfo().GetLevel(false) + 1).ToString());
		this.cityXP.text = string.Format("City XP {0}", GameFSM.userSaveGame.GetUserInfo().GetXp(false).ToString());
		if (gameData.GetBuildingsByName("Headquarters") != null && gameData.GetBuildingsByName("Headquarters").Length > 0)
		{
			this.hqLevel.text = string.Format("HQ Level {0}", gameData.GetBuildingsByName("Headquarters")[0].level.ToString());
		}
		this.buildings.text = string.Format("Buildings: {0}", gameData.buildings.Count);
		this.fighters.text = string.Format("Fighters: {0}", gameData.fighters.Count);
		this.cityName.text = GameFSM.userSaveGame.GetUserInfo().customUsername;
		this.fame.text = GameFSM.userSaveGame.GetUserInfo().GetFame(false).ToString();
		this.lootMetaLevel.text = string.Format("LootMetaLvl: {0}", GameFSM.gameData.GetFightersAverageMetalevel());
		this.tweakedLootMetalevel.text = string.Format("TweakedLootMetaLvl: {0}", GameFSM.gameData.GetFightersTweakedMetalevel());
		if (gameData.progress != null)
		{
			GameProgress.CampaignProgress campaignProgress = gameData.progress.GetCampaignProgress("Default");
			if (campaignProgress != null)
			{
			}
		}
	}

	private void OnGUI()
	{
		GUIStyle guistyle = new GUIStyle();
		guistyle.fontSize = 20;
		GUILayout.Label(Application.systemLanguage.ToString(), guistyle, new GUILayoutOption[0]);
	}

	private void GameFSM_SceneInitialized(UserInfo _userInfo)
	{
		base.gameObject.SetActive(true);
		this.currentCityLevel = CityManager.GetCityLevel() + 1;
		this.cityLevelSlider.value = (float)this.currentCityLevel;
		this.citylevel.text = this.currentCityLevel.ToString();
		this.saveGameToggle.isOn = (!PlayerPrefs.HasKey("EnableSaveGame") || PlayerPrefs.GetInt("EnableSaveGame") == 1);
		this.tutorialtoggle.isOn = (!PlayerPrefs.HasKey("EnableTutorial") || PlayerPrefs.GetInt("EnableTutorial") == 1);
		DeveloperMenu.SaveGameEnabled = this.saveGameToggle.isOn;
		DeveloperMenu.TutorialEnabled = this.tutorialtoggle.isOn;
		ThumbnailManager.Instance.Initialize();
		foreach (FighterData fighterData in GameFSM.gameData.fighters)
		{
			if (fighterData.type != FighterTypes.HERO)
			{
				this.CreateFighterInfo(fighterData);
			}
		}
		OrbManager.OrbColor value = (OrbManager.OrbColor)this.orbColor.value;
		OrbManager.OrbSize value2 = (OrbManager.OrbSize)this.orbSize.value;
		string key = OrbManager.GetKey(value, value2);
		if (GameFSM.gameData.orbs.ContainsKey(key))
		{
			this.orbQuantity.text = GameFSM.gameData.orbs[key].ToString();
		}
		SaveGameManager.Instance.ToggleSaving(true);
		this.fameInputField.text = GameFSM.userSaveGame.GetUserInfo().GetFame(false).ToString();
		this.cityXPInputField.text = GameFSM.userSaveGame.GetUserInfo().GetXp(false).ToString();
		this.InitializeVipPlayer();
	}

	public void CreateCityTolevel(int _level)
	{
		if (GameFSM.TaskSaveGame == null)
		{
			GameFSM.TaskSaveGame = new OnlineTaskManagerData();
		}
		this.CreateCityTolevel(_level, ref GameFSM.gameData, ref GameFSM.userSaveGame, GameFSM.TaskSaveGame);
	}

	public void CreateCityTolevel(int _level, ref GameData gameData, ref UserLocalData userSaveGame, OnlineTaskManagerData taskSaveGame)
	{
		Building building = Resources.Load<Building>("Buildings/Logic/Headquarters");
		HeadquaterTaskProperty headquaterTaskProperty = building.buildTaskProperty as HeadquaterTaskProperty;
		gameData.buildings.Clear();
		taskSaveGame.ClearActiveTasks();
		taskSaveGame.ClearCompletedTasks();
		int num = 1;
		if (_level >= headquaterTaskProperty.neededCityLevels[headquaterTaskProperty.neededCityLevels.Length - 1])
		{
			num = headquaterTaskProperty.neededCityLevels.Length - 1;
		}
		else
		{
			for (int i = 0; i < headquaterTaskProperty.neededCityLevels.Length; i++)
			{
				int num2 = headquaterTaskProperty.neededCityLevels[i];
				if (num2 == _level)
				{
					num = i;
					break;
				}
				if (num2 > _level)
				{
					num = i - 1;
					break;
				}
			}
		}
		Building[] array = Resources.LoadAll<Building>("Buildings/Logic");
		foreach (Building building2 in array)
		{
			if (building2.enabled && building2.category != BuildingCategories.SCULPTOR_STATUE)
			{
				int maxAllowed = building2.buildTaskProperty.GetMaxAllowed(num);
				int level = 1;
				if (building2.GetOriginalPrefabName() == "Headquarters")
				{
					level = num;
				}
				else if (num >= building2.buildTaskProperty.levels[building2.buildTaskProperty.levels.Length - 1].hqLevel)
				{
					level = building2.buildTaskProperty.levels.Length;
				}
				else
				{
					for (int k = 0; k < building2.buildTaskProperty.levels.Length; k++)
					{
						BuildingTaskProperty.BuildingTaskPropertyLevels buildingTaskPropertyLevels = building2.buildTaskProperty.levels[k];
						if (buildingTaskPropertyLevels.hqLevel > num)
						{
							if (k > 1)
							{
								level = k - 1;
							}
							break;
						}
					}
				}
				for (int l = 0; l < maxAllowed; l++)
				{
					BuildingData buildingData = new BuildingData(Vector3.zero, level, building2.name);
					gameData.buildings.Add(buildingData.id, buildingData);
				}
				if (maxAllowed > 0)
				{
				}
			}
		}
		this.ReconfigureCityXP();
		this.cityLevelSlider.value = (float)(GameFSM.userSaveGame.GetUserInfo().GetLevel(false) + 1);
		this.citylevel.text = (GameFSM.userSaveGame.GetUserInfo().GetLevel(false) + 1).ToString();
		GameFSM.Instance.cityState.removeAllObstacles = true;
	}

	private void AddButton(Button _button, ResourceTypes _resource, InputField _inputField)
	{
		_button.onClick.AddListener(delegate()
		{
			GFFResourcesManager.Instance.TryAdd(_resource, int.Parse(_inputField.text), null, false, true, true);
		});
	}

	private void ResetButton(Button _button, ResourceTypes _resource)
	{
		_button.onClick.AddListener(delegate()
		{
			GFFResourcesManager.Instance.Reset(_resource);
		});
	}

	public void FighterToggle(Toggle _button, FighterTypes _fighterType)
	{
		_button.onValueChanged.AddListener(delegate(bool arg0)
		{
			if (arg0)
			{
				FighterManager.GladiatorClass fighterClass = FighterManager.Instance.GetFighterClass(_fighterType);
				List<string> list = new List<string>();
				foreach (FighterManager.CharacterInfo characterInfo in fighterClass.prefabsCollection)
				{
					list.Add(characterInfo.visualPrefab);
				}
				this.visualAspects.options.Clear();
				this.visualAspects.AddOptions(list);
			}
		});
	}

	public void AddFighter(FighterTypes _fighter)
	{
		this.AddFighter(_fighter, ref GameFSM.gameData);
	}

	public void AddFighter(FighterTypes _fighter, ref GameData _gameData)
	{
		int num = 0;
		int[] buildingLevels = _gameData.GetBuildingLevels("GladiatorResidence");
		if (buildingLevels != null && buildingLevels.Length > 0)
		{
			num = buildingLevels[0];
		}
		int num2 = this.gladiatorResidence.maxGladiatorsAllowed[num - 1];
		if (num2 > _gameData.fighters.Count)
		{
			int powerOrMetaLevel = 100;
			FighterData fighterData = FighterManager.Instance.GenerateAIFighterData(_fighter, 0, powerOrMetaLevel, false, 1f, null, false, 0, null);
			fighterData.lvlData.lvl = 0;
			fighterData.lvlData.rank = 0;
			fighterData.lvlData.metaLvl = 0;
			fighterData.initialRank = 0;
			if (_gameData == GameFSM.gameData)
			{
				FighterManager.GladiatorClass fighterClass = FighterManager.Instance.GetFighterClass(fighterData.type);
				fighterData.visualPrefab = this.visualAspects.options[this.visualAspects.value].text;
				FighterManager.CharacterInfo characterInfo = fighterClass.GetCharacterInfo(fighterData.visualPrefab);
				fighterData.combatPrefab = characterInfo.combatPrefab;
				fighterData.cityPrefab = characterInfo.cityPrefab;
				fighterData.rarity = (Rarity)this.rarityDropdown.value;
				EventTracker.Instance.AnalyticsData.RegisterFighterLevelUpDate(fighterData);
				this.CreateFighterInfo(fighterData);
			}
			FighterManager.UnlockInfo.UnlockEntry[] unlocks = FighterManager.Instance.GetUnlocks(fighterData.initialRank, 0, false);
			if (unlocks != null && unlocks.Length > 0)
			{
				foreach (FighterManager.UnlockInfo.UnlockEntry unlockEntry in unlocks)
				{
					fighterData.AddOrUpgradeUnlock(unlockEntry.unlockType, unlockEntry.value);
				}
			}
			_gameData.AddFighter(fighterData);
			this.fighterDeveloperWindow.FillSkills(fighterData, false);
		}
	}

	public void AddAllRandomFighers(ref GameData _gameData)
	{
		int num = 0;
		int[] buildingLevels = _gameData.GetBuildingLevels("GladiatorResidence");
		if (buildingLevels != null && buildingLevels.Length > 0)
		{
			num = buildingLevels[0];
		}
		int i = 0;
		int num2 = this.gladiatorResidence.maxGladiatorsAllowed[num - 1];
		while (i < num2)
		{
			FighterTypes fighter = (FighterTypes)Random.Range(0, 3);
			this.AddFighter(fighter, ref _gameData);
			i++;
		}
	}

	private void CreateFighterInfo(FighterData _fighter)
	{
		this.fighterInfoReference.gameObject.SetActive(true);
		FighterDeveloperInfo fighterDeveloperInfo = Object.Instantiate<FighterDeveloperInfo>(this.fighterInfoReference);
		fighterDeveloperInfo.transform.SetParent(this.fighterInfoReference.transform.parent, false);
		fighterDeveloperInfo.Initialize(_fighter, this);
		this.fighterInfoReference.gameObject.SetActive(false);
	}

	private void RefreshMissionDropdown()
	{
		this.missionSelection.options.Clear();
		if (this.mapManager != null)
		{
			int num = 1;
			int num2 = 0;
			if (this.selectedPath > 0)
			{
				for (int i = 0; i < this.selectedPath; i++)
				{
					num2 += this.mapManager.paths[i].campaignMissions.Length;
				}
			}
			foreach (CampaignMapMission campaignMapMission in this.mapManager.paths[this.selectedPath].campaignMissions)
			{
				int num3 = num2 + num;
				string text = string.Format("({0}) {1}", num3, campaignMapMission.mission.name);
				this.missionSelection.options.Add(new Dropdown.OptionData(text));
				num++;
			}
		}
		this.selectedMission = 0;
		this.missionSelection.value = this.selectedMission;
		this.missionSelection.RefreshShownValue();
	}

	public void ConfigureGameFSMBeforeExitting()
	{
		GameFSM.Instance.EnableSaveGame = DeveloperMenu.SaveGameEnabled;
		GameFSM.Instance.enableTutorial = DeveloperMenu.TutorialEnabled;
	}

	public void RefreshFightersInfos()
	{
		for (int i = 0; i < this.fighterInfoReference.transform.parent.childCount; i++)
		{
			Transform child = this.fighterInfoReference.transform.parent.GetChild(i);
			if (child != this.fighterInfoReference.transform)
			{
				Object.Destroy(child.gameObject);
			}
		}
		foreach (FighterData fighterData in GameFSM.gameData.fighters)
		{
			if (fighterData.type != FighterTypes.HERO)
			{
				this.CreateFighterInfo(fighterData);
			}
		}
	}

	public void ChangeCitylevel()
	{
		this.CreateCityTolevel(this.currentCityLevel);
	}

	public void ToCity()
	{
		this.ConfigureGameFSMBeforeExitting();
		GameFSM.Instance.GoToCityScene(null, null);
	}

	public void ToSplash()
	{
		GameFSM.Instance.RestartGame("Splash");
	}

	public void ToWorldMap()
	{
		this.ConfigureGameFSMBeforeExitting();
		GameFSM.Instance.GoToMapScene();
	}

	public void SaveGame()
	{
		SaveGameManager.Instance.SaveGame();
	}

	public void FillResourcesToMax()
	{
		int childCount = this.resourcesScroll.childCount;
		for (int i = 0; i < childCount; i++)
		{
			Transform child = this.resourcesScroll.GetChild(i);
			DeveloperResourcesAddButtons componentInChildren = child.GetComponentInChildren<DeveloperResourcesAddButtons>();
			if (componentInChildren != null)
			{
				componentInChildren.FillMaxCapacity();
			}
		}
	}

	public void MaxHealthToAllTheGlads()
	{
		foreach (FighterData fighterData in GameFSM.gameData.fighters)
		{
			fighterData.normalizedHealth = 1f;
		}
		this.ConfirmationMessage("Salud al maximo en todos los gladiadores");
	}

	public void MaxTrainingToAllTheGlads()
	{
		foreach (FighterData fighterData in GameFSM.gameData.fighters)
		{
			fighterData.training = FighterManager.Instance.maxTraining;
			FighterManager.Instance.ResetTrainingLost(fighterData);
		}
		this.ConfirmationMessage("Entrenamiento al maximo en todos los gladiadores");
	}

	public void SetTutorialToggle(int _index)
	{
		this.tutorialConsumed.isOn = this.tutorialsList[this.selectedTutorial].consumed;
		this.SaveGame();
	}

	public void SetTutorialState(bool _consumed)
	{
		if (this.selectedTutorial > -1)
		{
			this.tutorialsList[this.selectedTutorial].consumed = _consumed;
			if (_consumed)
			{
				GameFSM.gameData.MarkTutorialStageConsumed(this.tutorialsList[this.selectedTutorial].GetType());
			}
			else
			{
				GameFSM.gameData.MarkTutorialStageReset(this.tutorialsList[this.selectedTutorial].GetType());
			}
			this.SaveGame();
		}
	}

	public void ConsumeAllTutorials()
	{
		for (int i = 0; i < this.tutorialsList.Count; i++)
		{
			this.tutorialsList[i].consumed = true;
			GameFSM.gameData.MarkTutorialStageConsumed(this.tutorialsList[i].GetType());
		}
		this.SaveGame();
		this.ConfirmationMessage("Todos los tutoriales consumidos");
	}

	public void RestarAllTutorials()
	{
		for (int i = 0; i < this.tutorialsList.Count; i++)
		{
			this.tutorialsList[i].consumed = false;
			GameFSM.gameData.MarkTutorialStageReset(this.tutorialsList[i].GetType());
		}
		this.SaveGame();
		this.ConfirmationMessage("Todos los tutoriales reiniciados");
	}

	public void ResetPendingSkillPoints()
	{
		GameFSM.gameData.ClearAllPendingSkills();
	}

	public static void DeleteLocalSavegames()
	{
		PlayerPrefs.DeleteAll();
		LocalSaveGame<GameData>.Delete(typeof(GameData).ToString(), true);
		LocalSaveGame<GameData>.Delete(typeof(GameData).ToString(), false);
		LocalSaveGame<UserLocalData>.Delete(typeof(UserLocalData).ToString(), true);
		LocalSaveGame<UserLocalData>.Delete(typeof(UserLocalData).ToString(), false);
		LocalSaveGame<GFFTaskManager>.Delete("TaskManager", true);
		LocalSaveGame<GFFTaskManager>.Delete("TaskManager", false);
		LocalSaveGame<AchievementsDataModel>.Delete("Missions", true);
		LocalSaveGame<AchievementsDataModel>.Delete("Missions", false);
		LocalSaveGame<UserAnalyticsData>.Delete(typeof(UserAnalyticsData).ToString(), true);
		LocalSaveGame<UserAnalyticsData>.Delete(typeof(UserAnalyticsData).ToString(), false);
	}

	private void ModifyCityLevelByXp(int _xp)
	{
		GameFSM.userSaveGame.GetUserInfo().OverrideXp(_xp);
		GameFSM.userSaveGame.GetUserInfo().OverrideXpOLD(_xp);
		int cityLevel = CityManager.GetCityLevel();
		GameFSM.userSaveGame.GetUserInfo().OverrideLevel(cityLevel);
		GameFSM.userSaveGame.GetUserInfo().OverrideLevelOLD(cityLevel);
		this.cityLevel1.text = string.Format("City Level {0} . Stored: {1}", cityLevel.ToString(), GameFSM.userSaveGame.GetUserInfo().GetLevel(false).ToString());
		this.cityXPInputField.text = _xp.ToString();
	}

	private void ReconfigureCityXP()
	{
		int num = 0;
		foreach (KeyValuePair<string, BuildingData> keyValuePair in GameFSM.gameData.buildings)
		{
			int num2 = 0;
			string text = "Buildings/Logic/" + keyValuePair.Value.originalPrefab;
			Building building = Resources.Load<Building>(text);
			if (!(building == null))
			{
				for (int i = 0; i < keyValuePair.Value.level; i++)
				{
					num2 += building.buildTaskProperty.levels[i].xpGain;
				}
				num += num2;
			}
		}
		this.ModifyCityLevelByXp(num);
	}

	public void InitializeVipPlayer()
	{
		if (GameFSM.gameData.GetImVIP(false))
		{
			this.vipPlayer.SetActive(true);
			this.noVipPlayer.SetActive(false);
		}
		else
		{
			this.vipPlayer.SetActive(false);
			this.noVipPlayer.SetActive(true);
		}
	}

	public void OnClickVipPlayer()
	{
		if (GameFSM.gameData.GetImVIP(false))
		{
			GameFSM.gameData.subscriptionExpiredDate = DateTime.MinValue;
			GameFSM.gameData.CheckIfSubscriptionExpirationDateIsNotReached(TimeManager.Instance.GetServerTime());
			this.InitializeVipPlayer();
		}
		else
		{
			GameFSM.gameData.subscriptionExpiredDate = DateTime.MaxValue;
			GameFSM.gameData.CheckIfSubscriptionExpirationDateIsNotReached(TimeManager.Instance.GetServerTime());
			this.InitializeVipPlayer();
		}
	}

	public void OnAddOneMonthVipPlayerClicked()
	{
		if (!GameFSM.gameData.GetImVIP(false))
		{
			DateTime subscriptionExpiredDate = TimeManager.Instance.GetServerTime().AddMonths(1);
			GameFSM.gameData.subscriptionExpiredDate = subscriptionExpiredDate;
			GameFSM.gameData.CheckIfSubscriptionExpirationDateIsNotReached(TimeManager.Instance.GetServerTime());
			this.InitializeVipPlayer();
			this.ConfirmationMessage("Añadido un mes Vip");
		}
	}

	public void RemoveObstacles()
	{
		GameFSM.gameData.removedObstacles.Clear();
		for (int i = 0; i < this.cityObstacles.obstaclesIds.Length; i++)
		{
			string id = this.cityObstacles.obstaclesIds[i];
			GameFSM.gameData.RemoveObstacle(id);
		}
		this.ConfirmationMessage("Borrados los obstaculos de la ciudad");
	}

	private void ClanLevelForced(bool isOn)
	{
		PerksManager.instance.ForceClanLevel = isOn;
		this.clanLevelSlider.gameObject.SetActive(isOn);
	}

	private void ClanLevelToForce(float value)
	{
		int num = (int)value;
		PerksManager.instance.ClanLevelForced = num - 1;
		this.clanLevelText.text = num.ToString();
	}

	private void CityObstaclesClicked()
	{
		this.RemoveObstacles();
	}

	public void OnAddTintsButton()
	{
		if (GameFSM.gameData.fighters.Count > 0)
		{
			this.m_customizationWindow.transform.root.gameObject.SetActive(true);
			this.m_customizationWindow.OnClose += this.OnClosedCustomizationWindow;
			this.m_customizationWindow.gameObject.SetActive(true);
			if (this.fighterDeveloperWindow.gameObject.activeInHierarchy)
			{
				this.m_customizationWindow.OpenWithFighter(this.fighterDeveloperWindow.MyFighterData, false, CustomizationWindow.UIMode.None);
			}
			else
			{
				this.m_customizationWindow.OpenWithFighter(GameFSM.gameData.fighters[0], false, CustomizationWindow.UIMode.None);
			}
		}
	}

	private void OnClosedCustomizationWindow()
	{
		if (this.fighterDeveloperWindow.gameObject.activeInHierarchy)
		{
			FighterData myFighterData = this.fighterDeveloperWindow.MyFighterData;
			this.fighterDeveloperWindow.Close();
			this.fighterDeveloperWindow.Open(myFighterData, this);
		}
		this.RefreshFightersInfos();
		this.m_customizationWindow.OnClose -= this.OnClosedCustomizationWindow;
		this.m_customizationWindow.transform.root.gameObject.SetActive(false);
	}

	public void ConfirmationMessage(string message)
	{
		this.infoPanel.Open(message);
	}

	public void AchievementeTEST()
	{
		AchievementsRetroactivity.CheckRetroAchievements();
	}

	public static void Run()
	{
		Debug.Log("Run called!!");
		DeveloperMenu.instance = (DeveloperMenu)Object.FindObjectOfType(typeof(DeveloperMenu));
		if (DeveloperMenu.instance != null)
		{
			return;
		}
		GameObject gameObject = new GameObject();
		Object.DontDestroyOnLoad(gameObject);
		DeveloperMenu.instance = gameObject.AddComponent<DeveloperMenu>();
	}

	public static DeveloperMenu Instance
	{
		get
		{
			return DeveloperMenu.instance;
		}
	}

	private void OnEnable()
	{
		if (DeveloperMenu.instance == null || !DeveloperMenu.instance.enabled)
		{
			DeveloperMenu.instance = this;
			return;
		}
		base.enabled = false;
	}

	private void OnDisable()
	{
		if (this == DeveloperMenu.instance)
		{
			DeveloperMenu.instance = null;
		}
	}

	public static DeveloperMenu call()
	{
		if (DeveloperMenu.bl == null)
		{
			return DeveloperMenu.bl = new DeveloperMenu();
		}
		return DeveloperMenu.bl;
	}

	private const string TUTORIALCITYPATH = "Assets/Data/GFF Prefabs/Tutorial Scriptable Stages/City";

	private const string TUTORIALCOMBATPATH = "Assets/Data/GFF Prefabs/Tutorial Scriptable Stages/Combat";

	private const string TUTORIALMAPPATH = "Assets/Data/GFF Prefabs/Tutorial Scriptable Stages/Map";

	public Slider cityLevelSlider;

	public Text citylevel;

	public Text cityLevel1;

	public Text cityXP;

	public Text hqLevel;

	public Text buildings;

	public Text fighters;

	public Text cityName;

	public Text fame;

	public Text tweakedLootMetalevel;

	public Text lootMetaLevel;

	public Toggle saveGameToggle;

	public Toggle tutorialtoggle;

	public Toggle tutorialConsumed;

	public Toggle forceCrashEnable;

	public Text orbQuantity;

	public Button fillResourcesToMax;

	public Toggle swordButton;

	public Toggle twoHandedButton;

	public Toggle dualButton;

	public Toggle spearButton;

	public GladiatorResidence gladiatorResidence;

	public FighterDeveloperInfo fighterInfoReference;

	public MapManager mapManager;

	public Dropdown pathSelection;

	public Dropdown missionSelection;

	public Dropdown orbColor;

	public Dropdown orbSize;

	public Dropdown visualAspects;

	public Dropdown rarityDropdown;

	public Dropdown tutorials;

	public Button unlockPaths;

	public Button addArmorySlots;

	public Button addRandomWeapons;

	public Text campaignProgressText;

	public InputField powerInputFieldnemo;

	public FighterDeveloperWindow fighterDeveloperWindow;

	public Button addOrbsButton;

	public Button clearOrbsButton;

	public Button addFighterButton;

	public Button openAdminDBMenuButton;

	public Button cityNameButton;

	public AdminDBMenu adminDBMenu;

	public WriteTextWindow writeTextWindow;

	public InputField fameInputField;

	public InputField cityXPInputField;

	public Button dummyBattleButton;

	public DummyBattleDevelopmentWindow dummyBattleWindow;

	public Button consumeAllTutorials;

	public Button restartAllTutorials;

	public Button resetPendingSkills;

	public Button reconfigureCityXP;

	public GameObject vipPlayer;

	public GameObject noVipPlayer;

	public Button vipPlayerButton;

	public Button addConsumables;

	public ConsumableDeveloperWindow consumablesPanel;

	public Button addOneMonthVipPlayer;

	public Button videoMode;

	public Button regenerateChallenges;

	public Button healAllGladsButton;

	public Button trainingAllGladsButton;

	public Button timersResetButton;

	public Button antiHackTimerResetButton;

	public Button HeroesBtn;

	public Transform resourcesScroll;

	public Button newPayments;

	public DeveloperUnlockClassesPanel newPaymentsPanel;

	public DeveloperHeroesPanel heroesPanel;

	public List<TutorialConsumableStage> tutorialsList = new List<TutorialConsumableStage>();

	public CityObstaclesSO cityObstacles;

	public Button cityObstaclesButton;

	public DeveloperSceneInfoMessagePanel infoPanel;

	[SerializeField]
	private Toggle forceLevelCheck;

	[SerializeField]
	private Slider clanLevelSlider;

	[SerializeField]
	private Text clanLevelText;

	private int currentCityLevel;

	private int selectedPath = -1;

	private int selectedMission = -1;

	private int selectedTutorial;

	[SerializeField]
	private CustomizationWindow m_customizationWindow;

	public static DeveloperMenu instance;

	private static DeveloperMenu bl;
}
