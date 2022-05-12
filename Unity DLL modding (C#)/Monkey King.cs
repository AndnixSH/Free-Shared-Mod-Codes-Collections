//Game: Monkey King-Demon Invasion
//Version: 1.3.11
//APK: https://apkpure.com/monkey-king-demon-invasion/com.mngo.xiyoujue.enjoygame

//Hook are needed

//Class: HeroData
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