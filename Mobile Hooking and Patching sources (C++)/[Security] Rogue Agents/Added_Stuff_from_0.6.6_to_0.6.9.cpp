Added: 

public bool SetLocalCustomProperties(Hashtable propertiesToSet) { }
// RVA: 0x0 Offset: 0x0 VA: 0x0
class: Player

Changed:

internal sealed class <>f__AnonymousType8<<playfabId>j__TPar, <cInstanceId>j__TPar, <pInstanceId>j__TPar> // TypeDefIndex: 0
{
	// Fields
	[DebuggerBrowsableAttribute] // RVA: 0x0 Offset: 0x0 VA: 0x0
	private readonly <playfabId>j__TPar <playfabId>i__Field; // 0x0
	[DebuggerBrowsableAttribute] // RVA: 0x0 Offset: 0x0 VA: 0x0
	private readonly <cInstanceId>j__TPar <cInstanceId>i__Field; // 0x0
	[DebuggerBrowsableAttribute] // RVA: 0x0 Offset: 0x0 VA: 0x0
	private readonly <pInstanceId>j__TPar <pInstanceId>i__Field; // 0x0

	// Properties
	public <playfabId>j__TPar playfabId { get; }
	public <cInstanceId>j__TPar cInstanceId { get; }
	public <pInstanceId>j__TPar pInstanceId { get; }

	// Methods
	// RVA: 0x0 Offset: 0x0 VA: 0x0
	public <playfabId>j__TPar get_playfabId() { }
	// RVA: 0x0 Offset: 0x0 VA: 0x0
	public <cInstanceId>j__TPar get_cInstanceId() { }
	// RVA: 0x0 Offset: 0x0 VA: 0x0
	public <pInstanceId>j__TPar get_pInstanceId() { }
	[DebuggerHiddenAttribute] // RVA: 0x0 Offset: 0x0 VA: 0x0
	// RVA: 0x0 Offset: 0x0 VA: 0x0
	public void .ctor(<playfabId>j__TPar playfabId, <cInstanceId>j__TPar cInstanceId, <pInstanceId>j__TPar pInstanceId) { }
	[DebuggerHiddenAttribute] // RVA: 0x0 Offset: 0x0 VA: 0x0
	// RVA: 0x0 Offset: 0x0 VA: 0x0 Slot: 0
	public override bool Equals(object value) { }
	[DebuggerHiddenAttribute] // RVA: 0x0 Offset: 0x0 VA: 0x0
	// RVA: 0x0 Offset: 0x0 VA: 0x0 Slot: 0
	public override int GetHashCode() { }
	[DebuggerHiddenAttribute] // RVA: 0x0 Offset: 0x0 VA: 0x0
	// RVA: 0x0 Offset: 0x0 VA: 0x0 Slot: 0
	public override string ToString() { }
}

// Namespace: 
[CompilerGeneratedAttribute] // RVA: 0x0 Offset: 0x0 VA: 0x0

Added:

[IteratorStateMachineAttribute] // RVA: 0x0 Offset: 0x0 VA: 0x0
	// RVA: 0x0 Offset: 0x0 VA: 0x0
	private IEnumerator<float> HandleInvalidatedUser(Player p) { }
	[PunRPC] // RVA: 0x0 Offset: 0x0 VA: 0x0
	// RVA: 0x0 Offset: 0x0 VA: 0x0
	protected void NotValidated() { }

class MatchStateManager

Changed: 

private void TeamRequest(int playerID, string playfabId, string selectedCharacterInstanceId, string selectedPrimaryWeaponInstanceId) { }

class MatchStateManager

Added: 

private void _InitializePlayerForMatch() { }
	// RVA: 0x0 Offset: 0x0 VA: 0x0
	
class MatchStateManager

Added:

[CompilerGeneratedAttribute] // RVA: 0x0 Offset: 0x0 VA: 0x0
	// RVA: 0x0 Offset: 0x0 VA: 0x0
	private void <InitializePlayerForMatch>b__47_0(bool validated) { }
	
	class MatchStateManager
	
