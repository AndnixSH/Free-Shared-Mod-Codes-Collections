bool hack1 = false, hack2 = false, hack3 = false;

extern "C" {
JNIEXPORT void JNICALL
Java_uk_lgl_modmenu_FloatingModMenuService_Changes(
        JNIEnv *env,
        jobject activityObject,
        jint feature,
        jint value) {

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

void (*old_get_hitEnemy)(void* _this, int damage);
void get_hitEnemy(void *_this, int damage) {
	if (hack2){
		return old_get_hitEnemy(_this, 0);
	}
	return old_get_hitEnemy(_this, damage);		
}

void (*old_get_hitEnemy2)(void* _this, int damage);
void get_hitEnemy2(void *_this, int damage) {
	if (hack2){
		return old_get_hitEnemy2(_this, 0);
	}
	return old_get_hitEnemy2(_this, damage);		
}

void (*old_get_hitPlayer)(void* _this, int damage, bool isBullet);
void get_hitPlayer(void *_this, int damage, bool isBullet) {
	if (hack1){
		return old_get_hitPlayer(_this, damage * 99, isBullet);
	}
	return old_get_hitPlayer(_this, damage, isBullet);		
}

void (*old_get_hit)(void* _this, int damage);
void get_hit(void *_this, int damage) {
	if (hack1){
		return old_get_hit(_this, damage * 99);
	}
	return old_get_hit(_this, damage);		
}

void *hack_thread(void *) {
	do {
        sleep(1);
    } while (!isLibraryLoaded(libName));

	MSHookFunction((void *)getAbsoluteAddress(libName, 0x43983C), (void *)get_hitEnemy, (void **) &old_get_hitEnemy); //PlayerController
	MSHookFunction((void *)getAbsoluteAddress(libName, 0x433620), (void *)get_hitEnemy2, (void **) &old_get_hitEnemy2);//MyHouse
	MSHookFunction((void *)getAbsoluteAddress(libName,0x36F2B8), (void *)get_hitPlayer, (void **) &old_get_hitPlayer); //EnemyController
	MSHookFunction((void *)getAbsoluteAddress(libName,0x433370), (void *)get_hit, (void **) &old_get_hit); //EnemyController
	
	return NULL;
}

__attribute__((constructor))
void libhook_main() {
	pthread_t ptid;
	pthread_create(&ptid, NULL, hack_thread, NULL);
}