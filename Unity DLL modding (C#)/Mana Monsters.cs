//AudioManager
public void OnGUI()
{
	MamaMonsters.OnGUI();
}

//TagTeamCombatant - TakeDamage
public override void TakeDamage(float damageAmount, FlyingNumberType damageType = FlyingNumberType.Basic, bool ignoreElement = false, ElementType damageElement = ElementType.None)
{
	damageAmount *= num;
	if (MamaMonsters.toggle2 && this.Orientation == CombatOrientation.Left)
	{
		damageAmount *= 0f;
	}
	else if (MamaMonsters.toggle1 && this.Orientation != CombatOrientation.Left)
	{
		damageAmount *= 99f;
	}
	
	if (this.Orientation == CombatOrientation.Left)
}