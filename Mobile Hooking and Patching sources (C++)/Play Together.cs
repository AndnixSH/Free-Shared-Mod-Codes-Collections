//This shitty game have random ban, so I gave up. No hook source this time, make one yourself lol

// Namespace: PlayTogether.MiniGame.TreasureHunt
public class Treasure : MonoBehaviour // TypeDefIndex: 16988
{
	// RVA: 0x8f3d14 VA: 0x88f3d14
	private Void Update() { }
	
	// RVA: 0x8f4220 VA: 0x88f4220
	public Void SetToVibration(Single range) { }
	
	// RVA: 0x8f4c0c VA: 0x88f4c0c
	private Void SetActiveMeshGameObject(Boolean active) { }
}

public class AntiCheatListener : MonoBehaviour // TypeDefIndex: 12134
{
	// RVA: 0xc52550 VA: 0x8c52550
	public Boolean get_IsCheating() { }
}

public class BagItem : ItemIconUnit // TypeDefIndex: 10398
{
	// RVA: 0xc591f8 VA: 0x8c591f8
	private Void AddFishingPoleInfo() { }
	
	// RVA: 0xc5a330 VA: 0x8c5a330
	private Void OnClickRepair() { }
}

public abstract class DialogUnit : MonoBehaviour, IEscape // TypeDefIndex: 11201
{
	// RVA: 0xcbe888 VA: 0x8cbe888
	public eDialogType get_DialogType() { }

	// RVA: 0xcc93dc VA: 0x8cc93dc Slot: 11
	public virtual Void DialogShow() { }
	
	// RVA: 0xcd9bf4 VA: 0x8cd9bf4 Slot: 22
	public virtual Void OnEscape() { }
}

public class NetworkInfo // TypeDefIndex: 12278
{
	// Methods
	// RVA: 0xd60bfc VA: 0x8d60bfc
	public static Boolean IsActiveVPN() { }
}

public class FishShadowController : MonoBehaviour // TypeDefIndex: 11438
{
	// RVA: 0xd7dfb0 VA: 0x8d7dfb0
	private Void ChangeState(FishState state) { }

	// RVA: 0xd7e940 VA: 0x8d7e940
	private Void Update() { }
}

public class FishingFloatController : MonoBehaviour // TypeDefIndex: 11441
{
	// RVA: 0xd7f890 VA: 0x8d7f890
	public Void Fail() { }
	
	// RVA: 0xd81f44 VA: 0x8d81f44
	public Void SetFishLevel(UInt32 level) { }
}

// Namespace: Animancer
public abstract class AnimancerState : ICanFade, IEnumerable`1, IEnumerable, IEnumerator, IDisposable // TypeDefIndex: 9383
{
	// RVA: 0x175109c VA: 0x975109c
	public Void set_Speed(Single value) { }
}

public class CacheUser // TypeDefIndex: 9948
{
	// RVA: 0xc8b10c VA: 0x8c8b10c
	public Boolean IsActiveToSubscription(Subscription_Type packageType) { }
}

// Namespace: PlayTogether.MiniGame
public class MiniGameObby : MiniGameUnit // TypeDefIndex: 16933
{
	// RVA: 0xcdf72c VA: 0x8cdf72c
	public Void OnEndItemCoolTime(UInt32 itemId) { }
		
	// RVA: 0xce13ec VA: 0x8ce13ec
	private Void ShowBoxRewardOpen(Int32 stage, UInt32 rewardId, List`1 rewards) { }
}

public class ObbyCheckPointData // TypeDefIndex: 9446
{
	// RVA: 0xd6950c VA: 0x8d6950c
	public Int32 get_stage() { }
}

public class ObbyStageManager : MonoBehaviour // TypeDefIndex: 9447
{
	// RVA: 0xd69a90 VA: 0x8d69a90
	public Void SetCurCheckPointByStage(Int32 stage) { }
}

public class ActorDefaultControlPlayer : ActorDefaultControl, IEscape // TypeDefIndex: 9680
{
	// RVA: 0xdb630c VA: 0x8db630c
	protected Void FishingHit() { }

	// RVA: 0xdb9c8c VA: 0x8db9c8c Slot: 131
	public override Void FishLeave() { }
	
