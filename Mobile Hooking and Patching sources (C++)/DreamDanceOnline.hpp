//public EOperationBeatRank GetAutoRank(int id) { } // RVA: 0xB668D8 Offset: 0xB668D8

//public bool AutoPlay() { } // RVA: 0xB669B4 Offset: 0xB669B4

//Class: DanceMatchBase

#import "Includes/Utils.h"

bool KMHack1 = false, KMHack2 = false, HookHack1 = false, HookHack2 = false, HookHack3 = false;

extern "C" {
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

const char *libName = "libil2cpp.so"

// MW.Client.UI.DanceMatchBase
int (*old_GetAutoRank)(void* instance, int a1);
int GetAutoRank(void *instance, int a1) {
	if (HookHack1)
	{
		return 5;	
	}
	return old_GetAutoRank(instance, a1);
}

bool (*old_AutoPlay)(void* instance);
bool AutoPlay(void *instance) {
	if (HookHack2)
	{
		return true;	
	}
	return old_AutoPlay(instance);		
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

    MSHookFunction((void *)getAbsoluteAddress(libName, 0xB668D8), (void *)GetAutoRank, (void **) &old_GetAutoRank);
	MSHookFunction((void *)getAbsoluteAddress(libName, 0xB669B4), (void *)AutoPlay, (void **) &old_AutoPlay);
	
    return NULL;
}

__attribute__((constructor))
void libhook_main() {
    pthread_t ptid;
    pthread_create(&ptid, NULL, hack_thread, NULL);
}