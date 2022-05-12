
bool hack1 = false, hack2 = false, hack3 = false;

extern "C" {
int dmgmul = 1;
JNIEXPORT void JNICALL
Java_uk_lgl_modmenu_Preferences_Changes(JNIEnv *env, jclass clazz, jobject obj,
                                        jint feature, jint value, jboolean boolean, jstring str) {
			
	LOGD(O("Feature: = %d | Value: = %d | Bool: = %d"), feature, value, boolean);

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

//KC.Network.BaseEntityComponent
bool (*sideId)(void *_this); 

//KC.Network.HealthHolder : BaseEntityComponent
//private float applyDamage(float dmg)
float (*orig_applyDamage)(void *_this, float dmg);
float applyDamage(void* _this, float dmg) {
	if(_this != NULL)
	{ 
		//0 enemy
		//1 player
		int side = sideId(_this);
		//LOGD("isown %d", isown); //print to logcat
		if (side == 1 && hack1)
			return orig_applyDamage(_this, 99999); //1 hit kill but return original with dmg 99999 parameter
		else if (side == 0 && hack2)
			return 0; //God mode
	}
	return orig_applyDamage(_this, dmg);
}

// ---------- Hooking ---------- //

// we will run our patches in a new thread so our while loop doesn't block process main thread
// Don't forget to remove or comment out logs before you compile it.
void *hack_thread(void *) {
	LOGD("loading...");
	
	do {
        sleep(1);
    } while (!isLibraryLoaded(libName));
	
    sideId = (bool(*)(void *)) getAbsoluteAddress(libName, string2Offset(O("0x218DDC0"))); 

    MSHookFunction((void*)getAbsoluteAddress(libName, string2Offset(O("0x219FE58"))), (void*)applyDamage, (void**) &orig_applyDamage); //applyDamage
	
	LOGD("Lib loaded");
	
    return NULL;
}

