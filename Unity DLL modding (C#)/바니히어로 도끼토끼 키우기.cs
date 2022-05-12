//Game: ก바니히어로 - 도끼토끼 키우기
//Version: 93
//APK: https://play.google.com/store/apps/details?id=com.UnderBunny.BunnyHero

//Bottom_UI_Btn
	private void OnEnable()
	{
		this.timeSpeedInt = Time.timeScale;
		this.speed2xText.text = this.timeSpeedInt.ToString("f1") + "X";
		if (DataManager.Instance.AutoTouch == 1)
		{
			this.autoTouch_lock_Btn.SetActive(false);
			this.autoTouch_unlock_Btn.SetActive(true);
			return;
		}
		this.autoTouch_lock_Btn.SetActive(false);
		this.autoTouch_unlock_Btn.SetActive(true);
	}

//EnemyMove
	public void Damage(GameObject Player, int atk)
	{
		this.Die(); //add this method to instant die when damaging enemies
		...
	}
	
//PlayerMove
//bunch of changes there
	public void Damage(GameObject Enemy)
	{
		if (this.Target != this.gameManager)
		{
			if (DataManager.Instance.Mode == "AdventureMode")
			{
				if (!DataManager.Instance.player_die && !Enemy.GetComponent<EnemyMove>().IamDie)
				{
					this.miss = false;
					this.block = false;
					int num = 0; 
					int num2 = (int)UnityEngine.Random.Range((float)num - (float)num * 0.3f, (float)num + (float)num * 0.3f);
					if (UnityEngine.Random.Range(0f, 1f) < DataManager.Instance.MissPer)
					{
						this.miss = true;
					}
					else
					{
						num2 -= DataManager.Instance.Def;
					}
					if (num2 <= 0)
					{
						this.block = true;
						num2 = 1;
					}
					if (this.miss)
					{
						this.DamageHUD.GetComponent<DamageHUD>().DamageView(num2, "miss");
					}
					else if (this.block)
					{
						if (DataManager.Instance.DefenseHp > 0)
						{
							DataManager instance = DataManager.Instance;
							instance.DefenseHp -= num2;
							if (DataManager.Instance.DefenseHp <= 0)
							{
								this.gameManager.GetComponent<SkillManager>().StopFx("fx_Shield");
							}
						}
						else
						{
							DataManager instance2 = DataManager.Instance;
							instance2.CurrentHp -= num2;
						}
						this.Damage_Fx_OB.SetActive(false);
						this.Damage_Fx_OB.SetActive(true);
						this.DamageHUD.GetComponent<DamageHUD>().DamageView(num2, "block");
					}
					else
					{
						if (DataManager.Instance.DefenseHp > 0)
						{
							DataManager instance3 = DataManager.Instance;
							instance3.DefenseHp -= num2;
							if (DataManager.Instance.DefenseHp <= 0)
							{
								this.gameManager.GetComponent<SkillManager>().StopFx("fx_Shield");
							}
						}
						else
						{
							DataManager instance4 = DataManager.Instance;
							instance4.CurrentHp -= num2;
						}
						this.Damage_Fx_OB.SetActive(false);
						this.Damage_Fx_OB.SetActive(true);
						this.DamageHUD.GetComponent<DamageHUD>().DamageView(num2, "-");
					}
					if (DataManager.Instance.CurrentHp <= 0 && !DataManager.Instance.player_die)
					{
						this.Die();
						return;
					}
				}
			}
			else if (DataManager.Instance.Mode == "DunjunMode")
			{
				if (!DataManager.Instance.player_die && !Enemy.GetComponent<EnemyMove>().IamDie)
				{
					this.miss = false;
					this.block = false;
					int enemy_Atk = Enemy.GetComponent<EnemyMove>().Enemy_Atk;
					int num3 = (int)UnityEngine.Random.Range((float)enemy_Atk - (float)enemy_Atk * 0.3f, (float)enemy_Atk + (float)enemy_Atk * 0.3f);
					if (UnityEngine.Random.Range(0f, 1f) < DataManager.Instance.MissPer)
					{
						this.miss = true;
					}
					else
					{
						num3 -= DataManager.Instance.Def;
					}
					if (num3 <= 0)
					{
						this.block = true;
						num3 = 1;
					}
					if (this.miss)
					{
						this.DamageHUD.GetComponent<DamageHUD>().DamageView(num3, "miss");
					}
					else if (this.block)
					{
						if (DataManager.Instance.DefenseHp > 0)
						{
							DataManager instance5 = DataManager.Instance;
							instance5.DefenseHp -= num3;
							if (DataManager.Instance.DefenseHp <= 0)
							{
								this.gameManager.GetComponent<SkillManager>().StopFx("fx_Shield");
							}
						}
						else
						{
							DataManager instance6 = DataManager.Instance;
							instance6.CurrentHp -= num3;
						}
						this.Damage_Fx_OB.SetActive(false);
						this.Damage_Fx_OB.SetActive(true);
						this.DamageHUD.GetComponent<DamageHUD>().DamageView(num3, "block");
					}
					else
					{
						if (DataManager.Instance.DefenseHp > 0)
						{
							DataManager instance7 = DataManager.Instance;
							instance7.DefenseHp -= num3;
							if (DataManager.Instance.DefenseHp <= 0)
							{
								this.gameManager.GetComponent<SkillManager>().StopFx("fx_Shield");
							}
						}
						else
						{
							DataManager instance8 = DataManager.Instance;
							instance8.CurrentHp -= num3;
						}
						this.Damage_Fx_OB.SetActive(false);
						this.Damage_Fx_OB.SetActive(true);
						this.DamageHUD.GetComponent<DamageHUD>().DamageView(num3, "-");
					}
					if (DataManager.Instance.CurrentHp <= 0 && !DataManager.Instance.player_die)
					{
						this.Die();
						return;
					}
				}
			}
			else if (DataManager.Instance.Mode == "DefenseMode" && !DataManager.Instance.player_die && !Enemy.GetComponent<DefenseEnemyMove>().IamDie)
			{
				this.miss = false;
				this.block = false;
				int enemy_Atk2 = Enemy.GetComponent<DefenseEnemyMove>().Enemy_Atk;
				int num4 = (int)UnityEngine.Random.Range((float)enemy_Atk2 - (float)enemy_Atk2 * 0.3f, (float)enemy_Atk2 + (float)enemy_Atk2 * 0.3f);
				if (UnityEngine.Random.Range(0f, 1f) < DataManager.Instance.MissPer)
				{
					this.miss = true;
				}
				else
				{
					num4 -= DataManager.Instance.Def;
				}
				if (num4 <= 0)
				{
					this.block = true;
					num4 = 1;
				}
				if (this.miss)
				{
					this.DamageHUD.GetComponent<DamageHUD>().DamageView(num4, "miss");
				}
				else if (this.block)
				{
					if (DataManager.Instance.DefenseHp > 0)
					{
						DataManager instance9 = DataManager.Instance;
						instance9.DefenseHp -= num4;
						if (DataManager.Instance.DefenseHp <= 0)
						{
							this.gameManager.GetComponent<SkillManager>().StopFx("fx_Shield");
						}
					}
					else
					{
						DataManager instance10 = DataManager.Instance;
						instance10.CurrentHp -= num4;
					}
					this.Damage_Fx_OB.SetActive(false);
					this.Damage_Fx_OB.SetActive(true);
					this.DamageHUD.GetComponent<DamageHUD>().DamageView(num4, "block");
				}
				else
				{
					if (DataManager.Instance.DefenseHp > 0)
					{
						DataManager instance11 = DataManager.Instance;
						instance11.DefenseHp -= num4;
						if (DataManager.Instance.DefenseHp <= 0)
						{
							this.gameManager.GetComponent<SkillManager>().StopFx("fx_Shield");
						}
					}
					else
					{
						DataManager instance12 = DataManager.Instance;
						instance12.CurrentHp -= num4;
					}
					this.Damage_Fx_OB.SetActive(false);
					this.Damage_Fx_OB.SetActive(true);
					this.DamageHUD.GetComponent<DamageHUD>().DamageView(num4, "-");
				}
				if (DataManager.Instance.CurrentHp <= 0 && !DataManager.Instance.player_die)
				{
					this.Die();
				}
			}
		}
	}