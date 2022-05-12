public class CharacterAttr
{
	public int get_PhytAttack();
	// ARM: 0x10BD7E8 // Patch: 5f 0c a0 e3
	// x86: 0x108D116 // Patch: b8 00 5f 00 00 c3
}

public class Monster : CharacterBase
{
	public override bool Attack(int skillID);
	// ARM: 0x123B228 // Patch: 00 00 a0 e3 1e ff 2f e1
	// x86: 0x11F59BD // Patch: b8 00 00 00 00 c3
}

//Namespace: protocol
public class battleAttributeAdd : IExtensible 
{
	public float get_physicalDamageAdd();
	// ARM: 0x18AED4C // Patch: 5f 0c a0 e3 1e ff 2f e1
	// x86: 0x181A0F9 // Patch: b8 00 5f 00 00 c3
}

MOV	R0, #0x5F00
BX	LR
