bool hack1 = false, hack2 = false, hack3 = false;

extern "C" {
JNIEXPORT void JNICALL
Java_uk_lgl_modmenu_Preferences_Changes(JNIEnv *env, jclass clazz, jobject obj,
                                        jint feature, jint value, jboolean boolean, jstring str) {

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
			O("Toggle_1 hit KO"),
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

struct BF_Core_Math_FixedPointNumber_Fields {
	int64_t m_rawValue;
};

struct BF_Core_Math_FixedPointNumber_o {
	BF_Core_Math_FixedPointNumber_Fields fields;
};

struct BF_GFL_RPG_Damage_Fields {
	struct BF_Core_Math_FixedPointNumber_o Amount;
	struct BF_Core_Math_FixedPointNumber_o CritMultiplier;
};

struct BF_Core_Math_FixedPointNumber_StaticFields {
	struct BF_Core_Math_FixedPointNumber_o NegativeOne;
	struct BF_Core_Math_FixedPointNumber_o Zero;
	struct BF_Core_Math_FixedPointNumber_o OneQuarter;
	struct BF_Core_Math_FixedPointNumber_o OneHalf;
	struct BF_Core_Math_FixedPointNumber_o One;
	struct BF_Core_Math_FixedPointNumber_o Two;
	struct BF_Core_Math_FixedPointNumber_o OneHundred;
	struct BF_Core_Math_FixedPointNumber_o QuarterPi;
	struct BF_Core_Math_FixedPointNumber_o HalfPi;
	struct BF_Core_Math_FixedPointNumber_o Pi;
	struct BF_Core_Math_FixedPointNumber_o ThreeHalvesPi;
	struct BF_Core_Math_FixedPointNumber_o TwoPi;
	struct BF_Core_Math_FixedPointNumber_o PiOver180;
	struct BF_Core_Math_FixedPointNumber_o MinValue;
	struct BF_Core_Math_FixedPointNumber_o MaxValue;
	struct BF_Core_Math_FixedPointNumber_o s_sqrtBreakThreshold;
	struct BF_Core_Math_FixedPointNumber_o s_defaultPowerPrecision;
};


bool (*IsAlly)(void *_this);
bool (*IsEnemy)(void *_this);

//GameUnitObject
void (*orig_ApplyDamage)(void *_this, BF_GFL_RPG_Damage_Fields damage_, BF_Core_Math_FixedPointNumber_StaticFields minMultiplier_, BF_Core_Math_FixedPointNumber_StaticFields maxMultiplier_, void *action_, void * attacker_, int damageMods, void * params_, monoString combatLog_);
void ApplyDamage(void *_this, BF_GFL_RPG_Damage_Fields damage_, BF_Core_Math_FixedPointNumber_StaticFields minMultiplier_, BF_Core_Math_FixedPointNumber_StaticFields maxMultiplier_, void *action_, void * attacker_, int damageMods, void * params_, monoString combatLog_) {
	if (_this != NULL)
	{	
		bool isally = IsAlly(_this);
		bool isenemy = IsEnemy(_this);
		if (hack1 && isally){
			return;
		}
		if (hack2 && isenemy){
			damage_.Amount.fields.m_rawValue = 999999;
			damage_.CritMultiplier.fields.m_rawValue = 999999;
			minMultiplier_.MaxValue;
			maxMultiplier_.MaxValue;
		}
	}
	return orig_ApplyDamage(_this, damage_, minMultiplier_, maxMultiplier_, action_, attacker_, damageMods, params_, combatLog_);
}
#define tlibName O("libil2cpp.so")

// ---------- Hooking ---------- //

// we will run our patches in a new thread so our while loop doesn't block process main thread
// Don't forget to remove or comment out logs before you compile it.
void *hack_thread(void *) {
    int i = 0;
    do {
		i++;
		if (i > 15)
		{
			LOGD(O("Detected that the mod is not working. Please restart the game"));
		}
        sleep(1);
    } while (!isLibraryLoaded(tlibName));
	
	sleep(5);
	
	Il2Cpp::Init(tlibName);
	
	while (!Il2Cpp::IsAssembliesLoaded()) {
		sleep(2);
	}

    MSHookFunction((void*)getAbsoluteAddress(libName, string2Offset(OK("0xE268EC", 'f'))), (void*)ApplyDamage, (void**) &orig_ApplyDamage);

	IsAlly = (bool(*)(void *)) getAbsoluteAddress(libName, string2Offset(OK("0xE24860", 'a')));
	IsEnemy = (bool(*)(void *)) getAbsoluteAddress(libName, string2Offset(OK("0xE248E8", 'a')));


    return NULL;
}