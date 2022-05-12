using UnityEngine;
///Assembly-chsarp.dll
//Class: GameStart
//Original
private void LoadDLL()
{
    string url = Application.streamingAssetsPath + "/xgame.ezfun";
    string path = Application.persistentDataPath + "/DLL/xgame.ezfun";
    if (this.CheckUseUpdate())
    {
        using (Stream stream = File.OpenRead(path))
        {
            byte[] array = new byte[stream.Length];
            stream.Read(array, 0, array.Length);
            stream.Close();
            this.InitCry();
            byte[] rawAssembly = this.Decrypte(array);
            Assembly xgameData = Assembly.Load(rawAssembly);
            this.m_xgameData = xgameData;
        }
    }
    else
    {
        WWW www = new WWW(url);
        while (!www.isDone)
        {
        }
        Stream stream2 = new MemoryStream(www.bytes);
        byte[] array2 = new byte[stream2.Length];
        stream2.Read(array2, 0, array2.Length);
        stream2.Close();
        this.InitCry();
        byte[] rawAssembly2 = this.Decrypte(array2);
        Assembly xgameData2 = Assembly.Load(rawAssembly2);
        this.m_xgameData = xgameData2;
    }
}

//Modded
private void LoadDLL()
{
	WWW www = new WWW("https://example.com/modded.dll");
	while (!www.isDone)
	{
	}
	MemoryStream memoryStream = new MemoryStream(www.bytes);
	byte[] array2 = new byte[memoryStream.Length];
	memoryStream.Read(array2, 0, array2.Length);
	memoryStream.Close();
	this.InitCry();
	Assembly xgameData2 = Assembly.Load(array2);
	this.m_xgameData = xgameData2;
}

///Xgame
//MultilingualSys
private void OnGUI()
	{
		RoH3v3.OnGUI();
	}

//CSkill
public float m_coolDownTime
	{
		get
		{
			if (RoH3v3.toggle2)
			{
				return 0f;
			}
			return this._m_coolDownTime.m_value;
		}
	}

	//PlayerController
	if (GetMenu.toggles[2])
		{
			global::PlayerData playerData = (global::PlayerData)base.m_creature.m_creatureData;
			if (!playerData.m_rage.IsRageFull())
			{
				playerData.m_rage.AddRageValue(ConstantsData.GetValue(EnumConstants.EC_MaxRageValue));
			}
		}
	
	//VipSys
	public int GetVipLv()
	{
		this.InitVipState();
		if (RoH3v3.toggle3)
		{
			return this.m_maxVipLv;
		}
		return this.m_vipLv;
	}
	
