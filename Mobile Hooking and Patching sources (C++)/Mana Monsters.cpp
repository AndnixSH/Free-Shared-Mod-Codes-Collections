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

//---------- Mana Monsters ----------//

int (*Orientation)(void *_this) = (int(*)(void *))getRealOffset(0xA9A124);

// public enum CombatOrientation
// {
	// // Fields
	// public int value__; // 0x0
	// public const CombatOrientation Left = 0;
	// public const CombatOrientation Right = 1;
	// public const CombatOrientation Invalid = 2;
// }
//Enums are int
//Only damageAmount has been hooked
void (*orig_TakeDamage)(void* _this, float damageAmount, int hitCount, int FlyingNumberType, bool ignoreElement, int ElementType);
void TakeDamage(void* _this, float damageAmount, int hitCount, int FlyingNumberType, bool ignoreElement, int ElementType) {
	
	bool orientation = Orientation(_this);
	
	if(orientation == 1) //Right
	{	
		damageAmount *= 99;
	}
	else
	{
		damageAmount = 0;
	}
	return orig_TakeDamage(_this, damageAmount, hitCount, FlyingNumberType, ignoreElement, ElementType); 
}

__attribute__((constructor))
void libhook_main() {
	__android_log_print(ANDROID_LOG_VERBOSE, APPNAME, "check il2cpp", 1); //log to logcat. useful to diagnose the issues
	GameID = 2; //I like to have that ID so I can have multiple games in one .cpp

	//Il2cpp must be loaded first, otherwise it will get stuck infinitely. Do not use Auto toaster yet
    while(libBase == 0) { 
        libBase = get_libBase(libName); 
        sleep(1); 
    }   
	__android_log_print(ANDROID_LOG_VERBOSE, APPNAME, "done. hooking", 1);
	
	MSHookFunction((void *)getRealOffset(0xA9B7B8), (void *)TakeDamage, (void **) &orig_TakeDamage);

	__android_log_print(ANDROID_LOG_VERBOSE, APPNAME, "success", 1);
}

//---------- DLL modding example ----------
//TagTeamCombatant - TakeDamage
public override void TakeDamage(float damageAmount, FlyingNumberType damageType = FlyingNumberType.Basic, bool ignoreElement = false, ElementType damageElement = ElementType.None)
{
	damageAmount *= num;
	if (ModMenu.toggle2 && this.Orientation == CombatOrientation.Left)
	{
		damageAmount = 0f;
	}
	else if (ModMenu.toggle1 && this.Orientation != CombatOrientation.Left)
	{
		damageAmount *= 99f;
	}
	
	if (this.Orientation == CombatOrientation.Left)
}