#include <pthread.h>
#include "KittyMemory/MemoryPatch.h"
#include "KittyMemory/Logger.h"
#import "Includes/Utils.h"

int ohk = 0;
int godmode = 0;
bool silentaim = true;

bool hack1 = false, hack2 = false, hack3 = false;

extern "C" {

int dmgmul = 1, defmul = 1;
JNIEXPORT void JNICALL
Java_uk_lgl_modmenu_Preferences_Changes(JNIEnv *env, jclass clazz, jobject obj,
                                        jint feature, jint value, jboolean boolean, jstring str) {

    // You must count your features from 0, not 1
    switch (feature) {
		case 0: // Switch 2
			hack1 = boolean;
            break;
		case 1: // Switch
			hack2 = boolean;
            break;
    }
}

JNIEXPORT jobjectArray JNICALL
Java_uk_lgl_modmenu_FloatingModMenuService_getFeatureList(
        JNIEnv *env,
        jobject activityObject) {
    jobjectArray ret;

    // Note: Do not translate the first text
    // Usage:
    // Category_(text)
    // Toggle_[feature name]
    // SeekBar_[feature name]_[min value]_[max value]
    // Spinner_[feature name]_[Items e.g. item1_item2_item3]
    // Button_[feature name]
    // Button_OnOff_[feature name]
    // InputValue_[feature name]
    const char *features[] = {
            "Toggle_1 hit kill",
			"Toggle_God mode"}; 

    int Total_Feature = (sizeof features /
                         sizeof features[0]); //Now you dont have to manually update the number everytime;

    ret = (jobjectArray) env->NewObjectArray(Total_Feature, env->FindClass("java/lang/String"),
                                             env->NewStringUTF(""));
    int i;
    for (i = 0; i < Total_Feature; i++)
        env->SetObjectArrayElement(ret, i, env->NewStringUTF(features[i]));
    return (ret);
}

}

//Character
int (*Team)(void *_this);
void (*Die)(void *_this);

void (*orig_OnHpChanged)(void *_this, int a1, int a2, int a3, int a4);
void OnHpChanged(void* _this, int a1, int a2, int a3, int a4) {
	if (_this != NULL)
	{
		int team = Team(_this);
		if (hack1 && team == 0) //Left
		{
			return;
		}
		else if (hack2 && team == 1) //Right
		{
			Die(_this);
		}
	}
	return orig_OnHpChanged(_this, a1, a2, a3, a4);
}

// ---------- Hooking ---------- //

// we will run our patches in a new thread so our while loop doesn't block process main thread
// Don't forget to remove or comment out logs before you compile it.
void *hack_thread(void *) {
	do {
        sleep(1);
    } while (!isLibraryLoaded(libName));
	
	//Character.Team
	//Character.Die
    Team = (int(*)(void *))getAbsoluteAddress(libName, string2Offset(O("0x6302D0")));
    Die = (void(*)(void *))getAbsoluteAddress(libName, string2Offset(O("0x632090")));
	
    MSHookFunction((void*)getAbsoluteAddress(libName, string2Offset(O("0x6329F4"))), (void*)OnHpChanged, (void**) &orig_OnHpChanged);
	
    return NULL;
}

__attribute__((constructor))
void libhook_main() {
	pthread_t ptid;
	pthread_create(&ptid, NULL, hack_thread, NULL);
}

// ---------- DLL Modding Example ---------- //
//Character
private void OnHpChanged(int charId, global::Team team, int oldHp, int hp)
{
	if (ModMenu.Hack1 && this.Team == global::Team.Player)
	{
		if (this.Team == global::Team.Player)
		{
			return;
		}
	}
	if (ModMenu.Hack2 && this.Team == global::Team.Enemy)
	{
		this.Die();
	}
	if (hp < oldHp)
	{
	}
	if (hp > 0)
	{
		this._hpProgressBar.Percent = this._health.Percent;
	}
	else
	{
		this.Die();
	}
}