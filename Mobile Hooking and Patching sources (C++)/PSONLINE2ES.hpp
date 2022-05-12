void *O2ESThread(void *) {
    //LOGD("I have been loaded...");
	
    // loop until our target library is found
    ProcMap il2cppMap;
    do {
        il2cppMap = KittyMemory::getLibraryMap(libName);
        sleep(1);
    } while (!il2cppMap.isValid());

	#ifdef __aarch64__
	//BattleUtility - CalcDamage(
	patchOffset(libName, string2Offset(O("0x160A7B8")), O("E0 5F 40 B2 C0 03 5F D6"));
	
	//PlayerActBattle.IsInvincible()
	patchOffset(libName, string2Offset(O("0x118C058")), O("20 00 80 D2 C0 03 5F D6"));
	#endif
	
	#ifdef __arm__
	//BattleUtility - CalcDamage(
	patchOffset(libName, string2Offset(O("0xE590CC")), O("FF 04 E0 E3 1E FF 2F E1"));
	
	//PlayerActBattle.IsInvincible()
	patchOffset(libName, string2Offset(O("0x9077FC")), O("01 00 A0 E3 1E FF 2F E1"));
    #endif
	
	LOGD(O("Lib loaded"));
	
    return NULL;
}

__attribute__((constructor))
void libhook_main() {
	//LOGD("I have been loaded...");
	pthread_t ptid;
    pthread_create(&ptid, NULL, O2ESThread, NULL);
}