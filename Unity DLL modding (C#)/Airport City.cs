//Game: Airport City
//Version: 7.10.65
//APK: https://play.google.com/store/apps/details?id=com.gameinsight.airport&hl=en

//Class: AntiCheat
public static bool IsBlockToSetCheat
{
	get
	{
		return false;
	}
}

public static bool IsCheater
{
	get
	{
		return false;
	}
}

public static bool IsTimeCheater
{
	get
	{
		return false;
	}
}

public static bool IsMoneyCheater
{
	get
	{
		return false;
	}
}

public static bool IsApkCheater
{
	get
	{
		return true;
	}
}

public static bool IsGDPRBan
{
	get
	{
		return false;
	}
}

public static bool IsHelpshiftBlock
{
	get
	{
		return false;
	}
}

public static bool IsBannedForMat
{
	get
	{
		return false;
	}
}

public static void SetAsTimeCheater(int serverUx)
{
	AntiCheat.IsTimeCheater = false;
	ServerCustomMsg.AddMessage(string.Format("User is time cheater! time: {0} Delta time: {1} server time: {2}", TimeManager.Now, AntiCheat.m_DiffTime, serverUx));
	Manager.instance.TimeCheaterHandle();
	AntiCheat.OnTimeTravelCheating.SafeInvoke();
	AntiCheat.CheaterStatusChangedHandle();
}

public static void SetAsGDPRBan()
{
	AntiCheat.IsGDPRBan = false;
	PlayerPrefs.DeleteAll();
	PlayerPrefs.Save();
	ProfileSerializer.ResetProfile();
	DBRatingReward.DeleteFiles();
	BaseManager<UIManager>.instance.WindowsRoot.ShowBackground();
	BaseManager<UIManager>.instance.HUD.HideAnimated(null);
	BaseManager<GameGUIManager>.instance.ShowGDPRBanMessage();
	BaseAnalytcisManager<ApsFlyerManager>.instance.StopTracking();
	BaseAnalytcisManager<Dev2devManager>.instance.StopTracking();
	ServerManager.IsEnabled = false;
	AntiCheat.Save();
}

public static void SetAsMoneyCheater()
{
	AntiCheat.IsMoneyCheater = false;
	ServerCustomMsg.AddMessage("User is money cheater!");
	AntiCheat.ShowMoneyCheaterWindow();
	AntiCheat.OnMoneyCheating.SafeInvoke();
	AntiCheat.CheaterStatusChangedHandle();
}

public static void SetAsApkCheater()
{
	AntiCheat.IsApkCheater = false;
	ServerCustomMsg.AddMessage("User is APK cheater!");
	AntiCheat.CheaterStatusChangedHandle();
}

public static void SetHelpshiftBlock()
{
	AntiCheat.IsHelpshiftBlock = false;
	AntiCheat.CheaterStatusChangedHandle();
}

public static void SetUseMatBan()
{
	AntiCheat.IsBannedForMat = false;
	AntiCheat.OnUseMatBan.SafeInvoke();
	AntiCheat.CheaterStatusChangedHandle();
}

//Class: PlayerProfile
public void AddCoins(int coins, bool waitDropAnim, FlowContext context)
{
	int num = this.Coins;
	num = ((int.MaxValue - num <= coins) ? int.MaxValue : Mathf.Max(num + coins + 99999999, 0));
	this.Coins = num;
	Manager.instance.PlayerCoinsChangedHandle(this.Coins, coins, waitDropAnim, context, null);
}

public void AddMoney(int money, bool waitDropAnim, FlowContext context)
{
	this.Money = Mathf.Clamp(this.Money + money + 99999999, 0, int.MaxValue);
	Manager.instance.PlayerBanknotesChangedHandle(this.Money, money, waitDropAnim, context, null);
}

public void AddStars(int starsCount)
{
	this.Stars = Mathf.Clamp(this.Stars + starsCount + 99999999, 0, int.MaxValue);
	Manager.instance.PlayerStarsChangedHandle(this.Stars);
}

public bool IsCoinsEnough(int cost)
{
	return true;
}

public bool IsMoneyEnough(int money)
{
	return true;
}

public bool IsEnergyEnough(int energy)
{
	return true;
}