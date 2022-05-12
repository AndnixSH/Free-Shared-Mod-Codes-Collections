int (*orig_Hp)(void* _this);
int Hp(void* _this) {
    
    int PositionData = *(int*)((uint64_t)_this + 0x14);
    if (PositionData != NULL)
    {
        bool AisPlayer = *(int*)((uint64_t)PositionData + 0x8);
		if (AisPlayer)
		{
			__android_log_print(ANDROID_LOG_VERBOSE, APPNAME, "true", 1);
			return 99999;
		}
		else{
			__android_log_print(ANDROID_LOG_VERBOSE, APPNAME, "false", 1);
			
		}
    }
    
    return orig_Hp(_this); 
}

int (*orig_Sp)(void* _this);
int Sp(void* _this) {
    
    int PositionData = *(int*)((uint64_t)_this + 0x14);
    if (PositionData != NULL)
    {
        bool AisPlayer = *(int*)((uint64_t)PositionData + 0x8);
		if (AisPlayer)
		{
			return 99999;
		}
		
    }
    
    return orig_Sp(_this); 
}

void jp.fg.precatus {
	MSHookFunction((void *)getRealOffset(0x8D96D0), (void *)Hp, (void **) &orig_Hp);
	MSHookFunction((void *)getRealOffset(0x8D96F4), (void *)Sp, (void **) &orig_Sp);
}