StateMachine.PanelPool.Activate<UIMainMenuSettingsAdmin>();

private IEnumerator ProcessRequestGoogle(string url, WWWForm form, string product_id, bool restore)
		{
			string key = string.Format("{0}_purchase", Player.id);
			int int2 = PlayerPrefs.GetInt(key, 0);
			PlayerPrefs.SetInt(key, int2 - 1);
			PurchaseDataCollector.TrackData(product_id);
			PurchaseMonitor.PurchaseFinish(product_id);
			yield break;
		}