//Game: Osmanlı'nın Onuru：LegendsArena
//Version: 1.12.5.0
//APK: https://www.apkmonk.com/app/com.moglo.moba/

// Namespace: MobaGo.Game
public class CCChar : PooledClassObject, IFrameUpdate // TypeDefIndex: 6625
{
	public bool get_hasCollidedWithVOs(); // Offset: 0x1207B34 // Patch: 01 00 A0 E3 1E FF 2F E1
	public bool get_hasCollided(); // Offset: 0x1207BAC // Patch: 01 00 A0 E3 1E FF 2F E1
	public bool IsSightExplorer(eCharCamp myCampType); // Offset: 0x1208050 // Patch: 01 00 A0 E3 1E FF 2F E1
	public bool IsSightExploree(eCharCamp myCampType); // Offset: 0x1208094 // Patch: 01 00 A0 E3 1E FF 2F E1
}

//Hex patch
// Patch: 01 00 A0 E3 1E FF 2F E1

//ARM assembly
//MOVS	R0, #0
//BX	LR
