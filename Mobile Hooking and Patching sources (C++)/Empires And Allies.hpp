#include <pthread.h>
#include "KittyMemory/MemoryPatch.h"
#include "KittyMemory/Logger.h"
#import "Includes/Utils.h"

bool hack1 = false, hack2 = false, hack3 = false;

extern "C" {
	
int dmgmul = 1, defmul = 1;
JNIEXPORT void JNICALL
Java_uk_lgl_modmenu_FloatingModMenuService_Changes(
        JNIEnv *env,
        jobject activityObject,
        jint feature,
        jint value) {

    // You must count your features from 0, not 1
    switch (feature) {
		case 0: // Switch 2
			hack1 = !hack1;
            break;
		case 1: // Switch
			hack2 = !hack2;
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

// public enum Team
		// {
			//0 Defender,
			//1 Attacker,
			//2 HackedDefender,
			//3 AllTeams
		// }

#define libName "libil2cpp.so"

void (*orig_DeductHealthAndArmor)(void *_this, int a1, void *a2);
void DeductHealthAndArmor(void* _this, int a1, void *a2) {
	if (_this != NULL)
	{
		int team = *(int*)((uint32_t)_this + 0x64); //public BoardEntity.Team team;
		if (hack1 && team == 0) //Defender
		{
			*(int*)((uint32_t)_this + 0xE4) = 0; //protected int health;
			*(int*)((uint32_t)_this + 0xF0) = 99999; //protected int damageDealt;
		}
		else if (hack2 && team == 1) //Attacker
		{
			*(int*)((uint32_t)_this + 0xE4) = 99999; //protected int health;
			*(int*)((uint32_t)_this + 0xF0) = 0; //protected int damageDealt;
		}
	}
	return orig_DeductHealthAndArmor(_this, a1, a2);
}



// we will run our patches in a new thread so our while loop doesn't block process main thread
// Don't forget to remove or comment out logs before you compile it.
void *hack_thread(void *) {
	//LOGD("load");
    // loop until our target library is found
    ProcMap il2cppMap;
    do {
		//LOGD(libName);
        il2cppMap = KittyMemory::getLibraryMap(libName);
        sleep(1);
    } while (!il2cppMap.isValid());
	//LOGD("abe");
	
	//BoardEntity
    MSHookFunction((void*)getAbsoluteAddress(libName, 0x1754750), (void*)DeductHealthAndArmor, (void**) &orig_DeductHealthAndArmor);
	
    return NULL;
}

__attribute__((constructor))
void libhook_main() {
	pthread_t ptid;
	pthread_create(&ptid, NULL, hack_thread, NULL);
}

// ---------- DLL modding example ---------- //

//BoardEntity 
protected void DeductHealthAndArmor(int damage, Entity source = null)
{
	if (this.team == BoardEntity.Team.Defender)
	{
		this.health = 0;
		this.damageDealt = 99999;
	}
	if (this.team == BoardEntity.Team.Attacker)
	{
		this.health = this.MaxHealth;
		this.damageDealt = 0;
	}
	if (base.CurrentBattle != null && this.HasShieldBuff && source != this)
	{
		this.TrackDamageShielded(damage);
		return;
	}
	if (this.armorHealth > 0)
	{
		int num = (damage <= this.armorHealth) ? damage : this.armorHealth;
		this.armorHealth -= num;
		damage -= num;
	}
	this.health -= ((damage <= this.health) ? damage : this.health);
}