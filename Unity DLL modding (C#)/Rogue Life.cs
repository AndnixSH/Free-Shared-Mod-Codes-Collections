//KnightPlayer.cs
public int CalculateAttackPower()
{
	if (this.IsEnemy())
	{
		return 0;
	}
	return 9999999;
}