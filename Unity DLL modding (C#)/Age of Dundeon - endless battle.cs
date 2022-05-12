//DamageCalculationData
	public float fPHYSICAL_ATTACK
	{
		get
		{
			if (this.m_CharacterBase.Team == 0)
			{
				return this.m_fPHYSICAL_ATTACK * (float)Menu.AtkMul;
			}
			return this.m_fPHYSICAL_ATTACK / (float)Menu.DefMul;
		}
		set
		{
			this.m_fPHYSICAL_ATTACK = value;
		}
	}