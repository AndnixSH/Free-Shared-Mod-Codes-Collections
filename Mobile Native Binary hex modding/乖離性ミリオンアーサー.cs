// Namespace: battle
public sealed class BattleDefs
{
	public static void cnvEnemyCsvData2EnemyData(EnemyData enemy_data, EnemyCsvData enemy_csvdata, EnemyLevelupCsvData enemy_lvup_csvdata, ENEMY enemy_party_csvdata_enemy); // Offset: 0xFE623C
}
{
.text:00E8856C sub_E8856C                              ; CODE XREF: .text:00E9BB24↓p
.text:00E8856C                                         ; DATA XREF: .data.rel.ro:021B4CF8↓o
.text:00E8856C ; __unwind 
.text:00E8856C                 STMFD           SP!, {R4-R8,R10,R11,LR}
.text:00E88570                 ADD             R11, SP, #0x18
.text:00E88574                 MOV             R5, R2
.text:00E88578                 MOV             R6, R3
.text:00E8857C                 CMP             R5, #0
.text:00E88580                 MOV             R4, R1
.text:00E88584                 CMPNE           R6, #0
.text:00E88588                 BEQ             locret_E88A6C
.text:00E8858C                 LDR             R0, [R5,#8]
.text:00E88590                 STR             R0, [R4]
.text:00E88594                 LDR             R0, [R5,#0xC]
.text:00E88598                 STR             R0, [R4,#4]
.text:00E8859C                 LDRD            R0, [R5,#0x28]
.text:00E885A0                 LDR             R8, [R11,#arg_0]
.text:00E885A4                 STR             R1, [R4,#0xC]
.text:00E885A8                 STR             R0, [R4,#8]
.text:00E885AC                 LDR             R0, [R5,#0x28]
.text:00E885B0                 LDR             R1, [R5,#0x2C]
.text:00E885B4                 STR             R1, [R4,#0x14]
.text:00E885B8                 STR             R0, [R4,#0x10]
..text:0105E99C             .LDR             R0, [R8,#4]   // MOV R0, #1 //01 00 a0 e3
.text:00E885C0                 STR             R0, [R4,#0x18]
.text:00E885C4                 LDR             R0, [R5,#0x30]
.text:00E885C8                 LDR             R1, [R5,#0x34]
.text:00E885CC                 STR             R1, [R4,#0x24]
.text:00E885D0                 STR             R0, [R4,#0x20]
..text:0105E9B4                .LDR             R0, [R5,#0x38] // MOV R0, #1 //01 00 a0 e3
..text:0FE62A8                .LDR             R1, [R5,#0x3C] // NOP //00 f0 20 e3
..text:0FE62AC                .STR             R1, [R4,#0x2C] // NOP //00 f0 20 e3
}
//mod
 if ( !v7 )
  {
    *(_DWORD *)a2 = *(_DWORD *)(a3 + 8);
    *(_DWORD *)(a2 + 4) = *(_DWORD *)(a3 + 12);
    *(_QWORD *)(a2 + 8) = *(_QWORD *)(a3 + 40);
    v9 = *(_DWORD *)(a3 + 40);
    *(_DWORD *)(a2 + 20) = *(_DWORD *)(a3 + 44);
    *(_DWORD *)(a2 + 16) = v9;
    *(_DWORD *)(a2 + 24) = 1;
    v10 = *(_DWORD *)(a3 + 48);
    *(_DWORD *)(a2 + 36) = *(_DWORD *)(a3 + 52);
    *(_DWORD *)(a2 + 32) = v10;
    *(_DWORD *)(a2 + 40) = 1;
  }
  
  //orig
   if ( !v7 )
  {
    *(_DWORD *)a2 = *(_DWORD *)(a3 + 8);
    *(_DWORD *)(a2 + 4) = *(_DWORD *)(a3 + 12);
    *(_QWORD *)(a2 + 8) = *(_QWORD *)(a3 + 40);
    v9 = *(_DWORD *)(a3 + 40);
    *(_DWORD *)(a2 + 20) = *(_DWORD *)(a3 + 44);
    *(_DWORD *)(a2 + 16) = v9;
    *(_DWORD *)(a2 + 24) = *(_DWORD *)(a5 + 4);
    v10 = *(_DWORD *)(a3 + 48);
    *(_DWORD *)(a2 + 36) = *(_DWORD *)(a3 + 52);
    *(_DWORD *)(a2 + 32) = v10;
    v11 = *(_DWORD *)(a3 + 56);
  }
  
-----------------------------------------------------------------
public sealed class Global
{
  	public static int get_targetFrameRate(); // Offset: 0x1A7ADE8
}
 
.text:012160B4 sub_12160B4                             ; CODE XREF: .text:019F75A8↓p
.text:012160B4                                         ; DATA XREF: .data.rel.ro:021BDF44↓o
.text:012160B4 ; __unwind {
.text:01A7A948                 NOP								//00 f0 20 e3
.text:01A7A94C                 MOV             R0, #0x3C ; '<'  //3c 00 a0 e3
.text:01A7A94C                 BX              LR				//1e ff 2f e1
 
signed int sub_12160B4()
{
  return 60;
}
 
-----------------------------------------------------------------
public class UISprite : UIWidget
{
	protected void Rotate(Vector2[] v, int offset); // Offset: 0x140F17C 
}

.text:0140EF18 loc_140EF18                             ; CODE XREF: sub_140EC8C+264↑j
.text:0140EF18                 LDR             R0, =(_GLOBAL_OFFSET_TABLE_ - 0x140EF2C)
..text:0140F40C                .MOV             R1, #0x1E // MOV R1, #0x3C ; '<' // 3c 10 a0 e3
.text:0140EF20                 LDR             R5, =(off_249F56C - 0x2494B2C)
.text:0140EF24                 ADD             R0, PC, R0 ; _GLOBAL_OFFSET_TABLE_
.text:0140EF28                 STR             R1, [R4,#0xC]
.text:0140EF2C                 LDR             R0, [R5,R0] ; dword_2540D3C

-----------------------------------------------------------------
public class Battle : SceneBaseBehaviour
{
	public void .ctor(); // Offset: 0x1C43804
}

.text:019F7260 sub_19F7260                             ; DATA XREF: .data.rel.ro:021B46C0↓o
..text:01C43364                .MOV             R1, #0x1E // MOV R1, #0x3C ; '<' // 3c 10 a0 e3
.text:019F7264                 STR             R1, [R0,#0x20]
.text:019F7268                 MOV             R1, #0
.text:019F726C                 B               sub_1589CC4

//mod
int __fastcall sub_19F7260(int a1)
{
  *(_DWORD *)(a1 + 32) = 60;
  return sub_1589CC4();
}

//orig
int __fastcall sub_19F7260(int a1)
{
  *(_DWORD *)(a1 + 32) = 30;
  return sub_1589CC4();
}