//Player
	public int OnDamage(Player sendP, int damage, Player.TDamageType damageType, long dirX = 0L, long dirY = 0L)
	{
		if (this.IsInReviveSave())
		{
			return 0;
		}
		if (this.CurrentHP <= 0)
		{
			return 0;
		}
		damage = damage * (100 + MonoSingleton<BattleManager>.instance.GlobalAttackAddScale100()) / 100;
		this.mGameFramesOfLastBeDamaged = MonoSingleton<LockstepManager>.instance.CurGameFrame;
		//Mod begin here
		if (ModMenu.Hack1)
		{
			if (this.IsMyself && this.IsMyTeam)
			{
				this.CurrentHP -= damage / 5;
			}
			else
			{
				this.CurrentHP -= damage * 5;
			}
		}
		else
		{
			this.CurrentHP -= damage;
		}
		//------------------
		this.mBF.DeletHP(damage);
		if (sendP == MonoSingleton<BattleManager>.instance.mPlayer)
		{
			if (sendP != null)
			{
				int unitID = sendP.UnitID;
			}
			this.mBF.FloatingFont("-", damage, -1, true, this.UnitID);
		}
		if (this.IsMyself)
		{
			if (this.CurrentHP > 0 && BattleManager.IsShowFx())
			{
				if (this.mGetAttack == null)
				{
					GameObject gameObject = MonoSingleton<BundleMgr>.instance.LoadBundleAsset<GameObject>(string.Format("PoolGo/{0}", "GetAttack"), MonoSingleton<BattleManager>.instance.Canvas, null);
					this.mGetAttack = gameObject.GetComponent<GetAttack>();
				}
				this.mGetAttack.StartAnim();
			}
			this.mBF.FloatingFont("-", damage, -1, false, this.UnitID);
		}
		if (this.CurrentHP <= 0)
		{
			this.mContinueKillNums = 0;
			damage = -this.CurrentHP;
			this.CurrentHP = 0;
		}
		else if ((damageType == Player.TDamageType.EDirectBullet || damageType == Player.TDamageType.EExplosionBullet) && !this.mIsRotateAni && sendP != null)
		{
			this.mIsRotateAni = true;
			Vector2d vector2d = new Vector2d(dirX, dirY);
			vector2d.Normalize();
			Vector3 vector = vector2d.ToVector3(0f);
			vector = base.transform.InverseTransformDirection(vector);
			vector *= 4f;
			Sequence s = DOTween.Sequence();
			s.Append(base.transform.DOPunchRotation(vector, 0.3f, 16, 1f)).AppendCallback(delegate
			{
				this.mIsRotateAni = false;
			});
			this.mSetRedTime = Time.time;
			this.mCurHitRedLight = 10f;
		}
		if (sendP != null && sendP.UnitID != this.UnitID)
		{
			if (!this.mTotalDamageByOthers.ContainsKey(sendP.UnitID))
			{
				this.mTotalDamageByOthers[sendP.UnitID] = 0;
			}
			Dictionary<int, int> dictionary;
			int unitID2;
			(dictionary = this.mTotalDamageByOthers)[unitID2 = sendP.UnitID] = dictionary[unitID2] + damage;
			this.mUnitIDWhoDamageYou = sendP.UnitID;
			this.mLastAttackGFWhoDamageYou = MonoSingleton<LockstepManager>.instance.CurGameFrame;
		}
		if (this.CurrentHP <= 0)
		{
			sendP = MonoSingleton<BattleManager>.instance.GetPlayer(this.mUnitIDWhoDamageYou);
			if (sendP)
			{
				if (BattleManager.IsShowFx() && MonoSingleton<XRole>.instance.RoleInfo.IsNewbie == 0)
				{
					GameObject gameObject2;
					if (sendP.IsMyTeam)
					{
						gameObject2 = GameObjPool.instance.Pool(string.Format("PoolGo/{0}", "DamageItem"), MonoSingleton<BattleManager>.instance.mDamageLeftGround);
					}
					else
					{
						gameObject2 = GameObjPool.instance.Pool(string.Format("PoolGo/{0}", "DamageItem"), MonoSingleton<BattleManager>.instance.mDamageRightGround);
					}
					gameObject2.transform.Find("Bg").GetComponent<CanvasGroup>().alpha = 1f;
					DamageItem component = gameObject2.GetComponent<DamageItem>();
					component.InitDamageInfo(sendP, this);
					gameObject2.gameObject.SetActive(false);
					MonoSingleton<BattleManager>.instance.ChangeQue(gameObject2, sendP.IsMyTeam);
					sendP.mContinueKillNums++;
					this.ShowTipForContinueKillNum(sendP);
				}
				if (MonoSingleton<BattleManager>.instance.BattleMode == TBattleMode.Star)
				{
					sendP.Score++;
					sendP.AddTeamScore(this.Score);
					this.Score = 2;
				}
				else if (MonoSingleton<BattleManager>.instance.BattleMode == TBattleMode.Crystal)
				{
					this.AddTeamScore(-this.Score);
					int score = this.Score;
					Vector2d centerPos = this.Position2d();
					MonoSingleton<LootItemManager>.instance.CreateExplosionItemsAfterLsf(2, centerPos, score);
					this.Score = 0;
				}
				else if (MonoSingleton<BattleManager>.instance.BattleMode == TBattleMode.StarN || MonoSingleton<BattleManager>.instance.BattleMode == TBattleMode.Dominator)
				{
					int num = (this.Score + 1) / 2;
					sendP.Score += num;
					sendP.AddTeamScore(num);
					int num2 = this.Score / 2;
					if (num2 < 0)
					{
						num2 = 0;
					}
					int score2 = this.Score;
					this.Score -= num2;
					if (this.Score < 1)
					{
						this.Score = 1;
					}
					this.AddTeamScore(this.Score - score2);
				}
			}
			this.SetState(Player.StateType.Death);
		}
		return damage;
	}