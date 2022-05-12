#include <pthread.h>
#include <jni.h>
#include <memory.h>
#include <dlfcn.h>
#include <cstdio>
#include <cstdlib>

#include "Includes/Logger.h"
#include "Substrate/CydiaSubstrate.h"
#import "Includes/Utils.h"

bool PlayerUpdateHookInitialized = false;
const char* libName = "libil2cpp.so";

//public class cashshop_controll : MonoBehaviour
void (*btn_gam_5)() = (void(*)())getAbsoluteAddress(libName, 0x43BB14);
void (*btn_Pinkgam_5)() = (void(*)())getAbsoluteAddress(libName, 0x43BF40);
void (*rear_btn_money_10)(void *_this) = (void(*)(void *))getAbsoluteAddress(libName, 0x43B73C);

//public class setting_controll : MonoBehaviour
void (*orig_btn_ThnaksTo)(void *_this);
void btn_ThnaksTo(void* _this) {
	if(_this != NULL){
		rear_btn_money_10(_this);
		btn_gam_5();
		btn_Pinkgam_5();
		LOGI("Hook");
	}
	orig_btn_ThnaksTo(_this);
}

// we will run our patches in a new thread so our while loop doesn't block process main thread
void* hack_thread(void*) {
	
    LOGI("I have been loaded. Mwuahahahaha");
    //loop until our target library is found
    do {
        sleep(1);
    } while (!isLibraryLoaded(libName));
    LOGI("I found the il2cpp lib. Address is: %lu", findLibrary(libName));
    LOGI("Hooking Player_Update");
	
    MSHookFunction((void*)getAbsoluteAddress(libName, 0xA54380), (void*)btn_ThnaksTo, (void**) &orig_btn_ThnaksTo);

    return NULL;
}

__attribute__((constructor))
void libwolve_main() {
    pthread_t ptid;
    pthread_create(&ptid, NULL, hack_thread, NULL);
}
