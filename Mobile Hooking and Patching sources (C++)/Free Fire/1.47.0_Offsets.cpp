Patches.antenaBody = MemoryPatch("libunity.so", 0x2A3454, "\x10\x40\x1C\x46", 4); NO
Patches.wallPedra1 = MemoryPatch("libunity.so", 0xEF2890, "\xC9\x3C\x8E\xBF\xC9\x3C\x8E\xBF", 8); NO
Patches.wallPedra2 = MemoryPatch("libunity.so", 0xEF2895, "\xC9\x3C\x8E\xBF\xC9\x3C\x8E\xBF", 8); NO
Patches.corposGigante1 = MemoryPatch("libunity.so", 0x29BC28, "\x00\x00\x20\x41", 4); NO
Patches.corposGigante2 = MemoryPatch("libunity.so", 0x29BC28, "\x00\x00\xA0\x41", 4); NO
Patches.corposGigante3 = MemoryPatch("libunity.so", 0x29BC28, "\x00\x00\xC5\x41", 4); NO
Patches.corposGigante4 = MemoryPatch("libunity.so", 0x29BC28, "\x00\x00\xF0\x41", 4); NO
Patches.RemoveParachute = MemoryPatch("libil2cpp.so", 0xAB604C, "\x00\x00\xA0\xE3\x1E\xFF\x2F\xE1", 8); YES - Function Name: GetPhysXState (COW.GamePlay.Player)
Patches.NoFog = MemoryPatch("libil2cpp.so", 0x26925BC, "\x00\x00\xA0\xE3\x1E\xFF\x2F\xE1", 8); YES - Function Name: Get_Fog (UnityEngine.RenderSettings)->FIRST OFFSET
Patches.MedKit1 = MemoryPatch("libil2cpp.so", 0xB1F7F4, "\x46\x0F\x43\xE3\x1E\xFF\x2F\xE1", 8); YES - Function Name: Get_EatSpeedScale (COW.GamePlay.PlayerAttributes)
Patches.MedKit2 = MemoryPatch("libil2cpp.so", 0xAD1B78, "\x00\x00\xA0\xE3\x1E\xFF\x2F\xE1", 8); YES - Function Name: IsMoving (COW.GamePlay.Player)
Patches.WhiteCharacter1 = MemoryPatch("libil2cpp.so", 0xAB5908, "\x01\x00\xA0\xE3\x1E\xFF\x2F\xE1", 8); YES - Function Name: UseHighQualityAvatar (COW.GamePlay.Player)->BOTTOM
Patches.WhiteCharacter2 = MemoryPatch("libil2cpp.so", 0x1783A38, "\x00\x00\xA0\xE3\x1E\xFF\x2F\xE1", 8); YES - Function Name: MoveNext (UMA.TextureProcessPROCoroutine.<workerMethod>c__Iterator0)
Patches.RainHack1 = MemoryPatch("libil2cpp.so", 0x134210C, "\x02\x00\xA0\xE3\x1E\xFF\x2F\xE1", 8); YES - Function Name: prb | j[ (COW.GamePlay.fsn{ ~\u007Fu)
Patches.RainHack2 = MemoryPatch("libil2cpp.so", 0x134210C , "\x04\x00\xA0\xE3\x1E\xFF\x2F\xE1", 8); YES - Function Name: prb | j[ (COW.GamePlay.fsn{ ~\u007Fu)
Patches.RainHack3 = MemoryPatch("libil2cpp.so", 0x134210C , "\x06\x00\xA0\xE3\x1E\xFF\x2F\xE1", 8); YES - Function Name: prb | j[ (COW.GamePlay.fsn{ ~\u007Fu)
Patches.RainHack4 = MemoryPatch("libil2cpp.so", 0x134210C , "\x08\x00\xA0\xE3\x1E\xFF\x2F\xE1", 8); YES - Function Name: prb | j[ (COW.GamePlay.fsn{ ~\u007Fu)
Patches.RainHack5 = MemoryPatch("libil2cpp.so", 0x134210C , "\x0A\x00\xA0\xE3\x1E\xFF\x2F\xE1", 8); YES - Function Name: prb | j[ (COW.GamePlay.fsn{ ~\u007Fu)
Patches.RainHack6 = MemoryPatch("libil2cpp.so", 0x134210C , "\x0C\x00\xA0\xE3\x1E\xFF\x2F\xE1", 8); YES - Function Name: prb | j[ (COW.GamePlay.fsn{ ~\u007Fu)
Patches.RainHack7 = MemoryPatch("libil2cpp.so", 0x134210C , "\x14\x00\xA0\xE3\x1E\xFF\x2F\xE1", 8); YES - Function Name: prb | j[ (COW.GamePlay.fsn{ ~\u007Fu)
Patches.RainHack8 = MemoryPatch("libil2cpp.so", 0x134210C , "\x18\x00\xA0\xE3\x1E\xFF\x2F\xE1", 8); YES - Function Name: prb | j[ (COW.GamePlay.fsn{ ~\u007Fu)
Patches.RainHack9 = MemoryPatch("libil2cpp.so", 0x134210C , "\x22\x00\xA0\xE3\x1E\xFF\x2F\xE1", 8); YES - Function Name: prb | j[ (COW.GamePlay.fsn{ ~\u007Fu)
Patches.RainHack10 = MemoryPatch("libil2cpp.so", 0x134210C , "\x26\x00\xA0\xE3\x1E\xFF\x2F\xE1", 8); YES - Function Name: prb | j[ (COW.GamePlay.fsn{ ~\u007Fu)
Patches.RainHack11 = MemoryPatch("libil2cpp.so", 0x134210C , "\x30\x00\xA0\xE3\x1E\xFF\x2F\xE1", 8); YES - Function Name: prb | j[ (COW.GamePlay.fsn{ ~\u007Fu)
Patches.RainHack12 = MemoryPatch("libil2cpp.so", 0x134210C , "\x34\x00\xA0\xE3\x1E\xFF\x2F\xE1", 8); YES - Function Name: prb | j[ (COW.GamePlay.fsn{ ~\u007Fu)
Patches.AimLock1 = MemoryPatch("libil2cpp.so", 0x1350298, "\x01\x00\xA0\xE3\x1E\xFF\x2F\xE1", 8); YES - Function Name: VT ^ cjOO (COW.GamePlay.fsn{ ~\u007Fu)
Patches.AimLock2 = MemoryPatch("libil2cpp.so", 0xAD5228, "\x00\x00\xA0\xE3\x1E\xFF\x2F\xE1", 8); NO
Patches.DarkSky = MemoryPatch("libunity.so", 0x1A2280, "\x00\x00\x80\xBF", 4); NO
Patches.vIncreasedHeight = MemoryPatch("libil2cpp.so", 0x2333C48 , "\xC2\x01\x44\xE3\x1E\xFF\x2F\xE1", 8); YES - Function Name: Get_Height (UnityEngine.CharacterController)->FIRST OFFSET
Patches.wIncreasedVision = MemoryPatch("libil2cpp.so", 0x133CA58 , "\x00\x00\xA0\xE3\x1E\xFF\x2F\xE1", 8); YES - Function Name: o~ym{ jW (COW.GamePlay.FollowCamera)
Patches.GhostHack = MemoryPatch("libil2cpp.so", 0x17097F4 , "\x00\x00\xA0\xE3\x1E\xFF\x2F\xE1", 8); YES - Function Name: yDYdhFu (COW.GamePlay.T\u0081 ^ \u0081Jie)
Patches.Refill = MemoryPatch("libil2cpp.so", 0x134211C, "\x12\x03\xA0\xE3\x1E\xFF\x2F\xE1", 8); YES - Function Name: hOU }lE (COW.GamePlay.fsn{ ~\u007Fu)
Patches.SpeedHack = MemoryPatch("libil2cpp.so", 0xAD6900 , "\x85\x0F\x43\xE3\x1E\xFF\x2F\xE1", 8); YES - Function Name: GetSpecialRunSpeedScale (COW.GamePlay.PlayerAttributes)
Patches.AntenaHead = MemoryPatch("libunity.so",  0x2A3484, "\x80\x4F\xC3\x47", 4); NO
Patches.Female = MemoryPatch("libil2cpp.so", 0xAAFBFC , "\x01\x00\xA0\xE3\x1E\xFF\x2F\xE1", 8); YES - Function Name: get_IsFemale (COW.GamePlay.Player)
Patches.Recoil = MemoryPatch("libil2cpp.so", 0xB1F8D4 , "\x03\x00\xA0\xE3\x1E\xFF\x2F\xE1", 8); YES - Function Name: GetScatterRate (COW.GamePlay.PlayerAttributes)
Patches.NoBoard = MemoryPatch("libil2cpp.so", 0x10B656C , "\x00\x00\xA0\xE3\x1E\xFF\x2F\xE1", 8); YES - Function Name: Lj }zVtj (COW.Graphics.GylhRXT)
Patches.Body = MemoryPatch("libunity.so", 0xEE679C , "\xBD\x37\x86\xB5\x1E\xFF\x2F\xE1", 8); NO


extern "C" JNIEXPORT void JNICALL
Java_uk_lgl_modmenu_FloatingModMenuService_changeSeekBar(
    JNIEnv * env,
    jobject activityObject,
    jint feature, jint sliderValue) {
    __android_log_print(ANDROID_LOG_VERBOSE, "Mod Menu", "Feature = %d", feature);
    __android_log_print(ANDROID_LOG_VERBOSE, "Mod Menu", "sliderValue = %d", sliderValue);

    switch (feature) {
    case 3:
        //LOGD("Speed hack");
        //Speed hack in hook
        speedHack = sliderValue;
        break;
    case 4:
        //Speed hack in KittyMemory
        if (sliderValue == 0) {
            my_cool_Patches.RANDOMNAME.Restore(); //call this anything, it does not matter as it does not do anything! 0 = No function :)
        }
        else if (sliderValue == 1) {
            my_cool_Patches.FUNCTION1 = MemoryPatch(libName, 0x0400058A,
                "\x07\x00\xa0\xE3\x1E\xFF\x2F\xE1", 8);
            my_cool_Patches.FUNCTION1.Modify();
        }
        else if (sliderValue == 2) {
            my_cool_Patches.FUNCTION2 = MemoryPatch(libName, 0x0400058A,
                "\xA0\x00\xa0\xE3\x1E\xFF\x2F\xE1", 8);
            my_cool_Patches.FUNCTION2.Modify();
        }
        else if (sliderValue == 3) {
            my_cool_Patches.FUNCTION3 = MemoryPatch(libName, 0x0400058A,
                "\x10\x00\xa0\xE3\x1E\xFF\x2F\xE1", 8);
            my_cool_Patches.FUNCTION3.Modify();
        }
        //LOGD("feature 5");
        break;