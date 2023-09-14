//Game: Runegate Heroes
//Version: 0.21
//APK: https://apkpure.com/runegate-heroes/net.wargaming.runegateheroes

public class UseSkillButton : MonoBehaviour
{
	public float get_CooldownTimer(); // Patch: 00 00 A0 E3
	public bool get_IsInCooldown(); // Patch: 00 00 A0 E3
	public bool get_IsAutoCast(); // Patch: 00 00 A0 E3
	private bool CanUse(optional bool showMessage, optional bool ignoreTutorialAbility); // Patch: 01 00 A0 E3 1E FF 2F E1
	private bool IsSwitchingSkill(); // Patch: 01 00 A0 E3 1E FF 2F E1
}

// Namespace: CharacterModule
public class CharacterStat : BaseStat, IAttackStats, IHealthStats, IMovementStats, IStunnableStats
{
	public int get_DeployCost(); // Patch: 00 00 A0 E3
	public int get_DeployCostIncreaseByRespawn(); // Patch: 00 00 A0 E3
	private void set_FuseCost(int value);  // Patch: 00 00 A0 E3
	public int get_RankUpCost(); // Patch: 00 00 A0 E3
	public int get_StoreCost(); // Patch: 00 00 A0 E3
}

// Namespace: Abilities
public class CharacterAbility : Ability`1<Character> 
{
	public override float get_CooldownTimer(); // Patch: 00 00 A0 E3
}
	
//Hex patch
// Patch: 00 00 A0 E3 1E FF 2F E1

//ARM assembly
//MOVS	R0, #0
//BX	LR
