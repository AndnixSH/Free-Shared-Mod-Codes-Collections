#include <jni.h>
#include <android/log.h>
#include <Substrate/CydiaSubstrate.h>
#include <memory.h>
#include <dlfcn.h>
#include <cstdio>
#include <cstdlib>
#import "Utils.h"
#include <pthread.h>
#define APPNAME "Hooking"

int GameID;

//---------- Tiny Heroes ----------//

bool (*get_IsMyself)(void *_this) = (bool(*)(void *))getRealOffset(0x13C7874);
bool (*get_IsMyTeam)(void *_this) = (bool(*)(void *))getRealOffset(0x13C8AAC);

int (*orig_get_CurrentHP)(void* _this);
int get_CurrentHP(void* _this) {

	__android_log_print(ANDROID_LOG_VERBOSE, APPNAME, "check if yourself", 1);
	bool IsMySelf = get_IsMyself(_this);
	bool IsMyTeam = get_IsMyTeam(_this);
	__android_log_print(ANDROID_LOG_VERBOSE, APPNAME, "return 999", 1);
	if(IsMySelf && IsMyTeam)
	{
		return 99999999;
	}
	__android_log_print(ANDROID_LOG_VERBOSE, APPNAME, "return orig", 1);
	return orig_get_CurrentHP(_this); 
}

int (*orig_get_MaxHP)(void* _this);
int get_MaxHP(void* _this) {
	
	bool IsMySelf = get_IsMyself(_this);
	bool IsMyTeam = get_IsMyself(_this);
	
	if(IsMySelf && IsMyTeam)
	{
		return 99999999;
	}
	
	return orig_get_MaxHP(_this); 
}

__attribute__((constructor))
void libhook_main() {
	__android_log_print(ANDROID_LOG_VERBOSE, APPNAME, "check il2cpp", 1); //log to logcat. useful to diagnose the issues

	//Il2cpp must be loaded first, otherwise it will get stuck infinitely. Do not use Auto toaster yet
    while(libBase == 0) { 
        libBase = get_libBase(libName); 
        sleep(1); 
    }   
	__android_log_print(ANDROID_LOG_VERBOSE, APPNAME, "done. hooking", 1);
	
	MSHookFunction((void *)getRealOffset(0x13CAFBC), (void *)get_CurrentHP, (void **) &orig_get_CurrentHP);
	MSHookFunction((void *)getRealOffset(0x13CAFC4), (void *)get_MaxHP, (void **) &orig_get_MaxHP);
	
	__android_log_print(ANDROID_LOG_VERBOSE, APPNAME, "success", 1);
}

//---------- DLL modding example ----------
public int MaxHP
{
	get
	{
		if (this.IsMyself && this.IsMyTeam)
		{
			return 99999999;
		}
		return this.mBattleData.mHp * this.mStaticInfo.RobotHpScale100 / 100 * this.mDominatorScale100 / 100 * (100 + this.mMaxHpBuffNums) / 100;
	}
}