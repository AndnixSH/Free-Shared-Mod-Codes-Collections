namespace Moc.GameLogic

//BoardEntity 
protected void DeductHealthAndArmor(int damage, Entity source = null)
{
	if (this.team == BoardEntity.Team.Defender)
	{
		this.health = 0;
		this.damageDealt = 99999;
	}
	if (this.team == BoardEntity.Team.Attacker)
	{
		this.health = this.MaxHealth;
		this.damageDealt = 0;
	}
	if (base.CurrentBattle != null && this.HasShieldBuff && source != this)
	{
		this.TrackDamageShielded(damage);
		return;
	}
	if (this.armorHealth > 0)
	{
		int num = (damage <= this.armorHealth) ? damage : this.armorHealth;
		this.armorHealth -= num;
		damage -= num;
	}
	this.health -= ((damage <= this.health) ? damage : this.health);
}

//Main
OnGUI();