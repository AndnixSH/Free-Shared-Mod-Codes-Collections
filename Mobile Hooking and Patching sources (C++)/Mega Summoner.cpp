//Game: Mega Summoner
//Version: 1.0.40
//APK: https://play.google.com/store/apps/details?id=com.oversea.megasummoner

//Hook c++
float GetstrengthGrowByStar(void *instance) {
	return 999999.0f;
}

float GetIntelligenceGrowByStar(void *instance) {
	return 999999.0f;
}

int (*roleIndex)(void* instance) = (int(*)(void *))getAbsoluteAddress("libil2cpp.so",0x1807E78);

void (*orig_ChangePropertity)(void* instance, int a1, long a2, void* a3);
void ChangePropertity(void *instance, int a1, long a2, void* a3) {
	int rindex = roleIndex(instance);
	if (rindex > 5){
		return orig_ChangePropertity(instance, a1, a2 * 50, a3);
	}
}