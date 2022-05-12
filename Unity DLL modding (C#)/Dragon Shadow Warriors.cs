//Enemies.cs
	public void resetObjStart()
	{
		if (!this._gamemanager.isTestGame && (this._enemyDefine != null || this._enemyDefine._name.Equals(string.Empty)))
		{
			this.HP = this._enemyDefine.hp;
			this.damage = this._enemyDefine.damage;
			if (ModMenu.toggle2) //Mod Menu
			{
				int damage = this._enemyDefine.damage;
				this.damage = 0;
			}
			this.defend = this._enemyDefine.defense;
			this.EXP = this._enemyDefine.exp;
			float num = Mathf.Pow(this._enemyDefine.increase, (float)this.level);
			this.HP = (int)((float)this.HP * num);
			this.damage = (int)((float)this.damage * num);
			this.defend = (int)((float)this.defend * num);
			this.EXP = (int)((float)this.EXP * num);
			if (DataHolder.difficult == 1)
			{
				this.HP += (int)((float)this.HP * GameConfig.difficultNormal);
				this.damage += (int)((float)this.damage * GameConfig.difficultNormal);
				this.defend += (int)((float)this.defend * GameConfig.difficultNormal);
				this.EXP += (int)((float)this.EXP * GameConfig.difficultNormal);
			}
			else if (DataHolder.difficult == 2)
			{
				this.HP += (int)((float)this.HP * GameConfig.difficultHard);
				this.damage += (int)((float)this.damage * GameConfig.difficultHard);
				this.defend += (int)((float)this.defend * GameConfig.difficultHard);
				this.EXP += (int)((float)this.EXP * GameConfig.difficultHard);
			}
		}
		this.damageBefore = this.damage;
		this.HP_before = this.HP;
		this._animations.playAnimation(this._animations.move, true);
		this.canGetHit = true;
		this.isDie = false;
		this._animatorHit = base.GetComponent<Animator>();
		this.isCheckState = true;
		this.changeDirection = false;
		this.hitEffectParticle.SetActive(false);
		this.distanceMaxProcess = this.distanceMax - UnityEngine.Random.Range(0f, 0.5f);
		this.distanceMinProcess = this.distanceMin + UnityEngine.Random.Range(0f, 0.5f);
		if (this.attEffect != null)
		{
			this.attEffect.SetActive(false);
		}
	}

//Hero.cs
	public void readHeroData()
	{
		this.HP = DataHolder.Instance.playerData.hp;
		this.HpBefore = this.HP;
		this.EXP = DataHolder.Instance.playerData.exp;
		this.level = DataHolder.Instance.playerData.level;
		if (GameSave.numHero == 0)
		{
			if (ModMenu.toggle1) //Mod menu
			{
				this.damage = 999999999;
			}
			else
			{
				this.damage = DataHolder.Instance.playerData.atk + DataHolder.Instance.skillData.getDamageAskill("NORMAL-ATK");
			}
			GameSave.damageAtt = this.damage;
			GameSave.damageSkill1 = DataHolder.Instance.playerData.atk + DataHolder.Instance.skillData.getDamageAskill("FAST-PUNCH");
			GameSave.damageSkill2 = DataHolder.Instance.playerData.atk + DataHolder.Instance.skillData.getDamageAskill("FAST-SHOOT");
			GameSave.damageSkill3 = DataHolder.Instance.playerData.atk + DataHolder.Instance.skillData.getDamageAskill("KAMEHA");
			GameSave.damageSkill4 = DataHolder.Instance.playerData.atk + DataHolder.Instance.skillData.getDamageAskill("KENHKHI");
		}
		else if (GameSave.numHero == 1)
		{
			if (ModMenu.toggle1) //Mod menu
			{
				this.damage = 999999999;
			}
			else
			{
				this.damage = DataHolder.Instance.playerData.atk + DataHolder.Instance.skillData.getDamageAskill("NORMAL-2");
			}
			GameSave.damageAtt = this.damage;
			GameSave.damageSkill1 = DataHolder.Instance.playerData.atk + DataHolder.Instance.skillData.getDamageAskill("SLASH-SKILL");
			GameSave.damageSkill2 = DataHolder.Instance.playerData.atk + DataHolder.Instance.skillData.getDamageAskill("X-SKILL");
			GameSave.damageSkill3 = DataHolder.Instance.playerData.atk + DataHolder.Instance.skillData.getDamageAskill("COMBO-SKILL");
			GameSave.damageSkill4 = DataHolder.Instance.playerData.atk + DataHolder.Instance.skillData.getDamageAskill("ULTIMATE-SKILL");
		}
		if (DataHolder.Instance.skillData.isLearedSkill("RETURN-DAMAGE"))
		{
			this.returnDamage = true;
			this.percentReturnDamage = (float)DataHolder.Instance.skillData.getEffectASkill("RETURN-DAMAGE") / 100f;
		}
		else
		{
			this.returnDamage = false;
		}
		if (DataHolder.Instance.skillData.isLearedSkill("RESTORE-HP"))
		{
			this.numHpRestore = DataHolder.Instance.skillData.getEffectASkill("RESTORE-HP");
			base.StartCoroutine(this.restoreHp());
			BonusIconControl.ins.hp.SetActive(true);
		}
		this.defend = DataHolder.Instance.playerData.def;
		this.defenseBefore = this.defend;
		this.speed = (float)(10 + 10 * DataHolder.Instance.skillData.getEffectASkill("ADD-SPEED") / 100);
		if (DataHolder.watchedVideoAddStat)
		{
			this.HP += (int)((float)this.HP * 0.1f);
			this.HpBefore = this.HP;
			GameSave.damageAtt += (int)((float)GameSave.damageAtt * 0.1f);
			this.damage = GameSave.damageAtt;
			GameSave.damageSkill1 += (int)((float)GameSave.damageSkill1 * 0.1f);
			GameSave.damageSkill2 += (int)((float)GameSave.damageSkill2 * 0.1f);
			GameSave.damageSkill3 += (int)((float)GameSave.damageSkill3 * 0.1f);
			GameSave.damageSkill4 += (int)((float)GameSave.damageSkill4 * 0.1f);
			this.defend += (int)((float)this.defend * 0.1f);
			this.defenseBefore = this.defend;
		}
		if (GameConfig.numModeGame == 2)
		{
			if (GameConfig.survivalPowerUpAttack)
			{
				GameSave.damageAtt += (int)((float)GameSave.damageAtt * 0.1f);
				this.damage = GameSave.damageAtt;
				BonusIconControl.ins.att.SetActive(true);
			}
			if (GameConfig.survivalPowerUpDefense)
			{
				this.defend += (int)((float)this.defend * 0.1f);
				this.defenseBefore = this.defend;
				BonusIconControl.ins.def.SetActive(true);
			}
			if (GameConfig.survivalPowerUpHp)
			{
				this.HP += (int)((float)this.HP * 0.1f);
				this.HpBefore = this.HP;
				BonusIconControl.ins.hp.SetActive(true);
			}
			if (GameConfig.survivalPowerUpExp)
			{
				BonusIconControl.ins.exp.SetActive(true);
			}
		}
		if (GameConfig.numModeGame == 0 && PlayerPrefs.GetInt("theFirstGamePlay") == 0)
		{
			this.HP = 999999;
			this.HpBefore = this.HP;
			this.defend = 99999;
		}
		this.HpDyingOut = (int)((float)this.HP * 0.15f);
		this.dameAttackNormal = GameSave.damageAtt;
		this.dame_skill1_before = GameSave.damageSkill1;
		this.dame_skill2_before = GameSave.damageSkill2;
		this.dame_skill3_before = GameSave.damageSkill3;
		this.dame_skill4_before = GameSave.damageSkill4;
		UIHeroInfo.ins.HP = this.HP;
		UIHeroInfo.ins.updateUIEXP();
	}
	
	

//PlayerData.cs
	public string getGoldString()
	{
		this.gold = 999999;
		this.energy = 999;
		return CustomInt.toString(this.gold);
	}

	public string getRubyString()
	{
		this.ruby = 999999;
		return CustomInt.toString(this.ruby);
	}
	
//UIController.cs
	public void OnGUI()
	{
		ModMenu.OnGUI();
	}
	
	