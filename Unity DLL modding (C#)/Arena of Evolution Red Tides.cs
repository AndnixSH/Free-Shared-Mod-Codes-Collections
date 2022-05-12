	private static int CalcDamage(CSBattleUnit caster, CSBattleUnit target, int attackType, int dmgType, CSSkillEffectNormalDamage.Param param, int skillDamage = 0)
		{
			int num = 0;
			bool flag = false;
			CSBUCLuaSharedData luaData = caster.LuaData;
			CSBUCLuaSharedData luaData2 = target.LuaData;
			CSRandom csRamdom = caster.csRamdom;
			if (caster.StateCtrl.HasSimpleState(25))
			{
				dmgType = 2;
			}
			if (attackType != 0)
			{
				if (attackType == 1)
				{
					num = CSSkillEffectNormalDamage.CalcDamageByDmgType(luaData, luaData2, dmgType, skillDamage);
				}
			}
			else
			{
				int damage = (int)csRamdom.GetDouble(luaData.GetUnitAttr(7), luaData.GetUnitAttr(41));
				num = CSSkillEffectNormalDamage.CalcDamageByDmgType(luaData, luaData2, dmgType, damage);
				double unitAttr = luaData.GetUnitAttr(45);
				double unitAttr2 = luaData.GetUnitAttr(44);
				double unitAttr3 = luaData.GetUnitAttr(43);
				double unitAttr4 = luaData.GetUnitAttr(42);
				double unitAttr5 = luaData2.GetUnitAttr(27);
				if (csRamdom.GetDouble(1.0, 100.0) <= unitAttr)
				{
					num *= 6;
					flag = true;
				}
				else if (csRamdom.GetDouble(1.0, 100.0) <= unitAttr2)
				{
					num = (int)((double)num * 4.5);
					flag = true;
				}
				else if (csRamdom.GetDouble(1.0, 100.0) <= unitAttr3)
				{
					num *= 3;
					flag = true;
				}
				else if (csRamdom.GetDouble(1.0, 100.0) <= unitAttr4)
				{
					num = (int)((double)num * 1.5);
					flag = true;
				}
				else if (csRamdom.GetDouble(1.0, 100.0) <= unitAttr5)
				{
					num = 0;
				}
				double num2 = caster.LuaData.GetUnitAttr(1);
				double unitAttr6 = luaData.GetUnitAttr(18);
				num2 = (double)((int)((double)num * unitAttr6 / 100.0)) + num2;
				if (num2 > caster.LuaData.GetUnitAttr(4))
				{
					num2 = (double)((int)caster.LuaData.GetUnitAttr(4));
				}
				caster.LuaData.SetUnitAttr(1, num2);
				CSCUnitAttrDesc unitAttrDesc = CSCGameDB.GetInstance().GetUnitAttrDesc(target.resID);
				double unitDamageTag = luaData.GetUnitDamageTag(CSSkillEffectNormalDamage.RACE_2_DAMAGE_TAG_MAP[unitAttrDesc.ggg_race1]);
				double unitDamageTag2 = luaData.GetUnitDamageTag(CSSkillEffectNormalDamage.RACE_2_DAMAGE_TAG_MAP[unitAttrDesc.ggg_race2]);
				double unitDamageTag3 = luaData.GetUnitDamageTag(CSSkillEffectNormalDamage.CAREER_2_DAMAGE_TAG_MAP[unitAttrDesc.ggg_career]);
				double unitDamageTag4 = luaData.GetUnitDamageTag(CSSkillEffectNormalDamage.UNIT_TYPE_2_DAMAGE_TAG_MAP[unitAttrDesc.ggg_unit_type]);
				double num3 = 1.0 + (unitDamageTag + unitDamageTag2 + unitDamageTag3 + unitDamageTag4) / 100.0;
				num = (int)((double)num * num3);
			}
			double num4 = 1.0;
			if (param.dmgPPM != 0)
			{
				num4 = (double)param.dmgPPM * 0.0001;
			}
			num = (int)((double)num * param.fixMul * 0.0001 * num4);
			double unitAttr7 = target.LuaData.GetUnitAttr(36);
			if (unitAttr7 > 0.0)
			{
				target.LuaData.SetUnitAttr(36, unitAttr7 - 1.0);
				num = 0;
			}
			if (!caster.IsSummonUnit())
			{
				double unitAttr8 = caster.LuaData.GetUnitAttr(2);
				CSCUnitAttrDesc unitAttrDesc2 = CSCGameDB.GetInstance().GetUnitAttrDesc(caster.resID);
				int num5 = CSCGameDB.GetInstance().GetTestConf().gggenergyRule[unitAttrDesc2.ggg_career];
				if (num5 == 1)
				{
					double num6 = Math.Min(20.0, (double)num / 2.5);
					num6 = (num6 + unitAttr8) * (1.0 + caster.LuaData.GetUnitAttr(85) / 100.0);
					if (num6 > caster.LuaData.GetUnitAttr(5))
					{
						num6 = caster.LuaData.GetUnitAttr(5);
					}
					caster.LuaData.SetUnitAttr(2, num6);
				}
				else if (num5 == 2)
				{
					int num7 = Math.Min(10, num / 5);
					num7 = (int)(((double)num7 + unitAttr8) * (1.0 + caster.LuaData.GetUnitAttr(85) / 100.0));
					if ((double)num7 > caster.LuaData.GetUnitAttr(5))
					{
						num7 = (int)caster.LuaData.GetUnitAttr(5);
					}
					caster.LuaData.SetUnitAttr(2, (double)num7);
				}
				else if (num5 == 3)
				{
					caster.LuaData.SetUnitAttr(2, 100.0);
				}
				else if (num5 == 4)
				{
					int num8 = Math.Min(15, num / 5);
					num8 = (int)(((double)num8 + unitAttr8) * (1.0 + caster.LuaData.GetUnitAttr(85) / 100.0));
					if ((double)num8 > caster.LuaData.GetUnitAttr(5))
					{
						num8 = (int)caster.LuaData.GetUnitAttr(5);
					}
					caster.LuaData.SetUnitAttr(2, (double)num8);
				}
				int num9 = (int)target.LuaData.GetUnitAttr(2);
				int num10 = Math.Min(50, num / 5);
				num10 = (int)(target.csRamdom.GetDouble(5000.0, 10000.0) * (double)num10 * 0.0001);
				num10 = num9 + (int)((double)num10 * (1.0 + target.LuaData.GetUnitAttr(86) / 100.0));
				if ((double)num10 > target.LuaData.GetUnitAttr(5))
				{
					num10 = (int)target.LuaData.GetUnitAttr(5);
				}
				target.LuaData.SetUnitAttr(2, (double)num10);
			}
			double val = target.AttrContainer.GetVal(1);
			if ((double)num >= val)
			{
				target.SkillInstPool.NoticeTriggerSkill(8);
				if (target.SkillInstPool.NoticeTriggerSkill(15))
				{
					num = (int)(val - 1.0);
				}
				if (luaData2.HasSimpleState(14))
				{
					target.SendMsg(57, null);
					num = (int)(val - 1.0);
				}
			}
			if (flag)
			{
				target.EventQueue.LuaCSEID_UNIT_BE_ATTACK_GGG(num);
			}
			if (caster.teamIdx == 1)
			{
				return (int)target.GetUnitAttr(1) + 10;
			}
			return 0;
		}