//---------- Animus - Harbinger ----------//
//Darealpanda

//UnityEngine Component
bool (*CompareTag)(void *_this, monoString tag) = (bool(*)(void *, monoString))getRealOffset(0x156886C);

bool (*orig_IsInvincible)(void* _this);
bool IsInvincible(void* _this) {
	
	//bool invincible = *(bool*)((uint64_t)_this + 0x18);
	monoString *strtag = YourStringConverter(NULL, "Player");
	bool comptag = CompareTag(_this, *strtag);
	if (comptag)
	{
		return true;
	}
	else{
		return false;
	}
	return orig_IsInvincible(_this); 
}

void AnimusHook(){
	//SVInventory - GetCount
	Hook((void *)getRealOffset(0xEC356C), (void *)GetCount, (void **) &orig_GetCount);
	//SVFastFinish - GetFastFinishCostWithOverride
	Hook((void *)getRealOffset(0x12DE3C4), (void *)GetFastFinishCostWithOverride, (void **) &orig_GetFastFinishCostWithOverride);
	//ItemManager - GetItemCost
	Hook((void *)getRealOffset(0xC38F98), (void *)GetItemCost, (void **) &orig_GetItemCost);
	//SVInventory - Remove
	//	PatchAddress((unsigned char *)getRealOffset(0xE9FA10), (unsigned char *) "\x1E\xFF\x2F\xE1", 4); 
}