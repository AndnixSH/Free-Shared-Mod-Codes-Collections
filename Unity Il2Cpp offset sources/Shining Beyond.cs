public class CardBattleStats 

    public long get_DamageReceived() { }

    public long get_DamageDealt() { }
	
public E_UNIT_FACTION GetEnemiesOfFaction(E_UNIT_FACTION faction) { }
public ReadOnlyCollection<GoBattleCharacter> get_EnemyTeam() { }

// Namespace: SBRuntime.Battle.Gameplay
public class GameplayUnit : IQuadTreeObject // TypeDefIndex: 18629
{
	// RVA: 0x16418C0 Offset: 0x16418C0 VA: 0x16418C0
	public bool get_IsHero() { }

	// RVA: 0x1647558 Offset: 0x1647558 VA: 0x1647558 Slot: 10
	public virtual void ApplyDamage(CombatDamageData damageData) { }
}