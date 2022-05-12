//Game: Eternity Guardians
//Version: 1.6.0
//APK: https://apkplz.net/app/com.ezfun.ftpen

//Dump hidden dll from memory. Assembly name called xgame1.6.01535942274. Rename it to Assembly-UnityScript.dll

//Calling Mod menu
//Class: UIRoot
public void OnGUI()
{
	ModMenu.ButtonMenu();
}

//Class: CSkill - No cooldown
public float m_coolDownTime
{
	get
	{
		if (ModMenu.hack1)
		{
			return 0f;
		}
		return this._m_coolDownTime.m_value;
	}
	set
	{
		this._m_coolDownTime.m_value = value;
	}
}

ass: CAttackDamageCaculate
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
			if (attedInfo.m_AttackerCreature is CPlayer || attedInfo.m_AttackerCreature is CPlayerMonster || attedInfo.m_AttackerCreature is CFriend || attedInfo.m_AttackerCreature is CRTPVPPlayer)
			{
				num *= (float)ModMenu.AtkMul; //Dmg multiplier
			}
			if (defenser is CPlayer || defenser is CPlayerMonster || defenser is CFriend || defenser is CRTPVPPlayer)
			{
				if (ModMenu.hack3)
				{
					num /= 100f; //God mode
				}
				else
				{
					num /= 1f;
				}
			}
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
	//...
}