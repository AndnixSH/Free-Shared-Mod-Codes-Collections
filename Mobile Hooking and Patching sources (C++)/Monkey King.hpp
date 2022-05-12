#import "Includes/Utils.h"

bool KMHack1 = false, KMHack2 = false, HookHack1 = false, HookHack2 = false, HookHack3 = false;

extern "C" {

JNIEXPORT jobjectArray  JNICALL
Java_uk_lgl_modmenu_FloatingModMenuService_getFeatureList(
        JNIEnv *env,
        jobject activityObject) {
    jobjectArray ret;

    const char *features[] = {"Auto play", "Always perfect"};

    int Total_Feature = (sizeof features /
                         sizeof features[0]); //Now you dont have to manually update the number everytime;

    ret = (jobjectArray) env->NewObjectArray(Total_Feature, env->FindClass("java/lang/String"),
                                             env->NewStringUTF(""));
    int i;
    for (i = 0; i < Total_Feature; i++)
        env->SetObjectArrayElement(ret, i, env->NewStringUTF(features[i]));
    return (ret);
}

JNIEXPORT void JNICALL
Java_uk_lgl_modmenu_FloatingModMenuService_changeSeekBar(
        JNIEnv *env,
        jobject activityObject,
        jint feature, jint sliderValue) {
    //__android_log_print(ANDROID_LOG_VERBOSE, "Mod Menu", "Feature = %d", feature);
    //__android_log_print(ANDROID_LOG_VERBOSE, "Mod Menu", "sliderValue = %d", sliderValue);
    int i = (int) feature;
    switch (i) {
        case 4:
            //LOGD("Speed hack");
            //Speed hack in hook
            break;
        case 5:

            break;
    }
}

JNIEXPORT void JNICALL
Java_uk_lgl_modmenu_FloatingModMenuService_changeToggle(
        JNIEnv *env,
        jobject activityObject,
        jint feature) {
    // LOGD("changeToggle");
    //__android_log_print(ANDROID_LOG_VERBOSE, "Mod Menu", "Feature = %d", feature);

    int i = (int) feature;
    switch (i) {

        // Must count from 0
        case 0:
            HookHack1 = !HookHack1;
            break;
        case 1:
            HookHack2 = !HookHack2;
            break;
    }
}

}

const char *libName = "libil2cpp.so";

// MW.Client.UI.DanceMatchBase
float GetstrengthGrowByStar(void *instance) {
	return 999999.0f;
}

float GetIntelligenceGrowByStar(void *instance) {
	return 999999.0f;
}

float GetCommandGrowByStar(void *instance) {
	return 999999.0f;
}

void *hack_thread(void *) {
    LOGI("I have been loaded. Mwuahahahaha");

    // ---------- Kitty memory ---------- //

    // loop until our target library is found
    ProcMap il2cppMap;
    do {
        il2cppMap = KittyMemory::getLibraryMap(libName);
        sleep(1);
    } while (!il2cppMap.isValid());

    MSHookFunction((void *)getAbsoluteAddress(libName, 0x1BC0184), (void *)GetstrengthGrowByStar, NULL);
	MSHookFunction((void *)getAbsoluteAddress(libName, 0x1BC021C), (void *)GetIntelligenceGrowByStar, NULL);
	MSHookFunction((void *)getAbsoluteAddress(libName, 0x1BC02B4), (void *)GetCommandGrowByStar, NULL);
	
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