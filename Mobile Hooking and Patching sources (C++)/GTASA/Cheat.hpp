//PredatorCheat unused

namespace Cheat
{
    int vehicleIds[] = { 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415,
    416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433,
    434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451,
    452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469,
    470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487,
    488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505,
    506, 507, 508, 509, 510, 511, 512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523,
    524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541,
    542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559,
    560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577,
    578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595,
    596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611
    };

    int CheatID = 0, VehicleID = 0;

    bool SpawnVehicleNow;

    void (*VehicleCheat)(int id);

    void (*AdrenalineCheat)(void* _this);
    void (*AllCarsAreGreatCheat)(void* _this);
    void (*AllCarsAreShitCheat)(void* _this);
    void (*ApacheCheat)(void* _this);
    void (*BeachPartyCheat)(void* _this);
    void (*BlackCarsCheat)(void* _this);
    void (*BlowUpCarsCheat)(void* _this);
    void (*ClearGameCheatsList)(void* _this);
    void (*ClearMissionSkip)(void* _this);
    void (*ClearVehiclePopulationCheats)(void* _this);
    void (*CloudyWeatherCheat)(void* _this);
    void (*CountrysideInvasionCheat)(void* _this);
    void (*DozerCheat)(void* _this);
    void (*DrivebyCheat)(void* _this);
    void (*DuskCheat)(void* _this);
    void (*ElvisLivesCheat)(void* _this);
    void (*EndPause)(void* _this);
    void (*EverybodyAttacksPlayerCheat)(void* _this);
    void (*ExtraSunnyWeatherCheat)(void* _this);
    void (*FastTimeCheat)(void* _this);
    void (*FatCheat)(void* _this);
    void (*FlyboyCheat)(void* _this);
    void (*FoggyWeatherCheat)(void* _this);
    void (*FunhouseCheat)(void* _this);
    void (*GangLandCheat)(void* _this);
    void (*GangsCheat)(void* _this);
    void (*GolfcartCheat)(void* _this);;
    void (*HandleCheatMenu)(void* _this, bool a1);
    void (*HealthCheat)(void* _this);
    void (*HearseCheat)(void* _this);
    void (*JetpackCheat)(void* _this);
    void (*LoveConquersAllCheat)(void* _this);
    void (*LovefistCheat)(void* _this);
    void (*MayhemCheat)(void* _this);
    void (*MidnightCheat)(void* _this);
    void (*MoneyArmourHealthCheat)(void* _this);
    void (*MonsterTruckCheat)(void* _this);
    void (*MuscleCheat)(void* _this);
    void (*NinjaCheat)(void* _this);
    void (*NotWantedCheat)(void* _this);
    void (*ParachuteCheat)(void* _this);
    void (*PinkCarsCheat)(void* _this);
    void (*ProcessCheatMenu)(void* _this);
    void (*ProcessDebugCarCheats)(void* _this);
    void (*ProcessDebugMissionSkip)(void* _this);
    void (*ProcessWeaponSlotCheats)(void* _this);
    void (*QuadCheat)(void* _this);
    void (*RainyWeatherCheat)(void* _this);
    void (*ResetCheats)(void* _this);
    void (*RiotCheat)(void* _this);
    void (*SandstormCheat)(void* _this);
    void (*ScriptBypassCheat)(void* _this);
    void (*ShowMappingsCheat)(void* _this);
    void (*SkinnyCheat)(void* _this);
    void (*SlowTimeCheat)(void* _this);
    void (*StaminaCheat)(void* _this);
    void (*StartPause)(void* _this);
    void (*StockCar2Cheat)(void* _this);
    void (*StockCar3Cheat)(void* _this);
    void (*StockCar4Cheat)(void* _this);
    void (*StockCarCheat)(void* _this);
    void (*StormCheat)(void* _this);
    void (*StuntPlaneCheat)(void* _this);
    void (*SuicideCheat)(void* _this);
    void (*SunnyWeatherCheat)(void* _this);
    void (*TankCheat)(void* _this);
    void (*TankerCheat)(void* _this);
    void (*TheGamblerCheat)(void* _this);
    void (*TimeTravelCheat)(void* _this);
    void (*TogglePlayerInvincibility)(void* _this);
    void (*ToggleShowTapToTarget)(void* _this);
    void (*ToggleShowTargeting)(void* _this);
    void (*TrashmasterCheat)(void* _this);
    void (*VehicleSkillsCheat)(void* _this);
    void (*VillagePeopleCheat)(void* _this);
    void (*VortexCheat)(void* _this);
    void (*WantedCheat)(void* _this);
    void (*WantedLevelDownCheat)(void* _this);
    void (*WantedLevelUpCheat)(void* _this);
    void (*WeaponCheat1)(void* _this);
    void (*WeaponCheat2)(void* _this);
    void (*WeaponCheat3)(void* _this);
    void (*WeaponCheat4)(void* _this);
    void (*WeaponSkillsCheat)(void* _this);
    void (*WeaponSlotCheat)(void* _this);
    void (*xboxHelperCheat)(void* _this);

