//Game: 백발백중 for kakao
//Version: 3.4.0
//APK: https://apkpure.com/%EB%B0%B1%EB%B0%9C%EB%B0%B1%EC%A4%91-for-kakao/com.netmarble.wefire

//Class: UIRoot
public void OnGUI()
{
	ModMenu.OnGUI();
}
	
//Class: FGameManager - god mode
public bool IsPlayerTurnOffHurt
{
	get
	{
		return ModMenu.toggle4 || this.isPlayerTurnOffHurt;
	}
}
	
//Class: FWeapon crit
protected virtual float GetWeaponHurtInfo(PawnBodyType pos, bool isCrit, float distance)
{
	isCrit = ModMenu.toggle2;
}
	
//Class: FWeapinCSBase
protected virtual float GetWeaponSpreadFactor()
{
	if (ModMenu.toggle3)
	{
		return 0;
	}
	return 0.0275f * this.accuracy * this.Mod();
}

//Class: FWeaponCSGiant
protected override float GetWeaponSpreadFactor()
{
	float num;
	if (this.bulletTrackInfo == null)
	{
		num = 0.00475f * base.Mod();
	}
	else if (FGlobalMiscData.Instance.isFreeMoveMode)
	{
		num = (1f + this.pvpThreeshotSpreadFactor) * (10f / this.bulletTrackInfo.accuracyDivisor) * base.Mod();
	}
	else
	{
		num = (1f + this.pveThreeshotSpreadFactor) * (10f / this.bulletTrackInfo.accuracyDivisor) * base.Mod();
	}
	return num * base.Mod();
}

//Class: FWeaponCSWMYX
protected override float GetWeaponSpreadFactor()
{
	float num;
	if (this.bulletTrackInfo == null)
	{
		num = 0.00475f * base.Mod();
	}
	else if (FGlobalMiscData.Instance.isFreeMoveMode)
	{
		num = (1f + this.pvpThreeshotSpreadFactor) * (10f / this.bulletTrackInfo.accuracyDivisor) * base.Mod();
	}
	else
	{
		num = (1f + this.pveThreeshotSpreadFactor) * (10f / this.bulletTrackInfo.accuracyDivisor) * base.Mod();
	}
	return num * base.Mod();
}

//Class: FWeapon_ShotGun 
protected override float GetWeaponSpreadFactor()
{
	float num;
	if (this.bulletTrackInfo == null)
	{
		num = 0.00475f * base.Mod();
	}
	else
	{
		num = 10f * base.Mod() / this.bulletTrackInfo.accuracyDivisor;
	}
	return num * base.Mod();
}	

//Class: FCrosshairMgr - auto fire
private void Update()
{
	this.checkTime += Time.deltaTime;
	if (this.checkTime > this.aimCheckInterval)
	{
		this.checkTime = 0f;
		FPawn fpawn = null;
		if (FPlayerController.Instance != null)
		{
			fpawn = FPlayerController.Instance.GetCurAimedPawn();
		}
		Color color = Color.white;
		if (ModMenu.toggle1) //
		{
			FPlayerController.Instance.StopFire();
		}
		if (FGlobalMiscData.Instance.isFreeMoveMode)
		{
			if (ModMenu.toggle1) //
			{
				color = Color.green;
				FPlayerController.Instance.StopFire();
			}
			else
			{
				color = Color.green;
			}
		}
		else if (fpawn != null && !fpawn.isDead && !FHUD.IsLocalPlayerFriend(fpawn.teamNum))
		{
			if (ModMenu.toggle1) //
			{
				color = Color.red;
				FPlayerController.Instance.StartFire();
			}
			else
			{
				color = Color.red;
			}
		}
		if (this.defaultCrosshairSprite != null)
		{
			this.defaultCrosshairSprite.color = color;
		}
		if (this.curCrosshairInstance != null)
		{
			this.curCrosshairInstance.SetCrosshairColor(color);
		}
		if (null != this._crosshairCountdown && this._crosshairCountdown.IsInCountdown)
		{
			this._crosshairCountdown.SetCrosshairColor(color);
		}
	}
}
	
//Class: FPawn
public virtual int TakeDamage(int damage, FPawn instigatedBy, Vector3 hitLocation, Vector3 momentum, DamageType damageType, FPropArmorDesc[] attackPropDescs)
{
	if (!this.isDead)
	{
		if (this.controller != null)
		{
			
		}
		int num = this.GetFinalDamage(damage, damageType, attackPropDescs, instigatedBy, 1f);
		this.lastMomentum = momentum;
		this.lastHitLocation = hitLocation;
		if (this.IsDamageCvt2Health)
		{
		}
		if (FPVPManger.IsClientCalcuDamage())
		{
			int num4 = num;
			if (this.SheildValue > 0 && num > 0)
			{
				
			}
			if (ModMenu.toggle4) ////
			{
				this.Health -= num4 * 10;
			}
			else
			{
				this.Health -= num4;
			}
			if (this.Health <= 0)
			{
				
			}
			else if (!FGlobalMiscData.Instance.IsPVPMode() || !(FPlayerController.Instance.MyPawn != this))
			{
				
			}
		}
		this.OnShowHurt(num, damageType, instigatedBy);
		return num;
	}
	return 0;
}
	