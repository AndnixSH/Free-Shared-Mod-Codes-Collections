public class ActorBase : MonoBehaviour // TypeDefIndex: 3898
{
	// RVA: 0x1FB1AF4 Offset: 0x1FB1AF4 VA: 0x1FB1AF4 Slot: 29
	public virtual void onHit(ActorBase actor, int nSkillID, bool bSkillHit, int nDamage, bool bCritical, bool bHitBack, float fHitBack, bool bFall, bool bDamageTower, bool bSpecial, bool bDotHit)
	{
	}
	
	// RVA: 0x1FB1DA4 Offset: 0x1FB1DA4 VA: 0x1FB1DA4 Slot: 31
	public virtual void onHit(ActorBase actor, int nSkillID, bool bSkillHit, int nDamage, bool bCritical, bool bHitBack, float fHitBack, bool bFall, bool bDamageTower)
	{
	}
	
	// RVA: 0x1FB2860 Offset: 0x1FB2860 VA: 0x1FB2860 Slot: 34
	public virtual void onHit(ActorBase actor, int nSkillID, bool bSkillHit, int nDamage, bool bCritical = false, bool bHitBack = false, float fHitBack = 1f, bool bFall = true)
	{
	}
	
	// RVA: 0x1FAFC08 Offset: 0x1FAFC08 VA: 0x1FAFC08
	public void onPvPHit(ActorBase actor, int nDamage, int nCurLife, int nMaxLife, bool bCritical) { }
	
	// RVA: 0x1FA5AA8 Offset: 0x1FA5AA8 VA: 0x1FA5AA8
	public bool get_CanAttack() { }
	
	// RVA: 0x1FA35A8 Offset: 0x1FA35A8 VA: 0x1FA35A8
	public ActorInfo get_Info() { }
	
	// RVA: 0x1F98EF4 Offset: 0x1F98EF4 VA: 0x1F98EF4
	public int get_MaxLife() { }
	
	[Il2CppDummyDll.FieldOffset(Offset = "0x14")]
	public ActorType mType;
}

public class DungeonManager // TypeDefIndex: 3829
{
	// RVA: 0x20DA1BC Offset: 0x20DA1BC VA: 0x20DA1BC
	public bool isConditionFinished(Dungeon.StarCondition condition) { }
}

1 hit kill
God Mode
Always win with 3 star
Work on PvE and PvP