    void CallCheats(void* _this) {

        if (SpawnVehicleNow) {
            int n = sizeof(vehicleIds) / sizeof(*vehicleIds);
            bool exists = std::find(vehicleIds, vehicleIds + n, VehicleID) != vehicleIds + n;
            if (exists)
                VehicleCheat(VehicleID);
            SpawnVehicleNow = false;
        }

        switch (CheatID) {
            case 1: {
                AdrenalineCheat(_this);
                break;
            }
            case 2: {
                AllCarsAreGreatCheat(_this);
                break;
            }
            case 3: {
                AllCarsAreShitCheat(_this);
                break;
            }
            case 4: {
                ApacheCheat(_this);
                break;
            }
            case 5: {
                BeachPartyCheat(_this);
                break;
            }
            case 6: {
                BlackCarsCheat(_this);
                break;
            }
            case 7: {
                BlowUpCarsCheat(_this);
                break;
            }
            case 8: {
                ClearGameCheatsList(_this);
                break;
            }
            case 9: {
                ClearMissionSkip(_this);
                break;
            }
            case 10: {
                ClearVehiclePopulationCheats(_this);
                break;
            }
            case 11: {
                CloudyWeatherCheat(_this);
                break;
            }
            case 12: {
                CountrysideInvasionCheat(_this);
                break;
            }
            case 13: {
                DozerCheat(_this);
                break;
            }
            case 14: {
                DrivebyCheat(_this);
                break;
            }
            case 15: {
                DuskCheat(_this);
                break;
            }
            case 16: {
                ElvisLivesCheat(_this);
                break;
            }
            case 17: {
                EndPause(_this);
                break;
            }
            case 18: {
                EverybodyAttacksPlayerCheat(_this);
                break;
            }
            case 19: {
                ExtraSunnyWeatherCheat(_this);
                break;
            }
            case 20: {
                FastTimeCheat(_this);
                break;
            }
            case 21: {
                FatCheat(_this);
                break;
            }
            case 22: {
                FlyboyCheat(_this);
                break;
            }
            case 23: {
                FoggyWeatherCheat(_this);
                break;
            }
            case 24: {
                FunhouseCheat(_this);
                break;
            }
            case 25: {
                GangLandCheat(_this);
                break;
            }
            case 26: {
                GangsCheat(_this);
                break;
            }
            case 27: {
                GolfcartCheat(_this);
                break;
            }
            case 28: {
                HandleCheatMenu(_this, true);
                break;
            }
            case 29: {
                HealthCheat(_this);
                break;
            }
            case 30: {
                HearseCheat(_this);
                break;
            }
            case 31: {
                JetpackCheat(_this);
                break;
            }
            case 32: {
                LoveConquersAllCheat(_this);
                break;
            }
            case 33: {
                LovefistCheat(_this);
                break;
            }
            case 34: {
                MayhemCheat(_this);
                break;
            }
            case 35: {
                MidnightCheat(_this);
                break;
            }
            case 36: {
                MoneyArmourHealthCheat(_this);
                break;
            }
            case 37: {
                MonsterTruckCheat(_this);
                break;
            }
            case 38: {
                MuscleCheat(_this);
                break;
            }
            case 39: {
                NinjaCheat(_this);
                break;
            }
            case 40: {
                NotWantedCheat(_this);
                break;
            }
            case 41: {
                ParachuteCheat(_this);
                break;
            }
            case 42: {
                PinkCarsCheat(_this);
                break;
            }
            case 43: {
                ProcessCheatMenu(_this);
                break;
            }
            case 44: {
                ProcessDebugCarCheats(_this);
                break;
            }
            case 45: {
                ProcessDebugMissionSkip(_this);
                break;
            }
            case 46: {
                ProcessWeaponSlotCheats(_this);
                break;
            }
            case 47: {
                QuadCheat(_this);
                break;
            }
            case 48: {
                RainyWeatherCheat(_this);
                break;
            }
            case 49: {
                ResetCheats(_this);
                break;
            }
            case 50: {
                RiotCheat(_this);
                break;
            }
            case 51: {
                SandstormCheat(_this);
                break;
            }
            case 52: {
                ScriptBypassCheat(_this);
                break;
            }
            case 53: {
                ShowMappingsCheat(_this);
                break;
            }
            case 54: {
                SkinnyCheat(_this);
                break;
            }
            case 55: {
                SlowTimeCheat(_this);
                break;
            }
            case 56: {
                StaminaCheat(_this);
                break;
            }
            case 57: {
                StartPause(_this);
                break;
            }
            case 58: {
                StockCar2Cheat(_this);
                break;
            }
            case 59: {
                StockCar3Cheat(_this);
                break;
            }
            case 60: {
                StockCar4Cheat(_this);
                break;
            }
            case 61: {
                StockCarCheat(_this);
                break;
            }
            case 62: {
                StormCheat(_this);
                break;
            }
            case 63: {
                StuntPlaneCheat(_this);
                break;
            }
            case 64: {
                SuicideCheat(_this);
                break;
            }
            case 65: {
                SunnyWeatherCheat(_this);
                break;
            }
            case 66: {
                TankCheat(_this);
                break;
            }
            case 67: {
                TankerCheat(_this);
                break;
            }
            case 68: {
                TheGamblerCheat(_this);
                break;
            }
            case 69: {
                TimeTravelCheat(_this);
                break;
            }
            case 70: {
                TogglePlayerInvincibility(_this);
                break;
            }
            case 71: {
                ToggleShowTapToTarget(_this);
                break;
            }
            case 72: {
                ToggleShowTargeting(_this);
                break;
            }
            case 73: {
                TrashmasterCheat(_this);
                break;
            }
            case 74: {
                VehicleSkillsCheat(_this);
                break;
            }
            case 75: {
                VillagePeopleCheat(_this);
                break;
            }
            case 76: {
                VortexCheat(_this);
                break;
            }
            case 77: {
                WantedCheat(_this);
                break;
            }
            case 78: {
                WantedLevelDownCheat(_this);
                break;
            }
            case 79: {
                WantedLevelUpCheat(_this);
                break;
            }
            case 80: {
                WeaponCheat1(_this);
                break;
            }
            case 81: {
                WeaponCheat2(_this);
                break;
            }
            case 82: {
                WeaponCheat3(_this);
                break;
            }
            case 83: {
                WeaponCheat4(_this);
                break;
            }
            case 84: {
                WeaponSkillsCheat(_this);
                break;
            }
            case 85: {
                WeaponSlotCheat(_this);
                break;
            }
            case 86: {
                xboxHelperCheat(_this);
                break;
            }
        }

        CheatID = 0;
    }

