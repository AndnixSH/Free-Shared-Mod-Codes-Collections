// public abstract class BattleEntity : InventoryItem // TypeDefIndex: 6497
// {
	// // RVA: 0xED3A50 Offset: 0xED3A50 VA: 0xED3A50
	// public Team.TeamType get_TeamType() { }
	
	// //Player = 0
	// //Opponent = 1
// }

// public class MissionInstance : BaseMissionData // TypeDefIndex: 6642
// {
	// // RVA: 0x134B8B4 Offset: 0x134B8B4 VA: 0x134B8B4
	// public void applyDamage(BattleEntity target, AttackPacket packet, AnimationSequenceItem seqItem, AttackRecord attackRecord) { }
// }

int dmgmul = 1, defmul = 1;
bool hack1 = false, hack2 = false, hack3 = false;

extern "C" {
JNIEXPORT void JNICALL
Java_uk_lgl_modmenu_Preferences_Changes(JNIEnv *env, jclass clazz, jobject obj,
                                        jint feature, jint value, jboolean boolean, jstring str) {
			
	LOGD(O("Feature: = %d | Value: = %d | Bool: = %d"), feature, value, boolean);

    // You must count your features from 0, not 1
	if (feature == 1) {
        hack1 = boolean;
    }
	if (feature == 2) {
        if (value >= 1)
			{
				dmgmul = value;
			}
    }
	if (feature == 3) {
        if (value >= 1)
			{
				defmul = value;
			}
    }
	if (feature == 4) {
       hack3 = boolean;
    }
}

JNIEXPORT jobjectArray JNICALL
Java_uk_lgl_modmenu_FloatingModMenuService_getFeatureList(
        JNIEnv *env,
        jobject activityObject) {
    jobjectArray ret;
	featureListValid = true;
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
			O("Category_Do not use mods while in tutorial"),
            O("Toggle_God mode"),
            O("SeekBar_Dmg multiplier_0_1000"),
            O("SeekBar_Def multiplier_0_1000"),
			O("Toggle_Instant win")}; 

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

int (*TeamType)(void *_this);

bool (*instantWinBattle)(void *_this, bool a1);

bool (*instantWinStage)(void *_this); 

void (*orig_applyDamage)(void *_this, void *target, void *AttackPacket,void *a3,void *a4);
void applyDamage(void* _this, void *target, void *AttackPacket,void *a3,void *a4) {
	if (_this != NULL)
	{
		float dmgDealt = *(float*)((uint32_t)AttackPacket + 0x50);
		int team = TeamType(target);
		if (team == 0){
			*(float*)((uint32_t)AttackPacket + 0x50) = dmgDealt /= defmul; //public float actualDamageDealt;
		}
		if (team == 1){
			*(float*)((uint32_t)AttackPacket + 0x50) = dmgDealt *= dmgmul; //public float actualDamageDealt;
		}
		
		//LOGD("DMG %d", dmgDealt);
		
		if (hack3){
			LOGD("Instant win");
			instantWinBattle(_this, true);
			instantWinStage(_this);
		}	
	}
	return orig_applyDamage(_this, target, AttackPacket, a3, a4);
}

//BattleEntity
float (*orig_HP)(void *_this);
float HP(void* _this) {
	if(_this != NULL)
	{ 
		int team = TeamType(_this);
		if (hack1 && team == 0){
			return 9999;
		}
		if (hack2 && team == 1){
			return 0;
		}
	}
	return orig_HP(_this);
}

// ---------- Hooking ---------- //

// we will run our patches in a new thread so our while loop doesn't block process main thread
// Don't forget to remove or comment out logs before you compile it.
void *hack_thread(void *) {
	LOGD(O("hack_thread loaded"));

	do {
        sleep(1);
    } while (!isLibraryLoaded(libName));
	
	LOGD(O("Lib has been loaded"));
	TeamType = (int(*)(void *)) getAbsoluteAddress(libName, string2Offset("0x4AD558")); //BattleEntity
	instantWinBattle = (bool(*)(void *, bool)) getAbsoluteAddress(libName, string2Offset("0x903F94")); 
	instantWinStage = (bool(*)(void *)) getAbsoluteAddress(libName, string2Offset("0x903B74"));
	
    MSHookFunction((void*)getAbsoluteAddress(libName, string2Offset("0x901428")), (void*)applyDamage, (void**) &orig_applyDamage);
    MSHookFunction((void*)getAbsoluteAddress(libName, string2Offset("0x4C1334")), (void*)HP, (void**) &orig_HP);
	
	LOGD(O("Hook success"));
	
    return NULL;
}