bool (*orig_IsApplyDamage)(void* _this);
bool IsApplyDamage(void* _this) {
	if (_this)
	{	
		return true;
	}
	return orig_IsApplyDamage(_this); 
}

void (*orig_AddFishDamage)(void* _this, float _damage);
void AddFishDamage(void* _this, float _damage) {
	
	_damage * 1000;
	
	return orig_AddFishDamage(_this, _damage); 
}

float (*orig_GetNormalDamage)(void* _this);
float GetNormalDamage(void* _this) {
	
	return orig_GetNormalDamage(_this) * 1000; 
}

void (*orig_FF_InGameTension__Update)(void* _this);
void FF_InGameTension__Update(void* _this) {
    
	//private tb_FinalPinInfoEx tbFinalPinInfo;
    int tbFinalPinInfo = *(int*)((uint64_t)_this + 0xA4);
    if (tbFinalPinInfo != NULL)
    {
		//tb_FinalPinInfo
        *(int*)((uint32_t)tbFinalPinInfo + 0x10) = 3; //public int Result
		*(float*)((uint32_t)tbFinalPinInfo + 0x1C) = 99999.0; //public float PinDamageMultiple;
    }
    
    return orig_FF_InGameTension__Update(_this); 
}

void FirstFishingHook(){
	#ifdef __arm__
	MSHookFunction((void *)getRealOffset(0x1455C34), (void *)AddFishDamage, (void **) &orig_AddFishDamage);
	MSHookFunction((void *)getRealOffset(0x145B800), (void *)IsApplyDamage, (void **) &orig_IsApplyDamage);
	MSHookFunction((void *)getRealOffset(0x145B480), (void *)GetNormalDamage, (void **) &orig_GetNormalDamage);
	MSHookFunction((void *)getRealOffset(0x1462764), (void *)FF_InGameTension__Update, (void **) &orig_FF_InGameTension__Update);
	#endif
}