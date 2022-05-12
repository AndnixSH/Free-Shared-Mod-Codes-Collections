		public virtual bool GetDamage(Sam_DamageInfo dmgInfo, bool force = false)
		{
			God mode
			if (ModMenu.toggle2 && this.targetObject.tag.Substring(0, 5) == "Enemy")
			{
				return false;
			}
			if (this.isDead)
			{
				return false;
			}
			if (!force)
			{
				if (this.unit.unitType == Sam_UnitType.SOLDIER)
				{
					this.hpUI.ShowHpGaugeInTime(3f);
				}
				if (this.conditionManager.CheckCondition(Sam_Condition.Invincible) && kISingleton<Sam_SceneController>.Instance.sceneGameType != Sam_SceneGameType.Intro)
				{
					this.conditionManager.ConditionNameObject(Sam_Condition.Invincible);
					return false;
				}
			}
			if (!dmgInfo.CheckSkillDamage(ref this.getSkillDamageTimer))
			{
				return false;
			}
			float num = dmgInfo.damage;
			if (dmgInfo.hitType != Sam_HitType.Continue)
			{
				num -= num * this.status.defence;
			}
			if (num <= 0f && dmgInfo.damage > 0f)
			{
				num = 1f;
			}
			if (!kISingleton<Sam_SceneController>.Instance.SceneEnd)
			{
				//10 dmg
				if (ModMenu.toggle1)
				{
					this.status.health -= num * 10f;
				}
				else
				{
					this.status.health -= num;
				}
			}
			if (!dmgInfo.drop && (this.SideLayer == Sam_SideLayer.Enemy || dmgInfo.bHero || num.Equals(0f)))
			{
				base.GetComponent<Sam_UnitUIManager>().SetDamageNumber((int)num, dmgInfo.bHero);
			}
			this.getDamageInfo = (dmgInfo.Clone() as Sam_DamageInfo);
			if (dmgInfo.hitType == Sam_HitType.InstantKill)
			{
				if (this.SideLayer == Sam_SideLayer.Enemy)
				{
					kISingleton<Sam_UserInfo>.Instance.missionManager.MissionClear(MissionType.Daily, 2, 1);
					kISingleton<Sam_UserInfo>.Instance.missionManager.MissionClear(MissionType.Continue, 4, 1);
				}
				kISingleton<Sam_SceneController>.Instance.gameUI.SetSoldierKill(base.GetComponent<Sam_UnitUIManager>().posObject);
				this.status.health = 0f;
				this.hpUI.SetHp(0f);
				this.DoDie();
				if (!kISingleton<Sam_SceneController>.Instance.SceneEnd)
				{
					this.sfsm.SetCurState("Hit");
				}
				this.getDamageInfo.soldier.Killed(this);
				return true;
			}
			if (dmgInfo.hitType == Sam_HitType.Critical)
			{
				kISingleton<Sam_SceneController>.Instance.GetComponent<Sam_InGameUIManager>().SetCriticalEffect(base.GetComponent<Sam_UnitUIManager>().posObject);
			}
			if (this.status.health <= 0f)
			{
				this.hpUI.SetHp(0f);
				this.DoDie();
				if (!kISingleton<Sam_SceneController>.Instance.SceneEnd)
				{
					this.sfsm.SetCurState("Hit");
				}
				if (this.getDamageInfo.soldier != null || !this.getDamageInfo.soldier.isDead)
				{
					this.getDamageInfo.soldier.Killed(this);
				}
			}
			else
			{
				this.hpUI.SetHp(this.status.health / this.MaxHp());
			}
			if (dmgInfo.skillDamage)
			{
				if (dmgInfo.hitType == Sam_HitType.Continue)
				{
					return true;
				}
				if (!kISingleton<Sam_SceneController>.Instance.SceneEnd)
				{
					this.sfsm.SetCurState("Hit");
				}
			}
			else if (this.timer < this.status.agility && !kISingleton<Sam_SceneController>.Instance.SceneEnd)
			{
				this.sfsm.SetCurState("Hit");
			}
			return true;
		}