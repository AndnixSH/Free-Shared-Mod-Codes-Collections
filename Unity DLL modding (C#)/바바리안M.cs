//Game: 바바리안M
//Version: v2.8.75
//APK: https://apkpure.com/%EB%B0%94%EB%B0%94%EB%A6%AC%EC%95%88m/com.FF.LW

//Class: KActor
[FieldOffset(Offset = "0x1C")]
protected eTEAM_TYPE m_team;

protected eTEAM_TYPE m_team = eTEAM_TYPE.MAX;

//Class: KUnit
private float CheckHack(float damage)
{
	
				eTEAM_TYPE team = base.Team;
				int num2 = 1;
				num = 4;
				if (team == num2)
				{
					this.m_ability.m_HP = 0f;
				}
				break;
	
	if (base.Team == eTEAM_TYPE.RED)
	{
		this.m_ability.m_HP = this.m_ability.m_maxHP;
		this.m_ability.m_MP = this.m_ability.m_maxMP;
		return 0f;
	}
}

public override float SetDamage(eELEMENT element, float damage, int attackerID, int level, bool critical, eATTAK_TYPE type = eATTAK_TYPE.MELEE)
{
	///
	if (modMenu.hack2 && this.m_team != eTEAM_TYPE.BLUE)
	{
		return 0f;
	}
	///
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
	///
	if (ModMenu.hack1 && this.m_team == eTEAM_TYPE.BLUE)
	{
		ability.m_HP -= damage * 50f;
	}
	else
	{
		ability.m_HP -= damage;
	}
	///
	if (this.m_ability.m_HP <= 0f)
	{
		this.m_ability.m_HP = 0f;
	}
	this.m_avatar.SHADER.ActiveLerpColor(Color.white, 0.1f);
	this.m_avatar.SetHpbarValue(this.m_ability.HpRate);
	KMonoSingletonGeneratable<KDamageFontManager>.Instance.AddDamageFont(base.gameObject.transform.position, damage, this.m_team, critical, element);
	return damage;
}
	
//Class: KUnitAbility
public float RunActionSpeed
{
	get
	{
		return 2f;
	}
}

public float RunSpeed
{
	get
	{
		if (ModMenu.hack3)
		{
			return 2f;
		}
		return this.m_runSpeed * this.m_runSpeedRate;
	}
}

public float WalkSpeed
{
	get
	{
		return 2f;
	}
}
	
//Class: UIRoot
public void OnGUI()
{
	ModMenu.OnGUI();
}