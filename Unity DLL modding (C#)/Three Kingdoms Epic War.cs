//Game: Hustle Castle: Fantasy Kingdom (server-sided)
//Version: 1.11.5
//APK: https://play.google.com/store/apps/details?id=com.my.hc.rpg.kingdom.simulator

//Server-sided game, do not mod. Use it only for educational purposes

//Class: UIRoot
public void OnGUI()
{
	ModMenu.OnGUI();
}

//Class: Warrior
public void SetHP(float curHP, float maxHP)
{
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
	int num = Mathf.Max(0, Mathf.CeilToInt(this.m_fCurHP / this.m_fHPPerSoldire));
	int num2 = this.GetAliveCount() - num;
	if (num2 < 0)
	{
		for (int i = 1; i < this.m_lsUnits.Count; i++)
		{
			if (num2 == 0)
			{
				return;
			}
			if (this.m_lsUnits[i].GetDeath())
			{
				Vector3 targetPos = Vector3.zero;
				if (this.m_bLockFormation)
				{
					targetPos = this.m_kFormation.GetPosG(this.m_lsUnits[i].GetLockedIndex());
				}
				else
				{
					targetPos = this.m_kFormation.GetPosG(num - num2);
				}
				this.m_lsUnits[i].Revive(targetPos, this.m_lsUnits[0].GetDir());
				this.m_lstAvailableUnit[i - 1] = false;
				num2++;
			}
		}
		return;
	}
	if (num2 > 0)
	{
		int num3 = 1;
		while (num3 < this.m_lsUnits.Count && num2 != 0)
		{
			if (!this.m_lsUnits[num3].GetDeath())
			{
				this.m_lsUnits[num3].SetDeath();
				this.m_lstAvailableUnit[num3 - 1] = true;
				if (!Game.Instance().GetBattlefield().IsMultiPlayer())
				{
					MessageHelper.Broadcast<int, int>(MessageName.MN_SoldireDead, this.GlobalID, num3);
				}
				num2--;
			}
			num3++;
		}
	}
}