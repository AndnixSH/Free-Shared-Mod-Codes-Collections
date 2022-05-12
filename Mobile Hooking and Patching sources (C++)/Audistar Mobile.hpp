	// [FieldOffset(Offset = "0x0")]
	// EInputResult_None,
	// [FieldOffset(Offset = "0x0")]
	// EInputResult_Miss,
	// [FieldOffset(Offset = "0x0")]
	// EInputResult_Good,
	// [FieldOffset(Offset = "0x0")]
	// EInputResult_Great,
	// [FieldOffset(Offset = "0x0")]
	// EInputResult_Perfect,
	// [FieldOffset(Offset = "0x0")]
	// EInputResult_MasterPerfect,
	// [FieldOffset(Offset = "0x0")]
	// EInputResult_Max

//TraditionMode
int (*orig_CalculateScore)(void* _this, int a1);
int CalculateScore(void *_this, int a1) {
	a1 = 5;
	orig_CalculateScore(_this, a1);
}

// MW.Client.UI.DanceMatchBase
int (*orig_GetInputBeatJudgeResult)(void* _this);
int GetInputBeatJudgeResult(void *_this) {
	return 5;		
}

void (*orig_OnTouchBtn)(void* _this, void* a1, int a2);
void OnTouchBtn(void *_this, void* a1, int a2) {
	return orig_OnTouchBtn(_this, a1, 5);		
}

void (*orig_DynConsecutiveHitsEvent_OnPress)(void* _this, bool a1);
void DynConsecutiveHitsEvent_OnPress(void *_this, bool a1) {
	a1 = true;
	return orig_DynConsecutiveHitsEvent_OnPress(_this, a1);		
}

void (*orig_DynHitEvent_OnPress)(void* _this, bool a1);
void DynHitEvent_OnPress(void *_this, bool a1) {
	a1 = true;
	return orig_DynHitEvent_OnPress(_this, a1);		
}

void (*orig_DynHoldEvent_OnPress)(void* _this, bool a1);
void DynHoldEvent_OnPress(void *_this, bool a1 ) {
	a1 = true;
	return orig_DynHoldEvent_OnPress(_this, a1);		
}

void (*orig_DynSliderEvent_Press)(void* _this, bool a1, char a2);
void DynSliderEvent_Press(void *_this, bool a1, char a2) {
	a1 = true;
	return orig_DynSliderEvent_Press(_this, a1, a2);		
}

__attribute__((constructor))
void libhook_main() {
	LOGD("load...");
	
	while(libBase == 0) { 
        libBase = get_libBase(libName); 
        sleep(1); 
    }   
	
//	MSHookFunction((void *)getRealOffset(0x1133828), (void *)CalculateScore, (void **) &orig_CalculateScore);
	MSHookFunction((void *)getRealOffset(0x1133FF8), (void *)GetInputBeatJudgeResult, (void **) &orig_GetInputBeatJudgeResult);
	MSHookFunction((void *)getRealOffset(0x1CC8628), (void *)OnTouchBtn, (void **) &orig_OnTouchBtn);
	MSHookFunction((void *)getRealOffset(0x1CE34CC), (void *)DynConsecutiveHitsEvent_OnPress, (void **) &orig_DynConsecutiveHitsEvent_OnPress);
	MSHookFunction((void *)getRealOffset(0x1CE45AC), (void *)DynHitEvent_OnPress, (void **) &orig_DynHitEvent_OnPress);
	MSHookFunction((void *)getRealOffset(0x1CE4BEC), (void *)DynHoldEvent_OnPress, (void **) &orig_DynHoldEvent_OnPress);
	MSHookFunction((void *)getRealOffset(0x1CE77A0), (void *)DynSliderEvent_Press, (void **) &orig_DynSliderEvent_Press);
	
	//TouchFaild
	PatchAddress((unsigned char *)getRealOffset(0x1CCB48C), (unsigned char *) "\x1E\xFF\x2F\xE1", 4); 

	if (sub_3216) {
        exit(999);
    }
}