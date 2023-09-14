// Namespace: GameCore
public class RoleItem 
{
	public int get_PhysicsAttack(); // Offset: 0x112BC00 // Patch: 00 00 09 E3 1E FF 2F E1
	public int get_MagicalAttack(); // Offset: 0x112BC20 // Patch: 00 00 09 E3 1E FF 2F E1
}

MOVW	R0, #0x9000
BX	LR

// Namespace: GameCore
public class CUnit : CUnitBase, IAiUnit
{
	public bool IsDead(); // Offset: 0x1226300 // Patch: 01 00 A0 E3 1E FF 2F E1
}

MOV	R0, #1
BX	LR