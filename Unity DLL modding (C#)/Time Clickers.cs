using Steamworks;

//Steamworks.SteamUserStats.SetAchievement(string) : bool
//SteamWS.UnlockAchievement(Achievements.Achievement) : void

//public class SteamWS : BaseWebService
public override void UnlockAchievement(Achievements.Achievement achievement)
{
	if (!this.IsConnected())
	{
		return;
	}
	if (achievement == null || !SteamWS.achievementIds.ContainsKey(achievement.name))
	{
		return;
	}
	string text = SteamWS.achievementIds[achievement.name];

	SteamUserStats.SetAchievement(text);
	SteamUserStats.StoreStats();
	
	//Unlock all achivements
	foreach (KeyValuePair<string, string> item in SteamWS.achievementIds)
	{
		SteamUserStats.SetAchievement(item.Value);
		SteamUserStats.SetAchievement(item.Key);
	}
}

private static Dictionary<string, string> achievementIds = new Dictionary<string, string>
{
	{ "Tycoon 1", "Tycoon_01" },
	{ "Tycoon 2", "Tycoon_02" },
	{ "Tycoon 3", "Tycoon_03" },
	{ "Tycoon 4", "Tycoon_04" },
	{ "Collector 1", "Collector_01" },
	{ "Collector 2", "Collector_02" },
	{ "Collector 3", "Collector_03" },
	{ "Collector 4", "Collector_04" },
	{ "Collector 5", "Collector_05" },
	{ "Collector 6", "Collector_06" },
	{ "Collector 7", "Collector_07" },
	{ "Collector 8", "Collector_08" },
	{ "Collector 9", "Collector_09" },
	{ "Collector 10", "Collector_10" },
	{ "Collector 11", "Collector_11" },
	{ "Collector 12", "Collector_12" },
	{ "Defender 1", "Defender_01" },
	{ "Defender 2", "Defender_02" },
	{ "Defender 3", "Defender_03" },
	{ "Defender 4", "Defender_04" },
	{ "Defender 5", "Defender_05" },
	{ "Defender 6", "Defender_06" },
	{ "Defender 7", "Defender_07" },
	{ "Defender 8", "Defender_08" },
	{ "Defender 9", "Defender_09" },
	{ "Defender 10", "Defender_10" },
	{ "Defender 11", "Defender_11" },
	{ "Defender 12", "Defender_12" },
	{ "Defender 13", "Defender_13" },
	{ "Defender 14", "Defender_14" },
	{ "Defender 15", "Defender_15" },
	{ "Defender 16", "Defender_16" },
	{ "Defender 17", "Defender_17" },
	{ "Defender 18", "Defender_18" },
	{ "Major General 1", "Major_General_01" },
	{ "Major General 2", "Major_General_02" },
	{ "Major General 3", "Major_General_03" },
	{ "Major General 4", "Major_General_04" },
	{ "Major General 5", "Major_General_05" },
	{ "Major General 6", "Major_General_06" },
	{ "Major General 7", "Major_General_07" },
	{ "Squad 1", "Squad_01" },
	{ "Squad 2", "Squad_02" },
	{ "Squad 3", "Squad_03" },
	{ "Squad 4", "Squad_04" },
	{ "Squad 5", "Squad_05" },
	{ "Squad 6", "Squad_06" },
	{ "Squad 7", "Squad_07" },
	{ "Squad 8", "Squad_08" },
	{ "Squad 9", "Squad_09" },
	{ "Squad 10", "Squad_10" },
	{ "Sharp Shooter 1", "Sharp_Shooter_01" },
	{ "Sharp Shooter 2", "Sharp_Shooter_02" },
	{ "Sharp Shooter 3", "Sharp_Shooter_03" },
	{ "Sharp Shooter 4", "Sharp_Shooter_04" },
	{ "Sharp Shooter 5", "Sharp_Shooter_05" },
	{ "Sharp Shooter 6", "Sharp_Shooter_06" },
	{ "Sharp Shooter 7", "Sharp_Shooter_07" },
	{ "Ace 1", "Ace_01" },
	{ "Ace 2", "Ace_02" },
	{ "Ace 3", "Ace_03" },
	{ "Time Traveller 1", "Time_Traveller_01" },
	{ "Time Traveller 2", "Time_Traveller_02" },
	{ "Time Traveller 3", "Time_Traveller_03" },
	{ "Time Traveller 4", "Time_Traveller_04" },
	{ "Time Traveller 5", "Time_Traveller_05" },
	{ "Time Traveller 6", "Time_Traveller_06" },
	{ "Time Traveller 7", "Time_Traveller_07" },
	{ "Time Traveller 8", "Time_Traveller_08" },
	{ "Fat Cat", "Fat_Cat_01" },
	{ "Opportunist", "Opportunist_01" },
	{ "Corporal 1", "Corporal_01" },
	{ "Corporal 2", "Corporal_02" },
	{ "Corporal 3", "Corporal_03" },
	{ "Corporal 4", "Corporal_04" },
	{ "Corporal 5", "Corporal_05" },
	{ "Corporal 6", "Corporal_06" },
	{ "Corporal 7", "Corporal_07" },
	{ "Corporal 8", "Corporal_08" },
	{ "Corporal 9", "Corporal_09" },
	{ "Destroyer 1", "Destroyer_01" },
	{ "Destroyer 2", "Destroyer_02" },
	{ "Annihilator 1", "Annihilator_01" },
	{ "Annihilator 2", "Annihilator_02" },
	{ "Demolisher 1", "Demolisher_01" },
	{ "Demolisher 2", "Demolisher_02" },
	{ "Exterminator 1", "Exterminator_01" },
	{ "Exterminator 2", "Exterminator_02" },
	{ "Exterminator 3", "Exterminator_03" },
	{ "Exterminator 4", "Exterminator_04" },
	{ "Exterminator 5", "Exterminator_05" },
	{ "Exterminator 6", "Exterminator_06" },
	{ "Spec Ops 1", "Spec_Ops_01" },
	{ "Spec Ops 2", "Spec_Ops_02" },
	{ "Spec Ops 3", "Spec_Ops_03" },
	{ "Spec Ops 4", "Spec_Ops_04" },
	{ "Spec Ops 5", "Spec_Ops_05" },
	{ "Hoarder", "Hoarder_01" },
	{ "Arms Race", "Arms_Race_01" }
};
	
//public partial class GoldBank : MonoBehaviour
public static bool CanAfford(double cost)
{
	return true;
}

public static double TotalGold()
{
	return double.MaxValue;
}


