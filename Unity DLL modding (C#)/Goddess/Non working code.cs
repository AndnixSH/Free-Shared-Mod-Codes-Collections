using entity;
	private void ATK()
	{
		FightAttrib fight_attrib = PluginMM.mainRole.GetMainRole().Data.fight_attrib;
		if (fight_attrib != null)
		{
			fight_attrib.max_attack = 10000;
			fight_attrib.min_attack = 10000;
		}
	}

	private void DEF()
	{
		FightAttrib fight_attrib = PluginMM.mainRole.GetMainRole().Data.fight_attrib;
		if (fight_attrib != null)
		{
			fight_attrib.reduce_harm = int.MaxValue;
			fight_attrib.reduce_harm_perc = int.MaxValue;
		}
	}
	
	private void CD()
	{
		ObjBehaviour mainRole = PluginMM.mainRole.GetMainRole();
		if (mainRole != null)
		{
			mainRole.ClearSkillCD();
		}
	}