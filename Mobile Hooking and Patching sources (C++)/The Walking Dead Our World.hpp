//Credit: TheArmKing
#include "Menu/Menu.h"

bool KMHack1 = false, KMHack2 = false, HookHack1 = false, HookHack2 = false, HookHack3 = false, HookHack4 = false, HookHack5 = false, HookHack6 = false;


jobjectArray GetFeatureList(
    JNIEnv* env,
    jobject activityObject) {
    jobjectArray ret;

    const char* features[] = {
        OBFRK("1_Toggle_No struggle"),
        OBFRK("2_Toggle_No spread"),
        OBFRK("3_Toggle_No recoil"),
        OBFRK("5_Toggle_1 hit kill"),
        OBFRK("RichTextView_</font><font color='yellow'>- If you enable 1 hit kill, you will get <b>Something went wrong</b> error after finishing mission, but mission still completed and lets you claim items. This may not work on some missions<br />- No reload and bullets related cannot be modded</font>") };

    int Total_Feature = (sizeof features /
        sizeof features[0]); //Now you dont have to manually update the number everytime;

    ret = (jobjectArray)env->NewObjectArray(Total_Feature, env->FindClass(O("java/lang/String")),
        env->NewStringUTF(""));
    int i;
    for (i = 0; i < Total_Feature; i++)
        env->SetObjectArrayElement(ret, i, env->NewStringUTF(features[i]));


    featureValid = true;
    return (ret);
}

void Changes(JNIEnv* env, jclass clazz, jobject obj, jint feature, jstring featName, jint value, jboolean boolean, jstring str) {
    const char* featureName = env->GetStringUTFChars(str, 0);
    LOGD(O("Feature name: %d - %s | Value: = %d | Bool: = %d"), feature, featureName, value, boolean);

    switch (feature) {

        // Must count from 0
        case 1:
            KMHack1 = boolean;
            if (KMHack1) {
                hexPatches.Patch1.Modify();
                hexPatches.Patch2.Modify();
                //hexPatches.Patch3.Modify();
                //hexPatches.Patch4.Modify();
                hexPatches.Patch5.Modify();
                hexPatches.Patch6.Modify();
                hexPatches.Patch7.Modify();
            }
            else {
                hexPatches.Patch1.Restore();
                hexPatches.Patch2.Restore();
                //hexPatches.Patch3.Restore();
                //hexPatches.Patch4.Restore();
                hexPatches.Patch5.Restore();
                hexPatches.Patch6.Restore();
                hexPatches.Patch7.Restore();
            }
            break;
        case 2:
            HookHack2 = boolean;
            break;
        case 3:
            HookHack3 = boolean;
            break;
        case 4:
            HookHack4 = boolean;
            break;
        case 5:
            HookHack5 = boolean;
            break;
        case 6:
            HookHack5 = boolean;
            break;
            CPAD::Patch();
    }
}

struct FixedPoint {
    long long Value;
};

FixedPoint(*orig_ReloadTime)(void* _this);
FixedPoint ReloadTime(void* _this) {
    if (HookHack4) {
        FixedPoint val = { 0 };
        return val;
    }
    return orig_ReloadTime(_this);
}

void (*orig_Update)(void* _this);
void Update(void* _this) { //CombatHUD
    void* _weapon = *(void**)((uint64_t)_this + 0x64); //private Weapon _weapon; //CombatHUD
    if (_weapon != NULL) {
        FixedPoint val = { 0 };
        FixedPoint dmg = { 9999999 };
        if (HookHack2) {
            *(FixedPoint*)((uint64_t)_weapon + 0x50) = val; //private FixedPoint <BulletSpread>k__BackingField;
        }
        if (HookHack3) {
            *(FixedPoint*)((uint64_t)_weapon + 0x58) = val; //private FixedPoint <Recoil>k__BackingField;
        }
        if (HookHack4) {
            //LOGD(O("4"));
            *(FixedPoint*)((uint64_t)_weapon + 0x20) = val; //private int <ClipSize>k__BackingField
            *(FixedPoint*)((uint64_t)_weapon + 0x88) = val; //FixedPoint <WeaponChargeDelay>k__BackingField
            *(FixedPoint*)((uint64_t)_weapon + 0x90) = val; //private FixedPoint <WeaponChargeTime>k__BackingField;
        }
        if (HookHack5) {
            //LOGD(O("5"));
            //*(FixedPoint *)((uint64_t)_weapon + 0xA8) = dmg; //private FixedPoint <DamageVariation>k__BackingField;
            *(FixedPoint*)((uint64_t)_weapon + 0x78) = dmg; //<BulletDamageMultiplier>k__BackingField;
            *(FixedPoint*)((uint64_t)_weapon + 0x40) = dmg; //<BulletPenetrationDamageMultiplier>k__BackingField
            *(FixedPoint*)((uint64_t)_weapon + 0x80) = dmg; //<ChargedDamageMultiplier>k__BackingField
        }
        if (HookHack6) {
            //LOGD(O("5"));
            //*(FixedPoint *)((uint64_t)_weapon + 0xA8) = dmg; //private FixedPoint <DamageVariation>k__BackingField;
            *(FixedPoint*)((uint64_t)_weapon + 0x68) = dmg; //private int <BurstSize>k__BackingField;
        }
    }
    return orig_Update(_this);
}

