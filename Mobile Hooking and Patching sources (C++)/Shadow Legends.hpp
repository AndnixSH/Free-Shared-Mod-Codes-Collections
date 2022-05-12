#include <pthread.h>
#include "KittyMemory/MemoryPatch.h"
#include "KittyMemory/Logger.h"
#import "Includes/Utils.h"

int ohk = 0;
int godmode = 0;
bool silentaim = true;

bool hack1 = false, hack2 = false, hack3 = false;

extern "C" {
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
            "Toggle_Unlimited coin, gem, stone after win battle"}; 

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

void (*orig_LoadReward)(void *_this);
void LoadReward(void* _this) {
	if (_this != NULL && hack1)
	{
		*(int*)((uint64_t)_this + 0x44) = 9999999;
		*(int*)((uint64_t)_this + 0x48) = 9999999;
		*(int*)((uint64_t)_this + 0x40) = 9999999;
	}
	return orig_LoadReward(_this);
}

bool get_IsRemoveAds() {
	return true;
}

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

  //  MSHookFunction((void*)getAbsoluteAddress(libName, 0x102FE64), (void*)LoadReward, (void**) &orig_LoadReward);
   // MSHookFunction((void*)getAbsoluteAddress(libName, 0x102FE64), (void*)LoadReward, (void**) &orig_LoadReward);
    MSHookFunction((void*)getAbsoluteAddress(libName, 0x102FE64), (void*)LoadReward, (void**) &orig_LoadReward);
    MSHookFunction((void*)getAbsoluteAddress(libName, 0xEAF8EC), (void*)get_IsRemoveAds, NULL);
	
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
