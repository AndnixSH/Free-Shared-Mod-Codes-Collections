#define SoFile "libil2cpp.so"

void *DraGOThread(void *) {
    //LOGD("I have been loaded...");
	
    // loop until our target library is found
    ProcMap il2cppMap;
    do {
        il2cppMap = KittyMemory::getLibraryMap(SoFile);
        sleep(1);
    } while (!il2cppMap.isValid());

	#ifdef __arm__
    my_cool_Patches.Patch1 = MemoryPatch(SoFile, 0x1A2890, //CalculateSpin()
                                         "\x1E\xFF\x2F\xE1",
                                         4);
    my_cool_Patches.Patch2 = MemoryPatch(SoFile, 0x1A3AB0, //CanCatch()
                                         "\x01\x00\xA0\xE3\x1E\xFF\x2F\xE1",
                                         8);
    my_cool_Patches.Patch3 = MemoryPatch(SoFile, 0x1AEE3C, //GetChanceToAttack()
                                         "\x00\x00\xA0\xE3\x1E\xFF\x2F\xE1",
                                         8);
    my_cool_Patches.Patch4 = MemoryPatch(SoFile, 0x1AEF2C, //GetChanceToJump()
                                         "\x00\x00\xA0\xE3\x1E\xFF\x2F\xE1",
                                         8);
    my_cool_Patches.Patch5 = MemoryPatch(SoFile, 0x1AF014, //GetMoveCheckCooldownSeconds()
                                         "\x00\x00\xA0\xE3\x1E\xFF\x2F\xE1",
                                         8);
    my_cool_Patches.Patch1.Modify();
    my_cool_Patches.Patch2.Modify();
    my_cool_Patches.Patch3.Modify();
    my_cool_Patches.Patch4.Modify();
    my_cool_Patches.Patch5.Modify();
	#endif
	
	#ifdef __aarch64__
    my_cool_Patches.Patch1 = MemoryPatch(SoFile, 0x43C1D8, //CalculateSpin()
                                         "\xC0\x03\x5F\xD6",
                                         4);
    my_cool_Patches.Patch2 = MemoryPatch(SoFile, 0x43D180, //CanCatch()
                                         "\x20\x00\x80\xD2\xC0\x03\x5F\xD6",
                                         8);
    my_cool_Patches.Patch3 = MemoryPatch(SoFile, 0x446708, //GetChanceToAttack()
                                         "\x00\x00\x80\xD2\xC0\x03\x5F\xD6",
                                         8);
    my_cool_Patches.Patch4 = MemoryPatch(SoFile, 0x4467C0, //GetChanceToJump()
                                         "\x00\x00\x80\xD2\xC0\x03\x5F\xD6",
                                         8);
    my_cool_Patches.Patch5 = MemoryPatch(SoFile, 0x446870, //GetMoveCheckCooldownSeconds()
                                         "\x00\x00\x80\xD2\xC0\x03\x5F\xD6",
                                         8);
    my_cool_Patches.Patch1.Modify();
    my_cool_Patches.Patch2.Modify();
    my_cool_Patches.Patch3.Modify();
    my_cool_Patches.Patch4.Modify();
    my_cool_Patches.Patch5.Modify();
    #endif

    return NULL;
}