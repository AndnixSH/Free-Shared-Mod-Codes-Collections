#include "Menu/Menu.h"

#define targetLibName oxorany("libGTASA.so")

#include "Cheat.hpp"
#include "HUD.hpp"

bool KMHack1 = false, KMHack2 = false, KMHack3 = false, HookHack1 = false, HookHack2 = false, HookHack3 = false;

std::vector<bool> toggles;

jobjectArray GetFeatureList(
    JNIEnv *env,
    jobject activityObject)
{
    jobjectArray ret;

    const char *features[] = {
        OBFRK("100_InputValue_Vehicle ID"),
        OBFRK("101_Button_Spawn vehicle"),
        OBFRK("Category_Cheat codes"),
        OBFRK("1_Button_Adrenaline Cheat"),
        OBFRK("2_Button_All Cars Are Great Cheat"),
        OBFRK("3_Button_All Cars Are Shit Cheat"),
        OBFRK("4_Button_Apache Cheat"),
        OBFRK("5_Button_Beach Party Cheat"),
        OBFRK("6_Button_Black Cars Cheat"),
        OBFRK("7_Button_Blow Up Cars Cheat"),
        OBFRK("8_Button_Clear Game Cheats List"),
        OBFRK("9_Button_Clear Mission Skip"),
        OBFRK("10_Button_Clear Vehicle Population Cheats"),
        OBFRK("11_Button_Cloudy Weather Cheat"),
        OBFRK("12_Button_Countryside Invasion Cheat"),
        OBFRK("13_Button_Dozer Cheat"),
        OBFRK("14_Button_Drive by Cheat"),
        OBFRK("15_Button_Dusk Cheat"),
        OBFRK("16_Button_Elvis Lives Cheat"),
        OBFRK("17_Button_End Pause"),
        OBFRK("18_Button_Everybody Attacks Player Cheat"),
        OBFRK("19_Button_Extra Sunny Weather Cheat"),
        OBFRK("20_Button_Fast Time Cheat"),
        OBFRK("21_Button_Fat Cheat"),
        OBFRK("22_Button_Flyboy Cheat"),
        OBFRK("23_Button_Foggy Weather Cheat"),
        OBFRK("24_Button_Funhouse Cheat"),
        OBFRK("25_Button_Gang Land Cheat"),
        OBFRK("26_Button_Gangs Cheat"),
        OBFRK("27_Button_Golfcart Cheat"),
        OBFRK("28_Button_Handle Cheat Menu"),
        OBFRK("29_Button_Health Cheat"),
        OBFRK("30_Button_Hearse Cheat"),
        OBFRK("31_Button_Jetpack Cheat"),
        OBFRK("32_Button_Love Conquers All Cheat"),
        OBFRK("33_Button_Lovefist Cheat"),
        OBFRK("34_Button_Mayhem Cheat"),
        OBFRK("35_Button_Midnight Cheat"),
        OBFRK("36_Button_Money Armour Health Cheat"),
        OBFRK("37_Button_MonsterTruck Cheat"),
        OBFRK("38_Button_Muscle Cheat"),
        OBFRK("39_Button_Ninja Cheat"),
        OBFRK("40_Button_Not Wanted Cheat"),
        OBFRK("41_Button_Parachute Cheat"),
        OBFRK("42_Button_Pink Cars Cheat"),
        OBFRK("47_Button_Quad Cheat"),
        OBFRK("48_Button_Rainy Weather Cheat"),
        OBFRK("49_Button_Reset Cheats"),
        OBFRK("50_Button_Riot Cheat"),
        OBFRK("51_Button_Sandstorm Cheat"),
        OBFRK("52_Button_Script Bypass Cheat"),
        OBFRK("53_Button_Show Mappings Cheat"),
        OBFRK("54_Button_Skinny Cheat"),
        OBFRK("55_Button_Slow Time Cheat"),
        OBFRK("56_Button_Stamina Cheat"),
        OBFRK("57_Button_Start Pause"),
        OBFRK("58_Button_Stock Car 2 Cheat"),
        OBFRK("59_Button_Stock Car 3 Cheat"),
        OBFRK("60_Button_Stock Car 4 Cheat"),
        OBFRK("61_Button_Stock Car Cheat"),
        OBFRK("62_Button_Storm Cheat"),
        OBFRK("63_Button_Stunt Plane Cheat"),
        OBFRK("64_Button_Suicide Cheat"),
        OBFRK("65_Button_Sunny Weather Cheat"),
        OBFRK("66_Button_Tank Cheat"),
        OBFRK("67_Button_Tanker Cheat"),
        OBFRK("68_Button_The Gambler Cheat"),
        OBFRK("69_Button_Time Travel Cheat"),
        OBFRK("70_Button_Toggle Player Invincibility"),
        OBFRK("71_Button_Toggle Show Tap To Target"),
        OBFRK("72_Button_Toggle Show Targeting"),
        OBFRK("73_Button_Trashmaster Cheat"),
        OBFRK("74_Button_Vehicle Skills Cheat"),
        OBFRK("75_Button_Village People Cheat"),
        OBFRK("76_Button_Vortex Cheat"),
        OBFRK("77_Button_Wanted Cheat"),
        OBFRK("78_Button_Wanted Level Down Cheat"),
        OBFRK("79_Button_Wanted Level Up Cheat"),
        OBFRK("80_Button_Weapon Cheat1"),
        OBFRK("81_Button_Weapon Cheat2"),
        OBFRK("82_Button_Weapon Cheat3"),
        OBFRK("83_Button_Weapon Cheat4"),
        OBFRK("84_Button_Weapon Skills Cheat")};

    int Total_Feature = (sizeof features /
                         sizeof features[0]); // Now you dont have to manually update the number everytime;

    ret = (jobjectArray)env->NewObjectArray(Total_Feature, env->FindClass(oxorany("java/lang/String")),
                                            env->NewStringUTF(""));
    int i;
    for (i = 0; i < Total_Feature; i++)
    {
        toggles.push_back(false);
        env->SetObjectArrayElement(ret, i, env->NewStringUTF(features[i]));
    }
    featureValid = true;
    return (ret);
}
bool allcarsaregreatcheat;

