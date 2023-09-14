//Game: 버스트 (BURST)
//Version: 1.0.7
//APK: https://apkcombo.com/apk-downloader/?device=&arch=&android=&q=com.gravity.HOD.aos

//Need hooking and split linked functions

public class ABFMainController : Scene3D
{
	// RVA: 0x693570 Offset: 0x693570 VA: 0x693570
	private bool _PowerCheatCheck() { } //return false
	
	// RVA: 0x69384C Offset: 0x69384C VA: 0x69384C
	private bool _PowerCheatCheck(int levelPower) { } //return false
	
	// RVA: 0x6939EC Offset: 0x6939EC VA: 0x6939EC
	public bool PowerCheatCheck() { } //return false
}

public class ArtTestController : CharController
{
	// RVA: 0x123BB54 Offset: 0x123BB54 VA: 0x123BB54 Slot: 54
	public override void DoAttack() { }
}

public class NPCController : CharController
{
	// RVA: 0x539828 Offset: 0x539828 VA: 0x539828 Slot: 54
	public override void DoAttack() { }
}

public class PCController : CharController 
{
	// RVA: 0xCCE46C Offset: 0xCCE46C VA: 0xCCE46C Slot: 54
	public override void DoAttack() { }
}

public class TrapController : CharController
{
	// RVA: 0xE2212C Offset: 0xE2212C VA: 0xE2212C Slot: 54
	public override void DoAttack() { }
}

public abstract class CharController : IController
{
	// RVA: 0x7CE614 Offset: 0x7CE614 VA: 0x7CE614 Slot: 36
	public override void SetHP(int HP) { }
	
	// RVA: 0x7CE660 Offset: 0x7CE660 VA: 0x7CE660 Slot: 32
	public override CampType get_Camp() { }
	
	// RVA: 0x7CFE80 Offset: 0x7CFE80 VA: 0x7CFE80 Slot: 44
	public virtual bool get_CanUseSkill() { }
}