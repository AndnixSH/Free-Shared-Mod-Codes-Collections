//Game: Elf Legend
//Version: 1.0.4
//APK: https://apkpure.com/elf-legend/com.mjwl.jldld.android

//Class: UIRoot
public void OnGUI()
{
	ModMenu.OnGUI();
}

//Class: TBLogicBattle
protected int DirectHurt(TBSkillEvent skillEvent, int hurt, int battleType)
{
	int num = hurt;
	if (hurt == 0)
	{
		return num;
	}
	skillEvent.SetAbsorb(false);
	foreach (TBLogicBuff tblogicBuff in this.realAgent_.buffList_)
	{
		if (tblogicBuff.GetBuffCategory() == BuffCategory.FORCE_HURT)
		{
			num = 1;
			skillEvent.SetHpOffset(-num);
			skillEvent.SetHurt(num);
			this.DirectAddHp(-num);
			return -num;
		}
	}
	foreach (TBLogicBuff tblogicBuff2 in this.realAgent_.buffList_)
	{
		BuffType buffType = tblogicBuff2.GetSkillInfo().GetBuffType();
		if (buffType == BuffType.armorShield)
		{
			if (battleType == 1 || battleType == 3)
			{
				TBArmorShieldBuff tbarmorShieldBuff = tblogicBuff2 as TBArmorShieldBuff;
				num = tbarmorShieldBuff.OnChangeHurt(num);
				if (num <= 0)
				{
					skillEvent.SetAbsorb(true);
					break;
				}
			}
		}
		else if (buffType == BuffType.magicArmorShield)
		{
			if (battleType == 2 || battleType == 4)
			{
				TBMagicArmorShieldBuff tbmagicArmorShieldBuff = tblogicBuff2 as TBMagicArmorShieldBuff;
				num = tbmagicArmorShieldBuff.OnChangeHurt(num);
				if (num <= 0)
				{
					skillEvent.SetAbsorb(true);
					break;
				}
			}
		}
		else if (buffType == BuffType.hpArmor)
		{
			TBHpArmorBuff tbhpArmorBuff = tblogicBuff2 as TBHpArmorBuff;
			num = tbhpArmorBuff.OnChangeHurt(num);
			if (num <= 0)
			{
				skillEvent.SetAbsorb(true);
				break;
			}
		}
	}
	skillEvent.SetHpOffset(-num);
	skillEvent.SetHurt(num);
	if (ModMenu.hack1) //1 hit kill
	{
		this.DirectAddHp(-(num * 1000));
	}
	else
	{
		this.DirectAddHp(-num);
	}
	return -num;
}

private void TakeResult()
{
	int num;
	if (ModMenu.hack1) //Fast win
	{
		num = ((!this.TestLose(this.defendTeam_)) ? 1 : 1);
		num |= ((!this.TestLose(this.attackTeam_)) ? 1 : 1);
	}
	else
	{
		num = ((!this.TestLose(this.defendTeam_)) ? 0 : 2);
		num |= ((!this.TestLose(this.attackTeam_)) ? 0 : 1);
	}
	if (num == 3 || num == 2 || num == 1)
	{
		this.isFinish_ = true;
	}
	this.battleRet_ = num;
}