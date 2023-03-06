bool KMHack1 = false, KMHack2 = false, KMHack3 = false, hack1 = false, hack2 = false, hack3 = false;
int sliderValue = 1, dmgmul = 1, defmul = 1, rarity;

std::vector<bool> toggles;

extern "C" {

    jobjectArray GetFeatureList(
        JNIEnv* env,
        jobject activityObject) {
        jobjectArray ret;

        const char* features[] = {
            o("1_InputValue_Damage multiplier"),
            o("2_InputValue_Defense multiplier") };

        int Total_Feature = (sizeof features /
            sizeof features[0]); //Now you dont have to manually update the number everytime;

        ret = (jobjectArray)env->NewObjectArray(Total_Feature, env->FindClass(o("java/lang/String")),
            env->NewStringUTF(""));
        int i;
        for (i = 0; i < Total_Feature; i++)
        {
            toggles.push_back(false);
            env->SetObjectArrayElement(ret, i, env->NewStringUTF(features[i]));
        }

        return (ret);
    }

    void Changes(JNIEnv* env, jclass clazz, jobject obj,
        jint featNum, jstring featName, jint value,
        jboolean boolean, jstring str) {
    

        switch (featNum) {

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

}
//GameCharacter 
bool (*get_IsHumanSide)(void* _this);

//CharacterShieldComponent
float (*orig_ApplyDamageReduction)(void* pThis, int actionEffectType, float damage);
float ApplyDamageReduction(void* pThis, int actionEffectType, float damage) {

    void* character = *(void**)((uint32_t)pThis + 0x10); //public GameCharacter character;
    bool ishuman = get_IsHumanSide(character); //GameCharacter
    if (ishuman) {
        return orig_ApplyDamageReduction(pThis, actionEffectType, damage) / defmul;
    }
    else {
        return orig_ApplyDamageReduction(pThis, actionEffectType, damage) * dmgmul;
    }
    return orig_ApplyDamageReduction(pThis, actionEffectType, damage);
}

void (*DoNextState)(void* pThis);

void (*orig_StoreCheckInstall)(void* pThis);
void StoreCheckInstall(void* pThis) {

    return DoNextState(pThis);
}

//04-30 18:36:20.226 E/Unity   (7769): Exception: No pool found with name "CollectibleDrop_SoftCurrency_Common"
bool ID = 0;
#define targetLibName o("libil2cpp.so")
// we will run our patches in a new thread so "sleep" doesn't block process main thread
void hack_thread() {
    LOGD(o("loading..."));

    do {
        usleep(50000);
    } while (!isLibraryLoaded(targetLibName));

    //get_DisableStoreCheck
    //auto get_DisableStoreCheck = mem::find_pattern_in_module(targetLibName, o("10 4C 2D E9 08 B0 8D E2 5C 40 9F E5 04 40 8F E0 00 00 D4 E5 00 00 50 E3 05 00 00 1A 4C 00 9F E5 00 00 9F E7 00 00 90 E5 ?? ?? ?? EB 01 00 A0 E3 00 00 C4 E5 38 40 9F E5 04 40 9F E7 00 00 94 E5 BB 10 D0 E5 02 00 11 E3 04 00 00 0A 74 10 90 E5 00 00 51 E3 01 00 00 1A ?? ?? ?? EB 00 00 94 E5 5C 00 90 E5 B3 00 D0 E5 10 8C BD E8 ?? ?? F4 ?? ?? ?? ?? ??"));

    //get_DisableStoreCheck
    //patchOffset(targetLibName, string2Offset(OK("0x867A7C", 'k')), o("01 00 A0 E3 1E FF 2F E1"));
    patchOffset(/* Your own get offset method - Assembly-CSharp.dll - Ragnarok.Online - OnlineConfiguration - get_DisableStoreCheck */), o("01 00 A0 E3 1E FF 2F E1"));
    //patchOffset(get_DisableStoreCheck, o("01 00 A0 E3 1E FF 2F E1"));

    sleep(1);

#ifdef __arm__
    //Bypass
    Hook((void*) /* Your own get offset method - Assembly-CSharp.dll - Ragnarok.Online.Guild - ConnectionTask - StoreCheckInstall */), (void*)StoreCheckInstall, (void**)&orig_StoreCheckInstall);

    DoNextState = (void(*)(void*)) /* Your own get offset method - Assembly-CSharp.dll - Ragnarok.Online.Guild - ConnectionTask - DoNextState" */;

    Hook((void*) /* Your own get offset method - Assembly-CSharp.dll - MightyGame - CharacterShieldComponent- ApplyDamageReduction */), (void*)ApplyDamageReduction, (void**)&orig_ApplyDamageReduction);

    get_IsHumanSide = (bool(*)(void*))  /* Your own get offset method - Assembly-CSharp.dll - MightyGame - GameCharacter- get_IsHumanSide" */;
#endif

    LOGD(o("success"));

    // return NULL;
}

__attribute__((constructor))
void libmain() {
    std::thread t(hack_thread);
    t.detach();
}

#include "Menu/JNIOnLoadMenu.h"