bool hack1 = false, hack2 = false, hack3 = false;
int dmgmul = 1, defmul = 1;

void Changes(JNIEnv *env, jclass clazz, jobject obj,
                                        jint featNum, jstring featName, jint value,
                                        jboolean boolean, jstring str) {

    // You must count your features from 0, not 1
    switch (featNum) {
		case 0:
			if (value >= 1) {
                dmgmul = value;
            }
			break;
		case 1:
			if (value >= 1) {
                defmul = value;
            }
			break;
    }
}

std::vector<bool> toggles;
jobjectArray GetFeatureList(
        JNIEnv *env,
        jobject activityObject) {
    jobjectArray ret;

    const char *features[] = {
        O("InputValue_Damage Multiplier"),
		O("InputValue_Defense Multiplier")}; 

    int Total_Feature = (sizeof features /
                         sizeof features[0]); //Now you dont have to manually update the number everytime;

    ret = (jobjectArray) env->NewObjectArray(Total_Feature, env->FindClass(O("java/lang/String")),
                                             env->NewStringUTF(""));
    int i;
    for (i = 0; i < Total_Feature; i++)
        env->SetObjectArrayElement(ret, i, env->NewStringUTF(features[i]));
    return (ret);
}

// public enum FBGGDJFPEJL
// {
	// [Token(Token = "0x4006971")]
	// None = -1,
	// [Token(Token = "0x4006972")]
	// Defence,
	// [Token(Token = "0x4006973")]
	// Attack,
	// [Token(Token = "0x4006974")]
	// Max
// }

//public class ObjectBase : MonoBehaviour
//public virtual int GJJHLNIIBJP(GCBBKJJLOEF OEJFFEBIIDI, ObjectBase KFEPCDBOMMK, bool IOALKEKKPLC, bool CPMJGHLMPAK, int ANBKCEFMCHJ = 1, bool MFCMLDNGLKM = false)
int (*orig_Attack)(void* _this, int OEJFFEBIIDI, void* KFEPCDBOMMK, bool IOALKEKKPLC, bool CPMJGHLMPAK, int ANBKCEFMCHJ, bool MFCMLDNGLKM );
int Attack(void* _this, int OEJFFEBIIDI, void* KFEPCDBOMMK, bool IOALKEKKPLC, bool CPMJGHLMPAK, int ANBKCEFMCHJ, bool MFCMLDNGLKM ) {

	int side = *(int*)((uint64_t)_this + 0x28); //public FBGGDJFPEJL _teamType;
	int orig = orig_Attack(_this, OEJFFEBIIDI, KFEPCDBOMMK, IOALKEKKPLC, CPMJGHLMPAK, ANBKCEFMCHJ, MFCMLDNGLKM);
	
	//LOGD("side %d", side);
    if(side == 1) //Attack
    {
        return orig * dmgmul;
    }
    if(side == 0) //Defence
    {
        return orig / defmul;
    }

	return orig;
}

#define SoFile O("libil2cpp.so")

void hack_thread(){
	
	LOGI(O("load lib open"));

	
	do {
        sleepy(1);
    } while (!isLibraryLoaded(SoFile));

	sleepy(6);
	
	Hook((void *)( /* "Assembly-CSharp.dll" "ObjectBase" "GJJHLNIIBJP" */ ), (void *)Attack, (void **) &orig_Attack);

	LOGD(O("il2cpp loaded"));
}