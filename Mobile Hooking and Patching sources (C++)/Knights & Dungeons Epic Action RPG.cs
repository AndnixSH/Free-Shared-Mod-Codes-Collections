//Game: Knights & Dungeons: Epic Action RPG
//Version: 3.3.14
//APK: https://apkpure.com/knights-dungeons-epic-action-rpg/com.paradoxplaza.knightsanddungeons

//Class: Actor
void (*orig_OnDamage)(void *_this, float damage, int damageType);
void OnDamage(void *_this, float damage, int damageType) {
	if (_this != NULL)
	{	
		int ActorType = *(int*)((uint32_t)_this + 0x30); //public ActorType m_actorType;
		if (ActorType == 0){
			return;
		}
	}
	return orig_OnDamage(_this, damage, damageType);
}

//-----------------------

public class Actor : MonoBehaviour // TypeDefIndex: 3433
{
	// RVA: 0x1ECFF4 Offset: 0x1ECFF4 VA: 0x1ECFF4 Slot: 7
	public virtual void OnDamage(float damage, int damageType) { }
}

public enum ActorType
{
	[Token(Token = "0x4001539")]
	Player,
	[Token(Token = "0x400153A")]
	Normal_Monster,
	[Token(Token = "0x400153B")]
	Elite_Monster,
	[Token(Token = "0x400153C")]
	Boss,
	[Token(Token = "0x400153D")]
	NormalDestroy,
	[Token(Token = "0x400153E")]
	SkillDestroy,
	[Token(Token = "0x400153F")]
	Trap,
	[Token(Token = "0x4001540")]
	Box,
	[Token(Token = "0x4001541")]
	SoulBind,
	[Token(Token = "0x4001542")]
	DemonPlatform,
	[Token(Token = "0x4001543")]
	ItemTraderNpc,
	[Token(Token = "0x4001544")]
	DeliveryPlatform,
	[Token(Token = "0x4001545")]
	CrystalTower,
	[Token(Token = "0x4001546")]
	Pet,
	[Token(Token = "0x4001547")]
	Pvp,
	[Token(Token = "0x4001548")]
	Fly_Chest_Monster = 20,
	[Token(Token = "0x4001549")]
	Small_Chest_Monster = 50,
	[Token(Token = "0x400154A")]
	Mid_Chest_Monster,
	[Token(Token = "0x400154B")]
	Big_Chest_Monster,
	[Token(Token = "0x400154C")]
	Guild_Boss = 88
}
