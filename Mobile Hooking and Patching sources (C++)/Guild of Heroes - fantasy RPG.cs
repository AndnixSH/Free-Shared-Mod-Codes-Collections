InitAntiTmprd
GetExecutableSignatureCached

// Namespace: game
public class Abilities : EntityComponent, IReusable, IReleasable // TypeDefIndex: 10630
{
	// RVA: 0xCACA28 Offset: 0xCACA28 VA: 0xCACA28
	public void SetCooldown(Ability ab, float total_time_mult = 1, int force_ms = -1) { }
}

// Namespace: game
public class CombatUnit : EntityComponent, IReusable, IReleasable // TypeDefIndex: 13098
{
	// RVA: 0x105BAD0 Offset: 0x105BAD0 VA: 0x105BAD0
	public void UpdateHitter(Unit hitter) { }
	
	// RVA: 0x105BB98 Offset: 0x105BB98 VA: 0x105BB98
	private bool IsHitDodged(Unit attacker, EnumHit type) { }
	
	// RVA: 0x105BE38 Offset: 0x105BE38 VA: 0x105BE38
	private ulong TakeDamage(ulong damage, bool pure_damage = False) { }
	
	[FieldOffset(Offset = "0xC")]
	public Unit unit;
}

// Namespace: game
public class Unit : EntityRoot, IReusable, IReleasable // TypeDefIndex: 16697
{
	// RVA: 0x117424C Offset: 0x117424C VA: 0x117424C
	public EnumParty get_party() { }
}


Potions Won't Decrease 

public class Ability
public bool get_is_consumable(); 

Hex Code - 0000A0E31EFF2FE1
===============================
Revive Cost 0

public static class CostCalc
public static long GetRevivePrice(); 

Hex Code - 0000A0E31EFF2FE1
================================
Achievements Unlocked

public class SocnetAchievement : Achievement
public bool IsUnlocked();
public bool IsPending();

Hex Code - 0100A0E31EFF2FE1

==============================
High Sell Price

public static class CostCalc
public static uint GetSellPrice(float rating);

Hex Code - 7F0AA0E31EFF2FE1
==============================
Potion Cost 0

public static class CostCalc
public static uint GetBrewPotionCost
public static long GetUpgradeExtraSlotPrice()	
public static long GetPotionExtraSlotPrice()
public static uint GetHirePvEFriendCost(uint real_level);
	
public static uint GetHirePvPFriendCost(uint real_level);

Hex Code - 0000A0E31EFF2FE1
==============================
No Requriement to Upgrade weapon and armors

public static class CraftRecipes
private static uint CalculateRatingCostForItemUpgrade

Hex Code - 0000A0E31EFF2FE1
===============================
Auto play Unlocked 

public class G : MonoBehaviour
public bool get_IS_AUTO_PLAY_AVAILABLE()

Hex Code - 0100A0E31EFF2FE1
================================
Unlock Slots

public class Inventory : EntityComponent, IReusable, IReleasable 
public uint GetUpgradeCost()

Hex Code  - 0000A0E31EFF2FE1
===============================
No CoolDown

public class Abilities : EntityComponent, IReusable, IReleasable
public void SetCooldown(Ability ab, optional float total_time_mult, optional int force_ms)

Hex Code - 00 00 A0 E3 1E FF 2F E1


