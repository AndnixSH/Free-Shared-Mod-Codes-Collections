//StaticData
	public static int Gems
	{
		get
		{
			int valueDefault = (Application.companyName == "Test") ? 999999999 : 999999999;
			return SavePrefs.GetInt("Gems", valueDefault);
		}
		set
		{
			SavePrefs.SetInt("Gems", value);
		}
	}