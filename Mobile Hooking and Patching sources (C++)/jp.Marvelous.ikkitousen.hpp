//Damage/defense has been patched

bool KMHack1 = false, KMHack2 = false, KMHack3 = false, hack1 = false, hack2 = false, hack3 = false;
int sliderValue = 1, dmgmul = 1, defmul = 1;

std::vector<bool> toggles;

jobjectArray GetFeatureList(
    JNIEnv* env,
    jobject activityObject) {
    jobjectArray ret;

    const char* features[] = {
        O("1_InputValue_Damage multiplier"),
        O("2_InputValue_Defense multiplier")
    };

    int Total_Feature = (sizeof features /
        sizeof features[0]); //Now you dont have to manually update the number everytime;

    ret = (jobjectArray)env->NewObjectArray(Total_Feature, env->FindClass(O("java/lang/String")),
        env->NewStringUTF(""));
    int i;
    for (i = 0; i < Total_Feature; i++)
    {
        toggles.push_back(false);
        env->SetObjectArrayElement(ret, i, env->NewStringUTF(features[i]));
    }

    return (ret);
}

void Changes(JNIEnv* env, jclass clazz, jobject obj,
    jint feature, jstring featName, jint value,
    jboolean boolean, jstring str) {
    //Convert java string to c++

    int i = (int)feature;
    switch (i) {

        // Must count from 0
    case 1:
        if (value >= 1) {
            dmgmul = value;
        }
        break;
    case 2:
        if (value >= 1) {
            defmul = value;
        }
        break;
    }
}

bool (*is_player_unit)(void* _this);

int (*orig_damage_formula)(void* _this, float o, float d, float r);
int damage_formula(void* _this, float o, float d, float r) {

    LOGD(O("a..."));
    bool player = is_player_unit(_this);
    if (player) {
        return orig_damage_formula(_this, o, d, r) * dmgmul;
    }
    else {
        return orig_damage_formula(_this, o, d, r) / defmul;
    }
    return orig_damage_formula(_this, o, d, r);
}


#define targetLibName O("libil2cpp.so")
// we will run our patches in a new thread so "sleep" doesn't block process main thread
void hack_thread() {
    LOGD(O("loading..."));

    int i = 0;
    do {
        i++;
        if (i > 15)
        {
            LOGD(O("Detected that the mod is not working. Please restart the game"));
        }
        sleep(1);
    } while (!isLibraryLoaded(targetLibName));

	///Assembly-CSharp.dll
    //BattleServer - Unit - damage_formula
    Hook([Your offset], (void*)damage_formula, (void**)&orig_damage_formula);

	//BattleServer - Unit - is_player_unit
    is_player_unit = (bool(*)(void*))([Your offset]);

    LOGD(O("success"));
}