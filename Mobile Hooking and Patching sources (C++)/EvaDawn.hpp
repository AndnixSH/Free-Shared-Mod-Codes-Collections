#define SoFile "libil2cpp.so"
bool hack1, hack2, hack3, hack4, hack5, hack6, hack7, hack8, hack9, hack10;

// fancy struct for patches

void* PatchThread(void*) {
	//LOGD("I have been loaded...");

	// loop until our target library is found
	ProcMap il2cppMap;
	do {
		il2cppMap = KittyMemory::getLibraryMap(SoFile);
		sleep(1);
	} while (!il2cppMap.isValid());

	return NULL;
}

void PatchHex()
{
	//ConfMonster - atk - god mode
	if (hack1) {
#ifdef __arm__
		hexPatches.Patch1 = MemoryPatch(SoFile, 0x111D964,
			"\x00\x00\xA0\xE3\x1E\xFF\x2F\xE1",
			8);
#endif

#ifdef __aarch64__
		hexPatches.Patch1 = MemoryPatch(SoFile, 0x163C0DC,
			"\x00\x00\x80\xB2\xC0\x03\x5F\xD6",
			8);
#endif

		hexPatches.Patch1.Modify();
	}
	else {
		hexPatches.Patch1.Restore();
	}

	//DProp - atk - higk atk
	if (hack2) {
#ifdef __arm__
		hexPatches.Patch2 = MemoryPatch(SoFile, 0x1DE67D0,
			"\xFF\x04\xE0\xE3\x1E\xFF\x2F\xE1",
			8);
#endif

#ifdef __aarch64__
		hexPatches.Patch2 = MemoryPatch(SoFile, 0x216005C,
			"\xE0\x5F\x40\xB2\xC0\x03\x5F\xD6",
			8);
#endif

		hexPatches.Patch2.Modify();
	}
	else {
		hexPatches.Patch2.Restore();
	}

	//ConfSkillInfo - rageGet - max atk range
	if (hack3) {
#ifdef __arm__
		hexPatches.Patch3 = MemoryPatch(SoFile, 0xB01E8C,
			"\xFF\x04\xE0\xE3\x1E\xFF\x2F\xE1",
			8);
#endif

#ifdef __aarch64__
		hexPatches.Patch3 = MemoryPatch(SoFile, 0x10F4E88,
			"\xE0\x5F\x40\xB2\xC0\x03\x5F\xD6",
			8);
#endif

		hexPatches.Patch3.Modify();
	}
	else {
		hexPatches.Patch3.Restore();
	}

	//ConfSkill - cdTime - no cd
	if (hack4) {
#ifdef __arm__
		hexPatches.Patch4 = MemoryPatch(SoFile, 0xB00A98,
			"\x00\x00\xA0\xE3\x1E\xFF\x2F\xE1",
			8);
#endif

#ifdef __aarch64__
		hexPatches.Patch4 = MemoryPatch(SoFile, 0x10F3D88,
			"\x00\x00\x80\xB2\xC0\x03\x5F\xD6",
			8);
#endif

		hexPatches.Patch4.Modify();
	}
	else {
		hexPatches.Patch4.Restore();
	}
}

__attribute__((constructor))
void libhook_main() {
	//LOGD("I have been loaded...");

	// while(libBase == 0) { 
		// libBase = get_libBase(libName); 
		// sleep(1); 
	// }   

	pthread_t ptid;
	pthread_create(&ptid, NULL, PatchThread, NULL);
}