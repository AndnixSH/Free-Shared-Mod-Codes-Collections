//Monster
public void Attack(Monster source, float damage, bool secondaryDamage)
{
	if (this.PlayerType != Player.Type.Human && ModMenu.toggle1)
	{
		this.Health.Damage(999999f);
	}
	else if (ModMenu.toggle2)
	{
		this.Health.Damage(0f);
	}
}

//AudioManager
	public void OnGUI()
	{
		ModMenu.OnGUI();
	}
