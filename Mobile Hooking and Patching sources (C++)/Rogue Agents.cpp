#include <jni.h>
//#include <android/log.h>
#include <Substrate/CydiaSubstrate.h>
#include <memory.h>
#include <dlfcn.h>
#include <cstdio>
#include <cstdlib>
#import "Utils.h"

void (*old_InitializePlayerForMatchb__47_0)(void *MatchStateManager, bool validated);
void _InitializePlayerForMatchb__47_0(void *MatchStateManager, bool validated) {
	validated = true;
	return old_InitializePlayerForMatchb__47_0(MatchStateManager, validated);

}

bool(*old_get_unlocked)(void *CharacterSkin);
bool get_unlocked(void *CharacterSkin) {

   return true;
    
}

bool(*old_get_isUnlocked)(void *WeaponScriptableObject);
bool get_isUnlocked(void *WeaponScriptableObject) {

   return true;
    
}

void (*old_NotValidated) (void *MatchStateManager);
void NotValidated(void *MatchStateManager) {
	
	 return;
	 
}

void (*old_LeaveRoom_PhotonNetwork)(void *PhotonNetwork, bool becomeInactive);
void LeaveRoom_PhotonNetwork(void *PhotonNetwork, bool becomeInactive) {
	
	 return;
	 
	
}

__attribute__((constructor))
void libhook_main() {

    while(libBase == 0) { 
        libBase = get_libBase(libName); 
        sleep(1); 
    }   
	MSHookFunction((void *)getRealOffset(0x10C4B90), (void *)_InitializePlayerForMatchb__47_0, (void **) &old_InitializePlayerForMatchb__47_0);
	MSHookFunction((void *)getRealOffset(0x10C324C), (void *)NotValidated, (void **) &old_NotValidated);
	MSHookFunction((void *)getRealOffset(0x18DD2B8), (void *)LeaveRoom_PhotonNetwork, (void **) &old_LeaveRoom_PhotonNetwork);
	MSHookFunction((void *)getRealOffset(0x106E00C), (void *)get_unlocked, (void **) &old_get_unlocked);
	MSHookFunction((void *)getRealOffset(0x1346844), (void *)get_isUnlocked, (void **) &old_get_isUnlocked);
    
	

		
}
