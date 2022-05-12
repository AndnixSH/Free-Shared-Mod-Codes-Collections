//Game: Car Smasher
//Version: 1.0.49
//APK: https://apkpure.com/car-smasher/com.freegame.carsmasher

//SDKSupervisorDemo
public void ShowADS(int adType, int adPlace, Callback isfinish)
{
}
	
//GameDataUtils
public static float _currentDiamond
{
	get
	{
		return 1E+09f;
	}
	set
	{
		GameDataUtils._Diamond = value.ToString();
	}
}

//DBManager

private void LoadUserData()
{
	GameDataUtils._currentDiamond = 1E+09f;
	GameDataUtils.removeAds = true;
}
	
	
//MapRoot
public void BuyOrUpgrateItemBall(int indexItemID)
{
	GameDataUtils._currentMoney += currentBallData.CostBase;
}