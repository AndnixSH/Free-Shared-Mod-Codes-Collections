bool hack1 = false, hack2 = false, hack3 = false;
int dmgmul = 1, defmul = 1;

void Changes(JNIEnv* env, jclass clazz, jobject obj, jint featNum, jstring featName, jint value, jboolean boolean, jstring str) {

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
    JNIEnv* env,
    jobject activityObject) {
    jobjectArray ret;

    const char* features[] = {
        O("InputValue_Damage Multiplier"),
        O("InputValue_Defense Multiplier"),
        O("RichTextView_<font color='yellow'>This game may detect mod on some devices</font>"),
    };

    int Total_Feature = (sizeof features /
        sizeof features[0]); //Now you dont have to manually update the number everytime;

    ret = (jobjectArray)env->NewObjectArray(Total_Feature, env->FindClass(O("java/lang/String")),
        env->NewStringUTF(""));
    int i;
    for (i = 0; i < Total_Feature; i++)
        env->SetObjectArrayElement(ret, i, env->NewStringUTF(features[i]));
    return (ret);
}

// Namespace: Game
// public enum CHAR_TYPE // TypeDefIndex: 9171
// {
	// // Fields
	// public int value__; // 0x0
	// public const CHAR_TYPE HERO = 1;
	// public const CHAR_TYPE MINION = 2;
	// public const CHAR_TYPE NPC = 3;
// }

//public class Character : FSM<CHAR_STATE>
size_t field1;

float (*orig_get_ATK)(void* _this);
float get_ATK(void* _this) {

    int side = *(int*)((uint64_t)_this + field1); //private CHAR_TYPE <CharType>k__BackingField;
    int orig = orig_get_ATK(_this);

    //LOGD("side %d", side);
    if (side == 1)
    {
        return orig * dmgmul;
    }
    else
    {
        return orig / defmul;
    }
    return orig;
}


#define SoFile O("libil2cpp.so")
void hack_thread() {
    LOGI(O("load lib open"));

    do {
        sleepy(1);
    } while (!isLibraryLoaded(SoFile));

    sleepy(6);

    Il2Cpp::Init(SoFile);

    DobbyHook((void*)( /* "Assembly-CSharp.dll" "Game.Unit" "Character" "get_ATK" */ )), (void*)get_ATK, (void**)&orig_get_ATK);

    field1 = YourOwnIl2cppAutoUpdate( /* "Assembly-CSharp.dll" "Game.Unit" "Character" "<CharType>k__BackingField" */ );

    LOGD(O("il2cpp loaded"));
}

__attribute__((constructor))
void libmain() {
    std::thread t(hack_thread);
    t.detach();
}

#include "Menu/JNIOnLoadMenu.h"