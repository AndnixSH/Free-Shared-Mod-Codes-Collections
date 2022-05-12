//Game: LEGO® NEXO KNIGHTS™: MERLOK 2.0
//Version: 3.0.2
//APK: https://apkpure.com/lego%C2%AE-nexo-knights%E2%84%A2-merlok-2-0/com.lego.nexoknights.merlok

//Class: EnemyController
public override int CalculateDamageToReceive(HitData aHitData)
{
	if (this.mAmountOfHitToShield.GetRealValue() > 0f)
	{
		return 0;
	}
	float num = (float)aHitData.Damage;
	this.LogDamage("totalDamage Received: " + num * 100f); // 1 hit kill
	if (aHitData.Hitter is KnightController)
	{
		KnightController knightController = aHitData.Hitter as KnightController;
		KnightData knightData = knightController.GetKnightData();
		if (aHitData.IsComboFinalHit)
		{
			num *= knightData.ComboLastHitAttackMultiplier;
			this.LogDamage(string.Concat(new object[]
			{
				"totalDamage: ",
				num,
				" *knightData.ComboLastHitAttackMultiplier: ",
				knightData.ComboLastHitAttackMultiplier
			}));
		}
		if (aHitData.IsCrit && !aHitData.IsCharged)
		{
			num *= knightData.CriticalMultiplier;
			this.LogDamage(string.Concat(new object[]
			{
				"totalDamage: ",
				num,
				" *knightData.CriticalMultiplier: ",
				knightData.CriticalMultiplier
			}));
			num *= knightController.CritDamageModifier;
			this.LogDamage(string.Concat(new object[]
			{
				"totalDamage: ",
				num,
				" *knight.CritDamageModifier: ",
				knightController.CritDamageModifier
			}));
		}
		else if (aHitData.IsCharged)
		{
			num *= (float)knightData.ChargeAttackMultiplier;
			this.LogDamage(string.Concat(new object[]
			{
				"totalDamage: ",
				num,
				" *knightData.ChargeAttackMultiplier: ",
				knightData.ChargeAttackMultiplier
			}));
			num *= knightController.ChargeReductionPerHit;
			this.LogDamage(string.Concat(new object[]
			{
				"totalDamage: ",
				num,
				" *knight.ChargeReductionPerHit: ",
				knightController.ChargeReductionPerHit
			}));
		}
	}
	if (aHitData.Hitter is MechController)
	{
		MechData mechData = (aHitData.Hitter as MechController).GetMechData();
		if (aHitData.IsDash)
		{
			num *= mechData.m_DashDamageMultiplier;
			this.LogDamage(string.Concat(new object[]
			{
				"totalDamage: ",
				num,
				" *mechData.m_DashDamageMultiplier: ",
				mechData.m_DashDamageMultiplier
			}));
		}
		else if (aHitData.isShockwave)
		{
			num *= mechData.m_ShockWaveDamageMultiplier;
			this.LogDamage(string.Concat(new object[]
			{
				"totalDamage: ",
				num,
				" *mechData.m_ShockWaveDamageMultiplier: ",
				mechData.m_ShockWaveDamageMultiplier
			}));
			num *= MonoSingleton<ComboPowerManager>.Instance.ShockWaveDamageModifier;
			this.LogDamage(string.Concat(new object[]
			{
				"totalDamage: ",
				num,
				" *ComboPowerManager.ShockWaveDamageModifier: ",
				MonoSingleton<ComboPowerManager>.Instance.ShockWaveDamageModifier
			}));
		}
	}
	num = (float)this.mFlatDamageToReceive + num * this.mReceivedDamageMultiplier.GetCappedValue();
	if (this.mFlatDamageToReceive > 0 && this.mReceivedDamageMultiplier.GetCappedValue() != 1f)
	{
		this.LogDamage("totalDamage = mFlatDamageToReceive + (totalDamage * mReceivedDamageMultiplier.GetCappedValue())");
		this.LogDamage(string.Concat(new object[]
		{
			"totalDamage: ",
			num,
			" mFlatDamageToReceive: ",
			this.mFlatDamageToReceive,
			" ReceivedDamageMultiplier.GetCappedValue(): ",
			this.mReceivedDamageMultiplier.GetCappedValue()
		}));
	}
	if (aHitData.m_IsFromKnightOrMech)
	{
		num -= num * base.Stats.m_DamageReductionPercent;
		this.LogDamage("totalDamage = totalDamage - (totalDamage * Stats.m_DamageReductionPercent)");
		this.LogDamage(string.Concat(new object[]
		{
			"totalDamage: ",
			num,
			" Stats.m_DamageReductionPercent: ",
			base.Stats.m_DamageReductionPercent
		}));
	}
	if (aHitData.DamageElement != null)
	{
		float elitePowerWeaknessResistance = this.GetElitePowerWeaknessResistance(aHitData);
		num *= elitePowerWeaknessResistance;
		this.LogDamage(string.Concat(new object[]
		{
			"totalDamage: ",
			num,
			" *powerModifier: ",
			elitePowerWeaknessResistance
		}));
	}
	int num2 = Mathf.RoundToInt(num);
	this.LogDamage("roundedDamage: " + num2);
	return num2 * 10000; // 1 hit kill
}

//KnightController
public override int CalculateDamageToReceive(HitData aHitData)
{
	if (this.mAmountOfHitToShield.GetRealValue() > 0f)
	{
		return 0;
	}
	int a = Mathf.RoundToInt((float)aHitData.Damage * 0.2f);
	int b = aHitData.Damage - base.Stats.Defense;
	int num = Mathf.Max(a, b);
	int num2 = this.mFlatDamageToReceive + Mathf.RoundToInt((float)num * this.mReceivedDamageMultiplier.GetCappedValue());
	if (MonoSingleton<ChallengeManager>.Instance.CurrentChallengeId == EChallenge.ENEMY_MORE_DAMAGE)
	{
		EnemyController enemyController = (!(aHitData.Hitter != null)) ? null : aHitData.Hitter.GetComponent<EnemyController>();
		if (enemyController != null && !enemyController.m_isCreatedByPower)
		{
			num2 += Mathf.RoundToInt((float)num2 * MonoSingleton<ChallengeManager>.Instance.CurrentChallenge.m_EnemyDamageRatio);
		}
	}
	return 0;
}