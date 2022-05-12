// Namespace: 
public class LifeTarget : TileAssembly // TypeDefIndex: 5556
{
	//LifeTarget.OnHurt
	// RVA: 0xA5E748 Offset: 0xA5E748 VA: 0xA5E748 Slot: 50
	public virtual void OnHurt(Actor _actor) { }
}

public class Actor : ActorModel // TypeDefIndex: 5502
{
	// RVA: 0xBCF5B4 Offset: 0xBCF5B4 VA: 0xBCF5B4
	public bool CanBeAttack(bool _ignoreSleep = False) { }
}

[Il2CppDummyDll.FieldOffset(Offset = "0x6C")]
public AttackTargetCamp targetCamp;
	
public enum AttackTargetCamp // TypeDefIndex: 3778
{
	// Fields
	public int value__; // 0x0
	public const AttackTargetCamp partner = 0;
	public const AttackTargetCamp enemy = 1;
	public const AttackTargetCamp neutral = 2;
}