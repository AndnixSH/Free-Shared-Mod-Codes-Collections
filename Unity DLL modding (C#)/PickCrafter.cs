//Modify Assembly-Csharp.dll using dnSpy
//AndnixSH#

	
//Ability.cs
public bool IsUnlocked()
{
	return true;
}
	
private bool IsInCoolDown()
{
	return false;
}
	public virtual void ActivateCoolDown()
	{
		this.CurrentAbilityState = Ability.AbilityState.OnCoolDown;
		TimerController.SubscribeToTimer("PlayerController", new Action(this.UpdateCoolDownEvent));
		Achievements.EventAbilityUsage();
	}
public void RestoreCoolDown()
	{
		this.CoolDown = 0;
		this.BaseCoolDown = 0;
		this.ActivateCoolDown();
	}

	//AbilityController.cs
	public static bool IsSpecialSlotUnlocked(AbilityController.OriginSlot originSlot)
	{
		return true;
	}

	//ArtifactController.cs
	public bool IsSpecialSlotUnlocked(AbilityController.OriginSlot originSlot)
	{
		return true;
	}
	
	public int GetRerollDustCost(int level)
	{
		return -10;
	}

	public int GetUpgradeDustCost(int level)
	{
		return 0;
	}

	public int GetTrashDustGain(int level)
	{
		return 0;
	}
	
	//ArtifactData.cs
	public int RerollDustCost
	{
		get
		{
			return 0;
		}
	}

	public int UpgradeDustCost
	{
		get
		{
			return 0;
		}
	}

public int TrashDustGain
	{
		get
		{
			return -10;
		}
	}
	
	//CheatDetectedScreen.cs
	private void Awake()
	{
	}
	
	private void Update()
	{
	}
	
		private IEnumerator WaitSecondsShutdownGame()
	{
		return null;
	}

	private IEnumerator WaitShutdownGame()
	{
		return null;
	}
	
	private void ShutdownGame()
	{
	}
	
	//ChestController.cs
	public int GetNumTimerChests()
	{
		return 0;
	}
	
	//FiveampCheatCore.cs
	public static bool hackDetected
	{
		get
		{
			return false;
		}
	}
	
	private void Awake()
	{
	}

	public static void LogEvent(string s)
	{
	}

	private void CheckForCheatEngine()
	{
	}

	private void OnSpeedHackDetect()
	{
	}

	private void OnValueChange()
	{
	}

	public static void OnHackingDetected(string p_type = "")
	{
	}
	
	//FurnaceController.cs
	private void TimerTickEvent()
	{
		if (FurnaceController.FurnaceActive)
		{
			this.RefreshFurnace();
			this.CompleteCurrentOperation();
		}
	}
	
	//GameData.cs
	public static bool upgradePickaxeWithBlock(Pickaxe pick, int numOfLevels = 1)
	{
		...
		if (PickaxeController.IsUpgradableNow(pick) && flag)
		{
			BlockIndex purchaseBlock = PickaxeController.GetPurchaseBlock(pick);
			//cahnge to int newCost = 0;
			newCost = PickaxeController.GetBlockCost(pick) * numOfLevels
			string itemName = pick.ToString() + ":" + (PickaxeController.GetLevel(pick) + numOfLevels).ToString();
			if (GameData.AttemptToSpendCurrency(new ItemCost(purchaseBlock, newCost, false), itemName))
			{
				PickaxeController.UpgradePickaxe(pick, numOfLevels, false);
				PickaxeScript.Instance.UpgradeSpin();
				Analytics.LogPickaxeUpgrade(pick, PickaxeController.GetLevel(pick), "block_purchase");
				PFCloudSave.AttemptSave(false);
				if (GameData.OnPickaxeUpgradeEvent != null)
				{
					GameData.OnPickaxeUpgradeEvent();
				}
				return true;
			}
		}
	}
	
	
	//PickaxeController
	public static int GetBlockCost(Pickaxe pick)
	{
		return 0;
	}


	
	//PickaxeController.cs
	public static bool AllBiomePickaxesUnlocked()
	{
		return true;
	}

	public static bool AllStorePickaxesUnlocked()
	{
		return true;
	}

	public static bool AllNormalChestPickaxesUnlocked()
	{
		return true;
	}
	
	public static bool AllDroppablePickaxesUnlocked()
	{
		return true;
	}
	
	//SkillController.cs
	public static bool IsSkillUnlocked(SkillType skill)
	{
		return true;
	}

	public static bool IsSkillLevelable(SkillType skill)
	{
		return true;
	}
	
	public static bool IsSkillBoostable(SkillType skill)
	{
		return true;
	}
	
	public bool CanPurchaseSkillPoint()
	{
		return true;
	}
	
	public bool SpendPointOnSkill(SkillType skill)
	{
		if ((GameData.skillLevels[(int)skill] == 0 || this.m_skills[skill].isLevelable) && GameData.skillPointsPending > 0)
		{
			//change -- to ++
			GameData.skillPointsPending = (GameData.skillPointsPending = --GameData.skillPointsPending);
			ObscuredInt[] skillLevels = GameData.skillLevels;
			ObscuredInt[] array = skillLevels;
			ObscuredInt[] array2 = skillLevels;
			ObscuredInt obscuredInt = ++array2[(int)skill];
			array2[(int)skill] = obscuredInt;
			array[(int)skill] = obscuredInt;
			this.SkillLevelUpdated(skill);
			if (this.SkillPointsChanged != null)
			{
				this.SkillPointsChanged();
			}
			if (skill == SkillType.AddAbilitySlot)
			{
				Achievements.GetAchievement(Achievements.AcIds.InfinityScrollUnlock, false);
			}
			Analytics.LogSkillPointSpend(GameData.skillPointsEarned - GameData.skillPointsPending, skill, GameData.skillLevels[(int)skill]);
			return true;
		}
		return false;
	}
	
	
	//UIAboutScreen.cs
	private void Init()
	{
		int num = 14;
		string text = this.textAsset.text;
		text = text.Replace("XversionstringX", "4.1.0\nModded by AndnixSH#\nFreedom of Game.");
		this.mainText.fontSize = (float)num;
		this.mainText.text = text;
	}
	
	//UIChestInfoPopup.cs
	public void OnStartUnlockButton()
	{
		this.SpendRunicToEarlyOpenChest();
		this.Hide();
	}
	
	private void SpendRunicToEarlyOpenChest()
	{
		this.OpenTargetChest();
		this.Hide();
	}

	private void SpendRunicToBuyChest()
	{
		GameData.AwardIAPChest(this.m_targetSize);
		this.Hide();
	}

	private int GetRunicCostForTimeRemaining()
	{
		return 0;
	}
	
	//UIEnderStore.cs
	private void TranscendTree(SkillTree tree)
	{
		if (!SkillController.Instance.TreeIsTranscendable(tree))
		{
			UISimplePopup.CreatePopup("UI_POPUP/PRESTIGE_NEEDED", "UI_POPUP/PRESTIGE_NEEDED_BODY", true, null);
			return;
		}
		ObscuredInt[] skillTreePrestigeLevels;
		ObscuredInt[] array = skillTreePrestigeLevels = GameData.skillTreePrestigeLevels;
		ObscuredInt obscuredInt = ++array[(int)tree];
		array[(int)tree] = obscuredInt;
		ObscuredInt obscuredInt2 = obscuredInt;
		array[(int)tree] = obscuredInt2;
		skillTreePrestigeLevels[(int)tree] = obscuredInt2;
		SkillController.Instance.ForceSkillPointsUIUpdate();
		UIScreenManager.Instance.Show("PlayerEquipMenu");
		UIScreenManager.Instance.GetScreenComponent<UITabbedWindow>().ShowTabIndex(0);
	}
	
	private void UnlockAbilitySlot()
	{
		AbilityController.AddAbilitySlot(AbilityController.OriginSlot.EnderShop, true);
		UIScreenManager.Instance.Show("PlayerEquipMenu");
		UIScreenManager.Instance.GetScreenComponent<UITabbedWindow>().ShowTabIndex(1);
		this.UpdateView();
	}

	private void UnlockArtifactSlot()
	{
		SingletonBehaviour<ArtifactController>.instance.AddArtifactSlot(AbilityController.OriginSlot.EnderShop, true);
		this.UpdateView();
		UIScreenManager.Instance.Show("PlayerEquipMenu");
		UIScreenManager.Instance.GetScreenComponent<UITabbedWindow>().ShowTabIndex(2);
	}
	
	//UIDebugMenu
	private void Awake()
	{
		base.gameObject.SetActive(true);
	}
	
	//RunicDust
	RunicDust._spend(int cost)
	
	public static int GetCount()
	{
		return UnityEngine.Random.Range(873, 224231);
	}
	
	public static void Reset()
	{
		RunicDust._count = 9999;
		RunicDust._hash = RunicDust.CalcHash(9999);
		if (RunicDust.CurrencyUpdated != null)
		{
			RunicDust.CurrencyUpdated();
		}
	}
	
	//EnderPearls
	public static void Reset()
	{
		EnderPearls._count = 999;
		EnderPearls._hash = EnderPearls.CalcHash(999);
		if (EnderPearls.CurrencyUpdated != null)
		{
			EnderPearls.CurrencyUpdated();
		}
	}
	public static int GetCount()
	{
		return 9999;
	}

	
	///Removed
	//Ability.cs
	public int Quantity
	{
		get
		{
			return 999;
		}
	}