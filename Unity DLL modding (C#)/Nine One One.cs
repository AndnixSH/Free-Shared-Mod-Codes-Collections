//Undisclosed game

//Class: ButtonActions
//Method: FindCity

//Class: GameManager
//Method: startDeployment

//Class: CityButton
//Method: OnPointerEnter

//Remove this code
try
{
	if (Social.localUser == null || !Social.localUser.authenticated)
	{
		Singleton<PopUpManager>.instance.displayPopUp(LEManager.Get("mobile.playgamesservice.authenticationerror2"), new UnityAction(Application.Quit), false);
		return;
	}
}
catch
{
	Singleton<PopUpManager>.instance.displayPopUp(LEManager.Get("mobile.playgamesservice.authenticationerror2"), new UnityAction(Application.Quit), false);
	return;
}

//Class: ManagmentManager
public bool canBuy(GameLogicObject glo)
{
	return true;
}

public void subtractAmount(int price)
{
	Singleton<GameManager>.instance.levelData.cash += price;
	this.setCashButton(Singleton<GameManager>.instance.levelData.cash);
}
		
//Class: AchievementManager
private void googlePlayGamesInit()
{
}

//Class: AuthenticationHelper
//Make the code look like this
public static void TryAgain()
{
	Singleton<TipManager>.instance.displayLoaderWithTip(LEManager.Get("popup.loader.please_wait"), false, true);
	PlayGamesPlatform.Instance.SignOut();
	Singleton<AchievementManager>.instance.waitForAuthentication();
	Singleton<AchievementManager>.instance.isAuthenticationError = false;
	Singleton<PopUpManager>.instance.hidePopUp();
	Singleton<ExternalAssetsManager>.instance.load();
}

//Class: InAppPurchaseComponent
public bool IsPurchased(string id, bool isOfflineEnabled = true)
{
	return true;
}

//Class: MapDownloader
//Method: downloadCity
//Remove this code
try
{
	if (Social.localUser == null || !Social.localUser.authenticated)
	{
		if (Singleton<TipManager>.instance.tip.activeSelf || Singleton<TipManager>.instance.tipMobile.activeSelf)
		{
			Singleton<TipManager>.instance.tip.SetActive(false);
			Singleton<TipManager>.instance.tipMobile.SetActive(false);
		}
		if (Singleton<TipManager>.instance.loader || Singleton<TipManager>.instance.loaderMobile)
		{
			Singleton<TipManager>.instance.loader.SetActive(false);
			Singleton<TipManager>.instance.loaderMobile.SetActive(false);
		}
		Singleton<PopUpManager>.instance.displayPopUp(LEManager.Get("mobile.playgamesservice.authenticationerror2"), new UnityAction(Application.Quit), false);
		return;
	}
}
catch
{
	if (Singleton<TipManager>.instance.tip.activeSelf || Singleton<TipManager>.instance.tipMobile.activeSelf)
	{
		Singleton<TipManager>.instance.tip.SetActive(false);
		Singleton<TipManager>.instance.tipMobile.SetActive(false);
	}
	if (Singleton<TipManager>.instance.loader || Singleton<TipManager>.instance.loaderMobile)
	{
		Singleton<TipManager>.instance.loader.SetActive(false);
		Singleton<TipManager>.instance.loaderMobile.SetActive(false);
	}
	Singleton<PopUpManager>.instance.displayPopUp(LEManager.Get("mobile.playgamesservice.authenticationerror2"), new UnityAction(Application.Quit), false);
	return;
}