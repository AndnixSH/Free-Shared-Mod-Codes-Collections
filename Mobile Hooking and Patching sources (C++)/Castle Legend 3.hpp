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
            O("Toggle_1 hit kill"),
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
int (*set_hp)(void *_this, int value);

void (*orig_OnHurt)(void *_this, void *_actor);
void OnHurt(void* _this, void *_actor) {
	if(_this != NULL)
	{ 
		int AttackTargetCamp = *(int*)((uint64_t)_actor + 0x6C);
		if (hack1 && AttackTargetCamp == 0){
			set_hp(_this, 99999);
		}
		if (hack2 && AttackTargetCamp == 1){
			return;
		}
	}
	LOGD(O("Hit!"));
	return orig_OnHurt(_this, _actor);
}

// ---------- Hooking ---------- //

// we will run our patches in a new thread so our while loop doesn't block process main thread
// Don't forget to remove or comment out logs before you compile it.
void *hack_thread(void *) {
	do {
        sleep(1);
    } while (!isLibraryLoaded(libName));

	//BattleCardBase
	set_hp = (int(*)(void *, int)) getAbsoluteAddress(libName, string2Offset(O("0x31E044"))); 
    MSHookFunction((void*)getAbsoluteAddress(libName, string2Offset(O("0x31F824"))), (void*)OnHurt, (void**) &orig_OnHurt);
	
	LOGD(O("loaded!"));
	
    return NULL;
}

__attribute__((constructor))
void libhook_main() {
	pthread_t ptid;
	pthread_create(&ptid, NULL, hack_thread, NULL);
}
