//Game: Color Bump 3D
//Version: 3.4.9
//APK: https://play.google.com/store/apps/details?id=com.colorup.game&hl=en

///PlayerController - OnCollisionEnter(Collision collision)
hexPatches.Patch1 = MemoryPatch::createWithHex(libName, string2Offset("0x649E40"), "1E FF 2F E1");
hexPatches.Patch1.Modify();

///SaveLoadManager - hasNoAds
hexPatches.Patch2 = MemoryPatch::createWithHex(libName, string2Offset("0x64DFA4"), "01 00 A0 E3 1E FF 2F E1");
hexPatches.Patch2.Modify();

//hasNoAds
hexPatches.Patch3 = MemoryPatch::createWithHex(libName, string2Offset("0x64DCD4"), "01 00 A0 E3 1E FF 2F E1");
hexPatches.Patch3.Modify();