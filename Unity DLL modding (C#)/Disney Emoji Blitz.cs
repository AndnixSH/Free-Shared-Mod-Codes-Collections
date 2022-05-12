// CurrencyHelper
public static int GetCoinCount()
{
	return 999999;
}

public static int GetGemCount()
{
	return 999999;
}

public static int GetGemCount()
{
	int result = -1;
	if (CurrencyManager.Instance != null)
	{
		float num = CurrencyManager.Instance.Wallet.GetAmount("Gems") - CurrencyHelper._pendingGemPurchaseAmount;
		if (num < 900000f)
		{
			CurrencyManager.Instance.Wallet.Collect("Coins", 999999f, true);
			CurrencyManager.Instance.Wallet.Collect("Gems", 999999f, true);
		}
		result = (int)num;
	}
	return result;
}
	
CurrencyManager.Instance.Wallet.Collect("Coins", (float)amount, saveToDisk);
CurrencyManager.Instance.Wallet.Collect("Gems", (float)amount, saveToDisk);