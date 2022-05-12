//LGL mod menu

bool hack1 = false, hack2 = false, hack3 = false, hack4 = false, hack5 = false, hack6 = false, hack7 = false, hack8 = false, hack9 = false, hack10 = false, hack11 = false, hack12 = false, hack13 = false, hack14 = false, hack15 = false;
bool isOnHurt = false;

float dmg = 1.0f, def = 1.0f;
int camp = 0;

extern "C" {

JNIEXPORT jobjectArray  JNICALL
Java_uk_lgl_modmenu_FloatingModMenuService_getFeatureList(
        JNIEnv *env,
        jobject activityObject) {
    jobjectArray ret;

    const char *features[] = {
		O("Toggle_1 hit kill"), 
		O("Toggle_God mode")
		};

    int Total_Feature = (sizeof features /
                         sizeof features[0]); //Now you dont have to manually update the number everytime;

    ret = (jobjectArray) env->NewObjectArray(Total_Feature, env->FindClass(O("java/lang/String")),
                                             env->NewStringUTF(""));
    int i;
    for (i = 0; i < Total_Feature; i++)
        env->SetObjectArrayElement(ret, i, env->NewStringUTF(features[i]));
    return (ret);
}

JNIEXPORT void JNICALL
Java_uk_lgl_modmenu_FloatingModMenuService_Changes(
        JNIEnv *env,
        jobject activityObject,
        jint feature) {
    // LOGD("changeToggle");
    //__android_log_print(ANDROID_LOG_VERBOSE, "Mod Menu", "Feature = %d", feature);

    int i = (int) feature;
    switch (i) {
		case 0:
            hack1 = !hack1;
            break;
        case 1:
            hack2 = !hack2;
            break;
        case 2:
            hack3 = !hack3;
            break;
		case 3:
            hack4 = !hack4;
            break;
    }
}

}

//Monster
unsigned long long (*orig_CastHP)(void *_this, int hurtType, long long lDamegHP, void * actAttacker, bool bShowTips, bool ZeroHPDeath, unsigned int attrDamageType, long long attrDamageValue);
unsigned long long CastHP(void *_this, int hurtType, long long lDamegHP, void * actAttacker, bool bShowTips, bool ZeroHPDeath, unsigned int attrDamageType, long long attrDamageValue){
	//LOGD("enemy");
	
	if (_this && hack1){
			lDamegHP = -99999;
    }
	//LOGD("enemy2");
    return orig_CastHP(_this, hurtType, lDamegHP, actAttacker, bShowTips, ZeroHPDeath,attrDamageType, attrDamageValue);
}

bool (*IsEnemy)(void *_this, void *a1);

//Player
unsigned long long (*orig_CalcHP)(void *_this, int nHurtType, long long ulDamgeHp, bool bShowTip, void * actorAttk, bool ZeroHPDeath, unsigned int attrDamageType, long long attrDamageValue);
unsigned long long CalcHP(void *_this, int nHurtType, long long ulDamgeHp, bool bShowTip, void * actorAttk, bool ZeroHPDeath, unsigned int attrDamageType, long long attrDamageValue){
	if (_this){
		bool isEnemy = IsEnemy(_this, actorAttk);
		
		if(hack2 && isEnemy) 
		{
			return 99999;
		}
	}
    return orig_CalcHP(_this, nHurtType, ulDamgeHp, bShowTip, actorAttk, ZeroHPDeath, attrDamageType, attrDamageValue);
}

void *hack_thread(void *) {
	do {
        usleep(10);
    } while (!isLibraryLoaded(libName));
	
	#ifdef __arm__
	IsEnemy = (bool(*)(void *, void *))getAbsoluteAddress(libName, 0xB7A584);
	MSHookFunction((void*)getAbsoluteAddress(libName, 0x115FDDC)), (void*)CastHP, (void**) &orig_CastHP);
	MSHookFunction((void*)getAbsoluteAddress(libName, 0x127DF98)), (void*)CalcHP, (void**) &orig_CalcHP);
	#endif

    return NULL;
}

__attribute__((constructor))
void libhook_main() {
    pthread_t ptid;
    pthread_create(&ptid, NULL, hack_thread, NULL);
}