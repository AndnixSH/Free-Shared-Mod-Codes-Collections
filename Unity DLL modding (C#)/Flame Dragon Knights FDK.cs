//CombatInitSkill
	public int power
	{
		get
		{
			if (Menu.Hack1 && this.type == CombatConstant.COMBAT_ROLE_TYPE_HERO)
			{
				return 10000;
			}
			if (Menu.Hack2 && this.type != CombatConstant.COMBAT_ROLE_TYPE_HERO)
			{
				return 0;
			}
			return this.<power>k__BackingField;
		}
	}