#define SoFile "libapp.so"

bool KMHack1 = false, KMHack2 = false, KMHack3 = false, HookHack1 = false, HookHack2 = false, HookHack3 = false;

extern "C" {

JNIEXPORT void JNICALL
Java_uk_lgl_modmenu_FloatingModMenuService_changeToggle(
        JNIEnv *env,
        jobject activityObject,
        jint feature) {

    switch (feature) {

        case 0:
			KMHack1 = !KMHack1;
            if (KMHack1) {
				LOGD("on");
                hexPatches.Patch1.Modify();
            } else {
                hexPatches.Patch1.Restore();
            }
            break;
    }
}

}

 // public void Antibanned() {
        // File file = new File(Environment.getExternalStorageDirectory() + "/Android/data/com.mobile.legends/cache/UnityShaderCache/");
        // new File(Environment.getExternalStorageDirectory() + "/Android/data/com.mobile.legends/files/dragon2017/BattleRecord/");
        // File file2 = new File(Environment.getExternalStorageDirectory() + "/Android/data/com.mobile.legends/files/dragon2017/assets/comlibs/armeabi-v7a/");
        // new File(Environment.getExternalStorageDirectory() + "/Android/data/com.mobile.legends/files/UnityCache");
        // File file3 = new File(Environment.getExternalStorageDirectory() + "/Android/data/com.mobile.legends/files/dragon2017/assets/comlibs/arm64-v8a");
        // if (file3.exists()) {


const char *libName = "liblogic.so";

// ---------- Hooking ---------- //

// we will run our patches in a new thread so our while loop doesn't block process main thread
// Don't forget to remove or comment out logs before you compile it.
void *hack_thread(void *) {

    // loop until our target library is found
    ProcMap il2cppMap;
    do {
        il2cppMap = KittyMemory::getLibraryMap(libName);
        sleep(1);
    } while (!il2cppMap.isValid());
	LOGD("Success");
	//Unity lib. No need to change offsets unless they upgraded unity version
    hexPatches.Patch1 = MemoryPatch(libName, 0xF57918, "\x01\x00\xa0\xe3\x1e\xff\x2f\xe1", 8); //CanSight - EntityBase 
	
    // MSHookFunction((void *) getAbsoluteAddress(libName, 0x282681C), (void *) get_enable_hackers_pool, NULL); //get_enable_hackers_pool

    return NULL;
}

__attribute__((constructor))
void libhook_main() {

	pthread_t ptid;
	pthread_create(&ptid, NULL, hack_thread, NULL);

}