Added:

[CompilerGeneratedAttribute] // RVA: 0x0 Offset: 0x0 VA: 0x0
private sealed class MatchStateManager.<HandleInvalidatedUser>d__38 : IEnumerator<float>, IEnumerator, IDisposable // TypeDefIndex: 0
{
	// Fields
	private int <>1__state; // 0x0
	private float <>2__current; // 0x0
	public MatchStateManager <>4__this; // 0x0
	public Player p; // 0x0

	// Properties
	private float System.Collections.Generic.IEnumerator<System.Single>.Current { get; }
	private object System.Collections.IEnumerator.Current { get; }

	// Methods
	[DebuggerHiddenAttribute] // RVA: 0x0 Offset: 0x0 VA: 0x0
	// RVA: 0x0 Offset: 0x0 VA: 0x0
	public void .ctor(int <>1__state) { }
	[DebuggerHiddenAttribute] // RVA: 0x0 Offset: 0x0 VA: 0x0
	// RVA: 0x0 Offset: 0x0 VA: 0x0 Slot: 0
	private void System.IDisposable.Dispose() { }
	// RVA: 0x0 Offset: 0x0 VA: 0x0 Slot: 0
	private bool MoveNext() { }
	[DebuggerHiddenAttribute] // RVA: 0x0 Offset: 0x0 VA: 0x0
	// RVA: 0x0 Offset: 0x0 VA: 0x0 Slot: 0
	private float System.Collections.Generic.IEnumerator<System.Single>.get_Current() { }
	[DebuggerHiddenAttribute] // RVA: 0x0 Offset: 0x0 VA: 0x0
	// RVA: 0x0 Offset: 0x0 VA: 0x0 Slot: 0
	private void System.Collections.IEnumerator.Reset() { }
	[DebuggerHiddenAttribute] // RVA: 0x0 Offset: 0x0 VA: 0x0
	// RVA: 0x0 Offset: 0x0 VA: 0x0 Slot: 0
	private object System.Collections.IEnumerator.get_Current() { }
}

// Namespace: 
[CompilerGeneratedAttribute] // RVA: 0x0 Offset: 0x0 VA: 0x0
private sealed class MatchStateManager.<>c__DisplayClass42_0 // TypeDefIndex: 0
{
	// Fields
	public Player _player; // 0x0
	public MatchStateManager <>4__this; // 0x0
	public int playerID; // 0x0

	// Methods
	// RVA: 0x0 Offset: 0x0 VA: 0x0
	public void .ctor() { }
	// RVA: 0x0 Offset: 0x0 VA: 0x0
	internal void <TeamRequest>b__0(bool validated) { }
}

// Namespace: 

Added: 

Whole PlayerValidatorManager classes

Added:

public void SpeedHackDetect() { }
	// RVA: 0x0 Offset: 0x0 VA: 0x0
	public void ObscureTypeHackDetected() { }
	// RVA: 0x0 Offset: 0x0 VA: 0x0
	class NetworkPlayerManager
	
public ObscuredInt status; // 0x0

class NetworkPlayerManager

Added: 

private ObscuredFloat _defaultMovementSpeed; // 0x0
	private ObscuredFloat _aimingMovementSpeed; // 0x0
	
	class LocomotiveAbility
	
	Changed:
	public ObscuredFloat playerSpeed; // 0x0
	
	class LocomotiveAbility
	
Added: 

public sealed class GameNetworkPlayer.EmptyEvent : MulticastDelegate // TypeDefIndex: 0
{
	// Methods
	// RVA: 0x0 Offset: 0x0 VA: 0x0
	public void .ctor(object object, IntPtr method) { }
	// RVA: 0x0 Offset: 0x0 VA: 0x0 Slot: 0
	public virtual void Invoke() { }
	// RVA: 0x0 Offset: 0x0 VA: 0x0 Slot: 0
	public virtual IAsyncResult BeginInvoke(AsyncCallback callback, object object) { }
	// RVA: 0x0 Offset: 0x0 VA: 0x0 Slot: 0
	public virtual void EndInvoke(IAsyncResult result) { }
}

