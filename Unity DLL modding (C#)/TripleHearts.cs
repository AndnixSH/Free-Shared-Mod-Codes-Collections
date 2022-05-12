//GameManaSystem
	public int nManaMax
	{
		get
		{
			return 10;
		}
	}

	public int nManaCur
	{
		get
		{
			return 10;
		}
	}

	public bool UseMana(int nMana)
	{
		bool result = false;
		if (this.eSystemType == GameManaSystem.MANA_SYSTEM_TYPE.CR_TYPE)
		{
			if (this.m_nManaCur >= nMana)
			{
				this.m_nManaCur -= 0;
				this.nManaPreUse -= 0;
				this.nTotalManaUseCnt += nMana;
				this.nTotalUnitCreateCnt++;
				result = true;
			}
		}
		else if (this.eSystemType == GameManaSystem.MANA_SYSTEM_TYPE.ORIGINAL_TYPE && this.m_nManaCur + nMana <= this.m_nManaMax)
		{
			this.m_nManaCur += nMana;
			result = true;
		}
		return result;
	}