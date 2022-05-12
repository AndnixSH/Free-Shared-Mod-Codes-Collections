	public void AddGold()
	{
		GameController.Instance.globalPlayerData.Add("Gold", 5000.0);
	}

	public void AddCash(double amount)
	{
		double d = GameController.Instance.game.CashOnHand.Value + amount;
		GameController.Instance.game.CashOnHand.Value = ((!double.IsInfinity(d)) ? (GameController.Instance.game.CashOnHand.Value + amount) : double.MaxValue);
		double d2 = GameController.Instance.game.SessionCash.Value + amount;
		GameController.Instance.game.SessionCash.Value = ((!double.IsInfinity(d2)) ? (GameController.Instance.game.SessionCash.Value + amount) : double.MaxValue);
	}

	public void AddInvestors(double amount)
	{
		GameController.Instance.AngelService.AngelsOnHand.Value += amount;
	}

	public void AddMegabucks(double amount)
	{
		GameController.Instance.AwardMegaBucks(amount, "Hacks");
	}

	public void DecrementTime(float time)
	{
		GameController.Instance.game.timestamp -= (double)time;
	}

	public void SetCashHackAmount(string amount)
	{
		double num;
		if (double.TryParse(amount, out num))
		{
			this.bigCashAdd = num;
		}
	}

	public void HardReset()
	{
	}

	public void PauseForTwoMinutes()
	{
		UnityEngine.Object.FindObjectOfType<MainThreadDispatcher>().SendMessage("OnApplicationPause", true);
		this.DecrementTime(7200f);
		UnityEngine.Object.FindObjectOfType<MainThreadDispatcher>().SendMessage("OnApplicationPause", false);
	}

	public void CleanCache()
	{
		Caching.ClearCache();
	}

	public void GildAllVentures()
	{
		GameController.Instance.State.Subscribe(delegate(GameState state)
		{
			foreach (VentureModel model in state.VentureModels)
			{
				PlayerData.GetPlayerData("Global").Set("MegaTickets", 10.ToString());
				state.BoostVenture(model);
			}
		}).AddTo(this);
	}

	public void ForceUpdate()
	{
		SceneManager.LoadSceneAsync("ForceUpdate", LoadSceneMode.Single);
	}

	public void MarkAllEventsAsSeen()
	{
		GameController.Instance.EventService.MarkAllEventsAsParticipated();
	}

	public void EnableMicroManager()
	{
		GameController.Instance.game.planetPlayerData.SetBool("isMicroManagerEnabled", true);
		GameController.Instance.LoadPlanetScene(GameController.Instance.planetName, true);
	}
