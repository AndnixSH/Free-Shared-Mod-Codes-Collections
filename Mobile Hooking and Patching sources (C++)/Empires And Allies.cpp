//Game: Empires and Allies
//Version: 1.98.1333993.production
//APK: https://play.google.com/store/apps/details?id=com.zynga.empires2

//Used LGL Mod Menu

void (*orig_DeductHealthAndArmor)(void *_this, int a1, void *a2);
void DeductHealthAndArmor(void* _this, int a1, void *a2) {
	if (_this != NULL)
	{
		//public BoardEntity.Team team;
		int team = *(int*)((uint32_t)_this + 0x64); //Unlink here
		if (hack1 && team == 0) //Left
		{
			*(int*)((uint32_t)_this + 0xE4) = 0;
			*(int*)((uint32_t)_this + 0xF0) = 99999;
		}
		else if (hack2 && team == 1) //Right
		{
			*(int*)((uint32_t)_this + 0xE4) = 99999;
			*(int*)((uint32_t)_this + 0xF0) = 0;
		}
	}
	return orig_DeductHealthAndArmor(_this, a1, a2);
}

void *hack_thread(void *) {
    ProcMap il2cppMap;
    do {
        il2cppMap = KittyMemory::getLibraryMap(libName);
        sleep(1);
    } while (!il2cppMap.isValid());
	
	//BoardEntity
    MSHookFunction((void*)getAbsoluteAddress(libName, 0x1754750), (void*)DeductHealthAndArmor, (void**) &orig_DeductHealthAndArmor);
	
    return NULL;
}