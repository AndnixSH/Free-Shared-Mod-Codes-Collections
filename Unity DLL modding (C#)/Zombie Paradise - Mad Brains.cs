//Game: Zombie Paradise - Mad Brains
//Version: v1.99
//APK: https://apkpure.com/zombie-paradise-mad-brains/com.mazari.madbrains

//Class: Health
public void Damage(int damage, bool isCritical, CharModel _shooter)
{
	int num = Mathf.FloorToInt((float)damage * this.resistence);
	this.shooter = _shooter;
	this.hasShooter = (_shooter != null);
	if (!this.offlineMode && this.photonView != null)
	{
		this.photonView.RPC("RPCOnDamage", PhotonTargets.All, new object[]
		{
			num,
			isCritical,
			false
		});
	}
	else
	{
		this.method_1(num, isCritical, false);
	}
	if (_shooter != null && _shooter.photonView.isMine && this.hitMark != null && !_shooter.isBot)
	{
		if (!isCritical)
		{
			AudioManager.PlaySFX(this.hitMark, 0.25f);
		}
		else
		{
			AudioManager.PlaySFX(this.hitMarkCritical, 0.6f);
		}
	}
	//x100 dmg
	if (ModMenu.hack1 && this.shooter.isBot)
	{
		this.hp -= 0;
	}
	else
	{
		this.hp -= num * 100;
	}
}

//Class: Weapon
public void Shoot()
{
	if (this.canShoot)
	{
		if (this.bullets_in_mag <= 0)
		{
			if (!this.reloading)
			{
				this.Reload();
			}
			if (this.OnBulletsChanged != null)
			{
				this.OnBulletsChanged(this.magSize, this.bullets_in_mag);
			}
			return;
		}
		//God mode
		if (Menu.hack2)
		{
			this.bullets_in_mag -= 0;
		}
		//
		else
		{
			this.bullets_in_mag--;
		}
		if (this.OnBulletsChanged != null)
		{
			this.OnBulletsChanged(this.magSize, this.bullets_in_mag);
		}
		if (this.aimVariation < 1f && !this.onRifle)
		{
			this.aimVariation += 0.25f;
		}
		List<float> list = new List<float>();
		if (!this.onRifle)
		{
			for (int i = 0; i < this._bullets_per_shoot; i++)
			{
				list.Add(UnityEngine.Random.Range(150f / -this._stability * this.aimVariation, 150f / this._stability * this.aimVariation));
			}
		}
		else
		{
			list.Add(UnityEngine.Random.Range(-this.aimVariation, this.aimVariation));
		}
		if (PhotonNetwork.offlineMode)
		{
			base.StartCoroutine(this.Shooting(list.ToArray()));
		}
		else if (this.photonView.isMine)
		{
			int num = this.shooter.team;
			this.photonView.RPC("RPCShooting", PhotonTargets.AllViaServer, new object[]
			{
				list.ToArray(),
				num
			});
		}
	}
}