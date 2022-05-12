
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
            O("Toggle_1 hit kill (Linked to AI)"),
            O("Toggle_Disable AI")}; 

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

//com.unity3d.player.UnityPlayerActivity

//GameEntity
bool (*get_isPlayer)(void *_this); 
bool (*get_isOpponent)(void *_this); 

void (*orig_AddDamage)(void *_this, void *a1, float a2, bool a3, bool a4, bool a5);
void AddDamage(void* _this, void *a1, float a2, bool a3, bool a4, bool a5) {
	if(_this != NULL)
	{ 
		if (hack1){
			return orig_AddDamage(_this, a1, 999999, a3, a4, a5);
		}
	}
	return orig_AddDamage(_this, a1, a2, a3, a4, a5);
}

bool (*orig_isDisableAI)(void *_this);
bool isDisableAI(void* _this) {
	if(_this != NULL)
	{ 
		if (hack2){
			return true;
		}
	}
	return orig_isDisableAI(_this);
}

// ---------- Hooking ---------- //
#define targetLibName O("libil2cpp.so")
// we will run our patches in a new thread so our while loop doesn't block process main thread
// Don't forget to remove or comment out logs before you compile it.
void *hack_thread(void *) {
	//LOGD("load");
    // loop until our target library is found
   	do {
        sleep(1);
    } while (!isLibraryLoaded(targetLibName));
	//LOGD("abe");
	
    //get_isPlayer = (bool(*)(void *)) getAbsoluteAddress(targetLibName, string2Offset(O("0x1561674"))); 
    //get_isOpponent = (bool(*)(void *)) getAbsoluteAddress(targetLibName, string2Offset(O("0x15612CC"))); 

	//GameEntity
    MSHookFunction((void*)getAbsoluteAddress(targetLibName, string2Offset(O("0xABA524"))), (void*)AddDamage, (void**) &orig_AddDamage); //AddDamage
    MSHookFunction((void*)getAbsoluteAddress(targetLibName, string2Offset(O("0xABB134"))), (void*)isDisableAI, (void**) &orig_isDisableAI); //isDisableAI
	
    return NULL;
}

