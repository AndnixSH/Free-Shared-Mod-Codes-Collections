//Game: 萌神战姬手游果盘版
//Version: 21.5
//APK: https://apkpure.com/merge-kingdom/com.gramgames.london.mergekingdom

//Class: DataProvider
public bool CanBuyShopItem(ShopItemDataVO item)
{
	return true;
}

public bool HasGoldToCraftItem(CraftingData item)
{
	return true;
}

public bool SpendGold(double amount)
{
	PlayerData data = this.GetData<PlayerData>("playerData", null);
	data.playerSoftCurrency += amount;  //Change - to +
	if (data.playerSoftCurrency < 0.0)
	{
		data.playerSoftCurrency = 0.0;
	}
	UIDataContext.UpdateNumPurchasableItems();
	UIDataContext.SetAvailableSoftCurr(data.playerSoftCurrency);
	this.persistenceManager.SavePlayerData(false, string.Empty, string.Empty, null);
	return true;
}

public void SpendGem(double amount)
{
	PlayerData data = this.GetData<PlayerData>("playerData", null);
	data.playerHardCurrency += (double)((int)amount); //Change - to +
	if (data.playerHardCurrency < 0.0)
	{
		data.playerHardCurrency = 0.0;
	}
	UIDataContext.UpdateNumPurchasableItems();
	UIDataContext.SetAvailableHardCurr(data.playerHardCurrency);
	this.persistenceManager.SavePlayerData(true, string.Empty, string.Empty, null);
}