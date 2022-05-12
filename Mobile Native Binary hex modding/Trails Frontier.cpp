; _DWORD __fastcall tr::PlayerItems::remove(tr::PlayerItems *__hidden this, int, int)
EXPORT _ZN2tr11PlayerItems6removeEii
_ZN2tr11PlayerItems6removeEii
; __unwind {
LDR             R12, =0xCCCCCCCD
STMFD           SP!, {R4-R8,LR}
UMULL           R3, R12, R12, R1
MOV             R12, R12,LSR#2
UXTB            R6, R12
ADD             R12, R12, R12,LSL#2
RSB             R4, R12, R1
MOV             R5, R2
MOV             R1, R6  ; int
MOV             R2, R4  ; int
MOV             R7, R0
BL              _ZN2tr11PlayerItems12getItemCountEii ; tr::PlayerItems::getItemCount(int,int)
RSB             R3, R5, R0 //Change to ADD R3, R5, R0 (65 to 85)
MOV             R2, R4  ; int
MOV             R1, R6  ; int
MOV             R0, R7  ; this
LDMFD           SP!, {R4-R8,LR}
BIC             R3, R3, R3,ASR#31
B               _ZN2tr11PlayerItems12setItemCountEiii ; tr::PlayerItems::setItemCount(int,int,int)

//Pseudocode
int __fastcall tr::PlayerItems::remove(tr::PlayerItems *this, int a2, int a3)
{
  int v3; // r6
  int v4; // r4
  tr::PlayerItems *v5; // r7
  int v6; // r3

  v3 = (unsigned __int8)(a2 / 5u);
  v4 = a2 % 5u;
  v5 = this;
  v6 = tr::PlayerItems::getItemCount(this, v3, a2 % 5u) - a3;
  //change to v6 = a3 + tr::PlayerItems::getItemCount(this, v3, a2 % 5u);
  return tr::PlayerItems::setItemCount(v5, v3, v4, v6 & ~(v6 >> 31));
}