	// RVA: 0xdbab34 VA: 0x8dbab34 Slot: 133
	public override Void FishingFail() { }
	
	// RVA: 0xdbab74 VA: 0x8dbab74 Slot: 134
	public override Void FishingMiss() { }
	
	// RVA: 0xdb6588 VA: 0x8db6588
	public Boolean StartFishing() { }

	// RVA: 0xdb7548 VA: 0x8db7548 Slot: 127
	public override Void UpdateFishingState(eFishingState fishingState) { }

	// RVA: 0xdb95f4 VA: 0x8db95f4
	private Void ReceiveFishingBegin(UInt32 dificultyLevel) { }
	
	// RVA: 0xdbab8c VA: 0x8dbab8c Slot: 128
	protected override Void UpdateFishing() { }
	
	// RVA: 0xdb903c VA: 0x8db903c
	private Void EnableControl(Boolean enable) { }

	// RVA: 0xdb9c78 VA: 0x8db9c78 Slot: 130
	public override Void FishingBite() { }
}

// Namespace: PlayTogether.Kinematic
public class KinematicControllerUnit : MonoBehaviour, ICharacterController // TypeDefIndex: 16832
{	
	// RVA: 0xeeff94 VA: 0x8eeff94 Slot: 14
	public virtual Void SetData(Content_Type contentType, Body_Type bodyType) { }
}

// Namespace: PlayTogether.Network.Native
public class NetNativeProtocol : TcpClient // TypeDefIndex: 15125
{
	// RVA: 0x91fe4c VA: 0x891fe4c
	public Void SendToCheatDetect(Int32 type, String comment) { }
}

public class MissionSystem : ISystem // TypeDefIndex: 11753
{
	// RVA: 0xa62ebc VA: 0x8a62ebc
	public Void OnPlayMissionAD(UInt32 missionID) { }
}

public class ActorMiniGameControl : ActorCharacterControl, IActorHideObject, IGameItem, IGameData, IBullet // TypeDefIndex: 9777
{
	// RVA: 0xb1fe48 VA: 0x8b1fe48 Slot: 66
	public override Void OnJump() { }
}

public class DialogFishingGetItem : DialogUnit // TypeDefIndex: 10666
{
	// RVA: 0xba9ea8 VA: 0x8ba9ea8
	public Void SetRewardInfo(FishingCatchA data, Action closeCB) { }
}

public class DialogGachaInfoPopup : DialogUnit // TypeDefIndex: 10677
{
	// RVA: 0xbafefc VA: 0x8bafefc
	public Void OnPlayDailyFreeBoxAD() { }
}

// Namespace: PlayTogether.Cinemachine
public class CMCICommon : CinemachineCtrlUnit // TypeDefIndex: 16759
{
	// RVA: 0xbc9764 VA: 0x8bc9764
	public CinemachineVirtualCameraBase ActiveToContentCMV(eCMVCameraCommonType type) { }
}

public class DialogTodayADReward : DialogUnit // TypeDefIndex: 11119
{
	// RVA: 0xccbac0 VA: 0x8ccbac0
	private Void OnClickAD(TodayAdreward reward, Boolean isPurchasedAdSkip) { }
}

public class FrameWork : Singleton`1 // TypeDefIndex: 9625
{
	// RVA: 0xd8ba94 VA: 0x8d8ba94 Slot: 4
	public override Void Init() { }
}

public class DialogServerCheck : DialogUnit // TypeDefIndex: 10152
{
	// RVA: 0xdbe3d8 VA: 0x8dbe3d8
	private Void Update() { }
}

public class QuestSystem : ISystem // TypeDefIndex: 11823
{
	// RVA: 0xfa675c VA: 0x8fa675c
	public Void RequestQuestComplete(UInt32 groupID, Boolean adReward) { }
	
	// RVA: 0xfa7608 VA: 0x8fa7608
	public Void RequestQuestAccept(UInt32 groupID) { }
}

public class UITrophyADButton : MonoBehaviour // TypeDefIndex: 10555
{
	// RVA: 0x10b358c VA: 0x90b358c
	public Void OnPlayPassTicketAD() { }
}