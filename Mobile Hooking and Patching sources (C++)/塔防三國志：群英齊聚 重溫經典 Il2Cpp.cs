//Game: 塔防三國志 群英齊聚 重溫經典
//Version: 4.6.01
//APK: https://apkpure.com/%E5%A1%94%E9%98%B2%E4%B8%89%E5%9C%8B%E5%BF%97%EF%BC%9A%E7%BE%A4%E8%8B%B1%E9%BD%8A%E8%81%9A-%E9%87%8D%E6%BA%AB%E7%B6%93%E5%85%B8/com.bigbull.tdsgtw

#define libName "libil2cpp.so"

bool (*get_IsMyTeam)(void *_this) = (bool(*)(void *)) getAbsoluteAddress(libName, 0x47C2F8); 

void (*orig_ModifyHp)(void *_this, int value);
void ModifyHp(void* _this, int value) {
	if(_this != NULL)
	{
		int camp = *(int*)((uint64_t)_this + 0x28); //public CampType camp;
		if (camp == 0){
			value * dmgmul;
		}
		if (camp == 1){
			value / defmul;
		}
	}
	return orig_ModifyHp(_this, value);
}

bool (*orig_UpdateSkill)(void *_this, float value);
bool UpdateSkill(void* _this, float value) {
	if(_this != NULL && hack1)
	{ 
		*(float *) ((uint64_t) _this + 0x20) = 0; // consumeMana
		*(float *) ((uint64_t) _this + 0x24) = 0; // skillCooldown
		*(float *) ((uint64_t) _this + 0x28) = 0; // CDTime
	}

	return orig_UpdateSkill(_this, value);
}

//ActorInfo
MSHookFunction((void*)getAbsoluteAddress(libName, 0x1200388), (void*)ModifyHp, (void**) &orig_ModifyHp);
MSHookFunction((void*)getAbsoluteAddress(libName, 0xA9E79C), (void*)UpdateSkill, (void**) &orig_UpdateSkill);

/// MonsterAI
// CanAttack
my_cool_Patches.Patch1 = MemoryPatch::createWithHex(libName, 0x49086C, "00 00 A0 E3 1E FF 2F E1");

// AttackOrAssault
my_cool_Patches.Patch2 = MemoryPatch::createWithHex(libName, 0x4913D8, "00 00 A0 E3 1E FF 2F E1");

// MoveOnPortal
my_cool_Patches.Patch3 = MemoryPatch::createWithHex(libName, 0x48E5D0, "00 00 A0 E3 1E FF 2F E1");

// MoveOnPath
my_cool_Patches.Patch4 = MemoryPatch::createWithHex(libName, 0x48CDBC, "00 00 A0 E3 1E FF 2F E1");

// BuildActorInfo
my_cool_Patches.Patch5 = MemoryPatch::createWithHex(libName, 0x48B5C4, "1E FF 2F E1");