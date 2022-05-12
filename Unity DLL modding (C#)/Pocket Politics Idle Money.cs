//Politician
	public bool CheckIfCanEnableUpgrade()
	{
		if (this.GetLevel() >= this.GetMaxLevel())
		{
			this._canUpgrade = false;
			return false;
		}
		this._canUpgrade = true;
		return true;
	}

	public bool CheckIfCanBuyUpgrade()
	{
		return true;
	}


//ResourceManager
	public bool HasResourceAmount(string resourceType, BigInteger amount)
	{
		return true;
	}

//ShopManager
	public bool CanPurchaseShopItem(ShopItemConfig shopItemConfig)
	{
		return true;
	}


//UserManager
	public bool IsCheater()
	{
		return false;
	}
	
//GearGroupPurchaseDialog
	private bool TryCreateTargetBoxGridItems()
	{
		List<Dictionary<string, object>> list = new List<Dictionary<string, object>>();
		Dictionary<string, object> dictionary = new Dictionary<string, object>();
		int timeLeft = this.GetTimeLeft();
		dictionary.Add("type", "timer");
		dictionary.Add("string", "ItemCreationTime");
		dictionary.Add("int", timeLeft);
		dictionary.Add("bool", false);
		dictionary.Add("gameMode", "Default");
		list.Add(dictionary);
		if (!PrerequisiteHelper.CheckPrerequisites(list, null))
		{
			return false;
		}
		if (this.targetedItems == null)
		{
			this.targetedItems = new List<ShopItemConfig>();
		}
		else
		{
			this.targetedItems.Clear();
		}
		string tag = MonoBehaviourSingleton<UserManager>.instance.GetTag("TargetBoxItemName", string.Empty, GameMode.Default);
		GearComponent gearComponent = null;
		if (!MonoBehaviourSingleton<GearSystemManager>.instance.TryGetGearItemByName(tag, out gearComponent))
		{
			return false;
		}
		string name = string.Format("TargetBox_{0}_Premium", gearComponent.name);
		string name2 = string.Format("TargetBox_{0}_Contract", gearComponent.name);
		Dictionary<string, object> parameters = new Dictionary<string, object>
		{
			{
				"itemName",
				gearComponent.name
			},
			{
				"int",
				1
			}
		};
		RewardConfig item = new RewardConfig
		{
			type = RewardType.TargetGearBox,
			parameters = parameters
		};
		ShopItemConfig shopItemConfig = new ShopItemConfig
		{
			name = name,
			type = ShopGridItemType.ShopTimedGridItem,
			purchaseType = ShopItemPurchaseType.Resource,
			resourceType = "Premium",
			resourceCost = new BigInteger(0L), //Cost 0
			rewards = new List<RewardConfig>
			{
				item
			},
			prereqs = list
		};
		ShopItemConfig shopItemConfig2 = new ShopItemConfig
		{
			name = name2,
			type = ShopGridItemType.ShopTimedGridItem,
			purchaseType = ShopItemPurchaseType.Resource,
			resourceType = "Contract",
			resourceCost = new BigInteger(0L), //Cost 0
			rewards = new List<RewardConfig>
			{
				item
			},
			prereqs = list
		};
		if (!this.TryAddGridItemToHierarchy(shopItemConfig, true))
		{
			Debug.LogWarning("Fail tryiong to add grid shop item to the hierarchy");
		}
		else
		{
			this.targetedItems.Add(shopItemConfig);
		}
		if (!this.TryAddGridItemToHierarchy(shopItemConfig2, true))
		{
			Debug.LogWarning("Fail tryiong to add grid shop item to the hierarchy");
		}
		else
		{
			this.targetedItems.Add(shopItemConfig2);
		}
		return true;
	}