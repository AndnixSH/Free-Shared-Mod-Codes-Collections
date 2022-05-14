//ActorAIBase
	public void Hurt(ActorAIBase attackFrom, float damage)
	{
		if (!this.IsAlive(SkillTriggerConditions.Always))
		{
			return;
		}
		this.actorInfo.ModifyHp((int)(-(int)damage));
		if (ModMenu.Hack1 && this.actorInfo.camp == CampType.Enemy)
		{
			this.actorInfo.ModifyHp((int)(-(int)(damage * 999f)));
		}
		if (ModMenu.Hack2 && this.actorInfo.camp != CampType.Enemy)
		{
			return;
		}
	}
	
//UIRoot
	public void OnGUI()
	{
		ModMenu.ButtonMenu();
	}