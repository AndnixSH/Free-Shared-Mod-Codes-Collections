//ConnectAndJoinRandom.cs
	public virtual void Update()
	{
		if (this.EDEBACJJIAE && this.AutoConnect && !JCKIMLHBLDE.NKHEAKLGMMA && !this.NNBICBAPIBL)
		{
			Debug.Log("Update() was called by Unity. Scene is loaded. Let's connect to the Photon Master Server. Calling: PhotonNetwork.ConnectUsingSettings();");
			this.EDEBACJJIAE = false;
			string text = "n";
			if (Application.platform == RuntimePlatform.Android)
			{
				if (Application.installerName.Contains("com.amazon.venezia") || Application.installerName.Contains("com.android.vending"))
				{
					text = "c";
				}
				else if (ObscuredPrefs.GetBool("isTestConnect"))
				{
					text = "n";
				}
				else
				{
					Application.Quit();
				}
			}


//CreateManager.cs

public void BuyChecker()
	{
		for (int i = 25; i < 25; i++)
		{
			this.unRockAnimal[i] = ObscuredPrefs.GetBool("AnimalBuy" + i);
		}
}

//IAPManager.cs

public PurchaseProcessingResult ProcessPurchase(PurchaseEventArgs EIABMDHLDBE)
	{
		string receipt = EIABMDHLDBE.purchasedProduct.receipt;
		Dictionary<string, object> dictionary = this.JsonRead(receipt);
		string text = (string)dictionary["Store"];
		string jmclenapine = (string)dictionary["Payload"];
		Dictionary<string, object> dictionary2 = this.JsonRead(jmclenapine);
		string gmbamnmhifc = (string)dictionary2["json"];
		string pkbaphckifl = (string)dictionary2["signature"];
		this.BCJFAKGPEJO = this.selectStr;
		base.StartCoroutine(this.DatabaseInsert(gmbamnmhifc, pkbaphckifl, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA20K1Yne8zWwH5tkOXzOP85167u6bDyN7ZNVvaddvoQByovbNG5F8RbwYbHRpW7N266aDG2YRcosNcvhlw51sGwY0F0L7s4sSelCxPuHlUh6MSqg6xvikS2wmAdZwWqBw4XruKrudk7v7bb7VsTkO8yWJ8uqGmGQjFoiXwlPRmRMODhk/ooAFUgNZGMnUS/BIA7MD2QfalSaq2isfLHUPOnZ5Oc1tGuBXsfDAQNg13ZS9m4HX0M0Kc0GG4FqGeO1kh4LwY4DN1G2Sp7xi6bgNhUYLBgJsU2ldFaEPO7AEsL/BJA3WuWM/xSaYWCkcfD9aLvGDZBWBN8EMySEwX2ZmJQIDAQAB"));
		base.StartCoroutine(this.CheckWhile(EIABMDHLDBE));
		return PurchaseProcessingResult.Complete;
	}

//PointShopManager.cs

	private void OnPoint5()
	{
		ObscuredInt anldoeglifp = ++this.ANLDOEGLIFP;
		this.ANLDOEGLIFP = anldoeglifp;
		this.ANLDOEGLIFP = anldoeglifp;
		this.FICBIALDJHP += 347500L;
		int value = ObscuredPrefs.GetInt("BuyPoint" + this.JLBFIBNHIKG) + 1;
		ObscuredPrefs.SetInt("BuyPoint" + this.JLBFIBNHIKG, value);
		ObscuredPrefs.SetLong("Point" + this.JLBFIBNHIKG, this.FICBIALDJHP);
		this.SetPointLabel();
	}

	private void OnPoint2()
	{
		ObscuredInt anldoeglifp = ++this.ANLDOEGLIFP;
		this.ANLDOEGLIFP = anldoeglifp;
		this.ANLDOEGLIFP = anldoeglifp;
		this.FICBIALDJHP += 42000L;
		int value = ObscuredPrefs.GetInt("BuyPoint" + this.JLBFIBNHIKG) + 1;
		ObscuredPrefs.SetInt("BuyPoint" + this.JLBFIBNHIKG, value);
		ObscuredPrefs.SetLong("Point" + this.JLBFIBNHIKG, this.FICBIALDJHP);
		this.SetPointLabel();
	}
	private void OnPoint6()
	{
		ObscuredInt anldoeglifp = ++this.ANLDOEGLIFP;
		this.ANLDOEGLIFP = anldoeglifp;
		this.ANLDOEGLIFP = anldoeglifp;
		this.FICBIALDJHP += 825000L;
		int value = ObscuredPrefs.GetInt("BuyPoint" + this.JLBFIBNHIKG) + 1;
		ObscuredPrefs.SetInt("BuyPoint" + this.JLBFIBNHIKG, value);
		ObscuredPrefs.SetLong("Point" + this.JLBFIBNHIKG, this.FICBIALDJHP);
		this.SetPointLabel();
	}

	private void OnPoint7()
	{
		ObscuredPrefs.SetInt("wingE" + this.JLBFIBNHIKG, 1);
		ObscuredInt anldoeglifp = ++this.ANLDOEGLIFP;
		this.ANLDOEGLIFP = anldoeglifp;
		this.ANLDOEGLIFP = anldoeglifp;
		this.FICBIALDJHP += 825000L;
		int value = ObscuredPrefs.GetInt("BuyPoint" + this.JLBFIBNHIKG) + 1;
		ObscuredPrefs.SetInt("BuyPoint" + this.JLBFIBNHIKG, value);
		ObscuredPrefs.SetLong("Point" + this.JLBFIBNHIKG, this.FICBIALDJHP);
		this.SetPointLabel();
	}
	private void OnPoint3()
	{
		ObscuredInt anldoeglifp = ++this.ANLDOEGLIFP;
		this.ANLDOEGLIFP = anldoeglifp;
		this.ANLDOEGLIFP = anldoeglifp;
		this.FICBIALDJHP += 90400L;
		int value = ObscuredPrefs.GetInt("BuyPoint" + this.JLBFIBNHIKG) + 1;
		ObscuredPrefs.SetInt("BuyPoint" + this.JLBFIBNHIKG, value);
		ObscuredPrefs.SetLong("Point" + this.JLBFIBNHIKG, this.FICBIALDJHP);
		this.SetPointLabel();
	}
	private void OnPoint4()
	{
		ObscuredInt anldoeglifp = ++this.ANLDOEGLIFP;
		this.ANLDOEGLIFP = anldoeglifp;
		this.ANLDOEGLIFP = anldoeglifp;
		this.FICBIALDJHP += 18900L;
		int value = ObscuredPrefs.GetInt("BuyPoint" + this.JLBFIBNHIKG) + 1;
		ObscuredPrefs.SetInt("BuyPoint" + this.JLBFIBNHIKG, value);
		ObscuredPrefs.SetLong("Point" + this.JLBFIBNHIKG, this.FICBIALDJHP);
		this.SetPointLabel();
	}
	private void OnPoint1()
	{
		ObscuredInt anldoeglifp = ++this.ANLDOEGLIFP;
		this.ANLDOEGLIFP = anldoeglifp;
		this.ANLDOEGLIFP = anldoeglifp;
		this.FICBIALDJHP += 20000L;
		int value = ObscuredPrefs.GetInt("BuyPoint" + this.JLBFIBNHIKG) + 1;
		ObscuredPrefs.SetInt("BuyPoint" + this.JLBFIBNHIKG, value);
		ObscuredPrefs.SetLong("Point" + this.JLBFIBNHIKG, this.FICBIALDJHP);
		this.SetPointLabel();
	}