void hack_thread() {
    LOGD(O("load"));
    do {
        sleep(1);
    } while (!isLibraryLoaded(libName));

    LOGD(O("loaded"));

    //CombatHeroView.Hurt
    hexPatches.Patch1 = MemoryPatch::createWithHex((uintptr_t)(YourOwnGetMethodOffset(O("Assembly-CSharp.dll"), O("OurWorld.Combat"), O("CombatHeroView"), O("Hurt"), 6)), O("1E FF 2F E1"));
    hexPatches.Patch2 = MemoryPatch::createWithHex((uintptr_t)(YourOwnGetMethodOffset(O("Assembly-CSharp.dll"), O("OurWorld.Combat"), O("CombatHeroView"), O("Hurt"), 4)), O("1E FF 2F E1"));

    //CombatHeroView.Kill
    hexPatches.Patch3 = MemoryPatch::createWithHex((uintptr_t)(YourOwnGetMethodOffset(O("Assembly-CSharp.dll"), O("OurWorld.Combat"), O("CombatHeroView"), O("Kill"))), O("1E FF 2F E1"));
    hexPatches.Patch4 = MemoryPatch::createWithHex((uintptr_t)(YourOwnGetMethodOffset(O("Assembly-CSharp.dll"), O("OurWorld.Combat"), O("CombatHeroView"), O("Kill"), 7)), O("1E FF 2F E1"));

    //CombatWalkerView - OnAttackRangeToTarget
    hexPatches.Patch5 = MemoryPatch::createWithHex((uintptr_t)(YourOwnGetMethodOffset(O("Assembly-CSharp.dll"), O("OurWorld.Combat"), O("CombatWalkerView"), O("OnAttackRangeToTarget"))), O("00 00 A0 E3 1E FF 2F E1"));

    //CombatWalkerView - CanStruggleTarget
    //hexPatches.Patch6 = MemoryPatch::createWithHex((uintptr_t)(YourOwnGetMethodOffset(O("Assembly-CSharp.dll"), O("OurWorld.Combat"), O("CombatWalkerView"), O("CanStruggleTarget"))), O("00 00 A0 E3 1E FF 2F E1"));

    //CombatWalkerView - AddSpeed
    hexPatches.Patch7 = MemoryPatch::createWithHex((uintptr_t)(YourOwnGetMethodOffset(O("Assembly-CSharp.dll"), O("OurWorld.Combat"), O("CombatWalkerView"), O("AddSpeed"), 1)), O("1E FF 2F E1"));

    //CombatHUD.Update
    //DobbyHook((void*)(YourOwnGetMethodOffset(O("Assembly-CSharp.dll"), O("OurWorld.Model.Content"), O("Weapon"), O("ReloadTime"))), (void*)ReloadTime, (void**)&orig_ReloadTime);
    DobbyHook((void*)(YourOwnGetMethodOffset(O("Assembly-CSharp.dll"), O("OurWorld.UX"), O("CombatHUD"), O("Update"))), (void*)Update, (void**)&orig_Update);

    patchOffset((YourOwnGetMethodOffset(O("Assembly-CSharp.dll"), O("OurWorld.Map"), O("MockLocationProvider"), O("IsEnabledByUser"))), O("00 00 A0 E3 1E FF 2F E1"));
    patchOffset((YourOwnGetMethodOffset(O("Assembly-CSharp.dll"), O("OurWorld.Map"), O("MockLocationProvider"), O("AreLocationSettingsValid"))), O("01 00 A0 E3 1E FF 2F E1"));
    patchOffset((YourOwnGetMethodOffset(O("Assembly-CSharp.dll"), O("OurWorld.Map"), O("AndroidLocationProvider"), O("AreLocationSettingsValid"))), O("01 00 A0 E3 1E FF 2F E1"));
    patchOffset((YourOwnGetMethodOffset(O("Assembly-CSharp.dll"), O("OurWorld.Map"), O("LocationService"), O("AreLocationSettingsValid"))), O("01 00 A0 E3 1E FF 2F E1"));
	
	//Not working
	//Assembly-CSharp.dll - OurWorld.Map - LocationService - HasLocationPermissions
	//Assembly-CSharp.dll - OurWorld.Map - MockLocationProvider - CanFetchValidCustomLocation
	//Assembly-CSharp.dll - OurWorld.Map - LocationService - CanFetchValidCustomLocation
	//Assembly-CSharp.dll - OurWorld.Map - MockLocationProvider - get_IsDeviceLocation
	//Assembly-CSharp.dll - OurWorld.Map - MockLocationProvider - HasLocationPermissions
	//Assembly-CSharp.dll - OurWorld.Map - LocationInfo - IsValid
	//Assembly-CSharp.dll - OurWorld.Map - MockLocationProvider - IsValid

    LOGD(O("success"));
}