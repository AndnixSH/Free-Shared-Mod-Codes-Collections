//AIBase
	public void OnDamage(DamageData BJEHAOAIIMJ)
	{
		if (!this.OnUse || this.IsDead())
		{
			return;
		}
		if (ModMenu.hack2 && this.TeamIndex == 1)
		{
			this.CurrentHealth = PGBMDDBAOME.HENKICHKHPM(0);
			this.DoDie(BJEHAOAIIMJ.Attacker, true);
			return;
		}
		if (ModMenu.hack1 && this.TeamIndex == 0)
		{
			return;
		}
		...
	}
	
//UILabel
	public void OnGUI()
	{
		ModMenu.OnGUI();
	}