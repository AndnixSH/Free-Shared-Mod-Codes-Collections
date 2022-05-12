#define SoFile "libil2cpp.so"

void *AOVThread(void *) {
	
    ProcMap il2cppMap;
    do {
        il2cppMap = KittyMemory::getLibraryMap(SoFile);
        sleep(1);
    } while (!il2cppMap.isValid());

	hexPatches.Patch1 = MemoryPatch(SoFile, 0x1E9114C, //NucleusDrive.Logic.LActorRoot - Visible
                                             "\x01\x00\xA0\xE3\x1E\xFF\x2F\xE1",
                                             8); 
	// hexPatches.Patch2 = MemoryPatch(SoFile, 0x199B220, //ActorLinker - IsInSight
                                             // "\x01\x00\xA0\xE3\x1E\xFF\x2F\xE1",
                                             // 90); 
	// hexPatches.Patch3 = MemoryPatch(SoFile, 0x1C9EE88, //Horizon - IsInSight
                                             // "\x01\x00\xA0\xE3\x1E\xFF\x2F\xE1",
                                             // 90); 
	// hexPatches.Patch4 = MemoryPatch(SoFile, 0x1995760, //ActorLinker - get_Visible
                                             // "\x01\x00\xA0\xE3\x1E\xFF\x2F\xE1",
                                             // 8); 
    hexPatches.Patch1.Modify();
    //hexPatches.Patch2.Modify();
    //hexPatches.Patch3.Modify();
	// LOGD("KM loaded...");
	// LOGD("Current Bytes: %s", hexPatches.Patch1.ToHexString().c_str());
	// LOGD("Current Bytes: %s", hexPatches.Patch2.ToHexString().c_str());
	// LOGD("Current Bytes: %s", hexPatches.Patch3.ToHexString().c_str());
	// LOGD("Current Bytes: %s", hexPatches.Patch4.ToHexString().c_str());
	if (sub_3216) {
        exit(999);
    }
    return NULL;
}

//LActorRoot - Visible
bool (*orig_LActorRoot_Visible)(void* _this);
bool LActorRoot_Visible(void* _this) {
	LOGD("true...");
	return true;
}

//ActorLinker - get_Visible
bool (*orig_get_Visible)(void* _this);
bool get_Visible(void* _this) {
	LOGD("2 true...");
	return true;
}


//MiniMapHeroInfo_LS - Show
void (*orig_Show_LS)(void* _this, bool bShow);
void Show_LS(void* _this, bool bShow) {
	LOGD(" true...");
	bShow = true;
	return orig_Show_LS(_this, bShow);
}

//MiniMapHeroInfo - Show
void (*orig_Show)(void* _this, bool bShow);
void Show(void *_this, bool bShow) {
	bShow = true;	
	return orig_Show(_this, bShow);
}

void AOVHook(){
	//MiniMapHeroInfo_LS - Show
	MSHookFunction((void *)getRealOffset(0x1DC947C), (void *)Show_LS, (void **) &orig_Show_LS);
	//MiniMapHeroInfo - Show
	MSHookFunction((void *)getRealOffset(0x1DC7550), (void *)Show, (void **) &orig_Show);
	//LActorRoot - Visible
	MSHookFunction((void *)getRealOffset(0x1CA1C4C), (void *)LActorRoot_Visible, (void **) &orig_LActorRoot_Visible);
	//ActorLinker - get_Visible
	MSHookFunction((void *)getRealOffset(0x1995760), (void *)get_Visible, (void **) &orig_get_Visible);
	LOGD("Hooked...");
}