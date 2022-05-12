//This calls good old cheat codes via Update method
//This will look a mess because I was noob in C++

bool adrenalinecheat, allcarsaregreatcheat, allcarsareshitcheat, apachecheat, beachpartycheat, blackcarscheat, blowupcarscheat, cleargamecheatslist, clearmissionskip, cloudyweathercheat, countrysideinvasioncheat, dozercheat, drivebycheat, duskcheat, elvislivescheat, endpause, everybodyattacksplayercheat, clearvehiclepopulationcheats, extrasunnyweathercheat, fasttimecheat, fat, flyboycheat, foggyweathercheat, funhousecheat, ganglandcheat, gangscheat, golfcartcheat, handlecarcheat, healthcheat, hearsecheat, jetpackcheat, loveconquersallcheat, lovefistcheat, mayhemcheat, midnightcheat, moneyarmourhealthcheat, monstertruckcheat, musclecheat, ninjacheat, notwantedcheat, parachutecheat, pinkcarscheat, predatorcheat, quadcheat, rainyweathercheat, riotcheat, sandstormcheat, scriptbypass, showmappingscheat, skinnycheat, slowtimecheat, staminacheat, stockcar2cheat, stockcar3cheat, stockcar4cheat, stockcarcheat, stormcheat, stuntplanecheat, suicidecheat, sunnyweathercheat, tankcheat, tankercheat, thegamblercheat, timetravelcheat, toggleplayerinvincibility, toggleshowtaptotarget, toggleshowtargeting, trashmastercheat, vehicleskillscheat, villagepeoplecheat,vortexcheat, wantedcheat, wantedleveldown, wantedlevelupcheat, weaponcheat1, weaponcheat2, weaponcheat3, weaponcheat4, weaponskillscheat, weaponslotcheat, xboxhelpercheat, processcheatmenu, processcheats, processdebugcarcheats, processdebugmissionskip, processweaponslotcheats, testcheatcode, resetcheats, fakecrash; 

bool lariotsactivehere;

bool eraser, infammo, noreload, canbearrested, heliflyingcar, planeflyingcar, flyingcar;

//char* (*SetHelpMessage)(void *_this, char *text, unsigned __int16 *text2, int a1, int a2, int a3, unsigned int a4) = (char*(*)(void *, char*, unsigned __int16*, int, int, int, unsigned int))dlsym(dlopen("libGTASA.so", 4), "j__ZN4CHud14SetHelpMessageEPKcPtbbbj");
//char* (*SetHelpMessage2)(void *_this, char *text, int a1, int a2, int a3) = (char*(*)(void *, char*, int, int, int))dlsym(dlopen("libGTASA.so", 4), "j__ZN4CHud14SetHelpMessageEPKcPtbbbj");
//void (*CText_Get)(char* text) = (void(*)( char*))dlsym(dlopen("libGTASA.so", 4), "_ZN5CText3GetEPKc");

