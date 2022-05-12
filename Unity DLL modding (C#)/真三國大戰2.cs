//Game: 真三國大戰2
//Version: 1.8.0
//APK: https://play.google.com/store/apps/details?id=com.sangoku2.android

//Game is server-sided!

//UIRoot
public void OnGUI()
{
	ModMenu.OnGUI();
}

//Warrior
public void SetHP(float curHP, float maxHP)
{
	if (maxHP != this.m_fMaxHP)
	{
		if (ModMenu.toggle2 && this.Side == ESIDE.SIDE_RED)
		{
			this.m_fMaxHP = maxHP + 99999f;
		}
		else if (ModMenu.toggle1 && this.Side != ESIDE.SIDE_RED)
		{
			this.m_fMaxHP = 1f;
		}
		else
		{
			this.m_fMaxHP = maxHP;
		}
		this.CaculateHpPerSoldire();
	}
	if (ModMenu.toggle2 && this.Side == ESIDE.SIDE_RED)
	{
		this.m_fCurHP = curHP + 99999f;
	}
	else if (ModMenu.toggle1 && this.Side != ESIDE.SIDE_RED)
	{
		this.m_fCurHP = 1f;
	}
	else
	{
		this.m_fCurHP = curHP;
	}
	
	//Other way to mod. Combine 1 hit kill + god mode
	if (maxHP != this.m_fMaxHP)
	{
		if (ModMenu.hack1)
		{
			if (this.Side == ESIDE.SIDE_RED)
			{
				this.m_fMaxHP = maxHP + 99999f;
			}
			else
			{
				this.m_fMaxHP = 1f;
			}
		}
		else
		{
			this.m_fMaxHP = maxHP;
		}
		this.CaculateHpPerSoldire();
	}
	if (ModMenu.hack1)
	{
		if (this.Side == ESIDE.SIDE_RED)
		{
			this.m_fCurHP = curHP + 99999f;
		}
		else
		{
			this.m_fCurHP = 1f;
		}
	}
	else
	{
		this.m_fCurHP = curHP;
	}
}