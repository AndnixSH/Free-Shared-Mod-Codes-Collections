//Game: 노른 판타지
//Version: 1.0
//APK: https://apkpure.com/%EB%85%B8%EB%A5%B8-%ED%8C%90%ED%83%80%EC%A7%80/com.shinezone.norns.fantasy.kr

//Class: Pet
public float GetAttack(bool withBuff = true, BlockType targetType = BlockType.ANY_COLOR)
{
	float num = this.GetAbility(withBuff, null).atk;
	if (ModMenu.hack1 && this.IsPlayer)
	{
		num = this.GetAbility(withBuff, null).atk * 10f; // x10 DMG
	}
	if (ModMenu.hack2 && !this.IsPlayer)
	{
		num = this.GetAbility(withBuff, null).atk / 50f; // x10 DEF
	}
	if (this.core != null)
	{
		if (this.IsEnemy && this.core._currentBattle.Meta.enemyExtraAttackDataList.Count > 0)
		{
			num *= 1f + this.core._currentBattle.Meta.GetEnemyExtrAattackPercent(this.core);
		}
		if (this.IsEnemy && this.core._enemyGodPet != null)
		{
			num += this.GetAbility(withBuff, this.GodAbility).atk;
		}
		else if (this.core._godPet != null)
		{
			num += this.GetAbility(withBuff, this.GodAbility).atk;
		}
	}
	float num2 = num;
	if (withBuff)
	{
		List<BuffAbility> allBuffs = this.GetAllBuffs<BuffAbility>(true, true, true);
		foreach (BuffAbility buffAbility in allBuffs)
		{
			num2 += buffAbility.GetAttack(num, targetType);
		}
		foreach (BuffAbility buffAbility2 in allBuffs)
		{
			buffAbility2.ForceAttack(ref num2, targetType);
		}
	}
	return num2;
}
