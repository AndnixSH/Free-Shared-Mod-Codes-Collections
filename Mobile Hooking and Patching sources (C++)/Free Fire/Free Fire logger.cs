// Namespace: COW
internal static class EventLogger // TypeDefIndex: 3665
{
	public static void LogReportCheat(ulong cheater, uint reason, juSHG`G cheaterPlayerID) { } // RVA: 0x27BF128 Offset: 0x27BF128
	public static void SendCachedLogs(float gameTime = 0) { } // RVA: 0x27B6B48 Offset: 0x27B6B48
}

// Namespace: COW.GamePlay
internal enum MgAq{ // TypeDefIndex: 4335
{
	// Fields
	public int value__; // 0x8
	public const MgAq{ Self = -1; // 0x0
	public const MgAq{ ElectricZone = -1; // 0x0
	public const MgAq{ Vehicle = -2; // 0x0
	public const MgAq{ Exception = -3; // 0x0
	public const MgAq{ Falling = -4; // 0x0
	public const MgAq{ Cheating = -5; // 0x0
	public const MgAq{ VehicleExplode = -6; // 0x0
	public const MgAq{ Grenade = -9; // 0x0
	public const MgAq{ Burning = -10; // 0x0
	public const MgAq{ Oildrum = -16; // 0x0
	public const MgAq{ MissileExplode = -17; // 0x0
	public const MgAq{ Zombie = -19; // 0x0
	public const MgAq{ DamageZone = -20; // 0x0
	public const MgAq{ ResetRound = -21; // 0x0
	public const MgAq{ ToxicZone = -22; // 0x0
	public const MgAq{ MiniSentry = -23; // 0x0
	public const MgAq{ Leave = -50; // 0x0
	public const MgAq{ Cheating_SkinWidth = -105; // 0x0
	public const MgAq{ Cheating_StepOffset = -106; // 0x0
	public const MgAq{ Cheating_ShowName = -107; // 0x0
	public const MgAq{ Cheating_TreeVisible = -108; // 0x0
	public const MgAq{ Cheating_WeaponDataHack = -109; // 0x0
	public const MgAq{ Cheating_SpeedHack = -110; // 0x0
	public const MgAq{ Cheating_CameraHack = -111; // 0x0
	public const MgAq{ Cheating_AvatarScale = -112; // 0x0
	public const MgAq{ Cheating_WallHack = -113; // 0x0
	public const MgAq{ Cheating_Floating = -114; // 0x0
	public const MgAq{ Cheating_InvalidFirePos = -115; // 0x0
	public const MgAq{ Cheating_InvalidFireHitPos = -116; // 0x0
	public const MgAq{ Cheating_InvalidLossyScale = -117; // 0x0
	public const MgAq{ Cheating_AimAssist = -118; // 0x0
	public const MgAq{ Cheating_InvalidReloadSpeed = -119; // 0x0
	public const MgAq{ Cheating_StreamerHack = -120; // 0x0
	public const MgAq{ Cheating_ExceedMaxDamage = -121; // 0x0
	public const MgAq{ Cheating_NoScatter = -122; // 0x0
	public const MgAq{ Cheating_FallHigh = -123; // 0x0
	public const MgAq{ Cheating_InWaterHack = -124; // 0x0
	public const MgAq{ Cheating_ThermalView = -125; // 0x0
	public const MgAq{ Cheating_VehicleCrashParamsHack = -126; // 0x0
	public const MgAq{ Cheating_GameVar = -127; // 0x0
	public const MgAq{ Cheating_BoardtoSkySpeed = -128; // 0x0
	public const MgAq{ Cheating_Parachute = -129; // 0x0
	public const MgAq{ Cheating_JetPackHack = -130; // 0x0
	public const MgAq{ Cheating_AutoFire = -131; // 0x0
	public const MgAq{ Cheating_MemoryHack = -132; // 0x0
	public const MgAq{ Cheating_FastRunHack = -133; // 0x0
	public const MgAq{ Cheating_SkillDataHack = -134; // 0x0
	public const MgAq{ Cheating_CameraHackRuntime = -135; // 0x0
	public const MgAq{ Cheating_ScaleMapHack = -136; // 0x0
	public const MgAq{ Cheating_CharacterCenter = -137; // 0x0
	public const MgAq{ Cheating_WeaponDataID = -138; // 0x0
	public const MgAq{ Cheating_Sniper = -139; // 0x0
	public const MgAq{ Cheating_HackTargetPlayer = -140; // 0x0
}

// Namespace: tcp
[ProtoContractAttribute] // RVA: 0x47B440 Offset: 0x47B440
public class MatchmakingPlayer // TypeDefIndex: 6110
{
	public bool get_enable_hacker_auto_group(); // RVA: 0x23ABFB0 Offset: 0x23ABFB0
	public void set_enable_hacker_auto_group(bool value); // RVA: 0x23ABFB8 Offset: 0x23ABFB8
	public bool get_is_hacker(); // RVA: 0x23E3AD0 Offset: 0x23E3AD0
	public void set_is_hacker(bool value); // RVA: 0x23E3AD8 Offset: 0x23E3AD8
}

internal static class EventLogger // TypeDefIndex: 3422
{
	private static void SendGameMemoryLog(); // RVA: 0x24E8EC0 Offset: 0x24E8EC0
	public static void SendGameLagLog(); // RVA: 0x24E987C Offset: 0x24E987C
	public static void SendLogLeaveGame(); // RVA: 0x24F1048 Offset: 0x24F1048
	public static void SendNetworkEventLog(string eventType, object payload); // RVA: 0x24EADA8 Offset: 0x24EADA8
	public static void SendLogObserver(); // RVA: 0x24E7034 Offset: 0x24E7034
	public static void LogAndroidApplicationDetection(List`1<int> installedIDs); // RVA: 0x24EFBE0 Offset: 0x24EFBE0
	public static void OnApplicationQuit(); // RVA: 0x24F2358 Offset: 0x24F2358
	private static void LogStorage(string header); // RVA: 0x20B0304 Offset: 0x20B0304
	public static void SendLogEnterWaitingIsland(); // RVA: 0x24F2990 Offset: 0x24F2990
	public static void SendLogLeaveWaitingIslan	public static void SendLogEnterWaitingIsland(); // RVA: 0x24F2990 Offset: 0x24F2990d(); // RVA: 0x24F2D20 Offset: 0x24F2D20

}

