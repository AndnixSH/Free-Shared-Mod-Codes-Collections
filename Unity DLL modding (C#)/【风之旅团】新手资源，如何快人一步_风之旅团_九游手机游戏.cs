//Game: 【风之旅团】新手资源，如何快人一步_风之旅团_九游手机游戏
//Version: 5.25.5.0
//APK: http://www.9game.cn/fzlt/1788581.html

//Inf SP
//Class: FightableCharacter
public void ChangeSP(float amount, ChangeStatus status = ChangeStatus.flag_11)
	{
		if (GetMenu.toggles[2])
		{
			return;
		}
	}
	
//Class: Monster
	public void SetupMonsterData(MonsterData data, float hpBonus = 0f, float attackBonus = 0f, IMonster template = null)
	{
		foreach (BaseFXConfig baseFXConfig in data.baseFXs)
		{
			Monster.baseFX.string_0 = baseFXConfig.fxName;
			Monster.baseFX.bindType = baseFXConfig.bindType;
			Monster.baseFX.bindBoneName = baseFXConfig.bone;
			FXManager.Instance.Play(Monster.baseFX.ExportFXInfo(base.gameObject), delegate(GameObject ins)
			{
				this.baseFXInstances.Add(ins);
			});
		}
		base.race = data.race;
		this.monsterName = data.name;
		this.monsterHeadIcon = data.icon;
		this.attack = data.basicAttack;
		base.flinchFactor = (float)data.weight * 0.01f;
		base.fxClass = data.fxClass;
		if (template == null)
		{
			this.maxHP = data.basicHP;
		}
		else
		{
			this.maxHP = template.GetCharacter().curHP;
			base.AddStatus(CharacterStatusMask.HasSplitted);
		}
		// Mod here - 1 hit //
		if (GetGUI.toggles[0])
		{
			this.maxHP = 1f;
		}
		this.maxHP = Mathf.Max(1f, this.maxHP * (1f + hpBonus));
		// God mode //
		if (GetGUI.toggles[1])
		{
			this.attack = 1f;
		}
		// ---------------- //
		this.attack = Mathf.Max(1f, this.attack * (1f + attackBonus));
		this.curHP = this.maxHP;
		this.maxArmorHP = this.maxHP * data.armor;
		this.armorHP = this.maxArmorHP;
	}