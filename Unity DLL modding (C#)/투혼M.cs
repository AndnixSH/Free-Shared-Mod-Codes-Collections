//Game: 투혼M
//Version: 8005.0
//APK: https://apkpure.com/%ED%88%AC%ED%98%BCm/com.bingchen.tuhon.google

//Calling Mod menu
//Class: UIRoot
public void OnGUI()
{
	ModMenu.ButtonMenu();
}

//Class: GameBattleEntity
public void ModHP(int iDeltaHP, SyncHPInfo HPInfo, HitRet eHitType, bool _isLocalConfirm, bool _isSkillDirectDamaged)
{
	if (GameWorld.DisableConfirmationLocalDamageResult && _isLocalConfirm)
	{
		return;
	}
	if (GameWorld.DisableConfirmationLocalDamageResult)
	{
		_isSkillDirectDamaged = SkillExportDataSerializeModule.HasMask(HPInfo.BattleFlag, SkillExportDataSerializeModule.ExportFlag.SkillDirectExportEvent);
	}
	if (GameWorld.DisableConfirmationLocalDamageResult)
	{
		GameBattleEntity gameBattleEntity = null;
		if (HPInfo.ExporterID != 0UL)
		{
			if (HPInfo.ExporterID == this.ID)
			{
				gameBattleEntity = this;
			}
			else
			{
				gameBattleEntity = GameEntityManager.Get(this.ID);
			}
		}
		if (SkillExportDataSerializeModule.HasMask(HPInfo.BattleFlag, SkillExportDataSerializeModule.ExportFlag.CURE) && HPInfo.DeltaHP != 0 && gameBattleEntity != null && DamageDisplayHelper.VerifyUIEffectDisplay(gameBattleEntity.GetFaction(), gameBattleEntity.EntityControlType, this.GetFaction(), this.EntityControlType, DamageUIEffectDisplayMode.ServerResult))
		{
			DamageDisplayType eHitType2 = DamageDisplayType.DAMAGE_DISPLAY_CURE;
			if (SkillExportDataSerializeModule.HasMask(HPInfo.BattleFlag, SkillExportDataSerializeModule.ExportFlag.CIRTICAL))
			{
				eHitType2 = DamageDisplayType.DAMAGE_DISPLAY_CURE_CRITICAL;
			}
			else if (SkillExportDataSerializeModule.HasMask(HPInfo.BattleFlag, SkillExportDataSerializeModule.ExportFlag.AbsorbBlood))
			{
				eHitType2 = DamageDisplayType.DAMAGE_DISPLAY_ABSORBBLOOD;
			}
			DamageDisplayHelper.DamageDisplay(this.ID, this.GetFaction(), eHitType2, HPInfo.DeltaHP);
		}
		if (HPInfo.AbsorbVal > 0 && gameBattleEntity != null && DamageDisplayHelper.VerifyUIEffectDisplay(gameBattleEntity.GetFaction(), gameBattleEntity.EntityControlType, this.GetFaction(), this.EntityControlType, DamageUIEffectDisplayMode.ServerResult))
		{
			DamageDisplayHelper.DamageDisplay(this.ID, this.GetFaction(), DamageDisplayType.DAMAGE_DISPLAY_ABSORB, HPInfo.AbsorbVal);
		}
		if (SkillExportDataSerializeModule.HasMask(HPInfo.BattleFlag, SkillExportDataSerializeModule.ExportFlag.MissEvent) && gameBattleEntity != null && DamageDisplayHelper.VerifyUIEffectDisplay(gameBattleEntity.GetFaction(), gameBattleEntity.EntityControlType, this.GetFaction(), this.EntityControlType, DamageUIEffectDisplayMode.ServerResult))
		{
			DamageDisplayHelper.DamageDisplay(this.ID, this.GetFaction(), DamageDisplayType.DAMAGE_DISPLAY_MISS, 0);
		}
		if (SkillExportDataSerializeModule.HasMask(HPInfo.BattleFlag, SkillExportDataSerializeModule.ExportFlag.ImmuneEvent) && gameBattleEntity != null && DamageDisplayHelper.VerifyUIEffectDisplay(gameBattleEntity.GetFaction(), gameBattleEntity.EntityControlType, this.GetFaction(), this.EntityControlType, DamageUIEffectDisplayMode.ServerResult))
		{
			DamageDisplayHelper.DamageDisplay(this.ID, this.GetFaction(), DamageDisplayType.DAMAGE_DISPLAY_IMMUNITY, 0);
		}
		if (SkillExportDataSerializeModule.HasMask(HPInfo.BattleFlag, SkillExportDataSerializeModule.ExportFlag.DAMAGED) && HPInfo.DeltaHP != 0 && gameBattleEntity != null)
		{
			DamageDisplayType eHitType3 = DamageDisplayType.DAMAGE_DISPLAY_NORMAL;
			if (SkillExportDataSerializeModule.HasMask(HPInfo.BattleFlag, SkillExportDataSerializeModule.ExportFlag.CIRTICAL))
			{
				eHitType3 = DamageDisplayType.DAMAGE_DISPLAY_CIRTICAL;
			}
			if (DamageDisplayHelper.VerifyUIEffectDisplay(gameBattleEntity.GetFaction(), gameBattleEntity.EntityControlType, this.GetFaction(), this.EntityControlType, DamageUIEffectDisplayMode.ServerResult))
			{
				DamageDisplayHelper.DamageDisplay(this.ID, this.GetFaction(), eHitType3, HPInfo.DeltaHP);
			}
		}
	}
	if (iDeltaHP == 0)
	{
		return;
	}
	if (GameWorld.EnableConfirmationLocalDamageResult && _isSkillDirectDamaged)
	{
		this.FragileBuff();
	}
	long hp = this._HP + (long)iDeltaHP;
	//God mode
	if (ModMenu.hack2 && !this.IsHero)
	{
		hp = 0L;
	}
	//1 hit kill
	if (ModMenu.hack1 && this.IsHero)
	{
		hp = this.GetHPMax();
	}
	this.SetHP(hp);
}
