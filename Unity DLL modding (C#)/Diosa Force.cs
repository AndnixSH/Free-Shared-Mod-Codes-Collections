//SoundModule
	public void OnGUI()
	{
		ModMenu.OnGUI();
	}

//BattleFormula
	public static int Get_Final_HP(Actor iActor)
	{
		if (iActor == null)
		{
			return 0;
		}
		float num;
		if (iActor.memberData.EliteData != null)
		{
			num = (float)iActor.memberData.EliteData.eliteHp_per / 10000f;
			if (num <= 0f)
			{
				num = 1f;
			}
		}
		else
		{
			num = 1f;
		}
		int totalHP = iActor.memberData.TotalHP;
		float hp_AmpPer = iActor.actorData.HP_AmpPer;
		int hp_Amp = iActor.actorData.HP_Amp;
		int num2 = BattleFormula.FloatToInt(((float)totalHP * (1f + hp_AmpPer) + (float)hp_Amp) * num);
		if (ModMenu.toggle2 && iActor.actorData.TeamType == eBattleTeam.T_Player)
		{
			return num2 * 1000;
		}
		if (ModMenu.toggle1 && iActor.actorData.TeamType == eBattleTeam.T_Enemy)
		{
			return 1;
		}
		return num2;
		
		//
		int num2 = Mathf.FloorToInt(((float)totalHP * (1f + hp_AmpPer) + (float)hp_Amp) * num);
		if (Singleton<BattleCenter>.Ins.thisBattleType == eBattleType.YiMoBattle && iActor.actorData.TeamType == eBattleTeam.T_Enemy)
		{
			return Mathf.FloorToInt((float)(num2 * Singleton<YimoBattleModule>.Ins.BossNowRate) / 3f);
		}
		if (ModMenu.toggle2 && iActor.actorData.TeamType == eBattleTeam.T_Player)
		{
			return num2 * 1000;
		}
		if (ModMenu.toggle1 && iActor.actorData.TeamType == eBattleTeam.T_Enemy)
		{
			return 1;
		}
		return num2;
	}