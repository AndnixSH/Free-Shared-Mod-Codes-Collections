 [StorageAttribute] // RVA: 0x51C720 Offset: 0x51C720 VA: 0x51C720
public class User : SaveObject, IGameLogic // TypeDefIndex: 12286
{
	public int get_coins() { }
	public int get_diamonds() { } //7F 08 A0 E3 1E FF 2F E1
	public bool isCheater
}

public static class AntiCheat // TypeDefIndex: 12330
{
	public static void Init() { }
	public static void SeedObscuredTypes() { }
	private static void OnFrameworkIsInitialized() { }
	private static void OnGameValuesCheatDetected() { }
	public static void TriggerCheatDetection(float time) { }
	public static void SetAsCheater(string reason) { }
	public static void CheckID() { }
	public static void Verify() { }
	public static void Goodbye(float time, bool crash) { }
	public static void CheckIfBanned() { }
	public static bool SanityCheck() { }
}

public class ProfileModel // TypeDefIndex: 13038
{
	public bool isCheater { get; set; }
	public bool get_isCheater() { }
}