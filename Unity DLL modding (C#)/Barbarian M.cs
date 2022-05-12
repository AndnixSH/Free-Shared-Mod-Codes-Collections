//Game: Barbarian M
//Version: 2.3.35
//APK: https://apkpure.com/barbarian-m/com.FF.LWG

//Calling Mod menu
//Class: UIRoot
public void OnGUI()
{
	ModMenu.OnGUI();
}

//Class: KUnit
public override float SetDamage(eELEMENT element, float damage, int attackerID, int level, bool critical, eATTAK_TYPE type = eATTAK_TYPE.MELEE)
{
	//God mode
	if (ModMenu.hack2 && this.m_team != eTEAM_TYPE.BLUE)
	{
		return 0f;
	}
	//--------//
	if (this.m_invincible)
	{
		return 0f;
	}
	if (this.IsDie())
	{
		return 0f;
	}
	if (this.m_ability.m_HP <= 0f)
	{
		return 0f;
	}
	if (attackerID == 0)
	{
	}
	if (level <= 0)
	{
	}
	damage -= (float)KUtil.GetPercentValue(damage, this.m_ability.m_reduceDamage);
	if (damage < 1f)
	{
		damage = 1f;
	}
	if (type == eATTAK_TYPE.MISSILE && element == eELEMENT.PHYSICAL)
	{
		damage -= (float)KUtil.GetPercentValue(damage, this.m_ability.m_reduceMissileDamage);
		if (damage < 1f)
		{
			damage = 1f;
		}
	}
	KUnit unit = KMonoSingletonGeneratable<KActorManager>.Instance.GetUnit(attackerID);
	float num = 0f;
	if (this.m_buffAgent != null && element != eELEMENT.REFLECT)
	{
		num = this.m_buffAgent.OnDamage(attackerID, level, damage);
	}
	damage -= num;
	num = 0f;
	if (unit && element != eELEMENT.POISON && element != eELEMENT.HELL_FIRE && element != eELEMENT.REFLECT)
	{
		num = unit.AgentBuff.OnHitDamage(this, damage);
	}
	damage += num;
	if (damage < 1f)
	{
		damage = 1f;
	}
	KUnitAbility ability = this.m_ability;
	//50x damage
	if (ModMenu.hack1 && this.m_team == eTEAM_TYPE.BLUE)
	{
		ability.m_HP -= damage * 50f;
	}
	else
	{
		ability.m_HP -= damage;
	}
	//--------//
	if (this.m_ability.m_HP <= 0f)
	{
		this.m_ability.m_HP = 0f;
	}
	this.m_avatar.SHADER.ActiveLerpColor(Color.white, 0.1f);
	this.m_avatar.SetHpbarValue(this.m_ability.HpRate);
	KMonoSingletonGeneratable<KDamageFontManager>.Instance.AddDamageFont(base.gameObject.transform.position, damage, this.m_team, critical, element);
	return damage;
}