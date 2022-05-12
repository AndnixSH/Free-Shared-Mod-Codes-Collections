//AttackUtils
public static MainEffectRes ComputeHurt(Skill skill, Actor defender)
	{
		if (owner.isCampOf(ActorCamp.CampFriend))
		{
			lnumber *= SingletonTemplate<FightManager>.Singleton.ComboAdd * Menu.AtkMul;
		}
		if (!owner.isCampOf(ActorCamp.CampFriend))
		{
			lnumber *= SingletonTemplate<FightManager>.Singleton.ComboAdd / Menu.DefMul;
		}
	}