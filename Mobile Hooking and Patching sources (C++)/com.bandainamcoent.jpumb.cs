public sealed class BattleGameMain : MonoBehaviour, ISystemSettingTarget // TypeDefIndex: 5698
{
	// RVA: 0x1877A68 Offset: 0x1877A68 VA: 0x1877A68
	private void ChangeHP(KaijuModel kj, int value) { }
	
	// RVA: 0x16E63D8 Offset: 0x16E63D8 VA: 0x16E63D8
	private int CalcAttackDamageWithAdditionalDamageSkill(int baseDamage, KaijuModel atk, KaijuModel def, bool withAttackScene) { }
}

public sealed class KaijuModel : MonoBehaviour, BattleObjectBase, IClickable, IEventSystemHandler // TypeDefIndex: 5840
{
	// RVA: 0x1766F74 Offset: 0x1766F74 VA: 0x1766F74 Slot: 4
	public PlayerSide get_PlayerSide() { }
}

public enum PlayerSide // TypeDefIndex: 5897
{
	// Fields
	public int value__; // 0x0
	public const PlayerSide None = -1;
	public const PlayerSide Player = 0;
	public const PlayerSide Enemy = 1;
	public const PlayerSide NPC_3rdNeutral = 2;
	public const PlayerSide NPC_3rdFriend = 3;
	public const PlayerSide NPC_3rdEnemy = 4;
	public const PlayerSide NPC_NonresistanceNeutral = 5;
	public const PlayerSide NPC_NonresistanceFriend = 6;
	public const PlayerSide NPC_NonresistanceEnemy = 7;
	public const PlayerSide NPC_NormalFriend = 8;
	public const PlayerSide NPC_NormalEnemy = 9;
	public const PlayerSide NPC_SlaveFriend = 10;
	public const PlayerSide NPC_SlaveEnemy = 11;
	public const PlayerSide NPC_ImmortalFriend = 12;
	public const PlayerSide NPC_ImmortalEnemy = 13;
	public const PlayerSide NPC_ImmortalNeutral = 14;
	public const PlayerSide NPC_PlayerTarget = 15;
	public const PlayerSide NPC_EnemyTarget = 16;
	public const PlayerSide NPC_Object = 17;
	public const PlayerSide Num = 18;
}