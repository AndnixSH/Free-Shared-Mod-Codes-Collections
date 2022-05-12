//PackageEntry
public bool isDLCDisabled
	{
		get
		{
			return false;
		}
	}
	
// EntryData
public bool IsDLCEnabled()
{
	return true;
}

//SteamHelper
public static SteamHelper.DLC_BitMask GetOwnedDLCMask()
	{
		return (SteamHelper.DLC_BitMask)0 | SteamHelper.DLC_BitMask.DeluxeDLC | SteamHelper.DLC_BitMask.AfterDarkDLC | SteamHelper.DLC_BitMask.SnowFallDLC | SteamHelper.DLC_BitMask.NaturalDisastersDLC | SteamHelper.DLC_BitMask.InMotionDLC | SteamHelper.DLC_BitMask.GreenCitiesDLC | SteamHelper.DLC_BitMask.ParksDLC | SteamHelper.DLC_BitMask.Football | SteamHelper.DLC_BitMask.Football2345 | SteamHelper.DLC_BitMask.Football2345 | SteamHelper.DLC_BitMask.Football2345 | SteamHelper.DLC_BitMask.Football2345 | SteamHelper.DLC_BitMask.RadioStation1 | SteamHelper.DLC_BitMask.RadioStation2 | SteamHelper.DLC_BitMask.RadioStation3 | SteamHelper.DLC_BitMask.RadioStation4 | SteamHelper.DLC_BitMask.MusicFestival | SteamHelper.DLC_BitMask.Christmas | SteamHelper.DLC_BitMask.ModderPack1 | SteamHelper.DLC_BitMask.ModderPack2 | SteamHelper.DLC_BitMask.ModderPack3 | SteamHelper.DLC_BitMask.OrientalBuildings;
	}
	
public static bool IsDLCOwned(SteamHelper.DLC dlc)
	{
		return true;
	}
	
	public static bool IsDLCAvailable(SteamHelper.DLC dlc)
	{
		return true;
	}

	public static bool IsAppOwned(uint app)
	{
		return true;
	}
	
	public static bool IsSomeStadiumDLCOwned()
	{
		return true;
	}
//NewScenarioGamePanel
private bool IsOwnedAsset(string assetName)
	{
		return true;
	}