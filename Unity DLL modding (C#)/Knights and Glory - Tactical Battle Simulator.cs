public enum Team
{
	Player,
	Enemy
}

//Character
private void OnHpChanged(int charId, global::Team team, int oldHp, int hp)
{
	if (ModMenu.Hack1 && this.Team == global::Team.Player)
	{
		if (this.Team == global::Team.Player)
		{
			return;
		}
	}
	if (ModMenu.Hack2 && this.Team == global::Team.Enemy)
	{
		this.Die();
	}
	if (hp < oldHp)
	{
	}
	if (hp > 0)
	{
		this._hpProgressBar.Percent = this._health.Percent;
	}
	else
	{
		this.Die();
	}
}