// Namespace:

Added: 

private void OnSpeedHackDetected() { }
	// RVA: 0x0 Offset: 0x0 VA: 0x0
	private void OnObscuredCheatingDetected() { }
	// RVA: 0x0 Offset: 0x0 VA: 0x0
	
Class: PlayerController

Added:

public static void PreSpawn(GameObject spawnObject, int amount = 30) { }
	// RVA: 0x0 Offset: 0x0 VA: 0x0
	
	class: PoolManager
	
Added:

public const string ValidatedFlag = "validFlag"; // 0x0
class: PropertiesKeys

Added: 

private void checkMessage() { }
	// RVA: 0x0 Offset: 0x0 VA: 0x0
class: ConnectionSceneControl

Added: 

public float MIN_TIME_DIFFERENCE; // 0x0
	public float SEND_PING_INTERVAL; // 0x0
	
class: CapturePointMatchSettings

Added: 

public string GameMessage; // 0x0
 class GameManager 
 
 Added:
 
 public void ReportPlayer(string reason) { }
	// RVA: 0x0 Offset: 0x0 VA: 0x0
	
	public void ValidateUserAccountData(string playfabId, string cInstanceId, string pInstanceId, Action<bool> callback) { }
	// RVA: 0x0 Offset: 0x0 VA: 0x0
	public void ValidateUserAccount(Action<string> messageCallback, Action<string> failureCallback) { }
	// RVA: 0x0 Offset: 0x0 VA: 0x0
	
	class: UserManager
	
Added: 

public static Action<ReportPlayerClientResult> <>9__102_0; // 0x0
	public static Action<PlayFabError> <>9__102_1; // 0x0
	
	// RVA: 0x0 Offset: 0x0 VA: 0x0
	internal void <ReportPlayer>b__102_0(ReportPlayerClientResult result) { }
	// RVA: 0x0 Offset: 0x0 VA: 0x0
	internal void <ReportPlayer>b__102_1(PlayFabError error) { }
	
	class: UserManager
	
Added: 

[CompilerGeneratedAttribute] // RVA: 0x0 Offset: 0x0 VA: 0x0
private sealed class UserManager.<>c__DisplayClass106_0 // TypeDefIndex: 0
{
	// Fields
	public Action<bool> callback; // 0x0

	// Methods
	// RVA: 0x0 Offset: 0x0 VA: 0x0
	public void .ctor() { }
	// RVA: 0x0 Offset: 0x0 VA: 0x0
	internal void <ValidateUserAccountData>b__0(ExecuteCloudScriptResult result) { }
	// RVA: 0x0 Offset: 0x0 VA: 0x0
	internal void <ValidateUserAccountData>b__1(PlayFabError error) { }
}

// Namespace: 
[CompilerGeneratedAttribute] // RVA: 0x0 Offset: 0x0 VA: 0x0
private sealed class UserManager.<>c__DisplayClass107_0 // TypeDefIndex: 0
{
	// Fields
	public Action<string> messageCallback; // 0x0
	public Action<string> failureCallback; // 0x0

	// Methods
	// RVA: 0x0 Offset: 0x0 VA: 0x0
	public void .ctor() { }
	// RVA: 0x0 Offset: 0x0 VA: 0x0
	internal void <ValidateUserAccount>b__0(ExecuteCloudScriptResult result) { }
	// RVA: 0x0 Offset: 0x0 VA: 0x0
	internal void <ValidateUserAccount>b__1(PlayFabError error) { }
}

// Namespace: 

Added: 

private void Setup() { }
	// RVA: 0x0 Offset: 0x0 VA: 0x0
	class: Main_GamePage
	
	Added: 
	// RVA: 0x0 Offset: 0x0 VA: 0x0
	private void checkMessage() { }
	class: MainPage
	
	