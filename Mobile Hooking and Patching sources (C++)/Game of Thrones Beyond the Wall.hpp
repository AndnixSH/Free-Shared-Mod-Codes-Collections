#include "Menu/Menu.h"

#define UseCheckum

bool KMHack1 = false, KMHack2 = false, KMHack3 = false, hack1 = false, hack2 = false, hack3 = false, hack4 = false, hack5 = false;
int sliderValue = 1, dmgmul = 1, defmul = 1, MP = 0, onehitkill = 0, godmode = 0;


jobjectArray GetFeatureList(
	JNIEnv* env,
	jobject activityObject) {
	jobjectArray ret;

	const char* features[] = {
		O("0_RichTextView_</font><font color='yellow'>For unknown reason, the damage visual is glitched but it is still working fine</font>"),
		O("1_InputValue_Damage multiplier"),
		O("2_InputValue_Defense multiplier")
		//O("3_Toggle_Always player's turn"),
		//O("4_Toggle_Always final wave")
	};

	//Now you dont have to manually update the number everytime;
	int Total_Feature = (sizeof features / sizeof features[0]);
	ret = (jobjectArray)
		env->NewObjectArray(Total_Feature, env->FindClass(O("java/lang/String")),
			env->NewStringUTF(""));

	for (int i = 0; i < Total_Feature; i++)
		env->SetObjectArrayElement(ret, i, env->NewStringUTF(features[i]));
	featureValid = true;
	return (ret);
}

void Changes(JNIEnv* env, jclass clazz, jobject obj,
	jint feature, jstring featName, jint value,
	jboolean boolean, jstring str) {

	//LOGD(O("Feature name: %d - %s | Value: = %d | Bool: = %d | Text: = %s"), feature,
	//     env->GetStringUTFChars(featName, 0), value,
	//     boolean, str != NULL ? env->GetStringUTFChars(str, 0) : "");

	int i = (int)feature;
	switch (i) {

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
		case 3:
			hack1 = boolean;
			break;
		case 4:
			hack2 = boolean;
			break;
	}
}

// public enum TeamType // TypeDefIndex: 12701
// {
// 	// Fields
// 	public int value__; // 0x0
// 	public const TeamType Player = 0;
// 	public const TeamType Enemy = 1;
// }

size_t team;

//Battle.UnitStatusController
void (*orig_CalcDamage)(void* pThis, int hit_index, void* attacker, long forced_damage, bool is_skip_ult);
void CalcDamage(void* pThis, int hit_index, void* attacker, long forced_damage, bool is_skip_ul) {

	return orig_CalcDamage(pThis, hit_index, attacker, forced_damage, is_skip_ul);
}

//Battle.BattleManager
bool (*orig_get_IsPlayerTurn)(void* pThis);
bool get_IsPlayerTurn(void* pThis) {

	return orig_get_IsPlayerTurn(pThis);
}

bool (*orig_get_IsFinalWave)(void* pThis);
bool get_IsFinalWave(void* pThis) {

	return orig_get_IsFinalWave(pThis);
}

//public class DamageCalclate
struct System_Numerics_BigInteger_Fields {
	int _sign;
	monoArray<unsigned int*>* _bits;
};

struct System_Numerics_BigInteger_o {
	System_Numerics_BigInteger_Fields fields;
};

struct System_Numerics_BigInteger_StaticFields {
	System_Numerics_BigInteger_o s_bnMinInt;
	System_Numerics_BigInteger_o s_bnOneInt;
	System_Numerics_BigInteger_o s_bnZeroInt;
	System_Numerics_BigInteger_o s_bnMinusOneInt;
	char s_success[];
};

int t;

System_Numerics_BigInteger_Fields(*orig_CalcBaseDamage)(long long atk, long long def, long long ignore_def);
System_Numerics_BigInteger_Fields CalcBaseDamage(long long atk, long long def, long long ignore_def) {
	//LOGD(O("cbd %lld %lld"), atk, def);
	if (t == 1) {
		atk /= defmul;
		def /= defmul;
	}
	else
	{
		atk *= dmgmul;
		def *= dmgmul;
	}
	return orig_CalcBaseDamage(atk, def, ignore_def);
}

void (*orig_BattleUnitDamageManager_DamageProcess)(void* _this, void* attacker, void* skill, bool on_the_way);
void BattleUnitDamageManager_DamageProcess(void* _this, void* attacker, void* skill, bool on_the_way) {
	//LOGD(O("dp"));
	t = *(int*)((uint32_t)attacker + team);

	return orig_BattleUnitDamageManager_DamageProcess(_this, attacker, skill, on_the_way);
}

//public class UnitController : MonoBehaviourCustom
void (*orig_SetAdditionalDamageInfo)(void* pThis, void* add_damage_info, long long damage_value, void* trigger_unit);
void SetAdditionalDamageInfo(void* pThis, void* add_damage_info, long long damage_value, void* trigger_unit) {
	//LOGD(O("sadi"));
	return orig_SetAdditionalDamageInfo(pThis, add_damage_info, damage_value, trigger_unit);
}

void (*orig_Damage)(void* pThis, void* attacker, void* order, bool ignore_guard_anim, bool is_skip_ult);
void Damage(void* pThis, void* attacker, void* order, bool ignore_guard_anim, bool is_skip_ult) {
	//LOGD(O("dmg"));
	return orig_Damage(pThis, attacker, order, ignore_guard_anim, is_skip_ult);
}

bool (*orig_get_IsAlive)(void* pThis);
bool get_IsAlive(void* pThis) {

	return orig_get_IsAlive(pThis);
}

long (*orig_get_MaxHp)(void* pThis);
long get_MaxHp(void* pThis) {

	return orig_get_MaxHp(pThis);
}

long (*orig_get_RemainHP)(void* pThis);
long get_RemainHP(void* pThis) {

	return orig_get_RemainHP(pThis);
}

#define lib O("libil2cpp.so")

void hack_thread() {
	LOGD(O("loading..."));

	int i = 0;
	do {
		sleep(1);
	} while (!isLibraryLoaded(lib));

	//DamageCalclate.CalcBaseDamage
	auto d1 = mem::find_pattern_in_module(lib, O("F0 4F 2D E9 1C B0 8D E2 ?? D0 4D E2 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 02 60 A0 E1 00 00 8F E0 00 00 D0 E5 00 00 50 E3 06 00 00 1A ?? 01 9F E5 00 00 9F E7 00 00 90 E5 ?? ?? ?? EB ?? 01 9F E5 01 10 A0 E3 00 10 CF E7 ?? 01 9F E5 ?? ?? 9B E5"));
	HOOK(reinterpret_cast<void*>(d1), CalcBaseDamage, orig_CalcBaseDamage);
	
	//BattleUnitDamageManager.DamageProcess
	auto d3 = mem::find_pattern_in_module(lib, O("F0 4F 2D E9 1C B0 8D E2 74 D0 4D E2 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 00 00 ?? ?? ?? 00 ?? ?? ?? ?? ?? ?? ?? ?? 9F ?? 00 00 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 10 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 00 90 E5 ?? ?? 90 E5 ?? 00 ?? ?? ?? 00 ?? ??"));
	HOOK(reinterpret_cast<void*>(d3), BattleUnitDamageManager_DamageProcess, orig_BattleUnitDamageManager_DamageProcess);

	team = 0x10;

	LOGD(O("success"));
}

__attribute__((constructor))
void libmain() {
	std::thread t(hack_thread);
	t.detach();
}