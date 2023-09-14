// we will run our patches in a new thread so "sleep" doesn't block process main thread
#define targetLibName "libil2cpp.so"
void hack_thread() {
    //
	do {
        sleep(1);
    } while (!isLibraryLoaded(targetLibName));
	
	sleep(4);
	
	//SharkStats			 
	//Currency
	patchOffset([offset here], "FF 04 E0 E3 1E FF 2F E1");
	//PremiumCurrency
	patchOffset([offset here], "FF 0F 0F E3 1E FF 2F E1");
}


