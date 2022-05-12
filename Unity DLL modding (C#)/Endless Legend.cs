public class CommandManager : Amplitude.Unity.Framework.CommandManager
{
	private string InputLine { get; set; }

	public override IEnumerator BindServices()
	{
		yield return base.BindServices();
		ILocalizationService localizationService = null;
		yield return base.BindService<ILocalizationService>(delegate(ILocalizationService service)
		{
			localizationService = service;
		});
		base.RegisterCommand(new Command("/?", "Displays a list of all available commands."), new Func<string[], string>(this.Command_Help));
		base.RegisterCommand(new Command("/Quit", "Quits the application and returns to desktop."), new Func<string[], string>(this.Command_Quit));
		base.RegisterCommand(new Command("/WhoAmI", "Displays information about the current user."), new Func<string[], string>(this.Command_WhoAmI));
		base.RegisterCommand(new Command("/Ping", "Displays your latency with the server."), new Func<string[], string>(this.Command_Ping));
		base.RegisterAliasForCommand("/?", "/Help");
		base.RegisterCommand(new Command("/Whisper", localizationService.Localize("%ChatWhisperCommandHelp")), new Func<string[], string>(this.Command_ChatWhisper));
		base.RegisterCommand(new Command("/Empire", localizationService.Localize("%ChatEmpireCommandHelp")), new Func<string[], string>(this.Command_ChatToEmpire));
		base.RegisterAliasForCommand("/Whisper", "/w");
		base.RegisterAliasForCommand("/Empire", "/e");
		base.RegisterCommand(new Command("/Bind", "Syntax : /Bind [KeyAction] [KeyCode] [bool]. Display bindings with no arguments, Call to bind function with arguments"), new Func<string[], string>(this.Command_Bind));
		base.RegisterCommand(new Command("/BringThePain", "Force the health of selected army units at half the maximum value. (Network non supported)."), new Func<string[], string>(this.Command_BringThePain));
		base.RegisterCommand(new Command("/ForceCurrentQuestsCompletion", "Will complete all the quests in progress (/ForceCurrentQuestsCompletion Failed to fail them all)."), new Func<string[], string>(this.Command_ForceCurrentQuestsCompletion));
		base.RegisterCommand(new Command("/ForceQuestTriggering", "Force a quest to be triggered."), new Func<string[], string>(this.Command_ForceQuestTriggering));
		base.RegisterCommand(new Command("/ForceUnlockTechnology", "Will unlock a technology without checking any prerequisite."), new Func<string[], string>(this.Command_ForceUnlockTechnology));
		base.RegisterCommand(new Command("/GetRegistryValue", "Get a registry value."), new Func<string[], string>(this.Command_GetRegistryValue));
		base.RegisterCommand(new Command("/IAmACheater", "Unlocks cheat items; 'NoMore' to get the real game back."), new Func<string[], string>(this.Command_IAmACheater));
		base.RegisterCommand(new Command("/INeedAHero", "Orders one hero creation; The Unit profile name could be provided, otherwise, the hero profile will be random."), new Func<string[], string>(this.Command_INeedAHero));
		base.RegisterCommand(new Command("/IPutASpellOnYou", "Capture the select army hero and push it to the second empire jail."), new Func<string[], string>(this.Command_IPutASpellOnYou));
		base.RegisterCommand(new Command("/LetTheSunshineIn", "Change season to summer."), new Func<string[], string>(this.Command_LetTheSunshineIn));
		base.RegisterCommand(new Command("/LightMeUp", "Disables the fog of war; 'NoMore' to get the fog of war back."), new Func<string[], string>(this.Command_LightMeUp));
		base.RegisterCommand(new Command("/LookAt", "Center camera on a specific world position."), new Func<string[], string>(this.Command_LookAt));
		base.RegisterCommand(new Command("/KnowledgeIsPower", "Unlock every technology. +\"all\" to include affinity & quest technologies."), new Func<string[], string>(this.Command_KnowledgeIsPower));
		base.RegisterCommand(new Command("/PowerMeUp", "Give to all of your selected world army's units enough xp to level up."), new Func<string[], string>(this.Command_PowerMeUp));
		base.RegisterCommand(new Command("/ShowMeTheMoney", "Orders the transfer of a specific amount of Dust."), new Func<string[], string>(this.Command_ShowMeTheMoney));
		base.RegisterCommand(new Command("/ShowMeTheResources", "Orders the transfer of a specific amount of Dust, Influence, Science & Growth."), new Func<string[], string>(this.Command_ShowMeTheResources));
		base.RegisterCommand(new Command("/ShowMeTheWay", "Orders the exploration of the whole world."), new Func<string[], string>(this.Command_ShowMeTheWay));
		base.RegisterCommand(new Command("/Slap", "Deal damage (random or given as parameter) to all the units (including hero) in your selected army or city."), new Func<string[], string>(this.Command_Slap));
		base.RegisterCommand(new Command("/TimeToDie", "Destroy the selected army."), new Func<string[], string>(this.Command_TimeToDie));
		base.RegisterCommand(new Command("/TransferResources", "Orders the transfer of a specific amount of resources."), new Func<string[], string>(this.Command_TransferResources));
		base.RegisterCommand(new Command("/WinterIsComing", "Change season to winter."), new Func<string[], string>(this.Command_WinterIsComming));
		base.RegisterCommand(new Command("/WhatIsYoursIsMine", "Toggle Catspaw action on minor/naval armies."), new Func<string[], string>(this.Command_WhatIsYoursIsMine));
		base.RegisterCommand(new Command("/SetWindPreferences", "Set the direction and strength of the wind."), new Func<string[], string>(this.Command_SetWindPreferences));
		base.RegisterCommand(new Command("/SeasonEffect", "Handle season effects."), new Func<string[], string>(this.Command_SeasonEffect));
		base.RegisterCommand(new Command("/Orb", "Give some data concerning orbs."), new Func<string[], string>(this.Command_Orb));
		base.RegisterCommand(new Command("/WeatherControl", "Activate the weather control using a given preset."), new Func<string[], string>(this.Command_WeatherControl));
		base.RegisterCommand(new Command("/BringTheHeat", "Change season to Heat Wave."), new Func<string[], string>(this.Command_BringTheHeat));
		base.RegisterCommand(new Command("/Visions", "Generate season mirages."), new Func<string[], string>(this.Command_Visions));
		base.RegisterCommand(new Command("/AIDebugMode", "Active the AI debug mode."), new Func<string[], string>(this.Command_AIDebugMode));
		base.RegisterCommand(new Command("/SimulationDebugMode", "Active the Simulation debug mode."), new Func<string[], string>(this.Command_SimulationDebugMode));
		base.RegisterAliasForCommand("/ShowMeTheMoney", "/TransferMoney");
		base.RegisterAliasForCommand("/TransferResources", "/Transfer");
		base.RegisterCommand(new Command("/UnitBodyInspector", "Activate the remapping tool."), new Func<string[], string>(this.CommandManager_UnitBodyInspector));
		base.RegisterAliasForCommand("/UnitBodyInspector", "/ShowMeYourBody");
		base.RegisterCommand(new Command("/CutTheRope", "Disconnect the game client."), new Func<string[], string>(this.Command_DisconnectClient));
		base.RegisterCommand(new Command("/Time", "Show the game time."), new Func<string[], string>(this.Command_GameTime));
		base.RegisterCommand(new Command("/WorldViewStatistics", "Display the world view statistics."), new Func<string[], string>(this.Command_WorldViewStatistics));
		base.RegisterCommand(new Command("/GetLobbyData", "Gets a lobby data value."), new Func<string[], string>(this.Command_GetLobbyData));
		base.RegisterAliasForCommand("/CutTheRope", "/Disc");
		base.RegisterCommand(new Command("/Dump", "Dumps the game content."), new Func<string[], string>(this.Command_Dump));
		base.RegisterCommand(new Command("/ListPlayers", "List the players."), new Func<string[], string>(this.Command_ListPlayers));
		base.RegisterCommand(new Command("/ToggleVisibility", "Toggle visibility of render element."), new Func<string[], string>(this.Command_ToggleVisibility));
		base.RegisterCommand(new Command("/LoadDynamicBitmaps", "Loads all dynamic available bitmaps."), new Func<string[], string>(this.Command_LoadDynamicBitmaps));
		base.RegisterCommand(new Command("/EpicMusicTime", "Orders the lauch of a faction music."), new Func<string[], string>(this.Command_EpicMusicTime));
		base.RegisterCommand(new Command("/EndlessDay", "Toggles the endless day status."), new Func<string[], string>(this.Command_ToggleEndlessDay));
		base.RegisterAliasForCommand("/ListPlayers", "/lp");
		base.RegisterCommand(new Command("/AutoTurn", "Plays some number of turns automatically."), new Func<string[], string>(this.Command_AutoTurn));
		base.RegisterCommand(new Command("/GCCollect", "Forces a full garbage collection to free some memory."), new Func<string[], string>(this.CommandManager_GCCollect));
		base.RegisterCommand(new Command("/UnloadUnusedAssets", "Unloads all unused assets in Unity."), new Func<string[], string>(this.CommandManager_UnloadUnusedAssets));
		yield break;
	}
}