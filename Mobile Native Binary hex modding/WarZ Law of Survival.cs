// Namespace: Assets.Core.Models.InventoryModels
public class Inventories : IInventories, ISerializableNode, IModel 
{
	public bool CheckSplit(int inventoryIndex, int cellIndex); // Offset: 0xFFF22C | Patch: 01 00 a0 e3 1e ff 2f e1
	public void Split(int inventoryIndex, int cellIndex); // RVA: 0xFFC570 Offset: 0xFFC570
.text:00FFC8BC loc_FFC8BC                              ; CODE XREF: .text:00FFC8AC↑j
.text:00FFC8BC                 ADD             R0, R4, R0,LSL#3
.text:00FFC8C0                 STR             R8, [SP,#0xC]
.text:00FFC8C4                 LDR             R2, [R0,#0xAC]
.text:00FFC8C8                 LDR             R1, [R0,#0xB0]
.text:00FFC8CC                 MOV             R0, R6
.text:00FFC8D0                 BLX             R2
.text:00FFC8D4                 MOV             R10, R0
.text:00FFC8D8                 CMP             R9, #0
.text:00FFC8DC                 BEQ             loc_FFCAA0
.text:00FFC8E0                 ADD             R0, R5, R5,LSR#31
.text:00FFC8E4                 LDR             R1, =(off_1DDBF00 - 0x1DA13CC)
.text:00FFC8E8                 LDR             R7, [R9]
.text:00FFC8EC                 MOV             R6, R5
.text:00FFC8F0                 MOV             R8, R0,ASR#1
.text:00FFC8F4                 LDR             R0, =(_GLOBAL_OFFSET_TABLE_ - 0xFFC904)
..text:00FFC8F8                 MOV             R4, #0x14 //14 40 a0 e3
.text:00FFC8FC                 ADD             R0, PC, R0 ; _GLOBAL_OFFSET_TABLE_
.text:00FFC900                 LDR             R1, [R1,R0] ; dword_1E34990
.text:00FFC904                 LDRH            R0, [R7,#0xA2]
.text:00FFC908                 LDR             R1, [R1]
.text:00FFC90C                 CMP             R0, #0
.text:00FFC910                 BEQ             loc_FFC934
.text:00FFC914                 LDR             R2, [R7,#0x48]
.text:00FFC918                 MOV             R3, #0
}

// Namespace: Assets.Core.Models.InventoryModels.InventoryItemBehaviour
public class FoodInventoryItemBehaviour : InventoryItemBehaviour // TypeDefIndex: 6960
{
	// Methods
	public void .ctor(IDictionary`2<string, object> descrNode, IInventoryStack stack); // RVA: 0x1006A2C Offset: 0x1006A2C
	
}

// Namespace: Assets.Core.Models.InventoryModels.InventoryStack
public class DurabilityInventoryStack : InventoryStack // TypeDefIndex: 6973
{
	private int get__durability(); // Offset: 0x15EBB14 | Patch: 64 00 a0 e3 1e ff 2f e1
}

// Namespace: Assets.Core.Models.Price
public class ExternalPrice : Price // TypeDefIndex: 7066
{
	public override bool Check(IEntity entity, optional IArguments arguments); // Offset: 0x1602E48 | Patch: 01 00 a0 e3 1e ff 2f e1
}

// Namespace: Assets.Core.Models.Price
public class InventoryStacksPrice : Price // TypeDefIndex: 7073
{
	public override bool Check(IEntity entity, optional IArguments arguments); // Offset: 0x160408C | Patch: 01 00 a0 e3 1e ff 2f e1
}

// Namespace: Assets.Core.Models.Price
public class StaticResourceAmountPrice : Price // TypeDefIndex: 7075
{
	public override bool Check(IEntity entity, optional IArguments arguments); // Offset: 0x1604E20 | Patch: 01 00 a0 e3 1e ff 2f e1
	public override void Pay(IEntity entity, optional IArguments arguments); // RVA: 0x160513C Offset: 0x160513C
	change  VSUB.F64        D16, D16, D8 to VADD.F64        D16, D16, D8
	change c8 to 88
}

// Namespace: Assets.Core.Models.Price
public class StaticResourcePrice : Price // TypeDefIndex: 7076
{
	public override bool Check(IEntity entity, optional IArguments arguments); // Offset: 0x1605424 | Patch: 01 00 a0 e3 1e ff 2f e1
	public override void Pay(IEntity entity, optional IArguments arguments); // RVA: 0x160566C Offset: 0x160566C
	change  VSUB.F64  D16, D8, D16 to VADD.F64  D16, D8, D16
	change 60 to 20
}

// Namespace: Assets.Core.Models.Requirement
public class LevelRequirement : Requirement // TypeDefIndex: 7126
{
	public override bool Check(IEntity entity, optional IArguments arguments); // Offset: 0x162CD6C | Patch: 01 00 a0 e3 1e ff 2f e1
}