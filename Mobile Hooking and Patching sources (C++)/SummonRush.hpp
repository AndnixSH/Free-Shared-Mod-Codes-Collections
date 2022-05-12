bool hack1 = false, hack2 = false, hack3 = false, hack4 = false, hack5 = false, hack6 = false, hack7 = false, hack8 = false, hack9 = false, hack10 = false, hack11 = false, hack12 = false, hack13 = false, hack14 = false, hack15 = false;

extern "C" {
JNIEXPORT jobjectArray  JNICALL
Java_uk_lgl_modmenu_FloatingModMenuService_GetFeatureList(
        JNIEnv *env,
        jobject activityObject) {
    jobjectArray ret;

    const char *features[] = {
		O("Toggle_1 hit kill"), 
		O("Toggle_God mode"), 
		O("Toggle_Infinite MP")
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

//Char - GetHP
float (*orig_GetHP)(void* _this);
float GetHP(void *_this) {
	int LoadType = *(int*)((uint64_t)_this + 0x28); //private Info_Char.E_LOAD_TYPE LoadType;
	 
	if (LoadType == 0 && hack1)
	{
		return 999999;
	}
	return orig_GetHP(_this);		
}

//Char - GetAttack
float (*orig_GetAttack)(void* _this);
float GetAttack(void* _this) {
	int LoadType = *(int*)((uint64_t)_this + 0x28); //private Info_Char.E_LOAD_TYPE LoadType;
	
	if (LoadType == 1 && hack1)
	{
		return 0;
	}
	if (LoadType == 0 && hack2)
	{
		return 999999;
	}
	return orig_GetAttack(_this);
}

float (*orig_Get_MagicAttack)(void* _this);
float Get_MagicAttack(void* _this) {
	int LoadType = *(int*)((uint64_t)_this + 0x28); //private Info_Char.E_LOAD_TYPE LoadType;
	
	if (LoadType == 1 && hack1)
	{
		return 0;
	}
	if (LoadType == 0 && hack2)
	{
		return 999999;
	}
	return orig_Get_MagicAttack(_this);
}

float (*orig_GetMP)(void* _this);
float GetMP(void* _this) {
	int LoadType = *(int*)((uint64_t)_this + 0x28); //private Info_Char.E_LOAD_TYPE LoadType;
	
	if (LoadType == 0 && hack3)
	{
		return 999999;
	}
	return orig_GetMP(_this);
}

void *hack_thread(void *) {
	do {
        usleep(10);
    } while (!isLibraryLoaded(libName));
	
    //Assembly-CSharp.dll
	//Char - GetHP
	Hook((void *)getRealOffset(0x17EF528), (void *)GetHP, (void **) &orig_GetHP);
	//Char - GetAttack
	Hook((void *)getRealOffset(0x17E8BF0), (void *)GetAttack, (void **) &orig_GetAttack);
	//Char - Get_MagicAttack
	Hook((void *)getRealOffset(0x17E8CAC), (void *)Get_MagicAttack, (void **) &orig_Get_MagicAttack);
	//Char - GetMP
	Hook((void *)getRealOffset(0x17EF0C0), (void *)GetMP, (void **) &orig_GetMP);
	//SVInventory - Remove
	//	PatchAddress((unsigned char *)getRealOffset(0xE9FA10), (unsigned char *) "\x1E\xFF\x2F\xE1", 4); 

	LOGD(O("Loaded"));
	
    return NULL;
}