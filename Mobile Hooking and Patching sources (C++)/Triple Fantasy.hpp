//GameMessage - OnDamage
void (*orig_OnDamage)(void* _this, void* a1, int a2, int a3, int a4, int a5, monoString a6, bool a7);
void OnDamage(void* _this, void* a1, int a2, int a3, int a4, int a5, monoString a6, bool a7) {

	//LOGD("dmg");
	return orig_OnDamage(_this, a1, a2, 100 * a3, a4, a5, a6, a7);
}

__attribute__((constructor))
void Hook(){
	while(libBase == 0) { 
        libBase = get_libBase(libName); 
        sleep(1); 
    }   
	
	//LOGD("I have been loaded...");
	//GameMessage - OnDamage
	MSHookFunction((void *)getRealOffset(0x8F3084), (void *)OnDamage, (void **) &orig_OnDamage); 
}