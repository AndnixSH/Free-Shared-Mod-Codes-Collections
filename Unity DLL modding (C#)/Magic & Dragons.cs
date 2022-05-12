//Game: Magic & Dragons
//Version: 1.4
//APK: https://apkpure.com/magic-dragons/com.pwrd.mnd

//Class: AttributeManager
private void MagicEquation(ref int hpOffset, int nTypeS, float nAdditionalDamagePercent, float nArmorBreakValue, CUnit sender, CHero hero, int sid)
{
	if (hpOffset < 0)
	{
		float magDamageCorrect = this.mUnit.GetAttributeManager().GetMagDamageCorrect();
		double atkintelligence = 0.0;
		float num = 0f;
		float num2 = 0f;
		this.GetPrivilegeBuffMagicHarmCoefficient(sid, hero, ref num, ref num2);
		if (hero != null)
		{
			atkintelligence = (double)hero.GetLordStruct_Info().m_Intelligence;
		}
		if (sender != null)
		{
			atkintelligence = (double)sender.GetAttributeManager().GetLordStruct_Info().m_Intelligence;
		}
		double tgaknowledge = (double)this.GetLordStruct_Info().m_mdef;
		float num3;
		
		//Splitted
		if (this.GetCamp() == 1)
		{
			num3 = (float)BattleAlgorithm.GetMagicDamage((double)hpOffset, atkintelligence, tgaknowledge, (double)(nAdditionalDamagePercent + num), (double)(magDamageCorrect - num2)) / (float)Menu.DefMul; //Defense multiplier
		}
		else
		{
			num3 = (float)BattleAlgorithm.GetMagicDamage((double)hpOffset, atkintelligence, tgaknowledge, (double)(nAdditionalDamagePercent + num), (double)(magDamageCorrect - num2)) * (float)Menu.AtkMul;//Attack multiplier
		}
		hpOffset = (int)num3;
	}
}

private void PhysicalEquation(ref int hpOffset, int nTypeS, float nAdditionalDamagePercent, float nArmorBreakValue, CUnit sender, CHero hero)
{
	int def_Update = this.mUnit.m_def_Update;
	this.UpdateDef_By_Warrior(ref def_Update, nTypeS);
	if (hpOffset < 0)
	{
		this.UpdateHarmCount();
		hpOffset += this.GetParryStruct().m_parryValue;
		double selfPower = 0.0;
		float phyDamageCorrect = this.mUnit.GetAttributeManager().GetPhyDamageCorrect();
		if (hero != null)
		{
			selfPower = (double)hero.GetLordStruct_Info().m_power;
		}
		if (sender != null)
		{
			selfPower = (double)sender.GetAttributeManager().GetLordStruct_Info().m_power;
		}
		double enemyCommand = (double)this.GetLordStruct_Info().m_def;
		float num;
		
		//Splitted
		if (this.GetCamp() == 1)
		{
			num = (float)BattleAlgorithm.GetPhysicalDamage((double)hpOffset, selfPower, enemyCommand, (double)nAdditionalDamagePercent, (double)phyDamageCorrect, (double)def_Update, (double)nArmorBreakValue) / (float)Menu.DefMul; //Defense multiplier
		}
		else
		{
			num = (float)BattleAlgorithm.GetPhysicalDamage((double)hpOffset, selfPower, enemyCommand, (double)nAdditionalDamagePercent, (double)phyDamageCorrect, (double)def_Update, (double)nArmorBreakValue) * (float)Menu.AtkMul; //Attack multiplier
		}
		this.UpdateDiscount_Harm(ref num, this.mUnit.m_maxHp, (float)this.GetDiscount_harm_StructStruct().m_physicalHarmValue, this.GetDiscount_harm_StructStruct().m_PhysicalHarmPercent);
		float discount_harm = (float)this.GetParryStruct().m_parry * 100f / 10000f;
		this.UpdateDiscount_Harm(ref num, this.mUnit.m_maxHp, 0f, discount_harm);
		hpOffset = (int)num;
	}
}