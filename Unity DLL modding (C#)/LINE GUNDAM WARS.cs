//LSD.Model.Calculator
//UnitEffected
//God mode
		public int Dodge<TUnitValues, TPartsValues, TPartsCustomValues, TAbilityValues>(TUnitValues values, IList<TPartsValues> parts, IList<TPartsCustomValues> partsCustom, IList<TAbilityValues> abilities, IList<t_user_sphere_board_parameter_direct> direct, StageBonus bonus) where TUnitValues : IUnitValues where TPartsValues : IPartsValues where TPartsCustomValues : IPartsCustomValues where TAbilityValues : IAbilityValues
		{
			UnitValues values2 = UnitValues.Create<TUnitValues>(values);
			IRouleBounusStatus rouleBounusStatus = bonus.UnitTypeBuff.FindByUnitType(this.unitMaster.Unit(values2.id).unitType);
			values2.lv = this.Level<TUnitValues>(values, bonus);
			int num = this.unitCalculator.Dodge<UnitValues, TPartsValues, TPartsCustomValues, TAbilityValues>(values2, parts, partsCustom, abilities, direct);
			decimal num2 = 1m;
			num2 *= bonus.EnvironmentBuff.GetRate(this.unitMaster.Character(values2.id), CharacterParam.Dodge);
			num2 *= bonus.ParameterBuff.GetRate(CharacterParam.Dodge);
			num2 *= rouleBounusStatus.Dodge;
			if (ModMenu.hack1)
			{
				return (int)(num * 9999 * num2);
			}
			return (int)(num * num2) * ModMenu.defMulti;
		}
		
		//1 HIT:
		public int AttackBeam<TUnitValues, TPartsValues, TPartsCustomValues, TAbilityValues>(TUnitValues values, IList<TPartsValues> parts, IList<TPartsCustomValues> partsCustom, IList<TAbilityValues> abilities, IList<t_user_sphere_board_parameter_direct> direct, StageBonus bonus) where TUnitValues : IUnitValues where TPartsValues : IPartsValues where TPartsCustomValues : IPartsCustomValues where TAbilityValues : IAbilityValues
		{
			UnitValues values2 = UnitValues.Create<TUnitValues>(values);
			IRouleBounusStatus rouleBounusStatus = bonus.UnitTypeBuff.FindByUnitType(this.unitMaster.Unit(values2.id).unitType);
			values2.lv = this.Level<TUnitValues>(values, bonus);
			int num = this.unitCalculator.AttackBeam<UnitValues, TPartsValues, TPartsCustomValues, TAbilityValues>(values2, parts, partsCustom, abilities, direct);
			decimal num2 = 1m;
			num2 *= bonus.EnvironmentBuff.GetRate(this.unitMaster.Character(values2.id), CharacterParam.AttackBeam);
			num2 *= bonus.ParameterBuff.GetRate(CharacterParam.AttackBeam);
			num2 *= rouleBounusStatus.AttackBeamRate;
			if (ModMenu.hack2)
			{
				return (int)(num * 9999 * num2);
			}
			return (int)(num * num2) * ModMenu.dmgMulti;
		}
		
		
		public int AttackBullet<TUnitValues, TPartsValues, TPartsCustomValues, TAbilityValues>(TUnitValues values, IList<TPartsValues> parts, IList<TPartsCustomValues> partsCustom, IList<TAbilityValues> abilities, IList<t_user_sphere_board_parameter_direct> direct, StageBonus bonus) where TUnitValues : IUnitValues where TPartsValues : IPartsValues where TPartsCustomValues : IPartsCustomValues where TAbilityValues : IAbilityValues
		{
			UnitValues values2 = UnitValues.Create<TUnitValues>(values);
			IRouleBounusStatus rouleBounusStatus = bonus.UnitTypeBuff.FindByUnitType(this.unitMaster.Unit(values2.id).unitType);
			values2.lv = this.Level<TUnitValues>(values, bonus);
			int num = this.unitCalculator.AttackBullet<UnitValues, TPartsValues, TPartsCustomValues, TAbilityValues>(values2, parts, partsCustom, abilities, direct);
			decimal num2 = 1m;
			num2 *= bonus.EnvironmentBuff.GetRate(this.unitMaster.Character(values2.id), CharacterParam.AttackBullet);
			num2 *= bonus.ParameterBuff.GetRate(CharacterParam.AttackBullet);
			num2 *= rouleBounusStatus.AttackBulletRate;
			if (ModMenu.hack2)
			{
				return (int)(num * 9999 * num2);
			}
			return (int)(num * num2) * ModMenu.dmgMulti;
		}
		
		//Dump enemy
		LSD.Battle.EnemyCharacter.GetEffectedAttackBeam(StageBonus) : int @06001530
		LSD.Battle.EnemyCharacter.GetEffectedAttackBullet(StageBonus) : int @0600152F
		LSD.Battle.EnemyCharacter.GetEffectedCritical(StageBonus) : int @06001533
		LSD.Battle.EnemyCharacter.GetEffectedCriticalDamage(StageBonus) : int @06001534
		LSD.Battle.EnemyCharacter.GetEffectedDefenseBeam(StageBonus) : int @06001532
		LSD.Battle.EnemyCharacter.GetEffectedDefenseBullet(StageBonus) : int @06001531
		LSD.Battle.EnemyCharacter.GetEffectedDodge(StageBonus) : int @06001536
		LSD.Battle.EnemyCharacter.GetEffectedHit(StageBonus) : int @06001535

		if (ModMenu.hack3)
			{
				return 0;
			}