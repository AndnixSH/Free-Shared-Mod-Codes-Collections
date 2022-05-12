public class SgtAndroidManager : MonoSingleton<SgtAndroidManager> // TypeDefIndex: 4962
{
	// RVA: 0x9228B0 Offset: 0x9228B0 VA: 0x9228B0
	public bool get_IsXignCode() { }
}

public abstract class LoginBase : MonoBehaviour // TypeDefIndex: 4951
{
	// RVA: 0x10EDBF0 Offset: 0x10EDBF0 VA: 0x10EDBF0 Slot: 8
	public virtual OSCode get_OSCode() { }
}

public class MonsterDamagePipeLine : BaseDamagePipeLine // TypeDefIndex: 5162
{
	// RVA: 0x1234AF8 Offset: 0x1234AF8 VA: 0x1234AF8 Slot: 6
	public override int CalculateDamage(float fAttack, BaseObjectAttribute cAttackerAttr, bool bINSState, bool bDefState) { }
}

public class CharacterDamagePipeLine : BaseDamagePipeLine // TypeDefIndex: 5161
{
	// RVA: 0x1660DE0 Offset: 0x1660DE0 VA: 0x1660DE0 Slot: 6
	public override int CalculateDamage(float fAttack, BaseObjectAttribute cAttackerAttr, bool bINSState, bool bDefState) { }
}