void (*AdrenalineCheat)(void *_this) = (void(*)(void *))dlsym(dlopen("libGTASA.so", 4), "_ZN6CCheat15AdrenalineCheatEv");
void (*AllCarsAreGreatCheat)(void *_this) = (void(*)(void *))dlsym(dlopen("libGTASA.so", 4), "_ZN6CCheat20AllCarsAreGreatCheatEv");
void (*AllCarsAreShitCheat)(void *_this) = (void(*)(void *))dlsym(dlopen("libGTASA.so", 4), "_ZN6CCheat19AllCarsAreShitCheatEv");
void (*ApacheCheat)(void *_this) = (void(*)(void *))dlsym(dlopen("libGTASA.so", 4), "_ZN6CCheat11ApacheCheatEv");
void (*BeachPartyCheat)(void *_this) = (void(*)(void *))dlsym(dlopen("libGTASA.so", 4), "_ZN6CCheat15BeachPartyCheatEv");
void (*BlackCarsCheat)(void *_this) = (void(*)(void *))dlsym(dlopen("libGTASA.so", 4), "_ZN6CCheat14BlackCarsCheatEv");
void (*BlowUpCarsCheat)(void *_this) = (void(*)(void *))dlsym(dlopen("libGTASA.so", 4), "_ZN6CCheat15BlowUpCarsCheatEv");
void (*ClearGameCheatsList)(void *_this) = (void(*)(void *))dlsym(dlopen("libGTASA.so", 4), "_ZN6CCheat19ClearGameCheatsListEv");
void (*ClearMissionSkip)(void *_this) = (void(*)(void *))dlsym(dlopen("libGTASA.so", 4), "_ZN6CCheat16ClearMissionSkipEv");
void (*ClearVehiclePopulationCheats)(void *_this) = (void(*)(void *))dlsym(dlopen("libGTASA.so", 4), "_ZN6CCheat28ClearVehiclePopulationCheatsENS_6eCheatE");
void (*CloudyWeatherCheat)(void *_this) = (void(*)(void *))dlsym(dlopen("libGTASA.so", 4), "_ZN6CCheat18CloudyWeatherCheatEv");
void (*CountrysideInvasionCheat)(void *_this) = (void(*)(void *))dlsym(dlopen("libGTASA.so", 4), "_ZN6CCheat24CountrysideInvasionCheatEv");
void (*DozerCheat)(void *_this) = (void(*)(void *))dlsym(dlopen("libGTASA.so", 4), "_ZN6CCheat10DozerCheatEv");
void (*DrivebyCheat)(void *_this) = (void(*)(void *))dlsym(dlopen("libGTASA.so", 4), "_ZN6CCheat12DrivebyCheatEv");
void (*DuskCheat)(void *_this) = (void(*)(void *))dlsym(dlopen("libGTASA.so", 4), "_ZN6CCheat9DuskCheatEv");
void (*ElvisLivesCheat)(void *_this) = (void(*)(void *))dlsym(dlopen("libGTASA.so", 4), "_ZN6CCheat15ElvisLivesCheatEv");
void (*EndPause)(void *_this) = (void(*)(void *))dlsym(dlopen("libGTASA.so", 4), "_ZN6CCheat8EndPauseEv");
void (*EverybodyAttacksPlayerCheat)(void *_this) = (void(*)(void *))dlsym(dlopen("libGTASA.so", 4), "_ZN6CCheat27EverybodyAttacksPlayerCheatEv");
void (*ExtraSunnyWeatherCheat)(void *_this) = (void(*)(void *))dlsym(dlopen("libGTASA.so", 4), "_ZN6CCheat22ExtraSunnyWeatherCheatEv");
void (*FastTimeCheat)(void *_this) = (void(*)(void *))dlsym(dlopen("libGTASA.so", 4), "_ZN6CCheat13FastTimeCheatEv");
void (*FatCheat)(void *_this) = (void(*)(void *))dlsym(dlopen("libGTASA.so", 4), "_ZN6CCheat8FatCheatEv");
void (*FlyboyCheat)(void *_this) = (void(*)(void *))dlsym(dlopen("libGTASA.so", 4), "_ZN6CCheat11FlyboyCheatEv");
void (*FoggyWeatherCheat)(void *_this) = (void(*)(void *))dlsym(dlopen("libGTASA.so", 4), "_ZN6CCheat17FoggyWeatherCheatEv");
void (*FunhouseCheat)(void *_this) = (void(*)(void *))dlsym(dlopen("libGTASA.so", 4), "_ZN6CCheat13FunhouseCheatEv");
void (*GangLandCheat)(void *_this) = (void(*)(void *))dlsym(dlopen("libGTASA.so", 4), "_ZN6CCheat13GangLandCheatEv");
void (*GangsCheat)(void *_this) = (void(*)(void *))dlsym(dlopen("libGTASA.so", 4), "_ZN6CCheat10GangsCheatEv");
void (*GolfcartCheat)(void *_this) = (void(*)(void *))dlsym(dlopen("libGTASA.so", 4), "_ZN6CCheat13GolfcartCheatEv");
void (*HealthCheat)(void *_this) = (void(*)(void *))dlsym(dlopen("libGTASA.so", 4), "_ZN6CCheat11HealthCheatEv");
void (*HearseCheat)(void *_this) = (void(*)(void *))dlsym(dlopen("libGTASA.so", 4), "_ZN6CCheat11HearseCheatEv");
void (*JetpackCheat)(void *_this) = (void(*)(void *))dlsym(dlopen("libGTASA.so", 4), "_ZN6CCheat12JetpackCheatEv");
void (*LoveConquersAllCheat)(void *_this) = (void(*)(void *))dlsym(dlopen("libGTASA.so", 4), "_ZN6CCheat20LoveConquersAllCheatEv");
void (*LovefistCheat)(void *_this) = (void(*)(void *))dlsym(dlopen("libGTASA.so", 4), "_ZN6CCheat13LovefistCheatEv");
void (*MayhemCheat)(void *_this) = (void(*)(void *))dlsym(dlopen("libGTASA.so", 4), "_ZN6CCheat11MayhemCheatEv");
void (*MidnightCheat)(void *_this) = (void(*)(void *))dlsym(dlopen("libGTASA.so", 4), "_ZN6CCheat13MidnightCheatEv");
void (*MoneyArmourHealthCheat)(void *_this) = (void(*)(void *))dlsym(dlopen("libGTASA.so", 4), "_ZN6CCheat22MoneyArmourHealthCheatEv");
void (*MonsterTruckCheat)(void *_this) = (void(*)(void *))dlsym(dlopen("libGTASA.so", 4), "_ZN6CCheat17MonsterTruckCheatEv");
void (*MuscleCheat)(void *_this) = (void(*)(void *))dlsym(dlopen("libGTASA.so", 4), "_ZN6CCheat11MuscleCheatEv");
void (*NinjaCheat)(void *_this) = (void(*)(void *))dlsym(dlopen("libGTASA.so", 4), "_ZN6CCheat10NinjaCheatEv");
void (*NotWantedCheat)(void *_this) = (void(*)(void *))dlsym(dlopen("libGTASA.so", 4), "_ZN6CCheat14NotWantedCheatEv");
void (*ParachuteCheat)(void *_this) = (void(*)(void *))dlsym(dlopen("libGTASA.so", 4), "_ZN6CCheat14ParachuteCheatEv");
void (*PinkCarsCheat)(void *_this) = (void(*)(void *))dlsym(dlopen("libGTASA.so", 4), "_ZN6CCheat13PinkCarsCheatEv");
void (*PredatorCheat)(void *_this) = (void(*)(void *))dlsym(dlopen("libGTASA.so", 4), "_ZN6CCheat13PredatorCheatEv");
void (*QuadCheat)(void *_this) = (void(*)(void *))dlsym(dlopen("libGTASA.so", 4), "_ZN6CCheat9QuadCheatEv");
void (*RainyWeatherCheat)(void *_this) = (void(*)(void *))dlsym(dlopen("libGTASA.so", 4), "_ZN6CCheat17RainyWeatherCheatEv");
void (*RiotCheat)(void *_this) = (void(*)(void *))dlsym(dlopen("libGTASA.so", 4), "_ZN6CCheat9RiotCheatEv");
void (*SandstormCheat)(void *_this) = (void(*)(void *))dlsym(dlopen("libGTASA.so", 4), "_ZN6CCheat14SandstormCheatEv");
void (*ScriptBypassCheat)(void *_this) = (void(*)(void *))dlsym(dlopen("libGTASA.so", 4), "_ZN6CCheat17ScriptBypassCheatEv");
void (*ShowMappingsCheat)(void *_this) = (void(*)(void *))dlsym(dlopen("libGTASA.so", 4), "_ZN6CCheat17ShowMappingsCheatEv");
void (*SkinnyCheat)(void *_this) = (void(*)(void *))dlsym(dlopen("libGTASA.so", 4), "_ZN6CCheat11SkinnyCheatEv");
void (*SlowTimeCheat)(void *_this) = (void(*)(void *))dlsym(dlopen("libGTASA.so", 4), "_ZN6CCheat13SlowTimeCheatEv");
void (*StaminaCheat)(void *_this) = (void(*)(void *))dlsym(dlopen("libGTASA.so", 4), "_ZN6CCheat12StaminaCheatEv");
void (*StockCar2Cheat)(void *_this) = (void(*)(void *))dlsym(dlopen("libGTASA.so", 4), "_ZN6CCheat14StockCar2CheatEv");
void (*StockCar3Cheat)(void *_this) = (void(*)(void *))dlsym(dlopen("libGTASA.so", 4), "_ZN6CCheat14StockCar3CheatEv");
void (*StockCar4Cheat)(void *_this) = (void(*)(void *))dlsym(dlopen("libGTASA.so", 4), "_ZN6CCheat14StockCar4CheatEv");
void (*StockCarCheat)(void *_this) = (void(*)(void *))dlsym(dlopen("libGTASA.so", 4), "_ZN6CCheat13StockCarCheatEv");
void (*StormCheat)(void *_this) = (void(*)(void *))dlsym(dlopen("libGTASA.so", 4), "_ZN6CCheat10StormCheatEv");
void (*StuntPlaneCheat)(void *_this) = (void(*)(void *))dlsym(dlopen("libGTASA.so", 4), "_ZN6CCheat15StuntPlaneCheatEv");
void (*SuicideCheat)(void *_this) = (void(*)(void *))dlsym(dlopen("libGTASA.so", 4), "_ZN6CCheat12SuicideCheatEv");
void (*SunnyWeatherCheat)(void *_this) = (void(*)(void *))dlsym(dlopen("libGTASA.so", 4), "_ZN6CCheat17SunnyWeatherCheatEv");
void (*TankCheat)(void *_this) = (void(*)(void *))dlsym(dlopen("libGTASA.so", 4), "_ZN6CCheat9TankCheatEv");
void (*TankerCheat)(void *_this) = (void(*)(void *))dlsym(dlopen("libGTASA.so", 4), "_ZN6CCheat11TankerCheatEv");
void (*TheGamblerCheat)(void *_this) = (void(*)(void *))dlsym(dlopen("libGTASA.so", 4), "_ZN6CCheat15TheGamblerCheatEv");
void (*TimeTravelCheat)(void *_this) = (void(*)(void *))dlsym(dlopen("libGTASA.so", 4), "_ZN6CCheat15TimeTravelCheatEv");
void (*TogglePlayerInvincibility)(void *_this) = (void(*)(void *))dlsym(dlopen("libGTASA.so", 4), "_ZN6CCheat25TogglePlayerInvincibilityEv");
void (*ToggleShowTapToTarget)(void *_this) = (void(*)(void *))dlsym(dlopen("libGTASA.so", 4), "_ZN6CCheat21ToggleShowTapToTargetEv");
void (*ToggleShowTargeting)(void *_this) = (void(*)(void *))dlsym(dlopen("libGTASA.so", 4), "_ZN6CCheat19ToggleShowTargetingEv");
void (*TrashmasterCheat)(void *_this) = (void(*)(void *))dlsym(dlopen("libGTASA.so", 4), "_ZN6CCheat16TrashmasterCheatEv");
void (*VehicleSkillsCheat)(void *_this) = (void(*)(void *))dlsym(dlopen("libGTASA.so", 4), "_ZN6CCheat18VehicleSkillsCheatEv");
void (*VillagePeopleCheat)(void *_this) = (void(*)(void *))dlsym(dlopen("libGTASA.so", 4), "_ZN6CCheat18VillagePeopleCheatEv");
void (*VortexCheat)(void *_this) = (void(*)(void *))dlsym(dlopen("libGTASA.so", 4), "_ZN6CCheat11VortexCheatEv");
void (*WantedCheat)(void *_this) = (void(*)(void *))dlsym(dlopen("libGTASA.so", 4), "_ZN6CCheat11WantedCheatEv");
void (*WantedLevelDownCheat)(void *_this) = (void(*)(void *))dlsym(dlopen("libGTASA.so", 4), "_ZN6CCheat20WantedLevelDownCheatEv");
void (*WantedLevelUpCheat)(void *_this) = (void(*)(void *))dlsym(dlopen("libGTASA.so", 4), "_ZN6CCheat18WantedLevelUpCheatEv");
void (*WeaponCheat1)(void *_this) = (void(*)(void *))dlsym(dlopen("libGTASA.so", 4), "_ZN6CCheat12WeaponCheat1Ev");
void (*WeaponCheat2)(void *_this) = (void(*)(void *))dlsym(dlopen("libGTASA.so", 4), "_ZN6CCheat12WeaponCheat2Ev");
void (*WeaponCheat3)(void *_this) = (void(*)(void *))dlsym(dlopen("libGTASA.so", 4), "_ZN6CCheat12WeaponCheat3Ev");
void (*WeaponCheat4)(void *_this) = (void(*)(void *))dlsym(dlopen("libGTASA.so", 4), "_ZN6CCheat12WeaponCheat4Ev");
void (*WeaponSkillsCheat)(void *_this) = (void(*)(void *))dlsym(dlopen("libGTASA.so", 4), "_ZN6CCheat17WeaponSkillsCheatEv");
void (*WeaponSlotCheat)(void *_this) = (void(*)(void *))dlsym(dlopen("libGTASA.so", 4), "_ZN6CCheat15WeaponSlotCheatEv");
void (*xboxHelperCheat)(void *_this) = (void(*)(void *))dlsym(dlopen("libGTASA.so", 4), "_ZN6CCheat15xboxHelperCheatEv");

