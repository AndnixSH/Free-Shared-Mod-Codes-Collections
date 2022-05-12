#include "Menu/JNIOnLoadToast.h"
//public void Earn(PlayerDataTransaction transaction, int amount, bool doParticles = true, string itemId = "", bool fromGameplay = false)
void (*orig_Earn)(void* _this, monoString transaction, int amount, bool doParticles, monoString * itemId, bool fromGameplay);
void Earn(void *_this, monoString transaction, int amount, bool doParticles, monoString *itemId, bool fromGameplay) {
	
	return orig_Earn(_this, transaction, 99999, doParticles, itemId, fromGameplay); 
}

//public void Spend(PlayerDataTransaction transaction, int cost, string targetId = "", bool speculativeDataSourceUpdate = false)
void (*orig_Spend)(void *_this, monoString transaction, int cost, monoString *targetId, bool speculativeDataSourceUpdate);
void Spend(void *_this, monoString transaction, int cost, monoString *targetId, bool speculativeDataSourceUpdate) {
	
	return orig_Spend(_this, transaction, 0, targetId, speculativeDataSourceUpdate); 
}

//private void ModifyPlayerBalance(PlayerDataTransaction transaction, int delta, bool doParticles = true, bool speculativeDataSourceUpdate = false)
void (*orig_ModifyPlayerBalance)(void *_this, void* transaction, int delta, bool doParticles, bool speculativeDataSourceUpdate);
void ModifyPlayerBalance(void *_this, void* transaction, int delta, bool doParticles, bool speculativeDataSourceUpdate) {
	
	return orig_ModifyPlayerBalance(_this, transaction, 99999, doParticles, speculativeDataSourceUpdate); 
}

#define libName O("libil2cpp.so")

void hack_thread() {
	LOGD(O("Loading"));

	do {
        sleep(1);
    } while (!isLibraryLoaded(libName));
	
	#ifdef __arm__
	//Currency : ConfigAsset
	MSHookFunction(getAbsoluteAddress(libName, string2Offset(O("0x000000"))), (void *)Earn, (void **) &orig_Earn);
	MSHookFunction(getAbsoluteAddress(libName, string2Offset(O("0x000000"))), (void *)Spend, (void **) &orig_Spend);
	MSHookFunction(getAbsoluteAddress(libName, string2Offset(O("0x000000"))), (void *)ModifyPlayerBalance, (void **) &orig_ModifyPlayerBalance);
	patchOffset(getAbsoluteAddress(libName, string2Offset(O("0x000000"))), O("1E FF 2F E1"));
	patchOffset(getAbsoluteAddress(libName, string2Offset(O("0x000000"))), O("01 00 A0 E3 1E FF 2F E1"));
	//patchOffset(getAbsoluteAddress(libName, string2Offset(O("0x000000"))), "", O("Currency"), O("Spend"), 4)), O("1E FF 2F E1"));
	patchOffset(getAbsoluteAddress(libName, string2Offset(O("0x000000"))), O("FF 04 E0 E3 1E FF 2F E1"));

	//ICloudUser
	patchOffset(getAbsoluteAddress(libName, string2Offset(O("0x000000"))), O("00 00 A0 E3 1E FF 2F E1"));

	//RarityConfig
	patchOffset(getAbsoluteAddress(libName, string2Offset(O("0x000000"))), O("01 00 A0 E3 1E FF 2F E1"));
	#endif
	
	LOGD(O("Loaded"));
}