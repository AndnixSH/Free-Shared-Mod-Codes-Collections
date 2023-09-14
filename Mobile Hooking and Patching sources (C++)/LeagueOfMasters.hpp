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
        // The category was 0 so "case 0" is not needed
        case 0: // Switch
            hack1 = !hack1;
            break;
        case 1: // Switch 2
			hack2 = !hack2;
            break;
    }
}

JNIEXPORT jobjectArray JNICALL
Java_uk_lgl_modmenu_FloatingModMenuService_GetFeatureList(
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
            "Toggle_God mode"}; 

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

#define libName libil2cpp.so

bool (*get_IsMyTeam)(void *_this);

float (*orig_get_MagicalDamage)(void *_this);
float get_MagicalDamage(void* _this) {
	if(_this != NULL)
	{ 
		bool isteam = get_IsMyTeam(_this);
		
		if (isteam && hack1)
		{
			//LOGD("0");
			return 99999;
		}
		else if (!isteam && hack2)
		{
			//LOGD("1");
			return 0;
		} 
	}
	return orig_get_MagicalDamage(_this);
}

float (*orig_get_PhysicalDamage)(void *_this);
float get_PhysicalDamage(void* _this) {
	if(_this != NULL)
	{ 
		bool isteam = get_IsMyTeam(_this);
		if (isteam && hack1)
		{
			//LOGD("00");
			return 99999;
		}
		else if (!isteam && hack2)
		{
			//LOGD("11");
			return 0;
		} 
	}
	return orig_get_PhysicalDamage(_this);
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

	sleep(10);

    Hook((YourOwnGetMethodOffset(AY_OBFUSCATE("Assembly-CSharp.dll"), "", AY_OBFUSCATE("DHUnitEntity"), AY_OBFUSCATE("get_MagicalDamage"))), (void*)get_MagicalDamage, (void**) &orig_get_MagicalDamage);
    Hook((YourOwnGetMethodOffset(AY_OBFUSCATE("Assembly-CSharp.dll"), "", AY_OBFUSCATE("DHUnitEntity"), AY_OBFUSCATE("get_PhysicalDamage"))), (void*)get_PhysicalDamage, (void**) &orig_get_PhysicalDamage);
	
	get_IsMyTeam = (bool(*)(void *))(YourOwnGetMethodOffset(AY_OBFUSCATE("Assembly-CSharp.dll"), "", AY_OBFUSCATE("DHUnitEntity"), AY_OBFUSCATE("get_IsMyTeam")));
	
    return NULL;
}

__attribute__((constructor))
void libhook_main() {
	
	pthread_t ptid;
	pthread_create(&ptid, NULL, hack_thread, NULL);
}
