//UIRoot
	public void OnGUI()
	{
		ModMenu.OnGUI();
	}

//UnitAI
	public virtual float damageMultiplier(string attacker)
	{
		if (ModMenu.Hack1)
		{
			return 10f;
		}
		return 1f;
	}
	
//PlayerAI
	public override float damageMultiplier(string attacker)
	{
		if (ModMenu.Hack2)
		{
			return 0f;
		}
		if (this.m_armor != null)
		{
			return this.m_armor.getDamageMultiplier(attacker);
		}
		return 1f;
	}