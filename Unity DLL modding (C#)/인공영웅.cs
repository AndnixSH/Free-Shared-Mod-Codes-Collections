//Game: 인공영웅
//Version: 0.0.6
//APK: https://play.google.com/store/apps/details?id=com.smartjoy.Artificial

//Game is not working

//Class: UIRoot
public void OnGUI()
{
	ModMenu.OnGUI();
}

//Class: Character
public long GetTotalDamage(DamageInfo damageInfo, bool bCritical, int nRandomRange)
{
	long num;
	if (ModMenu.hack2) //God mode
	{
		if (this.m_charType != global::E_CHAR_TYPE.MONSTER)
		{
			return 0L;
		}
		if (Singleton<BattleTutorial>.Instance.BattleTutorialing && (this.m_charType == global::E_CHAR_TYPE.MINE || this.m_charType == global::E_CHAR_TYPE.PARTY_AI))
		{
			return 0L;
		}
		if (BattleSceneManager.GetClass() != null && BattleSceneManager.GetClass().m_battleModeType == global::E_BATTLE_MODE_TYPE.REAL_TIME_PVP)
		{
			nRandomRange = 100;
		}
		num = 0L;
		int num2 = this.m_charStatus.m_nCha_Def;
		float systemBuffActvieValue = this.GetSystemBuffActvieValue(E_SYSTEM_BUFF_TYPE.E_SYSTEM_BUFF_ADD_CHAR_DEF);
		if (systemBuffActvieValue != 0f)
		{
			num2 += (int)((float)this.m_charStatus.m_nCha_Def * systemBuffActvieValue);
		}
		long num3 = (long)((ulong)damageInfo.m_nAtk - (ulong)((long)num2));
		if (num3 < 0L)
		{
			num3 = 0L;
		}
		float num4 = 0f;
		switch (damageInfo.m_attrivuteType)
		{
		case E_ATTRIBUTE_TYPE.E_ATTRIBUTE_TYPE_NONE:
			num4 = 100f;
			break;
		case E_ATTRIBUTE_TYPE.E_ATTRIBUTE_TYPE_FIRE:
			num4 = damageInfo.m_fAttributeAtkRate - this.m_charStatus.m_fCha_FireDefAddRate;
			break;
		case E_ATTRIBUTE_TYPE.E_ATTRIBUTE_TYPE_WATER:
			num4 = damageInfo.m_fAttributeAtkRate - this.m_charStatus.m_fCha_WaterDefAddRate;
			break;
		case E_ATTRIBUTE_TYPE.E_ATTRIBUTE_TYPE_THUNDER:
			num4 = damageInfo.m_fAttributeAtkRate - this.m_charStatus.m_fCha_ThunderDefAddRate;
			break;
		}
		if (num4 <= 0f)
		{
			num4 = 0f;
		}
		num3 = (long)((float)num3 * (num4 * 0.01f));
		num3 = (long)((float)num3 * ((float)nRandomRange * 0.01f));
		num = (long)((float)num3 * damageInfo.m_fSkillDamageRate * 0.01f) + (long)damageInfo.m_nFixedDamageValue;
		if (bCritical)
		{
			num += (long)((float)num * (damageInfo.m_fCriticalAddDamageRate * 0.01f));
		}
		num += (long)((float)num * (damageInfo.m_fEndAddDamageRate * 0.01f));
		num -= (long)((float)num * ((this.m_charStatus.m_fReduceDamageRate + this.m_charStatus.m_fEndReduceDamageRate) * 0.01f));
		if (BattleSceneManager.GetClass() != null && BattleSceneManager.GetClass().m_battleModeType == global::E_BATTLE_MODE_TYPE.REAL_TIME_PVP)
		{
			num = (long)((float)num * 0.3f);
		}
		if (num <= 0L)
		{
			num = 1L;
		}
	}
	//x20 damage
	if (ModMenu.hack1)
	{
		return num * 20L;
	}
	return num;
}