//Game: Might and Mayhem Battle Arena
//Version: 3.4
//APK: https://apkpure.com/might-and-mayhem-battle-arena/com.kizstudios.mightandmayhem

//Class: CharacterManager
public void ApplyDamage(BattleAbilityEffect source, float amount, QueuedTextTriggers trigger, bool skipAllocation = false, string icon = "")
{
	if (this.CachedCharacter.IsDead)
	{
		return;
	}
	if (amount <= 0f)
	{
		return;
	}
	//1 hit KO
	if (this.TeamId != Account.AccountID)
	{
		this.CachedCharacter.Health = 0;
		this.CachedCharacter.HealthMod = 0;
	}
	//----------
	//God mode
	if (this.TeamId == Account.AccountID)
	{
		return;
	}
	//----------
	if (!skipAllocation)
	{
		BattleEvents.DamageAllocation(source, this, icon, ref amount);
	}
	if (amount <= 0f)
	{
		QueuedText data = new QueuedText(source, -amount, QueuedTextTypes.Damage, trigger, icon, string.Empty, 0);
		if (trigger == QueuedTextTriggers.Immediate)
		{
			this.ShowHealthChange(data);
			return;
		}
		this.QueueHealthChange(data);
		return;
	}
	else
	{
		amount = (float)Mathf.FloorToInt(amount);
		this.CachedCharacter.HealthMod = Math.Max(this.CachedCharacter.Health * -1, this.CachedCharacter.HealthMod - Mathf.FloorToInt(amount));
		if (amount != 0f)
		{
			BattleEvents.DamageApplied(source, this, icon, amount);
			this.CachedCharacter.DamageTakenThisBattle += (int)amount;
			this.CachedCharacter.DamageTakenThisRound += (int)amount;
			if (source != null && source.SourceCharacter != null)
			{
				source.SourceCharacter.CachedCharacter.DamageDealtThisRound += (int)amount;
				source.SourceCharacter.CachedCharacter.DamageDealtThisBattle += (int)amount;
			}
		}
		BattleEvents.CharacterHealthModified(this);
		if (this.CachedCharacter.IsDead)
		{
			this.CachedCharacter.DefeatedThisBattle = true;
			this.CachedCharacter.DefeatedThisRound = true;
			BattleEvents.CharacterDefeated(this, source);
		}
		QueuedText data2 = new QueuedText(source, -amount, QueuedTextTypes.Damage, trigger, icon, string.Empty, 0);
		if (trigger == QueuedTextTriggers.Immediate)
		{
			this.ShowHealthChange(data2);
			return;
		}
		this.QueueHealthChange(data2);
		return;
	}
}