    void Init() {
        VehicleCheat = (void(*)(int))dlsym(dlopen(targetLibName, 4), oxorany("_ZN6CCheat12VehicleCheatEi"));

        AdrenalineCheat = (void(*)(void*))dlsym(dlopen(targetLibName, 4), oxorany("_ZN6CCheat15AdrenalineCheatEv"));
        AllCarsAreGreatCheat = (void(*)(void*))dlsym(dlopen(targetLibName, 4), oxorany("_ZN6CCheat20AllCarsAreGreatCheatEv"));
        AllCarsAreShitCheat = (void(*)(void*))dlsym(dlopen(targetLibName, 4), oxorany("_ZN6CCheat19AllCarsAreShitCheatEv"));
        ApacheCheat = (void(*)(void*))dlsym(dlopen(targetLibName, 4), oxorany("_ZN6CCheat11ApacheCheatEv"));
        BeachPartyCheat = (void(*)(void*))dlsym(dlopen(targetLibName, 4), oxorany("_ZN6CCheat15BeachPartyCheatEv"));
        BlackCarsCheat = (void(*)(void*))dlsym(dlopen(targetLibName, 4), oxorany("_ZN6CCheat14BlackCarsCheatEv"));
        BlowUpCarsCheat = (void(*)(void*))dlsym(dlopen(targetLibName, 4), oxorany("_ZN6CCheat15BlowUpCarsCheatEv"));
        ClearGameCheatsList = (void(*)(void*))dlsym(dlopen(targetLibName, 4), oxorany("_ZN6CCheat19ClearGameCheatsListEv"));
        ClearMissionSkip = (void(*)(void*))dlsym(dlopen(targetLibName, 4), oxorany("_ZN6CCheat16ClearMissionSkipEv"));
        ClearVehiclePopulationCheats = (void(*)(void*))dlsym(dlopen(targetLibName, 4), oxorany("_ZN6CCheat28ClearVehiclePopulationCheatsENS_6eCheatE"));
        CloudyWeatherCheat = (void(*)(void*))dlsym(dlopen(targetLibName, 4), oxorany("_ZN6CCheat18CloudyWeatherCheatEv"));
        CountrysideInvasionCheat = (void(*)(void*))dlsym(dlopen(targetLibName, 4), oxorany("_ZN6CCheat24CountrysideInvasionCheatEv"));
        DozerCheat = (void(*)(void*))dlsym(dlopen(targetLibName, 4), oxorany("_ZN6CCheat10DozerCheatEv"));
        DrivebyCheat = (void(*)(void*))dlsym(dlopen(targetLibName, 4), oxorany("_ZN6CCheat12DrivebyCheatEv"));
        DuskCheat = (void(*)(void*))dlsym(dlopen(targetLibName, 4), oxorany("_ZN6CCheat12DrivebyCheatEv"));
        ElvisLivesCheat = (void(*)(void*))dlsym(dlopen(targetLibName, 4), oxorany("_ZN6CCheat15ElvisLivesCheatEv"));
        EndPause = (void(*)(void*))dlsym(dlopen(targetLibName, 4), oxorany("_ZN6CCheat8EndPauseEv"));
        EverybodyAttacksPlayerCheat = (void(*)(void*))dlsym(dlopen(targetLibName, 4), oxorany("_ZN6CCheat27EverybodyAttacksPlayerCheatEv"));
        ExtraSunnyWeatherCheat = (void(*)(void*))dlsym(dlopen(targetLibName, 4), oxorany("_ZN6CCheat22ExtraSunnyWeatherCheatEv"));
        FastTimeCheat = (void(*)(void*))dlsym(dlopen(targetLibName, 4), oxorany("_ZN6CCheat13FastTimeCheatEv"));
        FatCheat = (void(*)(void*))dlsym(dlopen(targetLibName, 4), oxorany("_ZN6CCheat8FatCheatEv"));
        FlyboyCheat = (void(*)(void*))dlsym(dlopen(targetLibName, 4), oxorany("_ZN6CCheat11FlyboyCheatEv"));
        FoggyWeatherCheat = (void(*)(void*))dlsym(dlopen(targetLibName, 4), oxorany("_ZN6CCheat17FoggyWeatherCheatEv"));
        FunhouseCheat = (void(*)(void*))dlsym(dlopen(targetLibName, 4), oxorany("_ZN6CCheat13FunhouseCheatEv"));
        GangLandCheat = (void(*)(void*))dlsym(dlopen(targetLibName, 4), oxorany("_ZN6CCheat13GangLandCheatEv"));
        GangsCheat = (void(*)(void*))dlsym(dlopen(targetLibName, 4), oxorany("_ZN6CCheat10GangsCheatEv"));
        GolfcartCheat = (void(*)(void*))dlsym(dlopen(targetLibName, 4), oxorany("_ZN6CCheat13GolfcartCheatEv"));
        HandleCheatMenu = (void(*)(void*, bool))dlsym(dlopen(targetLibName, 4), oxorany("_ZN6CCheat15HandleCheatMenuEb"));
        HealthCheat = (void(*)(void*))dlsym(dlopen(targetLibName, 4), oxorany("_ZN6CCheat11HealthCheatEv"));
        HearseCheat = (void(*)(void*))dlsym(dlopen(targetLibName, 4), oxorany("_ZN6CCheat11HearseCheatEv"));
        JetpackCheat = (void(*)(void*))dlsym(dlopen(targetLibName, 4), oxorany("_ZN6CCheat12JetpackCheatEv"));
        LoveConquersAllCheat = (void(*)(void*))dlsym(dlopen(targetLibName, 4), oxorany("_ZN6CCheat20LoveConquersAllCheatEv"));
        LovefistCheat = (void(*)(void*))dlsym(dlopen(targetLibName, 4), oxorany("_ZN6CCheat13LovefistCheatEv"));
        MayhemCheat = (void(*)(void*))dlsym(dlopen(targetLibName, 4), oxorany("_ZN6CCheat11MayhemCheatEv"));
        MidnightCheat = (void(*)(void*))dlsym(dlopen(targetLibName, 4), oxorany("_ZN6CCheat13MidnightCheatEv"));
        MoneyArmourHealthCheat = (void(*)(void*))dlsym(dlopen(targetLibName, 4), oxorany("_ZN6CCheat22MoneyArmourHealthCheatEv"));
        MonsterTruckCheat = (void(*)(void*))dlsym(dlopen(targetLibName, 4), oxorany("_ZN6CCheat17MonsterTruckCheatEv"));
        MuscleCheat = (void(*)(void*))dlsym(dlopen(targetLibName, 4), oxorany("_ZN6CCheat11MuscleCheatEv"));
        NinjaCheat = (void(*)(void*))dlsym(dlopen(targetLibName, 4), oxorany("_ZN6CCheat10NinjaCheatEv"));
        NotWantedCheat = (void(*)(void*))dlsym(dlopen(targetLibName, 4), oxorany("_ZN6CCheat14NotWantedCheatEv"));
        ParachuteCheat = (void(*)(void*))dlsym(dlopen(targetLibName, 4), oxorany("_ZN6CCheat14ParachuteCheatEv"));
        PinkCarsCheat = (void(*)(void*))dlsym(dlopen(targetLibName, 4), oxorany("_ZN6CCheat13PinkCarsCheatEv"));
        ProcessCheatMenu = (void(*)(void*))dlsym(dlopen(targetLibName, 4), oxorany("_ZN6CCheat16ProcessCheatMenuEv"));
        ProcessDebugCarCheats = (void(*)(void*))dlsym(dlopen(targetLibName, 4), oxorany("_ZN6CCheat21ProcessDebugCarCheatsEv"));
        ProcessDebugMissionSkip = (void(*)(void*))dlsym(dlopen(targetLibName, 4), oxorany("_ZN6CCheat23ProcessDebugMissionSkipEv"));
        ProcessWeaponSlotCheats = (void(*)(void*))dlsym(dlopen(targetLibName, 4), oxorany("_ZN6CCheat23ProcessWeaponSlotCheatsEv"));
        QuadCheat = (void(*)(void*))dlsym(dlopen(targetLibName, 4), oxorany("_ZN6CCheat9QuadCheatEv"));
        RainyWeatherCheat = (void(*)(void*))dlsym(dlopen(targetLibName, 4), oxorany("_ZN6CCheat17RainyWeatherCheatEv"));
        ResetCheats = (void(*)(void*))dlsym(dlopen(targetLibName, 4), oxorany("_ZN6CCheat11ResetCheatsEv"));
        RiotCheat = (void(*)(void*))dlsym(dlopen(targetLibName, 4), oxorany("_ZN6CCheat9RiotCheatEv"));
        SandstormCheat = (void(*)(void*))dlsym(dlopen(targetLibName, 4), oxorany("_ZN6CCheat14SandstormCheatEv"));
        ScriptBypassCheat = (void(*)(void*))dlsym(dlopen(targetLibName, 4), oxorany("_ZN6CCheat17ScriptBypassCheatEv"));
        ShowMappingsCheat = (void(*)(void*))dlsym(dlopen(targetLibName, 4), oxorany("_ZN6CCheat17ShowMappingsCheatEv"));
        SkinnyCheat = (void(*)(void*))dlsym(dlopen(targetLibName, 4), oxorany("_ZN6CCheat11SkinnyCheatEv"));
        SlowTimeCheat = (void(*)(void*))dlsym(dlopen(targetLibName, 4), oxorany("_ZN6CCheat13SlowTimeCheatEv"));
        StaminaCheat = (void(*)(void*))dlsym(dlopen(targetLibName, 4), oxorany("_ZN6CCheat12StaminaCheatEv"));
        StartPause = (void(*)(void*))dlsym(dlopen(targetLibName, 4), oxorany("_ZN6CCheat10StartPauseEv"));
        StockCar2Cheat = (void(*)(void*))dlsym(dlopen(targetLibName, 4), oxorany("_ZN6CCheat14StockCar2CheatEv"));
        StockCar3Cheat = (void(*)(void*))dlsym(dlopen(targetLibName, 4), oxorany("_ZN6CCheat14StockCar3CheatEv"));
        StockCar4Cheat = (void(*)(void*))dlsym(dlopen(targetLibName, 4), oxorany("_ZN6CCheat14StockCar4CheatEv"));
        StockCarCheat = (void(*)(void*))dlsym(dlopen(targetLibName, 4), oxorany("_ZN6CCheat13StockCarCheatEv"));
        StormCheat = (void(*)(void*))dlsym(dlopen(targetLibName, 4), oxorany("_ZN6CCheat10StormCheatEv"));
        StuntPlaneCheat = (void(*)(void*))dlsym(dlopen(targetLibName, 4), oxorany("_ZN6CCheat15StuntPlaneCheatEv"));
        SuicideCheat = (void(*)(void*))dlsym(dlopen(targetLibName, 4), oxorany("_ZN6CCheat12SuicideCheatEv"));
        SunnyWeatherCheat = (void(*)(void*))dlsym(dlopen(targetLibName, 4), oxorany("_ZN6CCheat17SunnyWeatherCheatEv"));
        TankCheat = (void(*)(void*))dlsym(dlopen(targetLibName, 4), oxorany("_ZN6CCheat9TankCheatEv"));
        TankerCheat = (void(*)(void*))dlsym(dlopen(targetLibName, 4), oxorany("_ZN6CCheat11TankerCheatEv"));
        TheGamblerCheat = (void(*)(void*))dlsym(dlopen(targetLibName, 4), oxorany("_ZN6CCheat15TheGamblerCheatEv"));
        TimeTravelCheat = (void(*)(void*))dlsym(dlopen(targetLibName, 4), oxorany("_ZN6CCheat15TimeTravelCheatEv"));
        TogglePlayerInvincibility = (void(*)(void*))dlsym(dlopen(targetLibName, 4), oxorany("_ZN6CCheat25TogglePlayerInvincibilityEv"));
        ToggleShowTapToTarget = (void(*)(void*))dlsym(dlopen(targetLibName, 4), oxorany("_ZN6CCheat21ToggleShowTapToTargetEv"));
        ToggleShowTargeting = (void(*)(void*))dlsym(dlopen(targetLibName, 4), oxorany("_ZN6CCheat19ToggleShowTargetingEv"));
        TrashmasterCheat = (void(*)(void*))dlsym(dlopen(targetLibName, 4), oxorany("_ZN6CCheat16TrashmasterCheatEv"));
        VehicleSkillsCheat = (void(*)(void*))dlsym(dlopen(targetLibName, 4), oxorany("_ZN6CCheat18VehicleSkillsCheatEv"));
        VillagePeopleCheat = (void(*)(void*))dlsym(dlopen(targetLibName, 4), oxorany("_ZN6CCheat18VillagePeopleCheatEv"));
        VortexCheat = (void(*)(void*))dlsym(dlopen(targetLibName, 4), oxorany("_ZN6CCheat11VortexCheatEv"));
        WantedCheat = (void(*)(void*))dlsym(dlopen(targetLibName, 4), oxorany("_ZN6CCheat11WantedCheatEv"));
        WantedLevelDownCheat = (void(*)(void*))dlsym(dlopen(targetLibName, 4), oxorany("_ZN6CCheat20WantedLevelDownCheatEv"));
        WantedLevelUpCheat = (void(*)(void*))dlsym(dlopen(targetLibName, 4), oxorany("_ZN6CCheat18WantedLevelUpCheatEv"));
        WeaponCheat1 = (void(*)(void*))dlsym(dlopen(targetLibName, 4), oxorany("_ZN6CCheat12WeaponCheat1Ev"));
        WeaponCheat2 = (void(*)(void*))dlsym(dlopen(targetLibName, 4), oxorany("_ZN6CCheat12WeaponCheat2Ev"));
        WeaponCheat3 = (void(*)(void*))dlsym(dlopen(targetLibName, 4), oxorany("_ZN6CCheat12WeaponCheat3Ev"));
        WeaponCheat4 = (void(*)(void*))dlsym(dlopen(targetLibName, 4), oxorany("_ZN6CCheat12WeaponCheat4Ev"));
        WeaponSkillsCheat = (void(*)(void*))dlsym(dlopen(targetLibName, 4), oxorany("_ZN6CCheat17WeaponSkillsCheatEv"));
        WeaponSlotCheat = (void(*)(void*))dlsym(dlopen(targetLibName, 4), oxorany("_ZN6CCheat15WeaponSlotCheatEv"));
        xboxHelperCheat = (void(*)(void*))dlsym(dlopen(targetLibName, 4), oxorany("_ZN6CCheat15xboxHelperCheatEv"));
    }
}