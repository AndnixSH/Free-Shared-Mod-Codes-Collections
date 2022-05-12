protected GameManager.BuddyUnit currentBuddy;

public CharacterUnit front;

this.currentBuddy.front.isDefender

//Soundmanager
private void OnGUI()
	{
		NarutoM.OnGUI();
	}


//CharacterBase
public CharacterUnit owner;

public int maxHp
	{
		get
		{
			int num;
			if (NarutoM.toggle2 && this.battleMode == GameConfig.BattleMode.Normal && !(this as CharacterUnit).isDefender)
			{
				if (this.info.maxHp == null)
				{
					return 0;
				}
				int value = this.info.maxHp.Value;
				return 0;
			}
			else if (NarutoM.toggle1 && this.battleMode == GameConfig.BattleMode.Normal && (this as CharacterUnit).isDefender)
			{
				if (this.info.maxHp == null)
				{
					return 0;
				}
				return this.info.maxHp.Value * 99;
			}
			num = 1;
			IL_25:
			return (this.info.maxHp != null) ? (this.info.maxHp.Value * num + 1) : 0;
		}
		get
		{
			return (this.info.maxHp != null) ? this.info.maxHp.Value : 0;
		}
	}
	
	public int power
	{
		get
		{
			int num;
			if (NarutoM.toggle2 && this.battleMode == GameConfig.BattleMode.Normal)
			{
				CharacterUnit characterUnit = this as CharacterUnit;
				if (!characterUnit.isDefender)
				{
					return 0;
				}
			}
			if (NarutoM.toggle1 && this.battleMode == GameConfig.BattleMode.Normal)
			{
				CharacterUnit characterUnit = this as CharacterUnit;
				if (characterUnit.isDefender)
				{
					return this.info.power.Value * 99;
				}
			}
			num = 1;
			IL_25:
			return this.info.power.Value * num + 1;
		}
		get
		{
			return this.info.power.Value;
		}
	}
	
	
	
	
	CharacterUnit characterUnit = this as CharacterUnit;
			if (characterUnit != null)
			{
				switch (instance.userInfo.selectMissionData.category)
				{
				case 0:
				case 1:
				case 2:
				case 3:
				case 4:
				case 6:
				case 7:
				case 8:
					if (!characterUnit.isEnemy)
					{
						flag2 = true;
					}
					break;
				case 5:
					if (characterUnit.isDefender || (characterUnit.isAttacker && !instance2.bpMng.um.isStartMatchingCpu))
					{
						flag2 = true;
					}
					break;
				}
			}