// Namespace: COW.RemoteNotifications
public class RemoteNotificationManager_XG_1 : RemoteNotificationManager // TypeDefIndex: 6228
{
	private static void .cctor(); // RVA: 0x20ABBDC Offset: 0x20ABBDC
	private static bool IsEnabled(); // RVA: 0x20AC560 Offset: 0x20AC560
	private static bool IsFCMEnabled(); // RVA: 0x20AC670 Offset: 0x20AC670
	private static void OnRegistered(bool success); // RVA: 0x20ADE64 Offset: 0x20ADE64
	private static void RefreshCache(); // RVA: 0x20AE070 Offset: 0x20AE070
	private static void CacheToStorage(XGCache cache); // RVA: 0x20AEC48 Offset: 0x20AEC48
	private static void StorageToCache(XGCache cache); // RVA: 0x20AD2C4 Offset: 0x20AD2C4
	private static bool get_EnableCache(); // RVA: 0x20AFBA0 Offset: 0x20AFBA0
	private static void LogCache(string header); // RVA: 0x20AFC44 Offset: 0x20AFC44
}

// Namespace: COW.RemoteNotifications
public class RemoteNotificationManager_XG : RemoteNotificationManager // TypeDefIndex: 6218
{
	private static void .cctor(); // RVA: 0x20A4AE4 Offset: 0x20A4AE4
	private static bool IsEnabled(); // RVA: 0x20A5544 Offset: 0x20A5544
	private static bool IsFCMEnabled(); // RVA: 0x20A5654 Offset: 0x20A5654
	private static void LoadCacheFromStorage(); // RVA: 0x20A6774 Offset: 0x20A6774
	private static void OnRegistered(bool success); // RVA: 0x20A7B80 Offset: 0x20A7B80
}

// Namespace: COW
public static class GameConfig // TypeDefIndex: 9068
{
	public static bool get_FirebaseLogVerbose(); // RVA: 0x16F1004 Offset: 0x16F1004
	public static bool get_GERLogVerbose(); // RVA: 0x16F111C Offset: 0x16F111C
	public static bool get_InterAppLogVerbose(); // RVA: 0x16F1234 Offset: 0x16F1234
	public static bool get_XGLogVerbose(); // RVA: 0x16F134C Offset: 0x16F134C
	public static bool get_DisableCacheForFirebaseAnalytics(); // RVA: 0x16F1464 Offset: 0x16F1464
	public static bool get_FirebaseSettingsOverride(); // RVA: 0x16F157C Offset: 0x16F157C
	public static bool get_FirebaseEnabled(); // RVA: 0x16F1694 Offset: 0x16F1694
	public static bool get_FirebaseMessagingEnabled(); // RVA: 0x16F17AC Offset: 0x16F17AC
	public static bool get_FirebaseAnalyticsOverride(); // RVA: 0x16F18C4 Offset: 0x16F18C4
	public static bool get_GER_Enabled(); // RVA: 0x16F1AF4 Offset: 0x16F1AF4
	public static bool get_XG_Override(); // RVA: 0x16F2F34 Offset: 0x16F2F34
	public static bool get_XG(); // RVA: 0x16F304C Offset: 0x16F304C
	public static bool get_XG_FCM(); // RVA: 0x16F3164 Offset: 0x16F3164
	public static bool get_XG_NoCache(); // RVA: 0x16F327C Offset: 0x16F327C
}

// Namespace: COW
internal class LobbyServiceConnectionHandler : ServiceConnectionHandler // TypeDefIndex: 4582
{
	private void OnMsgGroup_ShowTeamMateCheating(uint ret, byte[] data); // RVA: 0x1C20964 Offset: 0x1C20964
}