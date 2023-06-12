
jobjectArray GetFeatureList(
    JNIEnv* env,
    jobject activityObject) {
    jobjectArray ret;

    const char* features[] = {
        O("InputValue_Damage multiplier"),
        O("InputValue_Defense multiplier"),
        O("Toggle_No cooldown")
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

    return (ret);
}

void Changes(JNIEnv* env, jclass clazz, jobject obj,
    jint feature, jstring featName, jint value,
    jboolean boolean, jstring str) {


    int i = (int)feature;
    switch (i) {
        // Must count from 0
          // Must count from 0
        case 0:
            if (value >= 1) {
                dmgmul = value;
            }
            break;
        case 1:
            if (value >= 1) {
                defmul = value;
            }
            break;
        case 2:
            toggles[i] = boolean;
            if (toggles[i]) {
                LOGD(O("toggled 3 on"));
                hexPatches.Patch1.Modify();
                hexPatches.Patch2.Modify();
                hexPatches.Patch3.Modify();
                hexPatches.Patch4.Modify();
                //hexPatches.Patch5.Modify();
                //hexPatches.Patch6.Modify();
                //hexPatches.Patch7.Modify();
            }
            else {
                LOGD(O("toggled 3 off"));
                hexPatches.Patch1.Restore();
                hexPatches.Patch2.Restore();
                hexPatches.Patch3.Restore();
                hexPatches.Patch4.Restore();
                //hexPatches.Patch5.Restore();
                //hexPatches.Patch6.Restore();
                //hexPatches.Patch7.Restore();
            }
            break;
    }
}

int* (*orig_CalculateBaseDamageValue)(int* pThis, void* vAttackData, void* vModData, void*& vPluginData, void* vDefenderRoleData, void* checkDamageData);
int* CalculateBaseDamageValue(int* pThis, void* vAttackData, void* vModData, void*& vPluginData, void* vDefenderRoleData, void* checkDamageData) {
    int SendType = *(int*)((uint64_t)vAttackData + 0xB0); //public SendTargetType SendType;
    //LOGD( "hookdmg"));
    if (SendType == 1) //Enemy
    {
        //private float <DamageValuePercent>k__BackingField;
        *(float*)((uint64_t)vAttackData + 0x58) /= (float)defmul;
        //LOGD( "0"));
    }
    else
    {
        *(float*)((uint64_t)vAttackData + 0x58) *= (float)dmgmul;
        //LOGD( "1"));
    }

    return orig_CalculateBaseDamageValue(pThis, vAttackData, vModData, vPluginData, vDefenderRoleData, checkDamageData);
}

#define targetLibName O("libil2cpp.so")

// we will run our patches in a new thread so "sleep" doesn't block process main thread
void hack_thread() {
    LOGD( "loading..."));

    do {
        sleep(1);
    } while (!isLibraryLoaded(targetLibName));

    LOGD( "loaded..."));

    sleepy(10);

    HOOK((void*)( /* "Assembly-CSharp.dll" - "CyRoleBehaviour" - "RoleDataCalculateTool" - "CalculateBaseDamageValue" */ ), CalculateBaseDamageValue, orig_CalculateBaseDamageValue);

    hexPatches.Patch1 = MemoryPatch::createWithHex((uintptr_t)( /* "Assembly-CSharp.dll" -  "SkillButton" -   "get_IsInCD" */ )),  "00 00 80 D2 C0 03 5F D6"));
    hexPatches.Patch2 = MemoryPatch::createWithHex((uintptr_t)( /* "Assembly-CSharp.dll" -  "SkillButton" -   "StartCD" */)),  "00 00 80 D2 C0 03 5F D6"));
    hexPatches.Patch3 = MemoryPatch::createWithHex((uintptr_t)( /* "Assembly-CSharp.dll" -  "SkillButton" -   "OnCDUpdate" */)),  "00 00 80 D2 C0 03 5F D6"));
    hexPatches.Patch4 = MemoryPatch::createWithHex((uintptr_t)( /*"Assembly-CSharp.dll" -  "SkillButton" -  "UpdateCDTime" */ )),  "00 00 80 D2 C0 03 5F D6"));

    PATCH_IL2CPP((  /* "Assembly-CSharp.dll" -  "SecurityManager" - "CheckSkillCoolDownDataNeedToReport" */))),  "00 00 80 D2 C0 03 5F D6"));
    PATCH_IL2CPP((/* "Assembly-CSharp.dll" -  "SecurityManager" - "CheckPassiveSkillCoolDown" */)),  "00 00 80 D2 C0 03 5F D6"));

    LOGD( "success"));
}
__attribute__((constructor))
void libmain() {
    std::thread t(hack_thread);
    t.detach();
}

#include "Menu/JNIOnLoadMenu.h"