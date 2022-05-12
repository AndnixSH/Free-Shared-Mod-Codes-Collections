//Game: Ocean Raider Captain's Wrath
//Version: 1.0.0.8
//APK: https://apkpure.com/ocean-raider-captain-s-wrath/com.digging.orcw.gp

//Class: UImanager, SoundManager
public void OnGUI()
{
	ModMenu.OnGUI();
}

//Class: Fighter
Attack - Crit
if (ORCW.toggle1 && this.TeamSide == 0)
{
	return 999999f;
}
if (ORCW.toggle2 && this.TeamSide == 1)
{
	return 0f;
}

public float Attack
{
	get
	{
		if (ModMenu.toggle2 && this.TeamSide == 1)
		{
			return 0f;
		}
		else if (ModMenu.toggle1 && this.TeamSide == 0)
		{
			return (this.mActorBattleAttr.attack * (1f + this.GetBuffPercentValue(Buff_Function_Type.Attack_Change_Percent)) + this.GetBuffFunctionValue(Buff_Function_Type.Attack_Change_Value)) * 999f;
		}
		else {
			return this.mActorBattleAttr.attack * (1f + this.GetBuffPercentValue(Buff_Function_Type.Attack_Change_Percent)) + this.GetBuffFunctionValue(Buff_Function_Type.Attack_Change_Value);
		}

		return 0f;
	}
}

public float MagicAttack
{
	get
	{
		if (ModMenu.toggle2 && this.TeamSide == 1)
		{
			return 0f;
		}
		else if (ModMenu.toggle1 && this.TeamSide == 0)
		{
			return (this.mActorBattleAttr.magic_attack * (1f + this.GetBuffPercentValue(Buff_Function_Type.Magic_Attack_Change_Percent)) + this.GetBuffFunctionValue(Buff_Function_Type.Magic_Attack_Change_Value)) * 999f;
		}
		else{
			return this.mActorBattleAttr.magic_attack * (1f + this.GetBuffPercentValue(Buff_Function_Type.Magic_Attack_Change_Percent)) + this.GetBuffFunctionValue(Buff_Function_Type.Magic_Attack_Change_Value);
		}
		return 0f;
	}
}