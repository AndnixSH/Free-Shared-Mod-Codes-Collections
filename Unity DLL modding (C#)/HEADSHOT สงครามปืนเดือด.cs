//Game: HEADSHOT สงครามปืนเดือด
//Version: 2.9.6
//APK: https://apkpure.com/headshot-%E0%B8%AA%E0%B8%87%E0%B8%84%E0%B8%A3%E0%B8%B2%E0%B8%A1%E0%B8%9B%E0%B8%B7%E0%B8%99%E0%B9%80%E0%B8%94%E0%B8%B7%E0%B8%AD%E0%B8%94/com.garena.game.ak47th

//Calling Mod menu
//Class: UIRoot
public void OnGUI()
{
	ModMenu.ButtonMenu();
}

//Namespace: BossMonster
//Class: FCrosshairMgr 
private void Update_TPS()
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
		Color color;
		if (ModMenu.hack1)
		{
			color = Color.white;
			FPlayerController.Instance.StopFire();
		}
		else
		{
			color = Color.white;
		}
		if (fpawn != null && !fpawn.isDead && !FHUD.IsLocalPlayerFriend(fpawn.teamNum))
		{
			// Mod here - Auto fire //
			if (ModMenu.hack1)
			{
				color = Color.red;
				FPlayerController.Instance.StartFire();
			}
			else
			{
				color = Color.red;
			}
			// //
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

 recoil
ltiply 0 for nothing. 1 for normal
ass: FWeaponCSBase
protected virtual float GetWeaponSpreadFactor()
{
	return 0.0275f * this.accuracy * ModMenu.RecoilMul; 
}

//Class: FWeaponCSGiant, FWeaponCSWMYX 
protected override float GetWeaponSpreadFactor()
{
	float num;
	if (this.bulletTrackInfo == null)
	{
		num = 0.00475f * ModMenu.RecoilMul;
	}
	else if (FGlobalMiscData.Instance.isFreeMoveMode)
	{
		num = (1f + this.pvpThreeshotSpreadFactor) * (10f / this.bulletTrackInfo.accuracyDivisor) * ModMenu.RecoilMul;
	}
	else
	{
		num = (1f + this.pveThreeshotSpreadFactor) * (10f / this.bulletTrackInfo.accuracyDivisor) * ModMenu.RecoilMul;
	}
	return num * ModMenu.RecoilMul;
}

//Class: FWeapon_ShotGun 
protected override float GetWeaponSpreadFactor()
{
	float num;
	if (this.bulletTrackInfo == null)
	{
		num = 0.00475f *  ModMenu.RecoilMul;
	}
	else if (ModMenu.toggle2)
	{
		num = 0f * this.bulletTrackInfo.accuracyDivisor;
	}
	else
	{
		num = 10f / this.bulletTrackInfo.accuracyDivisor;
	}
	return num *  ModMenu.RecoilMul;
}

//Always critical
//Class: FWeapon, FWeaponCSBase
protected virtual float GetWeaponHurtInfo(PawnBodyType pos, bool isCrit, float distance)
{
	isCrit = ModMenu.hack3;
	//other codes below
}