void (*ProcessCheatMenu)(void *_this) = (void(*)(void *))dlsym(dlopen("libGTASA.so", 4), "_ZN6CCheat16ProcessCheatMenuEv");
void (*ProcessCheats)(void *_this) = (void(*)(void *))dlsym(dlopen("libGTASA.so", 4), "_ZN6CCheat13ProcessCheatsEv");
void (*ProcessDebugCarCheats)(void *_this) = (void(*)(void *))dlsym(dlopen("libGTASA.so", 4), "_ZN6CCheat21ProcessDebugCarCheatsEv");
void (*ProcessDebugMissionSkip)(void *_this) = (void(*)(void *))dlsym(dlopen("libGTASA.so", 4), "_ZN6CCheat23ProcessDebugMissionSkipEv");
void (*ProcessWeaponSlotCheats)(void *_this) = (void(*)(void *))dlsym(dlopen("libGTASA.so", 4), "_ZN6CCheat23ProcessWeaponSlotCheatsEv");

void (*ResetCheats)(void *_this) = (void(*)(void *))dlsym(dlopen("libGTASA.so", 4), "_ZN6CCheat11ResetCheatsEv");

void (*AddToCheatString)(void *_this, const char *cheat) = (void(*)(void *, const char*))dlsym(dlopen("libGTASA.so", 4), "_ZN6CCheat16AddToCheatStringEc");

