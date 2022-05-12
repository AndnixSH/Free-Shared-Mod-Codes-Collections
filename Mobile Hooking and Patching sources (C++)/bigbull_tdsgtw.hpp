#include <pthread.h>
#include "KittyMemory/MemoryPatch.h"
#include "KittyMemory/Logger.h"
#import "Includes/Utils.h"

#define SoFile "libapp.so"

bool hack1 = false, hack2 = false, hack3 = false;

extern "C" {


int dmgmul = 1;
int defmul = 1;
JNIEXPORT void JNICALL
Java_uk_lgl_modmenu_FloatingModMenuService_Changes(
        JNIEnv *env,
        jobject activityObject,
        jint feature,
        jint value) {

    // You must count your features from 0, not 1
    switch (feature) {
		case 0: // Switch 2
			if (value >= 1)
			{
				dmgmul = value;
			}
            break;
        case 1: // Switch 2
			if (value >= 1)
			{
				defmul = value;
			}
            break;
        case 2: // Switch
			hack3 = !hack3;
            if (hack3) {
                my_cool_Patches.Patch1.Modify();
                my_cool_Patches.Patch2.Modify();
                my_cool_Patches.Patch3.Modify();
                my_cool_Patches.Patch4.Modify();
                my_cool_Patches.Patch5.Modify();
            } else {
                my_cool_Patches.Patch1.Restore();
                my_cool_Patches.Patch2.Restore();
                my_cool_Patches.Patch3.Restore();
                my_cool_Patches.Patch4.Restore();
                my_cool_Patches.Patch5.Restore();
            }
            break;
		case 3: // Switch 2
			hack1 = !hack1;
            break;
    }
}

JNIEXPORT jobjectArray JNICALL
Java_uk_lgl_modmenu_FloatingModMenuService_getFeatureList(
        JNIEnv *env,
        jobject activityObject) {
    jobjectArray ret;

    // Note: Do not translate the first text
    // Usage:
    // Category_(text)
    // Toggle_[feature name]
    // SeekBar_[feature name]_[min value]_[max value]
    // Spinner_[feature name]_[Items e.g. item1_item2_item3]
    // Button_[feature name]
    // Button_OnOff_[feature name]
    // InputValue_[feature name]
    const char *features[] = {
            "SeekBar_DMG multiplier_0_500",
            "SeekBar_DEF multiplier_0_500",
            "Toggle_Freeze monsters",
			"Toggle_No cooldown"}; 

    int Total_Feature = (sizeof features /
                         sizeof features[0]); //Now you dont have to manually update the number everytime;

    ret = (jobjectArray) env->NewObjectArray(Total_Feature, env->FindClass("java/lang/String"),
                                             env->NewStringUTF(""));
    int i;
    for (i = 0; i < Total_Feature; i++)
        env->SetObjectArrayElement(ret, i, env->NewStringUTF(features[i]));
    return (ret);
}

}

#define libName O("libil2cpp.so")

bool (*get_IsMyTeam)(void *_this) = (bool(*)(void *)) getAbsoluteAddress(libName, 0x47C2F8); 

void (*orig_ModifyHp)(void *_this, int value);
void ModifyHp(void* _this, int value) {
	if(_this != NULL)
	{
		int camp = *(int*)((uint64_t)_this + 0x28);
		if (camp == 0){
			LOGI("player 0");
			value * dmgmul;
		}
		if (camp == 1){
			LOGI("enemy 1");
			value / defmul;
		}
	}
	return orig_ModifyHp(_this, value);
}

bool (*orig_UpdateSkill)(void *_this, float value);
bool UpdateSkill(void* _this, float value) {
	if(_this != NULL && hack1)
	{ 
		*(float *) ((uint64_t) _this + 0x20) = 0; // consumeMana
		*(float *) ((uint64_t) _this + 0x24) = 0; // skillCooldown
		*(float *) ((uint64_t) _this + 0x28) = 0; // CDTime
		//LOGD("ffff");
	}
	//LOGD("offf");
	return orig_UpdateSkill(_this, value);
}

void *hack_thread(void *) {
	
    // loop until our target library is found
    ProcMap il2cppMap;
    do {
		LOGD(libName);
        il2cppMap = KittyMemory::getLibraryMap(libName);
        sleep(1);
    } while (!il2cppMap.isValid());

	//ActorInfo
    MSHookFunction((void*)getAbsoluteAddress(libName, 0x1200388), (void*)ModifyHp, (void**) &orig_ModifyHp);
    MSHookFunction((void*)getAbsoluteAddress(libName, 0xA9E79C), (void*)UpdateSkill, (void**) &orig_UpdateSkill);
	
	/// MonsterAI
	// CanAttack
	my_cool_Patches.Patch1 = MemoryPatch::createWithHex(libName, 0x49086C, "00 00 A0 E3 1E FF 2F E1");
	
	// AttackOrAssault
	my_cool_Patches.Patch2 = MemoryPatch::createWithHex(libName, 0x4913D8, "00 00 A0 E3 1E FF 2F E1");
	
	// MoveOnPortal
	my_cool_Patches.Patch3 = MemoryPatch::createWithHex(libName, 0x48E5D0, "00 00 A0 E3 1E FF 2F E1");
	
	// MoveOnPath
	my_cool_Patches.Patch4 = MemoryPatch::createWithHex(libName, 0x48CDBC, "00 00 A0 E3 1E FF 2F E1");
	
	// BuildActorInfo
	my_cool_Patches.Patch5 = MemoryPatch::createWithHex(libName, 0x48B5C4, "1E FF 2F E1");
	LOGD("2");
    return NULL;
}

__attribute__((constructor))
void libhook_main() {
	pthread_t ptid;
	pthread_create(&ptid, NULL, hack_thread, NULL);
}
