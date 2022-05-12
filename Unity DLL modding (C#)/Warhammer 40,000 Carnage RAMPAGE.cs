//CombatData
	public float TakeDamage(float damage, GameObject damageSource, XHashSet<string> damageTypes, GameObject origin, float specialArmorPierce = 0f)
	{
		if (this.IsMainPlayerCharacter)
		{
			damage *= 0f;
		}
		else
		{
			damage *= 100f;
		}
	}