void (*IsReleased)(void *_this, int a1) = (void(*)(void *, int))dlsym(dlopen("libGTASA.so", 4), "j__ZN4CHID10IsReleasedE10HIDMapping");

void (*IsRelease3d)(void *_this, int a1) = (void(*)(void *, int))dlsym(dlopen("libGTASA.so", 4), "_ZN5CHeli21ProcessFlyingCarStuffEv");
void (*IsReleased2)(void *_this, int a1) = (void(*)(void *, int))dlsym(dlopen("libGTASA.so", 4), "_ZN6CPlane21ProcessFlyingCarStuffEv");
//void (*CAutomobile_ProcessFlyingCarStuff)(void *_this) = (void(*)(void *))dlsym(dlopen("libGTASA.so", 4), "_ZN11CAutomobile21ProcessFlyingCarStuffEv");
void (*CAutomobile_ProcessFlyingCarStuff)(void *_this) = (void(*)(void *))getRealOffset(0x4D73A8);


void (*orig_Update)(void* _this);
void Update(void* _this) {
	if(adrenalinecheat)
	{
		AdrenalineCheat(_this);
		adrenalinecheat = false;
	}
	if(allcarsaregreatcheat)
	{
		AllCarsAreGreatCheat(_this);
		allcarsaregreatcheat = false;
	}
    if(allcarsareshitcheat)
	{
		AllCarsAreShitCheat(_this);
		allcarsareshitcheat = false;
	}
	if(apachecheat)
	{
		ApacheCheat(_this);
		apachecheat = false;
	}
	if(beachpartycheat)
	{
		BeachPartyCheat(_this);
		beachpartycheat = false;
	}
	if(blackcarscheat)
	{
		BlackCarsCheat(_this);
		blackcarscheat = false;
	}
	if(blowupcarscheat)
	{
		BlowUpCarsCheat(_this);
		blowupcarscheat = false;
	}
	if(cleargamecheatslist)
	{
		ClearGameCheatsList(_this);
		cleargamecheatslist = false;
	}
	if(clearmissionskip)
	{
		ClearMissionSkip(_this);
		clearmissionskip = false;
	}
	if(clearvehiclepopulationcheats)
	{
		ClearVehiclePopulationCheats(_this);
		clearvehiclepopulationcheats = false;
	}
	if(cloudyweathercheat)
	{
		CloudyWeatherCheat(_this);
		cloudyweathercheat = false;
	}
	if(countrysideinvasioncheat)
	{
		CountrysideInvasionCheat(_this);
		countrysideinvasioncheat = false;
	}
	if(dozercheat)
	{
		DozerCheat(_this);
		dozercheat = false;
	}
	if(drivebycheat)
	{
		DrivebyCheat(_this);
		drivebycheat = false;
	}
	if(duskcheat)
	{
		DuskCheat(_this);
		duskcheat = false;
	}
	if(elvislivescheat)
	{
		ElvisLivesCheat(_this);
		elvislivescheat = false;
	}
	if(endpause)
	{
		EndPause(_this);
		endpause = false;
	}
	if(everybodyattacksplayercheat)
	{
		EverybodyAttacksPlayerCheat(_this);
		everybodyattacksplayercheat = false;
	}
	if(extrasunnyweathercheat)
	{
		ExtraSunnyWeatherCheat(_this);
		extrasunnyweathercheat = false;
	}
	if(fasttimecheat)
	{
		FastTimeCheat(_this);
		fasttimecheat = false;
	}
	if(fat)
	{
		FatCheat(_this);
		fat = false;
	}
	if(flyboycheat)
	{
		FlyboyCheat(_this);
		flyboycheat = false;
	}
	if(foggyweathercheat)
	{
		FoggyWeatherCheat(_this);
		foggyweathercheat = false;
	}
	if(funhousecheat)
	{
		FunhouseCheat(_this);
		funhousecheat = false;
	}
	if(ganglandcheat)
	{
		GangLandCheat(_this);
		ganglandcheat = false;
	}
	if(gangscheat)
	{
		GangsCheat(_this);
		gangscheat = false;
	}
	if(golfcartcheat)
	{
		GolfcartCheat(_this);
		golfcartcheat = false;
	}
	if(healthcheat)
	{
		HealthCheat(_this);
		healthcheat = false;
	}
	if(hearsecheat)
	{
		HearseCheat(_this);
		hearsecheat = false;
	}
	if(jetpackcheat)
	{
		JetpackCheat(_this);
		jetpackcheat = false;
	}
	if(loveconquersallcheat)
	{
		LoveConquersAllCheat(_this);
		loveconquersallcheat = false;
	}
	if(lovefistcheat)
	{
		LovefistCheat(_this);
		lovefistcheat = false;
	}
	if(mayhemcheat)
	{
		MayhemCheat(_this);
		mayhemcheat = false;
	}
	if(midnightcheat)
	{
		MidnightCheat(_this);
		midnightcheat = false;
	}
	if(moneyarmourhealthcheat)
	{
		MoneyArmourHealthCheat(_this);
		moneyarmourhealthcheat = false;
	}
	if(monstertruckcheat)
	{
		MonsterTruckCheat(_this);
		monstertruckcheat = false;
	}
	if(musclecheat)
	{
		MuscleCheat(_this);
		musclecheat = false;
	}
	if(ninjacheat)
	{
		NinjaCheat(_this);
		ninjacheat = false;
	}
	if(notwantedcheat)
	{
		NotWantedCheat(_this);
		notwantedcheat = false;
	}
	if(parachutecheat)
	{
		ParachuteCheat(_this);
		parachutecheat = false;
	}
	if(pinkcarscheat)
	{
		PinkCarsCheat(_this);
		pinkcarscheat = false;
	}
	if(predatorcheat)
	{
		PredatorCheat(_this);
		predatorcheat = false;
	}
	if(quadcheat)
	{
		QuadCheat(_this);
		quadcheat = false;
	}
	if(rainyweathercheat)
	{
		RainyWeatherCheat(_this);
		rainyweathercheat = false;
	}
	if(riotcheat)
	{
		RiotCheat(_this);
		riotcheat = false;
	}
	if(sandstormcheat)
	{
		SandstormCheat(_this);
		sandstormcheat = false;
	}
	if(scriptbypass)
	{
		ScriptBypassCheat(_this);
		scriptbypass = false;
	}
	if(showmappingscheat)
	{
		ShowMappingsCheat(_this);
		showmappingscheat = false;
	}
	if(skinnycheat)
	{
		SkinnyCheat(_this);
		skinnycheat = false;
	}
	if(slowtimecheat)
	{
		SlowTimeCheat(_this);
		slowtimecheat = false;
	}
	if(staminacheat)
	{
		StaminaCheat(_this);
		staminacheat = false;
	}
	if(stockcar2cheat)
	{
		StockCar2Cheat(_this);
		stockcar2cheat = false;
	}
	if(stockcar3cheat)
	{
		StockCar3Cheat(_this);
		stockcar3cheat = false;
	}
	if(stockcar4cheat)
	{
		StockCar4Cheat(_this);
		stockcar4cheat = false;
	}
	if(stockcarcheat)
	{
		StockCarCheat(_this);
		stockcarcheat = false;
	}
	if(stormcheat)
	{
		StormCheat(_this);
		stormcheat = false;
	}
	if(stuntplanecheat)
	{
		StuntPlaneCheat(_this);
		stuntplanecheat = false;
	}
	if(suicidecheat)
	{
		SuicideCheat(_this);
		suicidecheat = false;
	}
	if(sunnyweathercheat)
	{
		SunnyWeatherCheat(_this);
		sunnyweathercheat = false;
	}
	if(tankcheat)
	{
		TankCheat(_this);
		tankcheat = false;
	}
	if(tankercheat)
	{
		TankerCheat(_this);
		tankercheat = false;
	}
	if(thegamblercheat)
	{
		TheGamblerCheat(_this);
		thegamblercheat = false;
	}
	if(timetravelcheat)
	{
		TimeTravelCheat(_this);
		timetravelcheat = false;
	}
	if(toggleplayerinvincibility)
	{
		TogglePlayerInvincibility(_this);
		toggleplayerinvincibility = false;
	}
	if(toggleshowtaptotarget)
	{
		ToggleShowTapToTarget(_this);
		toggleshowtaptotarget = false;
	}
	if(toggleshowtargeting)
	{
		ToggleShowTargeting(_this);
		toggleshowtargeting = false;
	}
	if(trashmastercheat)
	{
		TrashmasterCheat(_this);
		trashmastercheat = false;
	}
	if(vehicleskillscheat)
	{
		VehicleSkillsCheat(_this);
		vehicleskillscheat = false;
	}
	if(villagepeoplecheat)
	{
		VillagePeopleCheat(_this);
		villagepeoplecheat = false;
	}
	if(vortexcheat)
	{
		VortexCheat(_this);
		vortexcheat = false;
	}
	if(wantedcheat)
	{
		WantedCheat(_this);
		wantedcheat = false;
	}
	if(wantedleveldown)
	{
		WantedLevelDownCheat(_this);
		wantedleveldown = false;
	}
	if(wantedlevelupcheat)
	{
		WantedLevelUpCheat(_this);
		wantedlevelupcheat = false;
	}
	if(weaponcheat1)
	{
		WeaponCheat1(_this);
		weaponcheat1 = false;
	}
	if(weaponcheat2)
	{
		WeaponCheat2(_this);
		weaponcheat2 = false;
	}
	if(weaponcheat3)
	{
		WeaponCheat3(_this);
		weaponcheat3 = false;
	}
	if(weaponcheat4)
	{
		WeaponCheat4(_this);
		weaponcheat4 = false;
	}
	if(weaponskillscheat)
	{
		WeaponSkillsCheat(_this);
		weaponskillscheat = false;
	}
	if(weaponslotcheat)
	{
		WeaponSlotCheat(_this);
		weaponslotcheat = false;
	}
	if(xboxhelpercheat)
	{
		xboxHelperCheat(_this);
		xboxhelpercheat = false;
	}	

/* 	if(processcheatmenu)
	{
		ProcessCheatMenu(_this);
		IsReleased(_this, 56);
		processcheatmenu = false;
	}
	if(processcheats)
	{
		ProcessCheats(_this);
		IsReleased(_this, 56);
		processcheats = false;
	}
	if(processdebugcarcheats)
	{
		ProcessDebugCarCheats(_this);
		IsReleased(_this, 56);
		processdebugcarcheats = false;
	}
	if(processdebugmissionskip)
	{
		ProcessDebugMissionSkip(_this);
		IsReleased(_this, 56);
		processdebugmissionskip = false;
	}
	if(processweaponslotcheats)
	{
		ProcessWeaponSlotCheats(_this);
		IsReleased(_this, 56);
		processweaponslotcheats = false;
	} */
	if(resetcheats)
	{
		ResetCheats(_this);
		resetcheats = false;
	}
	
	if(eraser)
	{
		QuadCheat(_this);
	}
	if(flyingcar)
	{
		CAutomobile_ProcessFlyingCarStuff(_this);
	}
	
	if (sub_3216) {
        exit(999);
    }
    return orig_Update(_this); 
}

void (*orig_LaRiotsActiveHere)(void* _this);
void LaRiotsActiveHere(void* _this) {
	if (lariotsactivehere)
	{
		return;
	}
	 return orig_LaRiotsActiveHere(_this); 
}

void GTASAHook() {
	while(libBase == 0) { 
       libBase = get_libBase("libGTASA.so"); 
       sleep(1); 
    }   
	//LOGD("Loaded libGTASA...");
	//MSHookFunction(((void*)MSFindSymbol(NULL, "_ZN6CCheat12SuicideCheatEv")),(void *)Update,(void **)&orig_Update);
	//MSHookFunction((void *)getRealOffset(0x4D73A8), (void *)Update, (void **) &orig_Update);
	void* HookSymbol = dlsym(dlopen("libGTASA.so", 4), "_ZN5CGame7ProcessEv");
	void* HookLaRiotsActiveHere = dlsym(dlopen("libGTASA.so", 4), "_ZN10CGameLogic17LaRiotsActiveHereEv");
	MSHookFunction(HookSymbol, (void *)Update, (void **)&orig_Update);
	MSHookFunction(HookLaRiotsActiveHere, (void *)LaRiotsActiveHere, (void **)&orig_LaRiotsActiveHere);
}