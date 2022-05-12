DebugIAPDisabled
DebugIAPFree

//AppCasino
public void Click_Spin()
{
	if (this._currentPage == AppCasino.PageName.Standard)
	{
		this.StartSpin();
		return;
	}
	this.OnPurchaseSpin();
}

public void OnPurchaseSpin()
	{
		this.StartPremiumSpin();
	}
	
// AppGetHyperbits
	
	public override void Clicked(object item)
{
	base.Clicked(item);
	MenuItemStoreHyperbits mi = (MenuItemStoreHyperbits)item;
	this.OnPurchaseSucceded(mi.sku);
}

// AppInvestments
public void Click_FullView_MakePerm()
{
	IAPsku sku = AppSupercharge.OfflinePermSkuFromEra();
	string empty = string.Empty;
	PurchasableItem itemDetails = MyIAP.GetItemDetails(sku);
	if (itemDetails != null && !string.IsNullOrEmpty(itemDetails.localizedPriceString))
	{
		string localizedPriceString = itemDetails.localizedPriceString;
	}
	bool isEditor = Application.isEditor;
	AppSupercharge.Instance.OnOfflinePermPurchased(sku);
}

// AppStoreRoom
private void BuyCatIAP(MenuItemStoreRoom mi)
{
	this.OnCatPurchased();
}

// AppSupercharge
private void BuyOfflinePermStart(MenuItemStoreSupercharge mi)
{
	IAPsku sku = AppSupercharge.OfflinePermSkuFromEra();
	if (GameVars.Instance.DebugIAPDisabled)
	{
		this.OnOfflinePermPurchased(sku);
	}
}

private void BuyCoinDoublerStart(MenuItemStoreSupercharge mi)
{
	this.OnCoinDoublerPurchased(mi.sku);
}

private void BuyAutoClickerStart(MenuItemStoreSupercharge mi)
{
	this.OnAutoClickerPurchased(mi.sku);
}

private void BuyOfflinePermStart(MenuItemStoreSupercharge mi)
{
	IAPsku sku = AppSupercharge.OfflinePermSkuFromEra();
	this.OnOfflinePermPurchased(sku);
}

private void BuyHbDoublerStart(MenuItemStoreSupercharge mi)
{
	this.OnHbDoublerPurchased();
}

// AppUpgrades
public void Click_AutoMiner()
{
	if (PanelMain.Instance._IAPAutoMinerLevel >= GameVars.IAP_MaxAutoMiner)
	{
		return;
	}
	int num = 0;
	IAPsku skuBuy = AppSupercharge.GetAutoMinerSkuSpeed(PanelMain.Instance._IAPAutoMinerLevel + 1, out num);
	string arg = string.Empty;
	PurchasableItem itemDetails = MyIAP.GetItemDetails(skuBuy);
	if (itemDetails != null && !string.IsNullOrEmpty(itemDetails.localizedPriceString))
	{
		arg = itemDetails.localizedPriceString;
	}
	if (Application.isEditor)
	{
		arg = "$0.00";
	}
	string.Format("Hold Finger to Tap ({1}/sec) Forever for {0}?", arg, num);
	string.Format("BUY AUTO MINER {0}.0", PanelMain.Instance._IAPAutoMinerLevel + 1);
	AppSupercharge.Instance.OnAutoClickerPurchased(skuBuy);
}

// PanelMain
private void UpsellHyperbitDoublerPrompt()
{
	if (this._IAPHbDoubler)
	{
		return;
	}
	string empty = string.Empty;
	PurchasableItem itemDetails = MyIAP.GetItemDetails(IAPsku.Sku_HbDoubler);
	if (itemDetails != null && !string.IsNullOrEmpty(itemDetails.localizedPriceString))
	{
		string localizedPriceString = itemDetails.localizedPriceString;
	}
	bool isEditor = Application.isEditor;
	AppSupercharge.Instance.OnHbDoublerPurchased();
}

// RandomEvent
public void Click_BuyEveryTime()
{
	if (this._isRequestingVideo)
	{
		return;
	}
	if (Time.realtimeSinceStartup < this._timeStartedRequest)
	{
		return;
	}
	bool bPositive = this._bPositive;
	string empty = string.Empty;
	PurchasableItem itemDetails = MyIAP.GetItemDetails(IAPsku.Sku_CardMaster);
	if (itemDetails != null && !string.IsNullOrEmpty(itemDetails.localizedPriceString))
	{
		string localizedPriceString = itemDetails.localizedPriceString;
	}
	bool isEditor = Application.isEditor;
	AppSupercharge.Instance.OnCardMasterPurchased();
}


// TaskSystem
SetMainTaskStatus()
if (this._windowState == TaskWindowState.complete)
		{
			if (TaskSystem._highestTaskCompleted < 4)
			{
				text = string.Format("Modded by AndnixSH#\nTask Complete!", new object[0]);
			}
		}
		
string.Format

// PanelMain
public bool BitcoinCheck(BigInteger biPrice, bool bSilent = false)
	{
		if (GameVars.Instance.DebugAllFree && !bSilent)
		{
			return true;
		}
		BigInteger bigInteger = this._currentBTC;
		foreach (BigInteger right in this._biAddValues)
		{
			bigInteger += right;
		}
		if (!(biPrice > bigInteger))
		{
			return true;
		}
		if (bSilent)
		{
			return false;
		}
		biPrice - bigInteger;
		return false;
	}
