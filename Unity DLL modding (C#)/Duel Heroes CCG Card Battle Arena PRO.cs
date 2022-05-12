//BattleProcess.cs
		private static void DamageUnit(GameModel model, BattleLogging log, UnitInfo unitDamaged, bool player1Unit, FieldPosition unitPos, int damage, BattleLogEventSequence eventSequence = null, string hasOwnAnimation = "")
		{
			if (unitDamaged == null)
			{
				return;
			}
			if (unitDamaged.GetAbility(UnitAbilityType.DivineShield) != null)
			{
				damage = 0;
				unitDamaged.RemoveAbility(9);
				if (log != null)
				{
					log.AddLog(new BattleLogEvent(BattleEventType.UnitLoosesAbility, 9, player1Unit, unitPos, FieldPosition.NullObject, 1, 0, null, hasOwnAnimation));
				}
			}
			bool player1Turn = model.player1Turn;
			unitDamaged.currentHp -= damage;
			//
			if (model.player1Turn && Menu.Hack1)
			{
				unitDamaged.currentHp -= damage * 100;
			}
			if (!model.player1Turn && Menu.Hack2)
			{
				unitDamaged.currentHp += damage;
			}
			//
			if (unitDamaged.currentHp <= 0)
			{
				BattleProcess.ProcessUnitDeath(model, log, unitDamaged, player1Unit, unitPos, eventSequence, hasOwnAnimation);
				bool isGameOver = model.isGameOver;
				return;
			}
			if (log != null && damage > 0)
			{
				BattleLogging.Systemlog(string.Format("{0}: {1} --> {2}", "Logic", "Battle", string.Concat(new object[]
				{
					"Unit ",
					unitDamaged.unitName,
					" (",
					unitDamaged.id,
					") from ",
					unitPos,
					" got damage: ",
					damage
				})));
				log.AddLog(new BattleLogEvent(BattleEventType.UnitDamaged, damage, player1Unit, unitPos, FieldPosition.NullObject, 0, 0, eventSequence, hasOwnAnimation));
			}
		}