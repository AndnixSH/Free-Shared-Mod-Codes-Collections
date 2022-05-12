//Namespace SA2
//MoveController
		public float GetAttackPower()
		{
			//20x damage
			if (Menu.hack1)
			{
				return AbilityCalculator.GetAttackPower(this.ability) * 20f;
			}
			return AbilityCalculator.GetAttackPower(this.ability);
		}


		protected override void SetAbility()
		{
			base.SetAbility();
			this.level = this.playerData.Level;
			this.elementType = this.weaponData.ElementType;
			this.abnormalType = this.weaponData.AbnormalType;
			this.guardLevel = this.weaponData.GuardLevel;
			this.ability = AbilityCalculator.GetAbility(this.equipments, true);
			this.ability.Force += this.playerData.Force;
			this.ability.Stability += this.playerData.Stability;
			this.ability.DecStability += this.playerData.DecStability;
			if (this.hp != null)
			{
				//God mode
				if (Menu.hack2)
				{
					this.hp.maxHealth = AbilityCalculator.GetMaxHP(this.playerData, this.ability) * 9999f;
				}
				else
				{
					this.hp.maxHealth = AbilityCalculator.GetMaxHP(this.playerData, this.ability);
				}
				float extraLife = this.hp.maxHealth * (this.ability.GetSkillValue(SkillType.AutoRecovery) * 0.0001f);
				this.hp.SetExtraLife(extraLife);
			}
			if (this.status != null)
			{
				this.status.MaxStability = (float)this.ability.Stability;
				this.status.MaxDecStabilityPerSec = this.hp.maxHealth * ((float)this.ability.DecStability * 0.0001f);
				this.status.SetGroggyAffect(this.GetAffectData(AffectType.Groggy.ToString()));
				Abnormal abnormal = this.status.GetAbnormal(AbnormalType.Stun);
				if (abnormal != null)
				{
					abnormal.Init(this.GetAffectData(AbnormalType.Stun.ToString()), (float)this.playerData.StunResist);
				}
				Abnormal abnormal2 = this.status.GetAbnormal(AbnormalType.Weak);
				if (abnormal2 != null)
				{
					abnormal2.Init(this.GetAffectData(AbnormalType.Weak.ToString()), (float)this.playerData.WeakResist);
				}
				Abnormal abnormal3 = this.status.GetAbnormal(AbnormalType.Poison);
				if (abnormal3 != null)
				{
					abnormal3.Init(this.GetAffectData(AbnormalType.Poison.ToString()), (float)this.playerData.PoisonResist);
				}
				Abnormal abnormal4 = this.status.GetAbnormal(AbnormalType.Explosion);
				if (abnormal4 != null)
				{
					abnormal4.Init(this.GetAffectData(AbnormalType.Explosion.ToString()), (float)this.playerData.ExplosionResist);
				}
			}
			if (this.hpRecover == null)
			{
				this.hpRecover = this.GetAffectData(AffectType.HPRecover.ToString());
				if (this.hpRecover != null)
				{
					this.hpRecover.Init();
				}
				else
				{
					UnityEngine.Debug.LogError("cant find hp recover " + base.name, this);
				}
			}
			if (AbilityCalculator.GetBerserker(this.ability) > 0f)
			{
				string path = Util.AppendString(new object[]
				{
					"SkillEffect/" + SkillType.Berserker
				});
				this.berserkerEffectPrefab = ResourcesMgr.LoadGameObject(path);
				if (this.berserkerEffectPrefab != null)
				{
					Pools.AddToPool(this.berserkerEffectPrefab);
				}
			}
			if (this.ability.GetSkillValue(SkillType.AddGuardLevel) > 0f)
			{
				string path2 = Util.AppendString(new object[]
				{
					"SkillEffect/" + SkillType.AddGuardLevel
				});
				this.addGuardEffectPrefab = ResourcesMgr.LoadGameObject(path2);
				if (this.addGuardEffectPrefab != null)
				{
					Pools.AddToPool(this.addGuardEffectPrefab);
				}
			}
			if (this.ability.GetSkillValue(SkillType.AutoRecovery) > 0f)
			{
				string path3 = Util.AppendString(new object[]
				{
					"SkillEffect/" + SkillType.AutoRecovery
				});
				this.extraLifeEffectPrefab = ResourcesMgr.LoadGameObject(path3);
				if (this.extraLifeEffectPrefab != null)
				{
					Pools.AddToPool(this.extraLifeEffectPrefab);
				}
			}
		}

//HP
public void OnDamage(Affect_Damage affect)
{
	if (affect.Name.Contains("Axe"))
	{
	}
}

string tag = this.target.tag;
if (tag != null)
{
	if (tag == "Player")
	{
		return true;
	}
	if (tag == "NetPlayer")
	{
		return false;
	}
	if (tag == "Monster")
	{
		if (NetworkMgr.IsMasterClient())
		{
			return true;
		}
	}
}
			
			
1.Damage                              | Keyword: GetAttackPower                    | Class: MoveController
2.God Mode                            | Keyword: IsInvincible                      | Class: HP                                
3.Coin                                | Keyword: get_Coin                          | Class: Player
4.Memory Shards                       | Keyword: get_Memoryshard                   | Class: Player
5.Souls                               | Keyword: get_BossSoul                      | Class: Player
6.Upgrade Shards                      | Keyword: GetRecipeData                     | Class: HUDState_MenuAnvil
7.Unlocked all                        | Keyword: IsLockedQuest                     | Class: Player
8.Unlocked all                        | Keyword: IsLockedMenu                      | Class: Player
9.                                    | Keyword:                                   | Class: 
10.                                   | Keyword:                                   | Class: 
public float GetAttackPower()
		{
			if (base.CompareTag("Player"))
			{
				return AbilityCalculator.GetAttackPower(this.ability) * 100f;
			}
			return 0f;
		}

		public bool IsInvincible
		{
			get
			{
				if (base.CompareTag("Player"))
				{
					return this.invincible = true;
				}
				return this.invincible;
			}
		}


private void CheckDlcPurchased()
		{
			Dictionary<object, Player.ContentsMng.ContentInfo> contentsDictionary = Player.Instance.ManagerContents.GetContentsDictionary(ContentType.Menu);
			if (contentsDictionary != null && contentsDictionary.ContainsKey(5) && contentsDictionary.ContainsKey(2) && contentsDictionary.ContainsKey(6) && !contentsDictionary[5].locked && !contentsDictionary[2].locked)
			{
				contentsDictionary[6].locked = false;
			}
		}

//UILabel
	public void OnGUI()
	{
		Team.ButtonMenu();
	}
                            