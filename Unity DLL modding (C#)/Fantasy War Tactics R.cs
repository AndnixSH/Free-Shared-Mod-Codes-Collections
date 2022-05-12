//SoundManager
	public void OnGUI()
	{
		ModMenu.OnGUI();
	}
	
//StatContainer
	protected virtual void Damaged(float damage, DamageType damageType, StatChangeSet.Change.Cause damagedCause, string effectString, bool isCritical = false, int frameNo = 0, bool isLastEffectFrame = true, bool isCoopPlay = false, bool isIntimacyCoop = false, bool isLordSkill = false, bool displayHUDText = true, Character caster = null, bool isInstantlyDie = false)
	{
		if (GameStage.instance.IsBattleExitState)
		{
			return;
		}
		int num = Mathf.FloorToInt(damage);
		if (ModMenu.hack1 && this.owner.characterType == CharacterType.Monster)
		{	
			num *= 99;
		}
		if (ModMenu.hack2 && !this.owner.characterType != CharacterType.Monster)
		{
			num = 0;
		}
	}