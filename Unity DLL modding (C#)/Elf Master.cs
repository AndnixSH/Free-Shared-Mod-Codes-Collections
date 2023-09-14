	public float GameSpeed
	{
		[CompilerGenerated]
		get
		{
			return this.<GameSpeed>k__BackingField * 3f;
		}
	}

//AttackUtils
	public static MainEffectRes ComputeHurt(Skill skill, Actor defender)
	{
		MainEffectRes mainEffectRes = new MainEffectRes();
		if (skill != null && defender != null)
		{
			mainEffectRes.attackId = skill.Owner.getActorId();
			mainEffectRes.skillId = skill.getTemplateId();
			Actor owner = skill.Owner;
			skill.getSkillBean();
			LNumber lnumber = 0;
			LNumber finalExtra = owner.extraProperty.GetFinalExtra(PropertyType.Atk, defender);
			LNumber finalExtra2 = defender.extraProperty.GetFinalExtra(PropertyType.Def, owner);
			LNumber lnumber2 = finalExtra - finalExtra2;
			if (lnumber2 <= BattleParam.BaseHurtEdge)
			{
				lnumber2 = BattleParam.BaseHurtRate + finalExtra / finalExtra2;
			}
			AttackUtils.LogHurtInfo(string.Concat(new object[]
			{
				"----->> basehurt ",
				lnumber2.raw,
				"     ",
				owner.getActorId(),
				"           ",
				defender.getActorId()
			}));
			LNumber lhs = skill.IsMasterSkill() ? 1 : 0;
			LNumber finalExtra3 = owner.extraProperty.GetFinalExtra(PropertyType.JueJiShangHaiLv, defender);
			LNumber finalExtra4 = defender.extraProperty.GetFinalExtra(PropertyType.JueJiFangYuLv, owner);
			LNumber lnumber3 = (finalExtra3 - finalExtra4) / 10000;
			if (lnumber3 < -skill.SkillEffectPer)
			{
				lnumber3 = (long)(0.01f - skill.SkillEffectPer);
			}
			lnumber = lnumber2 * (skill.SkillEffectPer + lhs * lnumber3);
			AttackUtils.LogHurtInfo("----->> hurt1 " + lnumber.raw);
			LNumber finalExtra5 = owner.extraProperty.GetFinalExtra(PropertyType.ShangHaiLv, defender);
			LNumber finalExtra6 = defender.extraProperty.GetFinalExtra(PropertyType.MianShangLv, owner);
			lnumber3 = (finalExtra5 - finalExtra6) / 10000;
			if ((double)lnumber3 < -0.99)
			{
				lnumber3 = 0L;
			}
			lnumber = lnumber * (1 + lnumber3) * AttackUtils.GetAttackRatio(owner, defender);
			AttackUtils.LogHurtInfo(string.Concat(new object[]
			{
				"------------ ",
				(1 + (finalExtra5 - finalExtra6) / 10000).raw,
				" ",
				finalExtra5.raw,
				" ",
				finalExtra6.raw
			}));
			AttackUtils.LogHurtInfo("----->> hurt2 " + lnumber.raw);
			lnumber += skill.SkillEffectFixed;
			AttackUtils.LogHurtInfo("----->> hurt3 " + lnumber.raw);
			lnumber *= SingletonTemplate<FightManager>.Singleton.ComboAdd;
			//Mod here
			if (owner.isCampOf(ActorCamp.CampFriend))
			{
				lnumber *= SingletonTemplate<FightManager>.Singleton.ComboAdd * Menu.AtkMul;
			}
			else
			{
				lnumber *= SingletonTemplate<FightManager>.Singleton.ComboAdd / Menu.DefMul;
			}
			//-----------
			AttackUtils.LogHurtInfo("----->> comboadd  " + SingletonTemplate<FightManager>.Singleton.ComboAdd.raw);
			AttackUtils.LogHurtInfo("----->> hurt4 " + lnumber.raw);
			LNumber finalExtra7 = owner.extraProperty.GetFinalExtra(PropertyType.BaoJiLv, defender);
			LNumber finalExtra8 = defender.extraProperty.GetFinalExtra(PropertyType.KangBaoJiLv, owner);
			if (AttackUtils.WillOccurL(finalExtra7 - finalExtra8, 10000, 1))
			{
				global::Logger.log(owner.Name + "攻击" + defender.Name + "时暴击了");
				mainEffectRes.IsCritical = true;
				TriggerParam triggerParam = TriggerParam.Create(TriggerEnum.OnBeiBaoJi, defender.getActorId());
				SingletonTemplate<TriggerManager>.Singleton.OnEvtTriggered(triggerParam);
				LNumber finalExtra9 = owner.extraProperty.GetFinalExtra(PropertyType.BaoJiQiangDu, defender);
				lnumber *= 1 + BattleParam.BaseBaoJiBeiLv + finalExtra9 / 10000;
				AttackUtils.LogHurtInfo("----->> hurt5 " + lnumber.raw);
			}
			else
			{
				LNumber finalExtra10 = defender.extraProperty.GetFinalExtra(PropertyType.GeDangLv, owner);
				LNumber finalExtra11 = owner.extraProperty.GetFinalExtra(PropertyType.PoJiLv, defender);
				if (AttackUtils.WillOccurL(finalExtra10 - finalExtra11, 10000, 1))
				{
					global::Logger.log(owner.Name + "攻击" + defender.Name + "时格挡了");
					mainEffectRes.IsGeDang = true;
					TriggerParam triggerParam2 = TriggerParam.Create(TriggerEnum.OnGeDang, defender.getActorId());
					SingletonTemplate<TriggerManager>.Singleton.OnEvtTriggered(triggerParam2);
					LNumber finalExtra12 = defender.extraProperty.GetFinalExtra(PropertyType.GeDangQiangDu, owner);
					lnumber *= 1 - BattleParam.BaseGeDangJianMian - finalExtra12 / 10000;
					AttackUtils.LogHurtInfo("----->> hurt5 " + lnumber.raw);
				}
			}
			lnumber3 = owner.extraProperty.GetFinalExtra(PropertyType.HurtAdd1, defender) / 10000;
			if ((double)lnumber3 < -0.99)
			{
				lnumber3 = 0L;
			}
			lnumber *= 1 + lnumber3;
			AttackUtils.LogHurtInfo("----->> hurt6 " + lnumber.raw);
			LNumber finalExtra13 = owner.extraProperty.GetFinalExtra(PropertyType.XiXueLv, defender);
			LNumber finalExtra14 = owner.extraProperty.GetFinalExtra(PropertyType.ZhiLiaoLv, defender);
			if (finalExtra13 > 0)
			{
				if (lnumber > defender.getProperty(PropertyType.Hp))
				{
					mainEffectRes.cure = defender.getProperty(PropertyType.Hp) * (finalExtra13 / 10000) * (1 + finalExtra14 / 10000);
				}
				else
				{
					mainEffectRes.cure = lnumber * (finalExtra13 / 10000) * (1 + finalExtra14 / 10000);
				}
			}
			LNumber finalExtra15 = defender.extraProperty.GetFinalExtra(PropertyType.ShangHaiFanTanLv, owner);
			if (finalExtra15 > 0)
			{
				if (lnumber > defender.getProperty(PropertyType.Hp))
				{
					mainEffectRes.bounceHurt = finalExtra15 / 10000 * defender.getProperty(PropertyType.Hp);
				}
				else
				{
					mainEffectRes.bounceHurt = finalExtra15 / 10000 * lnumber;
				}
			}
			if (SingletonBehaviour<GameManager>.Singleton.IsDebug && owner.isCampOf(ActorCamp.CampFriend))
			{
				lnumber = SingletonBehaviour<GameManager>.Singleton.DebugInfo.petAtk;
			}
			if (SingletonBehaviour<GameManager>.Singleton.IsDebug && owner.isCampOf(ActorCamp.CampEnemy))
			{
				lnumber = SingletonBehaviour<GameManager>.Singleton.DebugInfo.monsterAtk;
			}
			AttackUtils.LogHurtInfo(string.Concat(new object[]
			{
				"xixue ",
				mainEffectRes.cure.raw,
				" fantan ",
				mainEffectRes.bounceHurt.raw,
				"  xixuelv ",
				finalExtra13.raw,
				" zhiliaolv ",
				finalExtra14.raw,
				" fantanlv ",
				finalExtra15.raw
			}));
			mainEffectRes.hurt = lnumber;
			return mainEffectRes;
		}
		return mainEffectRes;
	}