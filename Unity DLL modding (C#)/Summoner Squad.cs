//Game: Summoner Squad
//Version: 1.0

//Namespace: Role
public void BeAttackImpl(float attackvalue, AttackStatus attackStatus)
{
	if (this.force == eGameForce.BLUE_FORCE)
	{
		attackvalue /= (float)ModMenu.DefMul; //Defence multiplier
	}
	if (this.force != eGameForce.BLUE_FORCE)
	{
		attackvalue *= (float)ModMenu.AtkMul; //Attack multiplier
	}
	...
}