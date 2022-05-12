#define targetLibName OBFUSCATE("libil2cpp.so")
// we will run our patches in a new thread so "sleep" doesn't block process main thread
void hack_thread() {
    LOGD(OBFUSCATE("I have been loaded 2..."));
	
	do {
        sleep(1);
    } while (!isLibraryLoaded(libName));
	
	//usr.model.UsrDataModel				 
	//usr.model.UsrDataModel.Coin
	patchOffset(0x000000, OBFUSCATE("FF 04 E0 E3 1E FF 2F E1"));
	
	//IsNoAd
	patchOffset(0x000000, OBFUSCATE("01 00 A0 E3 1E FF 2F E1"));

	//IsNoAllAD
	patchOffset(0x000000, OBFUSCATE("01 00 A0 E3 1E FF 2F E1"));

	//usr.model.UsrDataModel.Power
	patchOffset(0x000000, OBFUSCATE("FF 0F 0F E3 1E FF 2F E1"));

	///AdModel.AdState
	patchOffset(0x000000, OBFUSCATE("02 00 A0 E3 1E FF 2F E1"));

	///ad.service.AdLoadService.Load
	patchOffset(0x000000, OBFUSCATE("1E FF 2F E1"));
	
	///ad.service.AdLoadService.LoadRewardAD
	patchOffset(0x000000, OBFUSCATE("1E FF 2F E1"));
	patchOffset(0x000000, OBFUSCATE("1E FF 2F E1"));
}