void Changes(JNIEnv *env, jclass clazz, jobject obj,
             jint feature, jstring featName, jint value,
             jboolean boolean, jstring str)
{

    Cheat::CheatID = feature;

    switch (feature)
    {
    case 100:
        Cheat::VehicleID = value;
        break;
    case 101:
        Cheat::SpawnVehicleNow = true;
        break;
    }
}

void (*orig_Update)(void *_this);
void Update(void *_this)
{

    Cheat::CallCheats(_this);

    return orig_Update(_this);
}

void hack_thread()
{
    LOGD(oxorany("loading..."));

    do
    {
        sleep(1);
    } while (!isLibraryLoaded(targetLibName));

    sleep(5);

    LOGD(oxorany("Loaded"));

    dobby_enable_near_branch_trampoline();

    HUD::SetHelpMessage = (void (*)(char const *, char *, bool, bool, int, unsigned int))dlsym(dlopen(targetLibName, 4), oxorany("_ZN4CHud14SetHelpMessageEPKcPtbbbj"));
    // HUD::GetText = (char* (*)(void*, const char*))dlsym(dlopen(targetLibName, 4), oxorany("_ZN5CText3GetEPKc"));

    Cheat::Init();

    // CGame::Process
    void *HookSymbol = dlsym(dlopen(targetLibName, 4), oxorany("_ZN5CGame7ProcessEv"));
    // void* HookLaRiotsActiveHere = dlsym(dlopen(targetLibName, 4), "_ZN10CGameLogic17LaRiotsActiveHereEv");
    DobbyHook(HookSymbol, (void *)Update, (void **)&orig_Update);

    LOGD(oxorany("Success"));
}

__attribute__((constructor)) void libmain()
{
    std::thread(hack_thread).detach();
}

#include "Menu/JNIOnLoadMenu.h"