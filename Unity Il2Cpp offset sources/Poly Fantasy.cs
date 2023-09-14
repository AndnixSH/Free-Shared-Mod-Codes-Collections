//Game: Poly Fantasy
//Version: 1.0.120
//APK: https://apkpure.com/poly-fantasy/com.poly.mpfen.android

//Hooking

bool (*IsInSameCamp)(void *_this, int enType);

void (*orig_RevDamage)(void *_this, int attackerId, long damage, int energyRate, int damageType, bool needHitAction, bool isSpell, bool isCrit, bool isImm);
void RevDamage(void *_this, int attackerId, long damage, int energyRate, int damageType, bool needHitAction, bool isSpell, bool isCrit, bool isImm) {
	if (_this != NULL)
	{	
		bool isinsamecamp = IsInSameCamp(_this, 0);
		if (isinsamecamp){
			return orig_RevDamage(_this, attackerId, damage * 20, energyRate, damageType, needHitAction, isSpell, isCrit, isImm);
		}
	}
	return orig_RevDamage(_this, attackerId, damage, energyRate, damageType, needHitAction, isSpell, isCrit, isImm);
}

//--------------------------------------------------------------
//Notes

public enum EntityType
{
	[Token(Token = "0x40004A5")]
	ET_NONE = -1,
	[Token(Token = "0x40004A6")]
	ET_HERO,
	[Token(Token = "0x40004A7")]
	ET_ENEMY,
	[Token(Token = "0x40004A8")]
	ET_MONSTER,
	[Token(Token = "0x40004A9")]
	ET_ANIMAL
}

public class Actor : Entity // TypeDefIndex: 2707
{
	// RVA: 0xC60D58 Offset: 0xC60D58 VA: 0xC60D58
	public bool IsInSameCamp(EntityType enType) { }
	
	// RVA: 0xC5F65C Offset: 0xC5F65C VA: 0xC5F65C
	public void RevDamage(int attackerId, long damage, int energyRate, DamageType damageType, bool needHitAction = True, bool isSpell = False, bool isCrit = False, bool isImm = False) { }
}

public class AntiCheatManager : MonoBehaviour // TypeDefIndex: 3314
{
	// RVA: 0xC7B8D8 Offset: 0xC7B8D8 VA: 0xC7B8D8
	private void Start() { }
}

public class AntiCheatManager : MonoBehaviour // TypeDefIndex: 3314
{
	// RVA: 0xC7BA98 Offset: 0xC7BA98 VA: 0xC7BA98
	private void OnObscuredTypeCheatingDetected() { } //1E FF 2f E1
	
	// RVA: 0xC7BB90 Offset: 0xC7BB90 VA: 0xC7BB90
	private void OnSpeedHackDetected() { } //1E FF 2f E1
	
	// RVA: 0xC7BC88 Offset: 0xC7BC88 VA: 0xC7BC88
	private void AntiCheatSureBtn() { } //1E FF 2f E1
}