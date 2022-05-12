//Game: Dungeon Monsters - 3D Action RPG (free)
//Version: 3.1.116
//APK: https://apkcombo.com/dungeon-monsters-3d-action-rpg-free/com.manacube.dungeonmonsters/

//Class: FightManager
public int PlayerAttackDamage(PlayerMonster attacker, Monster target, out bool isCritical, out float coef)
{
	float num = (float)attacker.Dp;
	if (TutorialManager.Instance.StateIsLowerOrEqualThan(TutorialStep.FirstDungeon))
	{
		num = GlobalGameConfigManager.Instance.GameConfig.TutorialMonstersDP;
	}
	float num2 = num * this.ComputeAbilityModulation(attacker, attacker, target, AbilityAction.ChangeAttackDamage);
	isCritical = false;
	MonsterElement attacker2 = this.ComputeMonsterElement(attacker);
	MonsterElement target2 = this.ComputeMonsterElement(target);
	coef = this.ComputeAttackCoef(attacker2, target2);
	float num3 = UnityEngine.Random.Range(GlobalGameConfigManager.Instance.GameConfig.AttackLuckMin, GlobalGameConfigManager.Instance.GameConfig.AttackLuckMax) / 100f;
	float num4 = GlobalGameConfigManager.Instance.GameConfig.CriticalRate * this.ComputeAbilityModulation(attacker, attacker, target, AbilityAction.ChangeCriticalRate);
	if (TutorialManager.Instance.StateIsLowerOrEqualThan(TutorialStep.FirstDungeon))
	{
		num3 = 1f;
		num4 = -1f;
	}
	if (num2 != 0f)
	{
		isCritical = (UnityEngine.Random.value * 100f < num4);
	}
	if (isCritical)
	{
		float num5 = GlobalGameConfigManager.Instance.GameConfig.CriticalDamage * 0.01f;
		float num6 = this.ComputeAbilityModulation(attacker, attacker, target, AbilityAction.ChangeCriticalDamage);
		num2 *= 1f + (num5 - 1f) * num6;
	}
	return (int)Mathf.Round(num2 * coef * num3) * 100; //x100 damage
}

//No monster damage
public int MonsterAttackDamage(NPCMonster attacker)
{
	return 0;
}