// we will run our patches in a new thread so "sleep" doesn't block process main thread
void *hack_thread(void *) {
	
    LOGD(O("loading..."));
	libName = O("libapp.so");

    do {
        sleep(1);
    } while (!isLibraryLoaded(libName));
	
	LOGD(libName);
	
	#ifdef __arm__
	patchOffset(libName, string2Offset("0x167878"), O("00 20 70 47")); //Discost
	patchOffset(libName, string2Offset("0xA99988"), O("00 20 70 47")); //Discost
	patchOffset(libName, string2Offset("0xAD8860"), O("01 20 70 47")); //NoCoolDown
    #endif

    #ifdef __aarch64__
	patchOffset(libName, string2Offset("0x29F6BC"), O("00 00 80 D2 C0 03 5F D6"));
	patchOffset(libName, string2Offset("0xEEB134"), O("00 00 80 D2 C0 03 5F D6"));
	patchOffset(libName, string2Offset("0xF4AF48"), O("20 00 80 D2 C0 03 5F D6"));
	#endif

	LOGD(O("loaded..."));

    return NULL;
} 