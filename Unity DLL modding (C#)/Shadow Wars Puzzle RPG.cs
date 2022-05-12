//Monster
public void Attack(Monster source, float damage, bool secondaryDamage)
{
	if (this.PlayerType != Player.Type.Human)
	{
		this.Health.Damage(99999f);
	}
	else
	{
		this.Health.Damage(0f);
	}
}
