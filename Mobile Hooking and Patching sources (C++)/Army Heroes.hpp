#include <pthread.h>
#include "KittyMemory/MemoryPatch.h"
#include "KittyMemory/Logger.h"
#import "Includes/Utils.h"

bool hack1 = false, hack2 = false, hack3 = false;

extern "C" {

int dmgmul = 1;
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
        // The category was 0 so "case 0" is not needed
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
            "Toggle_Can't die even 0 health"}; 

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

//Tpc
bool (*get_IsEnemy)(void *_this);
bool (*SetDead2)(void *_this);

void (*orig_SetDead)(void *_this, float amount);
void SetDead(void* _this, float amount) {
	if(_this != NULL)
	{ 
		bool team = get_IsEnemy(_this);
		if (hack2 && team == false){
			return;
		}
	}
	return orig_SetDead(_this, amount);
}

void (*orig_OnDamageTaken)(void *_this, float amount);
void OnDamageTaken(void* _this, float amount) {
	if(_this != NULL)
	{ 
		bool team = get_IsEnemy(_this);
		if (hack1 && team == true){
			SetDead2(_this);
		}
	}
	return orig_OnDamageTaken(_this, amount);
}

// ---------- Hooking ---------- //

// we will run our patches in a new thread so our while loop doesn't block process main thread
// Don't forget to remove or comment out logs before you compile it.
void *hack_thread(void *) {

    ProcMap il2cppMap;
    do {

        il2cppMap = KittyMemory::getLibraryMap(libName);
        sleep(1);
    } while (!il2cppMap.isValid());

    //Tpc
    MSHookFunction((void*)getAbsoluteAddress(libName, 0x6CAC08), (void*)OnDamageTaken, (void**) &orig_OnDamageTaken);
    MSHookFunction((void*)getAbsoluteAddress(libName, 0x6BE13C), (void*)SetDead, (void**) &orig_SetDead);
	get_IsEnemy = (bool(*)(void *)) getAbsoluteAddress(libName, 0x6ABCA0);  
	SetDead2 = (bool(*)(void *)) getAbsoluteAddress(libName, 0x6BE13C); 
	
    return NULL;
}

__attribute__((constructor))
void libhook_main() {
	pthread_t ptid;
	pthread_create(&ptid, NULL, hack_thread, NULL);
}
