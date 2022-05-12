bool hack1 = false, hack2 = false, hack3 = false;

extern "C" {
int dmgmul = 1;
JNIEXPORT void JNICALL
Java_uk_lgl_modmenu_Preferences_Changes(JNIEnv *env, jclass clazz, jobject obj,
                                        jint feature, jint value, jboolean boolean, jstring str) {

    // You must count your features from 0, not 1
    switch (feature) {
		case 0: // Switch 2
			hack1 = boolean;
            break;
        // The category was 0 so "case 0" is not needed
        case 1: // Switch
			hack2 = boolean;
            break;
		case 2: // Switch
			hack3 = boolean;
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
            O("Toggle_God mode")}; 

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

//BattleCardBase
int (*Side)(void *_this);
int (*WinBattle)(void *_this);

void (*orig_DoMonsterDamage)(void *_this, void* damageData, int b);
void DoMonsterDamage(void* _this, void* damageData, int b) {
	if (_this != NULL){
		int side = Side(_this);
		if (hack1 && side == 0){
			LOGD(O("Side 0"));
			return;
		}
	}
	return orig_DoMonsterDamage(_this, damageData, b);
}

void *hack_thread(void *) {

	do {
        sleep(1);
    } while (!isLibraryLoaded(libName));

	//BattleCardBase
	Side = (int(*)(void *))getAbsoluteAddress(libName, string2Offset(O("0x978DF4"))); 
	WinBattle = (int(*)(void *))getAbsoluteAddress(libName, string2Offset(O("0x9896B8"))); 
    MSHookFunction((void*)getAbsoluteAddress(libName, string2Offset(O("0x9817B4"))), (void*)DoMonsterDamage, (void**) &orig_DoMonsterDamage);
	
	LOGD(O("loaded!"));
	
    return NULL;
}

__attribute__((constructor))
void libhook_main() {
	pthread_t ptid;
	pthread_create(&ptid, NULL, hack_thread, NULL);
}
