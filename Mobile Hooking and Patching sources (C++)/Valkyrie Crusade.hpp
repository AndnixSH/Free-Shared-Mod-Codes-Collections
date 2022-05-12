extern "C" {

bool hack1 = false, hack2 = false, hack3 = false, hack4 = false;
int dmgmul = 1, defmul = 1;
JNIEXPORT void JNICALL
Java_uk_lgl_modmenu_Preferences_Changes(JNIEnv *env, jclass clazz, jobject obj,
                                        jint feature, jint value, jboolean boolean, jstring str) {

    // You must count your features from 0, not 1
    switch (feature) {
		case 0: // Switch 2
			hack1 = !hack1;
			if (hack1) {
                my_cool_Patches.Patch1.Modify();
                my_cool_Patches.Patch3.Modify();
                my_cool_Patches.Patch4.Modify();
            } else {
                my_cool_Patches.Patch1.Restore();
                my_cool_Patches.Patch3.Restore();
                my_cool_Patches.Patch4.Restore();
            }
            break;
		case 1: // Switch
			hack2 = !hack2;
			if (hack2) {
                my_cool_Patches.Patch2.Modify();
            } else {
                my_cool_Patches.Patch2.Restore();
            }
			break;
		case 2: // Switch
			hack3 = !hack3;
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
            O("Toggle_Unlimited skills"),
			O("Toggle_Enable Burst Skill")}; 

    int Total_Feature = (sizeof features /
                         sizeof features[0]); //Now you dont have to manually update the number everytime;

    ret = (jobjectArray) env->NewObjectArray(Total_Feature, env->FindClass(O("java/lang/String")),
                                             env->NewStringUTF(""));
    int i;
    for (i = 0; i < Total_Feature; i++)
        env->SetObjectArrayElement(ret, i, env->NewStringUTF(features[i]));
    return (ret);
}

}

#define tlibName O("libvalkyriecrusade.so")

void (*orig_calcAndApplyAttack)(void *_this, void * a1, void *a2, int a3);
void calcAndApplyAttack(void* _this, void *a1, void *a2, int a3) {
	LOGD(O("calcAndApplyAttack"));
	if(_this != NULL)
	{ 
		bool *(*team)(void* a1) = (bool *(*)(void *))dlsym(dlopen(tlibName, 4), "_ZNK16TaskBattleCard3D7getSideEv");
		if (hack3 && team(a1) == (bool*)true){
			LOGD(O("calcAndApplyAttack returned"));
			return;
		}
		else{
			
		}
		LOGD(O("calcAndApplyAttack orig"));
	}
	return orig_calcAndApplyAttack(_this, a1, a2, a3);
}

void *hack_thread(void *) {
   // loop until our target library is found
    //libil2cpp.so
    int i = 0;
    do {
		i++;
		if (i > 15)
		{
			LOGD(O("Detected that the mod is not working. Please restart the game"));
		}
        sleep(1);
    } while (!isLibraryLoaded(tlibName));
	
	//void* HookSymbol = dlsym(dlopen(libName, 4), "_ZN11BattleLogic18calcAndApplyAttackEP16TaskBattleCard3DS1_b");
	
	//BattleLogic::calcAndApplyAttack
	//MSHookFunction(HookSymbol, (void*)calcAndApplyAttack, (void**) &orig_calcAndApplyAttack);
										 
	//SkillUtil::getSkillCondPercentage
	my_cool_Patches.Patch1 = MemoryPatch::createWithHex(tlibName, string2Offset(O("0x4C7FF8")), O("64 20"));
	
	//BattleSkill::getEnableBurstSkill
	my_cool_Patches.Patch2 = MemoryPatch::createWithHex(tlibName, string2Offset(O("0x54F760")), O("00 23 06 D1"));
	
	//BattleSkill::calcBeforeTrun
	my_cool_Patches.Patch3 = MemoryPatch::createWithHex(tlibName, string2Offset(O("0x54FCFE")), O("00 20"));
	
	//BattleSkill::getEnableSkill
	my_cool_Patches.Patch4 = MemoryPatch::createWithHex(libName, string2Offset(O("0x550A02")), O("00 20"));

    return NULL;
}