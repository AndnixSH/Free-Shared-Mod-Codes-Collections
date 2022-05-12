#include <pthread.h>
#include "KittyMemory/MemoryPatch.h"
#include "KittyMemory/Logger.h"
#import "Includes/Utils.h"

#define SoFile "libapp.so"

int ohk = 0;
int godmode = 0;
bool silentaim = true;

bool hack1 = false, hack2 = false, hack3 = false;

extern "C" {

int dmgmul = 1, defmul = 1;
JNIEXPORT void JNICALL
Java_uk_lgl_modmenu_FloatingModMenuService_Changes(
        JNIEnv *env,
        jobject activityObject,
        jint feature,
        jint value) {

    // You must count your features from 0, not 1
    switch (feature) {
		case 0: // Switch 2
			hack1 = !hack1;
            break;
		case 1: // Switch
			hack2 = !hack2;
            break;
		case 2: // Switch
			hack3 = !hack3;
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
            "Toggle_1 hit kill",
			"Toggle_God mode",
			"Toggle_High speed"}; 

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

#define libName "libil2cpp.so"
int team;
float (*orig_SetDamage)(void *_this, int a0, float a1, int a2, int a3, bool a4, int a5);
float SetDamage(void* _this, int a0, float a1, int a2, int a3, bool a4, int a5) {
	if (_this != NULL)
	{
		void* m_ability = *(void**)((uint32_t)_this + 0x64); 
		team = *(int *)((uint32_t)_this + 0x20); //protected eTEAM_TYPE m_team;
		if (hack1 && team == 1)
		{
			return orig_SetDamage(_this, a0, a1 * 999, a2, a3, a4, a5);
		}
		if (hack2 && team != 1)
		{
			return 0.0f;
		}
	}
	return orig_SetDamage(_this, a0, a1, a2, a3, a4, a5);
}

float (*orig_RunActionSpeed)(void *_this);
float RunActionSpeed(void *_this){
	if (_this != NULL && hack3)
	{
		return 15.0f;
	}
	return orig_RunActionSpeed(_this);
}

float (*orig_RunSpeed)(void *_this);
float RunSpeed(void *_this){
	if (_this != NULL && hack3)
	{
		return 15.0f;
	}
	return orig_RunSpeed(_this);
}

float (*orig_WalkSpeed)(void *_this);
float WalkSpeed(void *_this){
	if (_this != NULL && hack3)
	{
		return 15.0f;
	}
	return orig_WalkSpeed(_this);
}

// ---------- Hooking ---------- //

// we will run our patches in a new thread so our while loop doesn't block process main thread
// Don't forget to remove or comment out logs before you compile it.
void *hack_thread(void *) {
	//LOGD("load");
    // loop until our target library is found
    ProcMap il2cppMap;
    do {
		//LOGD(libName);
        il2cppMap = KittyMemory::getLibraryMap(libName);
        sleep(1);
    } while (!il2cppMap.isValid());
	//LOGD("abe");
	
    MSHookFunction((void*)getAbsoluteAddress(libName, 0x63D2E0), (void*)SetDamage, (void**) &orig_SetDamage);
    MSHookFunction((void*)getAbsoluteAddress(libName, 0x63FA50), (void*)RunActionSpeed, (void**) &orig_RunActionSpeed);
    MSHookFunction((void*)getAbsoluteAddress(libName, 0x639920), (void*)RunSpeed, (void**) &orig_RunSpeed);
    MSHookFunction((void*)getAbsoluteAddress(libName, 0x63F808), (void*)WalkSpeed, (void**) &orig_WalkSpeed);
	
    return NULL;
}

__attribute__((constructor))
void libhook_main() {
	pthread_t ptid;
	pthread_create(&ptid, NULL, hack_thread, NULL);
	
	if (sub_3216) {
        exit(999);
    }
}