//CAttackDamageCaculate
public long CalculateDamageValue(CAttackedInfo attedInfo, Creature defenser, ref DamagePopup dp, bool isRTPVP = false, bool onlyCaculate = false)
{
	if (attedInfo == null || defenser == null)
	{
		return 0L;
	}
	if (RealTimePVPSys.Instance.CheckIsRTPVPState() && !onlyCaculate && !(attedInfo.m_AttackerCreature is CRTMonster))
	{
		CBattleFieldData.CDamagePop damagePopByKey = CBattleFieldData.Instance.GetDamagePopByKey(attedInfo.m_AttackerCreature.m_rid, (int)CBattleFieldData.GetCreatureRTType(defenser), defenser.m_rid, attedInfo.m_key);
		if (damagePopByKey != null)
		{
			DamagePopup damagePopup = new DamagePopup(damagePopByKey.m_damage, damagePopByKey.m_crit, defenser.m_creatureData is MonsterData, defenser.CreatureState == Creature.CreatureGameState.CGS_Collapse, false, 0, false, false, false, attedInfo.m_AttackerCreature, false, false);
			damagePopup.m_parrayNew = damagePopByKey.m_parray;
			float num = this.DealShieldRTPVP(attedInfo, defenser, (float)damagePopByKey.m_damage);
			if (num != 0f)
			{
				damagePopup.mDamage = (long)num;
				if (!(defenser is ShanZhaiDoorCreature) && !(defenser is CTrapCreature) && (defenser is CPlayer || attedInfo.m_AttackerCreature is CPlayer))
				{
					GameRoot.GetGameSystem<EventSys>().AddEventNow(EEventType.UI_Msg_UpdateDamagePopup, defenser, damagePopup);
					if (damagePopByKey.m_damage == -1L)
					{
						defenser.SendDodgeBuffEvt(attedInfo);
					}
					else if (damagePopByKey.m_crit)
					{
						defenser.SendCritBuffEvt(attedInfo);
					}
				}
			}
			// ------ here ------
			if (attedInfo.m_AttackerCreature is CPlayer || attedInfo.m_AttackerCreature is CPlayerMonster || attedInfo.m_AttackerCreature is CFriend || attedInfo.m_AttackerCreature is CRTPVPPlayer)
			{
				num *= (float)RoH3v3.dmgMulti;
			}
			if (RoH3v3.toggle1 && (defenser is CPlayer || defenser is CPlayerMonster || defenser is CFriend || defenser is CRTPVPPlayer))
			{
				num = 0f;
			}
			// -----------------
			return (long)num;
		}
		EZFunTools.PvpDebug(new object[]
		{
			"attedinfo key",
			attedInfo.m_key + "_" + defenser.transform.name,
			"not fund"
		});
		return 0L;
	}
	else
	{
		CreatureData attackerCreatureData = attedInfo.m_AttackerCreatureData;
		int num2 = attackerCreatureData.m_level - defenser.m_creatureData.m_level;
		float num3 = (float)((ResLevelCorrect)GameRoot.GetGameSystem<ResourceSys>().GetEntry<ResLevelCorrectList>(num2)).coef * 0.01f;
		float totalValue;
		float totalValue2;
		if (attedInfo.m_AttackerCreature is CCardCreture && attedInfo.m_AttackerCreature.m_cardOwnerCreature != null)
		{
			totalValue = attedInfo.m_AttackerCreature.m_cardOwnerCreature.m_creatureData.m_hit.m_totalValue;
			totalValue2 = attedInfo.m_AttackerCreature.m_cardOwnerCreature.m_creatureData.m_buffAddHitRate.m_totalValue;
		}
		else
		{
			totalValue = attackerCreatureData.m_hit.m_totalValue;
			totalValue2 = attackerCreatureData.m_buffAddHitRate.m_totalValue;
		}
		if (!this.HasHit(totalValue, defenser.m_creatureData.m_dodge.m_totalValue, (float)defenser.m_creatureData.m_level, num3, defenser.m_creatureData.m_dodgeRate.m_totalValue, totalValue2))
		{
			DamagePopup damagePopup2 = new DamagePopup(-1L, false, defenser.m_creatureData is MonsterData, defenser.CreatureState == Creature.CreatureGameState.CGS_Collapse, false, 0, false, false, false, attedInfo.m_AttackerCreature, false, false);
			dp = damagePopup2;
			if (!(defenser is ShanZhaiDoorCreature) && !(defenser is CTrapCreature) && !this.CheckMonsterAttackOtherPlayer(attedInfo, defenser) && !onlyCaculate)
			{
				GameRoot.GetGameSystem<EventSys>().AddEventNow(EEventType.UI_Msg_UpdateDamagePopup, defenser, damagePopup2);
			}
			if (!onlyCaculate)
			{
				defenser.SendDodgeBuffEvt(attedInfo);
			}
			return -1L;
		}
		CDamageInfo attInfo = attedInfo.m_attInfo;
		float num4 = 0f;
		bool isCardCreature = false;
		int num5 = 0;
		if (attackerCreatureData is PlayerData && !(attackerCreatureData is PlayerMonsterData))
		{
			num4 = attackerCreatureData.m_physicalAttack.m_totalValue;
			num5 = EquipSys.Instance.GetCurrentDamageType();
		}
		else if (attackerCreatureData is MonsterData)
		{
			MonsterData monsterData = (MonsterData)attackerCreatureData;
			if (monsterData.m_type == 2)
			{
				float value = ConstantsData.GetValue(EnumConstants.EC_CardAttackCoef);
				float value2 = ConstantsData.GetValue(EnumConstants.EC_CardAttackCoef2);
				num4 = ((float)monsterData.m_cardData.m_advLevel + (float)monsterData.m_cardData.m_equiped.Count * this.m_float1.m_value / 6f) * value + value2;
				num4 *= monsterData.m_cardData.m_fightCombat;
				if (defenser.m_fightLogic.m_isPVP && defenser.m_fightLogic.m_PVPTeamID == PVPTeam.self)
				{
					PVPSys.EnemyInfo enemyInfo = GameRoot.GetGameSystem<PVPSys>().GetEnemyInfo();
					EquipData equipFromDetailInfo = EquipSys.GetEquipFromDetailInfo(EquipPos.MainWeapon, enemyInfo.data);
					if (equipFromDetailInfo == null)
					{
						Debug.LogError("Creature.cs : CalculateDamageValue :: enemy weapon is null!!!");
					}
					else
					{
						num5 = equipFromDetailInfo.m_tableData.damtype;
					}
					PVPState pvpstate = (PVPState)GameRoot.Instance.GetState(EGameStateType.PVPState);
					if (pvpstate.m_enemy != null)
					{
						Creature component = pvpstate.m_enemy.GetComponent<Creature>();
						if (component != null)
						{
							num4 *= this.GetCardCoef(monsterData.m_cardData, component.m_creatureData.m_level);
							num4 *= component.m_creatureData.m_physicalAttack.m_totalValue;
						}
					}
				}
				else if (GameState.GetGameType() == GameType.TYPE_YunBiao && defenser.m_fightLogic.m_PVPTeamID == PVPTeam.self)
				{
					EquipData equipFromDetailInfo2 = EquipSys.GetEquipFromDetailInfo(EquipPos.MainWeapon, YunBiaoSys.Instance.EnemyDetailInfo);
					if (equipFromDetailInfo2 == null)
					{
						Debug.LogError("Creature.cs : CalculateDamageValue :: enemy weapon is null!!!");
					}
					else
					{
						num5 = equipFromDetailInfo2.m_tableData.damtype;
					}
					num4 *= this.GetCardCoef(monsterData.m_cardData, YunBiaoSys.Instance.m_PlayerLevel.m_value);
					num4 *= YunBiaoSys.Instance.m_PlayerAttack.m_value;
				}
				else
				{
					num5 = EquipSys.Instance.GetCurrentDamageType();
					num4 *= this.GetCardCoef(monsterData.m_cardData, CAccMgr.Instance.Level);
					num4 *= CPlayer.GetSelf().m_physicalAttack.m_totalValue;
				}
				isCardCreature = true;
			}
			else
			{
				num4 = attackerCreatureData.m_physicalAttack.m_totalValue;
				num5 = monsterData.m_attackType;
			}
		}
		else if (attackerCreatureData is PlayerMonsterData)
		{
			PlayerMonsterData playerMonsterData = (PlayerMonsterData)attackerCreatureData;
			if (defenser is CPlayerMonster)
			{
				num5 = (defenser as CPlayerMonster).GetWeapon().m_tableData.damtype;
			}
			else
			{
				num5 = EquipSys.Instance.GetCurrentDamageType();
			}
			num4 = attackerCreatureData.m_physicalAttack.m_totalValue;
		}
		if ((num5 == 0 && defenser.m_currentDefIgnoreType == Creature.EnumDefIgnoreType.EDGT_Pysical) || (num5 == 1 && defenser.m_currentDefIgnoreType == Creature.EnumDefIgnoreType.EDGT_Magic))
		{
			int isImmune;
			if (defenser.m_currentDefIgnoreType == Creature.EnumDefIgnoreType.EDGT_Pysical)
			{
				isImmune = 1;
			}
			else
			{
				isImmune = 2;
			}
			DamagePopup damagePopup3 = new DamagePopup(-1L, false, defenser.m_creatureData is MonsterData, defenser.CreatureState == Creature.CreatureGameState.CGS_Collapse, false, isImmune, false, false, false, attedInfo.m_AttackerCreature, false, false);
			dp = damagePopup3;
			if (!onlyCaculate)
			{
				GameRoot.GetGameSystem<EventSys>().AddEventNow(EEventType.UI_Msg_UpdateDamagePopup, defenser, damagePopup3);
			}
			return 0L;
		}
		float offDamageCoef = this.GetOffDamageCoef(defenser.m_creatureData.m_physicalDefense.m_totalValue, defenser.m_creatureData.m_magicDefense.m_totalValue, defenser.m_creatureData.m_level, num5 == 0);
		float basicDamageValue = this.GetBasicDamageValue(attedInfo.m_attInfo.m_formulaID, num4, offDamageCoef, (float)attInfo.m_basicDamage, attInfo.m_damageCoef, (float)attInfo.m_skillLevel, attInfo.m_skillLevelCoef);
		float crit = this.GetCrit(attackerCreatureData.m_crit.m_totalValue, (float)attackerCreatureData.m_level, num3, attackerCreatureData.m_critRate.m_totalValue, attackerCreatureData.m_critValueRate.m_totalValue);
		float damageBuf = this.GetDamageBuf();
		float randomValue = this.GetRandomValue();
		float num6 = basicDamageValue * crit * damageBuf * randomValue * (1f + num3) - defenser.m_creatureData.m_parry.m_totalValue;
		if (defenser.CreatureState == Creature.CreatureGameState.CGS_Collapse)
		{
			num6 *= 2f;
		}
		this.CheckPrintDamage(attedInfo.m_AttackerCreature, num6, "基础伤害");
		if (GameState.GetGameType() == GameType.TYPE_Expedition && attackerCreatureData is PlayerData)
		{
			int damageBonus = ExpeditionSys.Instance.GetDamageBonus();
			num6 *= 1f + (float)damageBonus / 100f;
			this.CheckPrintDamage(attedInfo.m_AttackerCreature, num6, "过关斩将叠加伤害");
		}
		num6 *= 1f + attedInfo.m_AttackerCreatureData.m_buffDamageAdd.m_totalValue + defenser.m_creatureData.m_buffAttackedDamageAdd.m_totalValue;
		this.CheckPrintDamage(attedInfo.m_AttackerCreature, num6, "攻击伤害加深，受击伤害减免");
		float num7 = 0f;
		if (attedInfo.m_AttackerCreature is CCardCreture)
		{
			if (attedInfo.m_AttackerCreature.m_cardOwnerCreature != null)
			{
				num7 = attedInfo.m_AttackerCreature.m_cardOwnerCreature.m_creatureData.m_cardBuffDamage.m_totalValue;
			}
		}
		else
		{
			num7 = attackerCreatureData.m_cardBuffDamage.m_totalValue;
		}
		if (attackerCreatureData is MonsterData)
		{
			if (num7 == 0f)
			{
				num7 = (float)this.m_int1.m_value;
			}
			num6 *= num7;
		}
		num6 = Mathf.Max(num6, 0f);
		if (attedInfo.m_isChargeSkillDamage)
		{
			num6 *= attedInfo.m_chargeSkillDamagePercent;
			this.CheckPrintDamage(attedInfo.m_AttackerCreature, num6, "蓄力伤害");
		}
		if (attackerCreatureData is MonsterData)
		{
			MonsterData monsterData2 = (MonsterData)attackerCreatureData;
			if (monsterData2.m_quality >= Constants.BOSS_MIN_QUALITY)
			{
				if (attedInfo.m_AttackerCreature.m_rageType == 1)
				{
					num6 *= ConstantsData.GetValue(EnumConstants.EC_BossRageAttAdv1);
				}
				else if (attedInfo.m_AttackerCreature.m_rageType == 2)
				{
					num6 *= ConstantsData.GetValue(EnumConstants.EC_BossRageAttAdv2);
				}
			}
			else if (monsterData2.m_quality >= 3)
			{
				if (attedInfo.m_AttackerCreature.m_rageType == 1)
				{
					num6 *= ConstantsData.GetValue(EnumConstants.EC_JingYinRageAttAdv);
				}
			}
			else if (attedInfo.m_AttackerCreature.m_rageType == 1)
			{
				num6 *= ConstantsData.GetValue(EnumConstants.EC_MonsterRageAttAdv);
			}
		}
		bool flag = false;
		num6 *= GameState.instance.m_currentGame.GetCurrentAttackCoef(attedInfo.m_AttackerCreature.m_fight, defenser.m_fight);
		if (RealTimePVPSys.Instance.CheckIsRTPVE() && CPVESys.Instance.GetPVEGameType() == PVEGameStateType.BossWait && attedInfo.m_AttackerCreature is CPlayer && defenser is CRTMonster && ((MonsterData)defenser.m_creatureData).m_ID == CPVESys.Instance.m_dataManager.GetCurGuardResID())
		{
			flag = true;
			num6 = (float)CPVESys.Instance.m_dataManager.GetGuardHurtedReduceHP(EquipSys.Instance.GetCurMainWeaponSet() == defenser.m_hurtedDoubleWeaponSet);
		}
		this.CheckPrintDamage(attedInfo.m_AttackerCreature, num6, "实时pvp战力压制");
		if ((double)crit > 1.0 && !onlyCaculate)
		{
			defenser.SendCritBuffEvt(attedInfo);
		}
		float num8 = num6;
		if (GameState.GetGameType() == GameType.TYPE_GuildWarAttackCity && defenser is CMonster && !flag)
		{
			num8 = CGuildWarSys.Instance.AttackRatio * num8;
		}
		bool flag2 = false;
		if (!flag)
		{
			float num9 = attedInfo.m_AttackerCreatureData.m_breakUp.m_totalValue - defenser.m_creatureData.m_parryNew.m_totalValue;
			if (num9 <= 0f)
			{
				num9 = 0f;
			}
			float num10 = (1f + (attackerCreatureData.m_easyHurt.m_totalValue + num9) / ConstantsData.GetValue(806134)) / (1f + defenser.m_creatureData.m_avoidHurt.m_totalValue / ConstantsData.GetValue(806135));
			num8 *= num10;
			num8 += num8 * defenser.m_creatureData.m_endDamageAdd.m_totalValue;
			flag2 = this.HasParryNew(attedInfo.m_AttackerCreatureData.m_breakUp.m_totalValue, defenser.m_creatureData.m_parryNew.m_totalValue, (float)defenser.m_creatureData.m_level, ref num8);
			if (flag2)
			{
				num8 *= 1f - ConstantsData.GetValue(70014);
				DamagePopup damagePopup4 = new DamagePopup((num8 < 1f) ? 1L : ((long)num8), false, defenser.m_creatureData is MonsterData, defenser.CreatureState == Creature.CreatureGameState.CGS_Collapse, false, 0, false, false, false, attedInfo.m_AttackerCreature, false, false);
				damagePopup4.m_parrayNew = flag2;
				if (!onlyCaculate)
				{
					GameRoot.GetGameSystem<EventSys>().AddEventNow(EEventType.UI_Msg_UpdateDamagePopup, defenser, damagePopup4);
				}
			}
			this.CheckPrintDamage(attedInfo.m_AttackerCreature, num6, "易伤、免伤、格挡、击破");
		}
		long num11 = (long)num8;
		num11 = ((num11 == 0L) ? 1L : num11);
		if (EZFunTools.CheckNeedAdjustDamage())
		{
			num8 = EZFunTools.AdjustRTPVPDamage(attedInfo.m_attInfo.m_damageCoef, defenser, num8, crit);
			this.CheckPrintDamage(attedInfo.m_AttackerCreature, num6, "平衡");
		}
		if (!isRTPVP)
		{
			num8 = Mathf.Min(num8, (float)defenser.m_creatureData.m_currentHP);
			num8 = Mathf.Max(num8, 1f);
		}
		float num12 = defenser.m_creatureData.m_shieldValue.m_buffEffecValue;
		bool flag3 = false;
		if (num12 > 0f && !isRTPVP)
		{
			if (num12 > num8)
			{
				num12 = num8;
				defenser.m_creatureData.m_shieldValue.m_buffEffecValue -= num8;
				num8 = 0f;
			}
			else
			{
				num12 = defenser.m_creatureData.m_shieldValue.m_totalValue;
				defenser.m_creatureData.m_shieldValue.m_buffEffecValue = 0f;
				num8 -= defenser.m_creatureData.m_shieldValue.m_buffEffecValue;
				EventSys.Instance.AddEventNow(EEventType.BuffShieldDisappear, defenser, null);
			}
			flag3 = true;
		}
		if (flag3)
		{
			DamagePopup damagePopup5 = new DamagePopup((long)((int)num12), (double)crit > 1.0, defenser.m_creatureData is MonsterData, defenser.CreatureState == Creature.CreatureGameState.CGS_Collapse, true, 0, isCardCreature, false, false, attedInfo.m_AttackerCreature, false, false);
			dp = damagePopup5;
			if (!(defenser is ShanZhaiDoorCreature) && !(defenser is CTrapCreature) && !this.CheckMonsterAttackOtherPlayer(attedInfo, defenser) && !onlyCaculate)
			{
				GameRoot.GetGameSystem<EventSys>().AddEventNow(EEventType.UI_Msg_UpdateDamagePopup, defenser, damagePopup5);
			}
			if (num8 > 0f && !(defenser is ShanZhaiDoorCreature) && !(defenser is CTrapCreature) && !this.CheckMonsterAttackOtherPlayer(attedInfo, defenser) && !onlyCaculate)
			{
				damagePopup5 = new DamagePopup((long)num8, (double)crit > 1.0, defenser.m_creatureData is MonsterData, defenser.CreatureState == Creature.CreatureGameState.CGS_Collapse, false, 0, isCardCreature, false, false, attedInfo.m_AttackerCreature, false, false);
				GameRoot.GetGameSystem<EventSys>().AddEventNow(EEventType.UI_Msg_UpdateDamagePopup, defenser, damagePopup5);
			}
		}
		else
		{
			DamagePopup damagePopup6 = new DamagePopup(num11, (double)crit > 1.0, defenser.m_creatureData is MonsterData, defenser.CreatureState == Creature.CreatureGameState.CGS_Collapse, false, 0, isCardCreature, false, false, attedInfo.m_AttackerCreature, false, false);
			damagePopup6.m_parrayNew = flag2;
			dp = damagePopup6;
			if (!flag2 && !(defenser is ShanZhaiDoorCreature) && !(defenser is CTrapCreature) && !this.CheckMonsterAttackOtherPlayer(attedInfo, defenser) && !onlyCaculate)
			{
				GameRoot.GetGameSystem<EventSys>().AddEventNow(EEventType.UI_Msg_UpdateDamagePopup, defenser, damagePopup6);
			}
		}
		if (!defenser.m_isPeerlessTime && !RealTimePVPSys.Instance.CheckIsRTPVPState())
		{
			if (attackerCreatureData is PlayerData && !(attackerCreatureData is PlayerMonsterData))
			{
				((PlayerData)attackerCreatureData).DealRage(defenser.m_creatureData, num8, crit);
			}
			if (defenser.m_creatureData is PlayerData && !(defenser.m_creatureData is PlayerMonsterData))
			{
				((PlayerData)defenser.m_creatureData).DealRage(defenser.m_creatureData, num8, crit);
			}
		}
		// ------ here ------
		if (attedInfo.m_AttackerCreature is CPlayer || attedInfo.m_AttackerCreature is CPlayerMonster || attedInfo.m_AttackerCreature is CFriend || attedInfo.m_AttackerCreature is CRTPVPPlayer)
		{
			num8 *= (float)RoH3v3.dmgMulti;
		}
		if (RoH3v3.toggle1 && (defenser is CPlayer || defenser is CPlayerMonster || defenser is CFriend || defenser is CRTPVPPlayer))
		{
			num8 = 0f;
		}
		// -----------------
		return (long)num8;
	}
}
