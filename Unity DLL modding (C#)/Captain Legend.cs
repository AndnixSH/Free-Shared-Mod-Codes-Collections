//Game: Captain Legend
//Version: v1.0.0.1
//APK: https://apkpure.com/captain-legend/com.fungame.hden

//Class: UIManager
public void OnGUI()
{
	ModMenu.OnGUI();
}

//Class: Fighter
public float Attack
{
	get
	{
		if (!ModMenu.hack1)
		{
			return this.mActorBattleAttr.attack * (1f + this.GetBuffPercentValue(Buff_Function_Type.Attack_Change_Percent)) + this.GetBuffFunctionValue(Buff_Function_Type.Attack_Change_Value);
		}
		if (this.TeamSide == 0)
		{
			return (this.mActorBattleAttr.attack * (1f + this.GetBuffPercentValue(Buff_Function_Type.Attack_Change_Percent)) + this.GetBuffFunctionValue(Buff_Function_Type.Attack_Change_Value)) * 20f;
		}
		return 0f;
	}
}

public float MagicAttack
{
	get
	{
		if (!ModMenu.hack1)
		{
			return this.mActorBattleAttr.magic_attack * (1f + this.GetBuffPercentValue(Buff_Function_Type.Magic_Attack_Change_Percent)) + this.GetBuffFunctionValue(Buff_Function_Type.Magic_Attack_Change_Value);
		}
		if (this.TeamSide == 0)
		{
			return (this.mActorBattleAttr.magic_attack * (1f + this.GetBuffPercentValue(Buff_Function_Type.Magic_Attack_Change_Percent)) + this.GetBuffFunctionValue(Buff_Function_Type.Magic_Attack_Change_Value)) * 20f;
		}
		return 0f;
	}
}