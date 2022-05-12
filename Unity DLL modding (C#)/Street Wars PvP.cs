//AnimationProxy
public void Punch()
	{
		if (this.IsSpecialMode)
		{
			return;
		}
		this.m_lastPunchTime = 0;
		this.m_canPunch = true;
		this.animator.SetTrigger(this.punchID);
	}

	public void Hit(int puncherID, int strenght, int punchIndex, float angle)
{
	Punch punchAnimation = (Punch)punchIndex;
	if (this.m_photonView.isMine)
	{
		this.m_isHitted = true;
		int num = (!this.m_stregthBoosterButton.isActive) ? strenght : (strenght - (int)((float)strenght * this.m_stregthBoosterButton.type.ToPercent()));
		if (this.animationProxy.IsBlocking)
		{
			float num2 = 0.35f - (float)GameData.StatLevel(Stat.Block).Value * 0.005f;
			this.m_health -= new SafeInt(Mathf.RoundToInt((float)num * num2));
		}
		else
		{
			this.m_health -= new SafeInt(num);
		}
		if (this.m_health.Value <= 0)
		{
			GameData.Died();
			MonoSingleton<GameController>.instance.PhotonView(puncherID).RPC("Killed", PhotonTargets.All, new object[]
			{
				this.m_photonView.viewID,
				GameData.Level.Value
			});
			DOVirtual.DelayedCall(2f, delegate
			{
				this.m_photonView.RPC("Respawn", PhotonTargets.All, new object[0]);
			}, true);
		}
	}
	if (this.m_delayCallAfterHit != null)
	{
		this.m_delayCallAfterHit.Kill(false);
	}
	this.m_delayCallAfterHit = DOVirtual.DelayedCall(punchAnimation.ToHitTime(), delegate
	{
		global::Logger.Log(new object[]
		{
			"animationProxy.IsBlocking",
			this.animationProxy.IsBlocking
		});
		if (this.animationProxy.IsBlocking)
		{
			this.m_bloodSplatter.SpawnDust(this.transform.position + new Vector3(0f, 1.6f, 0f));
		}
		else
		{
			this.m_bloodSplatter.SpawnBlood(this.transform.position + new Vector3(0f, 1.8f, 0f));
		}
		bool successfulCombo = this.CheckCombo(punchAnimation);
		if (this.m_photonView.isMine)
		{
			this.m_healthBarComponent.Value = (float)this.m_health.Value;
			this.m_photonView.RPC("SetHealth", PhotonTargets.AllBuffered, new object[]
			{
				this.m_health.Value,
				this.m_healthBarComponent.Max
			});
			if (this.m_health.Value <= 0)
			{
				this.m_photonView.RPC("Died", PhotonTargets.All, new object[]
				{
					angle
				});
				PlayerController $this = this;
				$this.m_row.died = $this.m_row.died + 1;
				this.m_photonView.RPC("UpdateStats", PhotonTargets.AllBuffered, new object[]
				{
					this.m_row.kills,
					this.m_row.died
				});
			}
			else
			{
				this.animationProxy.GotHit(angle, successfulCombo);
				this.PlaySound(ClipType.Hit);
			}
			this.m_isHitted = false;
		}
		else
		{
			this.animationProxy.GotHit(angle, successfulCombo);
			this.PlaySound(ClipType.Hit);
		}
	}, true);
}
	
//GameData