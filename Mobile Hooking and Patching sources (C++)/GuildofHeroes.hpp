//About offsets, i use private code, so i can't share it, however use auto offset from geokar2006

#include "Menu/Menu.h"

bool KMHack1 = false, KMHack2 = false, KMHack3 = false, KMHack4 = false, KMHack5 = false, KMHack6 = false, KMHack7 = false, KMHack8 = false, KMHack9 = false, hack1 = false, hack2 = false, hack3 = false, revive;
int sliderValue = 1, dmgmul = 1, defmul = 1, sellval;

bool skiptutorial = false;

std::vector<bool> toggles;

jobjectArray GetFeatureList(
	JNIEnv* env,
	jobject activityObject) {
	jobjectArray ret;
	//unlimited raid tokens
	const char* features[] = {
		OBFRK("Category_Disclaimer: The game have banning system. Use it at your own risk, do not abuse!"),
		OBFRK("1_InputValue_Damage multiplier"),
		OBFRK("2_InputValue_Defense multiplier"),
		OBFRK("RichTextView_Max value 2147483647 for 1 hit kill/God mode =D"),
		OBFRK("3_Toggle_No cooldown"),
		OBFRK("4_Toggle_Potions Won't Decrease"),
		OBFRK("5_Toggle_Revive Cost 0"),
		OBFRK("6_Toggle_Achievements always claimable (Can get unlimited gems)"),
		OBFRK("7_Toggle_No Requriement to Upgrade weapon and armors"),
		OBFRK("8_Toggle_Unlock Slots for free"),
		//O("9_Toggle_Everything no costs"),
		OBFRK("10_Toggle_Skip tutorial (There is a risk getting save data error. Use at your own risk)")
	};

	int Total_Feature = (sizeof features /
		sizeof features[0]); //Now you dont have to manually update the number everytime;

	ret = (jobjectArray)env->NewObjectArray(Total_Feature, env->FindClass(O("java/lang/String")),
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

void Changes(JNIEnv* env, jclass clazz, jobject obj,
	jint feature, jstring featName, jint value,
	jboolean boolean, jstring str) {
	//Convert java string to c++


	int i = (int)feature;
	switch (i) {

		// Must count from 0
	case 1:
		if (value >= 1) {
			dmgmul = value;
		}
		break;
	case 2:
		if (value >= 1) {
			defmul = value;
		}
		break;
	case 3:
		toggles[i] = boolean;
		if (toggles[i]) {
			LOGD(O("toggled 3 on"));
			hexPatches.Patch3.Modify();
		}
		else {
			LOGD(O("toggled 3 off"));
			hexPatches.Patch3.Restore();
		}
		//hack3 = boolean;
		break;
	case 4:
		toggles[i] = boolean;
		if (toggles[i]) {
			LOGD(O("toggled 4 on"));
			hexPatches.Patch4.Modify();
		}
		else {
			LOGD(O("toggled 4 off"));
			hexPatches.Patch4.Restore();
		}
		break;
	case 5:
		revive = boolean;
		if (revive) {
			LOGD(O("toggled 5 on"));
			hexPatches.Patch5.Modify();
		}
		else {
			hexPatches.Patch5.Restore();
		}
		break;
	case 6:
		toggles[i] = boolean;
		if (toggles[i]) {
			hexPatches.Patch6.Modify();
			hexPatches.Patch7.Modify();
		}
		else {
			hexPatches.Patch6.Restore();
			hexPatches.Patch7.Restore();
		}
		break;
	case 7:
		toggles[i] = boolean;
		if (toggles[i]) {
			hexPatches.Patch8.Modify();
			hexPatches.Patch10.Modify();
			hexPatches.Patch11.Modify();
			hexPatches.Patch12.Modify();
			hexPatches.Patch13.Modify();
		}
		else {
			hexPatches.Patch8.Restore();
			hexPatches.Patch10.Restore();
			hexPatches.Patch11.Restore();
			hexPatches.Patch12.Restore();
			hexPatches.Patch13.Restore();
		}
		break;
	case 8:
		toggles[i] = boolean;
		if (toggles[i]) {
			hexPatches.Patch9.Modify();
		}
		else {
			hexPatches.Patch9.Restore();
		}
		break;
	case 9:
		toggles[i] = boolean;
		if (toggles[i]) {
			hexPatches.Patch8.Modify();
			hexPatches.Patch10.Modify();
			hexPatches.Patch11.Modify();
			hexPatches.Patch12.Modify();
			hexPatches.Patch13.Modify();
		}
		else {
			hexPatches.Patch8.Restore();
			hexPatches.Patch10.Restore();
			hexPatches.Patch11.Restore();
			hexPatches.Patch12.Restore();
			hexPatches.Patch13.Restore();
		}
		break;
	case 10:
		toggles[i] = boolean;
		if (toggles[i]) {
			hexPatches.Patch15.Modify();
			hexPatches.Patch16.Modify();
		}
		else {
			hexPatches.Patch15.Restore();
			hexPatches.Patch16.Restore();
		}
		//skiptutorial = true;
		break;
	}
}
// Namespace: game
// public enum EnumParty // TypeDefIndex: 4759
// {
	// // Fields
	// public int value__; // 0x0
	// public const EnumParty NONE = 0;
	// public const EnumParty PLAYER = 8;
	// public const EnumParty EVIL = 16;
	// public const EnumParty FRIEND = 32;
	// public const EnumParty EVIL_CANT = 64;
	// public const EnumParty NEUTRAL = 128;
	// public const EnumParty BOOBY_TRAP = 256;
	// public const EnumParty EVIL_EVIL = 512;
	// public const EnumParty QUERY_ALLIES = 1;
	// public const EnumParty QUERY_ENEMIES = 2;
	// public const EnumParty QUERY_SELF = 3;
	// public const EnumParty GROUP_ANY = 1016;
	// public const EnumParty GROUP_GOOD = 40;
	// public const EnumParty GROUP_BAD = 784;
// }

struct game_DamageInfo_Fields {
	int32_t status;
	bool force_knock_down;
	float value;
	float remote_value;
	float reduction;
	float received_by_shield;
	bool is_default_attack;
	struct UnityEngine_Component_o* hitter;
};

int (*get_party)(void* _this);

size_t unitf;

void (*orig_SetCooldown)(void* pThis, void* a1, float total_time_mult, int force_ms);
void SetCooldown(void* pThis, void* a1, float total_time_mult, int force_ms) {
	if (hack3)
		LOGD(O("no cd"));
	return orig_SetCooldown(pThis, a1, 0, 0);
	return orig_SetCooldown(pThis, a1, total_time_mult, force_ms);
}

game_DamageInfo_Fields(*orig_GetHit)(void* pThis, float weapon_damage, void* hitter, int type, int element, bool is_default_attack, int crit_chance, bool deal_damage, bool mirrored_damage, unsigned int forced_attack_level, bool can_be_dodged, bool pure_damage);

game_DamageInfo_Fields GetHit(void* pThis, float weapon_damage, void* hitter, int type, int element, bool is_default_attack, int crit_chance, bool deal_damage, bool mirrored_damage, unsigned int forced_attack_level, bool can_be_dodged, bool pure_damage) {
	int party = get_party(hitter);
	//LOGD("a %d", party);
	if (party == 8 || party == 32 || party == 3) {
		weapon_damage *= dmgmul;
	}
	else {
		weapon_damage /= defmul;
	}
	return orig_GetHit(pThis, weapon_damage, hitter, type, element, is_default_attack, crit_chance, deal_damage, mirrored_damage, forced_attack_level, can_be_dodged, pure_damage);
}

unsigned long long (*orig_TakeDamage)(void* pThis, unsigned long long damage, bool pure_damage);
unsigned long long TakeDamage(void* pThis, unsigned long long damage, bool pure_damage) {
	unitf = //Assembly-CSharp.dll - game - CombatUnit - unit
	void* unit = *(void**)((uint32_t)pThis + unitf);
	int party = get_party(unit);
	//LOGD("%d", party);
	if (party == 8 || party == 32 || party == 3) {
		orig_TakeDamage(pThis, damage, pure_damage) / defmul;
	}
	else {
		orig_TakeDamage(pThis, damage, pure_damage)* dmgmul;
	}
	return orig_TakeDamage(pThis, damage, pure_damage);
}

unsigned int (*orig_GetSellPrice)(float rating);
unsigned int GetSellPrice(float rating) {
	if (sellval >= 1) {
		return sellval;
	}
	else if (sellval <= 0) {
		return orig_GetSellPrice(rating);
	}
	return orig_GetSellPrice(rating);
}

// unsigned long (*orig_GetRevivePrice)();
// unsigned long GetRevivePrice(){
	// LOGD(O("Revive"));
	// if (revive)
		// return 0;
	// return orig_GetRevivePrice();
// }

void (*AllowTutorialSkip)(void* _this, bool allow);
void (*UpdateSkipTutorial)(void* _this);
void (*MakeSkipTutorialButton)(void* _this);

void (*orig_MainUI_Update)(void* _this);
void MainUI_Update(void* _this) {
	if (skiptutorial) {
		AllowTutorialSkip(_this, true);
		UpdateSkipTutorial(_this);
		MakeSkipTutorialButton(_this);
		LOGD(O("Skip tutorial"));
		skiptutorial = false;
	}
	return orig_MainUI_Update(_this);
}

bool ID = 0;
#define targetLibName O("libil2cpp.so")
// we will run our patches in a new thread so "sleep" doesn't block process main thread
void hack_thread() {
	
	do {
		sleep(1);
	} while (!isLibraryLoaded(targetLibName));

	//Skip tutorial
	AllowTutorialSkip = (void (*)(void*, bool))(Assembly-CSharp.dll - game - MainUI - AllowTutorialSkip"));
	UpdateSkipTutorial = (void(*)(void*))(Assembly-CSharp.dll - game - MainUI - UpdateSkipTutorial"));
	MakeSkipTutorialButton = (void (*)(void*))(Assembly-CSharp.dll - game - MainUI - MakeSkipTutorialButton"));

	Hook((void*)(Assembly-CSharp.dll - game - MainUI - LateUpdate)), (void*)MainUI_Update, (void**)&orig_MainUI_Update);

	//Hook((void *)(Assembly-CSharp.dll - game - CombatUnit - TakeDamage"), 2)), (void *)TakeDamage, (void **) &orig_TakeDamage);
	Hook((void*)(Assembly-CSharp.dll - game - CombatUnit - GetHit"), 11)), (void*)GetHit, (void**)&orig_GetHit);
	//Hook((void *)(Assembly-CSharp.dll - game - CostCalc - GetSellPrice"), 1)), (void *)GetSellPrice, (void **) &orig_GetSellPrice);

	//Hook((void *)(Assembly-CSharp.dll - game - CostCalc - GetRevivePrice"))), (void *)GetRevivePrice, (void **) &orig_GetRevivePrice);

	get_party = (int(*)(void*))(Assembly-CSharp.dll - game - Unit - get_party")));

	//get_PlayerSide = (int (*)(void *))(SBRuntime.dll - SBRuntime.Battle - CardBattleStats - DamageReceived"))); //KaijuModel
#endif


	//SetCooldown
	hexPatches.Patch3 = MemoryPatch::createWithHex((uintptr_t)(Assembly-CSharp.dll - game - Abilities - SetCooldown"), 3)), O("00 00 A0 E3 1E FF 2F E1"));

	//get_is_consumable
	hexPatches.Patch4 = MemoryPatch::createWithHex((uintptr_t)(Assembly-CSharp.dll - game - Ability - get_is_consumable"))), O("00 00 A0 E3 1E FF 2F E1"));

	//GetRevivePrice
	hexPatches.Patch5 = MemoryPatch::createWithHex((uintptr_t)(Assembly-CSharp.dll - game - CostCalc - GetRevivePrice"))), O("00 00 A0 E3 00 10 A0 E3 1E FF 2F E1"));

	//Unlock achivements
	hexPatches.Patch6 = MemoryPatch::createWithHex((uintptr_t)(Assembly-CSharp.dll - game - SocnetAchievement - IsUnlocked"))), O("01 00 A0 E3 1E FF 2F E1"));
	hexPatches.Patch7 = MemoryPatch::createWithHex((uintptr_t)(Assembly-CSharp.dll - game - SocnetAchievement - IsPending"))), O("01 00 A0 E3 1E FF 2F E1"));

	//No upgrade cost
	hexPatches.Patch8 = MemoryPatch::createWithHex((uintptr_t)(Assembly-CSharp.dll - game - CostCalc - CalculateRatingCostForItemUpgrade"), 1)), O("00 00 A0 E3 00 10 A0 E3 1E FF 2F E1"));
	hexPatches.Patch10 = MemoryPatch::createWithHex((uintptr_t)(Assembly-CSharp.dll - game - CostCalc - GetItemUpgradeCostInResources"), 1)), O("00 00 A0 E3 00 10 A0 E3 1E FF 2F E1"));
	hexPatches.Patch11 = MemoryPatch::createWithHex((uintptr_t)(Assembly-CSharp.dll - game - CostCalc - GetGemsToBuyUpgradeRating"), 2)), O("00 00 A0 E3 00 10 A0 E3 1E FF 2F E1"));
	hexPatches.Patch12 = MemoryPatch::createWithHex((uintptr_t)(Assembly-CSharp.dll - game - CostCalc - GetGemsToBuyUpgrageRatingByMaxPowerLevel"), 1)), O("00 00 A0 E3 00 10 A0 E3 1E FF 2F E1"));
	hexPatches.Patch13 = MemoryPatch::createWithHex((uintptr_t)(Assembly-CSharp.dll - game - CostCalc - GetGemsToBuyUpgrageRatingByNominalLevel"), 1)), O("00 00 A0 E3 00 10 A0 E3 1E FF 2F E1"));

	hexPatches.Patch9 = MemoryPatch::createWithHex((uintptr_t)(Assembly-CSharp.dll - game - Inventory - GetUpgradeCost"))), O("00 00 A0 E3 1E FF 2F E1"));

	//Everything no cost
	hexPatches.Patch14 = MemoryPatch::createWithHex((uintptr_t)(Assembly-CSharp.dll - game - FriendInfo - get_base_hire_cost"))), O("00 00 A0 E3 1E FF 2F E1"));

	//Skip tutorial
	hexPatches.Patch15 = MemoryPatch::createWithHex((uintptr_t)(Assembly-CSharp.dll - game - G - get_in_tutorial"))), O("00 00 A0 E3 1E FF 2F E1"));
	hexPatches.Patch16 = MemoryPatch::createWithHex((uintptr_t)(Assembly-CSharp.dll - game - G - get_tutorial_is_over"))), O("00 00 A0 E3 1E FF 2F E1"));

	//No tutorial
	// patchOffset((Assembly-CSharp.dll - game - G - get_in_tutorial"))), "00 00 A0 E3 1E FF 2F E1");
	// patchOffset((Assembly-CSharp.dll - game - G - get_tutorial_is_over"))), "01 00 A0 E3 1E FF 2F E1");

	patchOffset((Assembly-CSharp.dll - game - GameplaySpeed - AllowedByCurrentLocation"), 1)), "01 00 A0 E3 1E FF 2F E1");
	patchOffset((Assembly-CSharp.dll - game - GameplaySpeed - AllowedByOpenedHUDs"), 1)), "01 00 A0 E3 1E FF 2F E1");
	patchOffset((Assembly-CSharp.dll - game - GameplaySpeed - AllowedByPremium"), 1)), "01 00 A0 E3 1E FF 2F E1");

	//Anti-cheat bypass
	patchOffset((game_obscured.dll - CodeStage.AntiCheat.Detectors - ActDetectorBase - Init"), 2)), "00 00 A0 E3 1E FF 2F E1");
	patchOffset((game_obscured.dll - CodeStage.AntiCheat.Detectors - ActDetectorBase - Start"))), "1E FF 2F E1");
	patchOffset((game_obscured.dll - CodeStage.AntiCheat.Detectors - ActDetectorBase - OnEnable"))), "1E FF 2F E1");
	patchOffset((game_obscured.dll - CodeStage.AntiCheat.Detectors - ActDetectorBase - OnApplicationQuit"))), "1E FF 2F E1");

	//patchOffset((game_obscured.dll - CodeStage.AntiCheat.Detectors - InjectionDetector - ResumeDetector"))), "1E FF 2F E1");

	patchOffset((game_obscured.dll - CodeStage.AntiCheat.Detectors - ObscuredCheatingDetector - Awake"))), "1E FF 2F E1");
	patchOffset((game_obscured.dll - CodeStage.AntiCheat.Detectors - ObscuredCheatingDetector - OnCheatingDetected"))), "1E FF 2F E1");
	//patchOffset((game_obscured.dll - CodeStage.AntiCheat.Detectors - ObscuredCheatingDetector - ResumeDetector"))), "1E FF 2F E1");
	patchOffset((game_obscured.dll - CodeStage.AntiCheat.Detectors - ObscuredCheatingDetector - StartDetection"), 1)), "1E FF 2F E1");
	patchOffset((game_obscured.dll - CodeStage.AntiCheat.Detectors - ObscuredCheatingDetector - StartDetectionInternal"), 1)), "1E FF 2F E1");

	patchOffset((game_obscured.dll - CodeStage.AntiCheat.Detectors - SpeedHackDetector - Awake"))), "1E FF 2F E1");
	patchOffset((game_obscured.dll - CodeStage.AntiCheat.Detectors - SpeedHackDetector - ResumeDetector"))), "1E FF 2F E1");
	patchOffset((game_obscured.dll - CodeStage.AntiCheat.Detectors - SpeedHackDetector - StartDetection"), 1)), "1E FF 2F E1");
	patchOffset((game_obscured.dll - CodeStage.AntiCheat.Detectors - SpeedHackDetector - StartDetection"), 2)), "1E FF 2F E1");
	patchOffset((game_obscured.dll - CodeStage.AntiCheat.Detectors - SpeedHackDetector - StartDetection"), 3)), "1E FF 2F E1");
	patchOffset((game_obscured.dll - CodeStage.AntiCheat.Detectors - SpeedHackDetector - StartDetection"), 4)), "1E FF 2F E1");
	patchOffset((game_obscured.dll - CodeStage.AntiCheat.Detectors - SpeedHackDetector - StartDetectionInternal"), 4)), "1E FF 2F E1");
	//patchOffset((game_obscured.dll - CodeStage.AntiCheat.Detectors - SpeedHackDetector - Update"))), "1E FF 2F E1");

	//Csharp
	patchOffset((Assembly-CSharp.dll - game - Booster - CheckTamprd"))), "1E FF 2F E1");

	patchOffset((Assembly-CSharp.dll - game - Booster - IsHacked"))), "00 00 A0 E3 1E FF 2F E1");
	patchOffset((Assembly-CSharp.dll - game - G - InitAntiTmprd"))), "1E FF 2F E1");
	// patchOffset((Assembly-CSharp.dll - game - G - CheaterReport"), 1)), "1E FF 2F E1");
	// patchOffset((Assembly-CSharp.dll - game - G - OnTmprd"), 2)), "1E FF 2F E1");
	// patchOffset((Assembly-CSharp.dll - game - G - OnAntiCheatTimeSyncEvent"), 1)), "1E FF 2F E1");
	// patchOffset((Assembly-CSharp.dll - game - G - OnAntiCheatTimeSyncEvent"), 1)), "1E FF 2F E1");
	// patchOffset((Assembly-CSharp.dll - game - G - BanMe"), 3)), "1E FF 2F E1");
	patchOffset((Assembly-CSharp.dll - game - MercenaryRecord - get_is_banned"))), "00 00 A0 E3 1E FF 2F E1");
	patchOffset((Assembly-CSharp.dll - game - ChatClient - get_is_banned"))), "00 00 A0 E3 1E FF 2F E1");

	//patchOffset((Assembly-CSharp.dll - game - G - CheckDebugMenu"))), "01 00 A0 E3 1E FF 2F E1");

	patchOffset(Assembly-CSharp.dll - game - BannedMessageUI - Start), "1E FF 2F E1");
}

__attribute__((constructor))
void libmain() {
	std::thread t(hack_thread);
	t.detach();
}