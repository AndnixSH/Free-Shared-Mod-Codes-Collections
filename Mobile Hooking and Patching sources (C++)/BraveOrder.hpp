bool hack1 = false, hack2 = false, hack3 = false;
int dmgmul = 1, defmul = 1;
extern "C" {
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

int (*Team)(void *_this); //Army

int (*orig_CalculateDamage)(void* attacker, void* initiator, bool initiatorMitigates, void* firstTarget, void* data, void* behaviorData, void* target, bool critIfAllowed, int flankBonus, bool isProc, int abilityLevel, int damageAbsorbed);
int CalculateDamage(void* attacker, void* initiator, bool initiatorMitigates, void* firstTarget, void* data, void* behaviorData, void* target, bool critIfAllowed, int flankBonus, bool isProc, int abilityLevel, int damageAbsorbed) {

		int team = Team(target);
		if (hack1 && team == 2) //Left
		{
			return orig_CalculateDamage(attacker, initiator, initiatorMitigates, firstTarget, data, behaviorData, target,critIfAllowed, flankBonus, isProc, abilityLevel, damageAbsorbed) * 999;
		}
		else if (hack2 && team == 1) //Right
		{
			return 0;
		}
	
	return orig_CalculateDamage(attacker, initiator, initiatorMitigates, firstTarget, data, behaviorData, target,critIfAllowed, flankBonus, isProc, abilityLevel, damageAbsorbed);
}

void *hack_thread(void *) {
	do {
        sleep(1);
    } while (!isLibraryLoaded(libName));
	
    Team = (int(*)(void *))getAbsoluteAddress(libName,  string2Offset(OK("0x259A038", 'd'))); //Army
    MSHookFunction((void*)getAbsoluteAddress(libName, string2Offset(OK("0x932630", 'd'))), (void*)CalculateDamage, (void**) &orig_CalculateDamage); //CombatCalculator
	
    return NULL;
}