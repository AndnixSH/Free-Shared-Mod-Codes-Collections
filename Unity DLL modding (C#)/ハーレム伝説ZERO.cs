//Game: ハーレム伝説ZERO
//Version: 1.3.2
//APK: https://apkpure.com/%E3%83%8F%E3%83%BC%E3%83%AC%E3%83%A0%E4%BC%9D%E8%AA%ACzero/com.triexz.skyhorizon.android

//UIRoot
public void OnGUI()
{
	ModMenu.OnGUI();
}

// Destiny.Game.MobController
public void GetHurtDamage(BattleDamage battleDamage, BaseCcontroller damageFrom, bool trigger = true)
{
	if (ModMenu.toggle2 && this.Category != FacadeCategoryEnum.Enemy) // mod 2
	{
		return;
	}
	if (this == null || base.name.IndexOf("Destiny") >= 0 || base.name.IndexOf("God") >= 0)
	{
		return;
	}
	if (battleDamage.Damage == 0.0)
	{
		return;
	}
	battleDamage = battleDamage.Clone();
	MobController mobController = (MobController)damageFrom;
	BattleActionInstance battleActionInstance = new BattleActionInstance();
	battleActionInstance.CasterUnit = this;
	battleActionInstance.damage = battleDamage;
	if (battleDamage.AbilityID > 0)
	{
		battleActionInstance.GetHurtAbilityID = battleDamage.AbilityID;
	}
	if (mobController != null && trigger)
	{
		mobController.TriggerForInstance(BattleTriggerType.UnitCalcDamageBefore, battleActionInstance, new List<MobController>
		{
			this
		}, true);
	}
	if (trigger)
	{
		this.TriggerForInstance(BattleTriggerType.VictimTakingDamageBefore, battleActionInstance, (!(mobController == null)) ? new List<MobController>
		{
			mobController
		} : null, true);
	}
	if (battleDamage.IsNormalAttack && trigger)
	{
		this.TriggerForInstance(BattleTriggerType.VictimTakingNormalDamageBefore, battleActionInstance, (!(mobController == null)) ? new List<MobController>
		{
			mobController
		} : null, true);
	}
	if (battleDamage.Damage == 0.0)
	{
		return;
	}
	bool hasCritical = false;
	battleDamage.CriticalChance = (int)Math.Round((double)battleDamage.CriticalChance - this.MobModel.GetAttribute(AttributeType.ReduceTakenCriticalChance));
	if (MathHelper.HasChance(battleDamage.CriticalChance))
	{
		if (trigger)
		{
			mobController.TriggerForInstance(BattleTriggerType.UnitAttackBeforeCritical, battleActionInstance, new List<MobController>
			{
				this
			}, true);
		}
		hasCritical = true;
	}
	this.MobModel.VictimTakingDamage(battleDamage, hasCritical);
	if (!battleDamage.IsHit)
	{
		this.ShowHudState(UIHelper.GetHudStateSpriteName(7, this.Category));
		BattleStatisticControl.Instance.AddData(battleDamage);
		return;
	}
	BattleDamage battleDamage2;
	if (battleDamage.IsNormalAttack && mobController != null)
	{
		battleDamage.ShowDamage = battleDamage.Damage / (double)mobController.NormalAtkAmount;
		battleDamage.ShowDamage = Math.Max(1.0, battleDamage.ShowDamage);
		if (battleDamage.JustShow)
		{
			this.ShowBeHurtEffect(damageFrom, mobController, battleDamage.IsCritical);
			if (battleDamage.ShowDamage == 0.0)
			{
				return;
			}
			battleDamage2 = battleDamage.Clone();
			battleDamage2.IsNormalAttack = true;
			battleDamage2.IsNormalAttack_Statistic = true;
			battleDamage2.Damage = 0.0;
			this.AddjustHp(battleDamage2, damageFrom, battleDamage.Type, battleDamage.IsCritical, battleDamage.IsNormalAttack, battleDamage.ShowFloatHp, battleDamage.JustShow, -battleDamage.ShowDamage);
			return;
		}
	}
	if (battleDamage.Damage == 0.0)
	{
		return;
	}
	double num = Math.Max(1.0, battleDamage.Damage);
	if (num != battleDamage.Damage)
	{
		battleDamage.ShowDamage = num;
		battleDamage.Damage = num;
	}
	battleDamage2 = battleDamage.Clone();
	battleDamage2.Damage = -num;
	if (ModMenu.toggle1) // mod 1
	{
		battleDamage2.Damage = -(num * 999.0);
	}
	this.AddjustHp(battleDamage2, damageFrom, battleDamage.Type, battleDamage.IsCritical, battleDamage.IsNormalAttack, battleDamage.ShowFloatHp, battleDamage.JustShow, -battleDamage.ShowDamage);
	if (mobController != null && battleDamage.IsNormalAttack)
	{
		double vampireValue = mobController.MobModel.GetVampireValue(num);
		battleDamage2 = battleDamage.Clone();
		if (vampireValue > 0.0)
		{
			battleDamage2.IsVampire = true;
		}
		else
		{
			battleDamage2.IsVampire = false;
		}
		battleDamage2.Damage = vampireValue;
		mobController.AddjustHp(battleDamage2, mobController, battleDamage.Type, false, true, false, false, vampireValue);
	}
	if (trigger)
	{
		this.TriggerForInstance(BattleTriggerType.VictimTakingDamageAfter, battleActionInstance, (!(mobController == null)) ? new List<MobController>
		{
			mobController
		} : null, true);
	}
	if (battleDamage.IsNormalAttack && !battleDamage.JustShow && mobController != null)
	{
		mobController.Trigger(BattleTriggerType.UnitAttackAfter, new List<MobController>
		{
			this
		});
	}
	if (mobController != null && mobController.MobModel.GetAttribute(AttributeType.AttackRange) * 0.0099999997764825821 <= 3.0 && trigger)
	{
		this.TriggerForInstance(BattleTriggerType.VictimTakingNoMeleeDamage, battleActionInstance, (!(mobController == null)) ? new List<MobController>
		{
			mobController
		} : null, true);
	}
	if (battleDamage.Type == DamageType.Physical)
	{
		if (trigger)
		{
			this.TriggerForInstance(BattleTriggerType.VictimTakingPhysicalDamage, battleActionInstance, (!(mobController == null)) ? new List<MobController>
			{
				mobController
			} : null, true);
		}
	}
	else if (trigger)
	{
		this.TriggerForInstance(BattleTriggerType.VictimTakingSpellDamage, battleActionInstance, (!(mobController == null)) ? new List<MobController>
		{
			mobController
		} : null, true);
		if (battleDamage.Type == DamageType.Fire)
		{
			this.TriggerForInstance(BattleTriggerType.VictimTakingFireDamage, battleActionInstance, (!(mobController == null)) ? new List<MobController>
			{
				mobController
			} : null, true);
		}
	}
	if (battleDamage.IsHit)
	{
		if (mobController != null && mobController != this && trigger)
		{
			mobController.TriggerForInstance(BattleTriggerType.UnitAttack, battleActionInstance, new List<MobController>
			{
				this
			}, true);
		}
	}
	else if (!battleDamage.JustShow)
	{
		this.Trigger(BattleTriggerType.VictimHasDodged, (!(mobController == null)) ? new List<MobController>
		{
			mobController
		} : null);
		if (mobController != null)
		{
			mobController.Trigger(BattleTriggerType.UnitAttackBeDogded, new List<MobController>
			{
				this
			});
		}
	}
	if (battleDamage.IsCritical && mobController != null)
	{
		if (battleDamage.IsNormalAttack)
		{
			MobController control = mobController;
			mobController.MobModel.CurrentMobSource.TriggerUniqueVoice(VoiceTriggerType.Voice_Attack, 100f, null, mobController.name, string.Empty, control, false);
		}
		if (trigger)
		{
			mobController.TriggerForInstance(BattleTriggerType.UnitAttackAfterCritical, battleActionInstance, new List<MobController>
			{
				this
			}, true);
		}
		if (trigger)
		{
			this.TriggerForInstance(BattleTriggerType.VictimTakingCritical, battleActionInstance, new List<MobController>
			{
				mobController
			}, true);
		}
	}
	if (this.MobModel.EliteType == EliteType.Boss)
	{
		this.MobModel.CurrentMobSource.TriggerUniqueVoice(VoiceTriggerType.Voice_Hurt, 5f, null, base.name, string.Empty, this, true);
	}
	else
	{
		this.MobModel.CurrentMobSource.TriggerUniqueVoice(VoiceTriggerType.Voice_Hurt, 100f, null, base.name, string.Empty, this, true);
	}
	if (damageFrom != null && damageFrom is MobController)
	{
		MobController mobController2 = damageFrom as MobController;
		if (battleDamage.IsNormalAttack && mobController2.MobSourceOriginal != null)
		{
			if (battleDamage.IsCritical)
			{
				MobController control = mobController2;
				mobController2.MobModel.CurrentMobSource.TriggerUniqueSound(SoundTriggerType.TakeAttack, "1", false, 0, 1f, -1f, string.Empty, control);
			}
			else
			{
				MobController control = mobController2;
				mobController2.MobModel.CurrentMobSource.TriggerUniqueSound(SoundTriggerType.TakeAttack, "0", false, 0, 1f, -1f, string.Empty, control);
			}
		}
	}
}
