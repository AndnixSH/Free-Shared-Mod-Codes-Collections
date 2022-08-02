bool KMHack1 = false, KMHack2 = false, KMHack3 = false, hack1 = false, hack2 = false, hack3 = false;
int sliderValue = 1, dmgmul = 1, defmul = 1;

std::vector<bool> toggles;

jobjectArray GetFeatureList(
    JNIEnv* env,
    jobject activityObject) {
    jobjectArray ret;

    const char* features[] = {
        OBFRK("1_InputValue_500_Damage multiplier"),
        OBFRK("2_InputValue_500_Defense multiplier"),
        OBFRK("RichTextView_</font><font color='yellow'>WARNING: This game has banning system. Please avoid abusing the mod and stay safe to avoid getting banned, only use this mod if the game is too hardcore. Use this mod at YOUR own risk!</font>") };

    int Total_Feature = (sizeof features /
        sizeof features[0]); //Now you dont have to manually update the number everytime;

    ret = (jobjectArray)env->NewObjectArray(Total_Feature, env->FindClass(xorstr_("java/lang/String")),
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
    }
}

bool (*get_IsHero)(void* _this);

void (*orig_ApplyDamage)(void* pThis, void* damageData, void* combatLogInfo);
void ApplyDamage(void* pThis, void* damageData, void* combatLogInfo) {
    bool ishero = get_IsHero(pThis);
    if (!ishero) {
        *(long*)((uint32_t)damageData + 0x20) *= dmgmul; //<ActualDamageDealt>k__BackingField;
        //*(int*)((uint32_t)damageData + 0x28) *= dmgmul; //<BreakerAmount>k__BackingField;
        *(long*)((uint32_t)damageData + 0x8) *= dmgmul; //<RawIncomingDamage>k__BackingField
        //*(bool*)((uint32_t)damageData + 0x10) = true;
        //*(bool*)((uint32_t)damageData + 0x2c) = true;
        //*(bool*)((uint32_t)damageData + 0x2d) = true;
    }
    else if (ishero) {
        *(long*)((uint32_t)damageData + 0x20) /= defmul; //<ActualDamageDealt>k__BackingField;
        //*(int*)((uint32_t)damageData + 0x28) /= defmul; //<BreakerAmount>k__BackingField;
        *(long*)((uint32_t)damageData + 0x8) /= defmul; //<RawIncomingDamage>k__BackingField
        //*(bool*)((uint32_t)damageData + 0x10) = true;
        //*(bool*)((uint32_t)damageData + 0x2c) = true;
        //*(bool*)((uint32_t)damageData + 0x2d) = true;
    }
    return orig_ApplyDamage(pThis, damageData, combatLogInfo);
}

bool ID = 0;
#define targetLibName xorstr_("libil2cpp.so")
// we will run our patches in a new thread so "sleep" doesn't block process main thread
void hack_thread() {
    LOGD(xorstr_("loading..."));

    do {
        sleep(1);
    } while (!isLibraryLoaded(targetLibName));

    LOGD(xorstr_("loaded"));

    sleep(10);

    Il2Cpp::Init(targetLibName);

    DobbyHook((void*)( /*[Offset: "SBRuntime.dll" - "SBRuntime.Battle.Gameplay" - "GameplayUnit" - "ApplyDamage"]*/ ), (void*)ApplyDamage, (void**)&orig_ApplyDamage);

    get_IsHero = (bool(*)(void*))(  /*[Offset: "SBRuntime.dll" - "SBRuntime.Battle.Gameplay" - "GameplayUnit" - "get_IsHero"]*/ );

    //get_PlayerSide = (int (*)(void *))( /*[Offset: "SBRuntime.dll" - "SBRuntime.Battle" - "CardBattleStats" - "DamageReceived"]*/ )); //KaijuModel

    LOGD(xorstr_("success"));
}

__attribute__((constructor))
void libmain() {
    std::thread t(hack_thread);
    t.detach();
}

#include "Menu/JNIOnLoadMenu.h"