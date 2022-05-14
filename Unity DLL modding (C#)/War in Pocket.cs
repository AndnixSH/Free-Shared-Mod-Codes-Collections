//Serdimax.dll
//ScPlayer
		public void Init(ScBattle battle)
		{
			this.battle = battle;
			this.root = battle.GetRoot();
			this.groupCooldown = float.Parse(this.root.TableMgr.GetGlobalData(ScGlobalDataId.GodSkillGroupCooldown).value);
			this.skillMgr = this.root.SkillMgr;
			this.unitMgr = this.root.UnitMgr;
			this.timerMgr = this.root.TimerMgr;
			ScBattleInfo battleInfo = battle.battleInfo;
			ScBattleData battleData = battleInfo.battleData;
			//Mod here
			this.playerInfo.currentBullet = 1E+08f;
			this.playerInfo.currentEnergy = 99999999;
			this.playerInfo.currentPopulation = 0;
			this.playerInfo.maxPopulation = 9999;
			this.playerInfo.armyInfoList = new List<ScArmyInfo>();
			List<int> selectedArmyList = battleInfo.selectedArmyList;
			for (int i = 0; i < selectedArmyList.Count; i++)
			{
				ScArmyInfo scArmyInfo = new ScArmyInfo();
				ScUnitData unitData = this.root.TableMgr.GetUnitData(selectedArmyList[i]);
				ScUnitGroupData groupData = this.root.TableMgr.GetGroupData(unitData._unitArmyType);
				scArmyInfo.totalCooldown = 0f;
				scArmyInfo.cooldown = 0f;
				scArmyInfo.groupData = groupData;
				scArmyInfo.unitData = unitData;
				this.playerInfo.armyInfoList.Add(scArmyInfo);
			}
			this.playerInfo.skillInfoList = new List<ScSkillInfo>();
			List<HeroInfo> heroInfoList = battleInfo.heroInfoList;
			for (int j = 0; j < heroInfoList.Count; j++)
			{
				ScSkillInfo scSkillInfo = new ScSkillInfo();
				HeroInfo heroInfo = heroInfoList[j];
				scSkillInfo.heroInfo = heroInfo;
				ScGodSkillData godSkillDataByIdLevel = this.root.TableMgr.GetGodSkillDataByIdLevel((int)heroInfo.skill.godSkill.id, (int)heroInfo.skill.godSkill.level);
				scSkillInfo.skillData = godSkillDataByIdLevel;
				scSkillInfo.maxCooldown = 0f;
				scSkillInfo.totalCooldown = 0f;
				scSkillInfo.cooldown = 0f;
				scSkillInfo.damage = -1f;
				if (godSkillDataByIdLevel.growValue != "NA")
				{
					string[] array = godSkillDataByIdLevel.growValue.Split(new char[]
					{
						';'
					});
					uint level = heroInfo.level;
					scSkillInfo.damage = float.Parse(array[0]) * level * level + float.Parse(array[1]) * level + float.Parse(array[2]);
				}
				this.playerInfo.skillInfoList.Add(scSkillInfo);
			}
			if (this.playerInfo.skillInfoList.Count > 5)
			{
				for (int k = this.playerInfo.skillInfoList.Count - 1; k > 1; k--)
				{
					int index = RandomUtil.instance.Int(0, k);
					ScSkillInfo value = this.playerInfo.skillInfoList[index];
					this.playerInfo.skillInfoList[index] = this.playerInfo.skillInfoList[k];
					this.playerInfo.skillInfoList[k] = value;
				}
			}
			this.skillCastList = new List<int>();
			for (int l = 0; l < this.playerInfo.skillInfoList.Count; l++)
			{
				this.skillCastList.Add(l);
			}
		}