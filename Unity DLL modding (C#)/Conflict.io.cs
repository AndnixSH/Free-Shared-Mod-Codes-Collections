//Game: Conflict.io Battle Royale Battleground
//Version: 3.1.3
//APK: https://apkpure.com/conflict-io-battle-royale-battleground/com.yuechuan.snowfight

// SoundManager
public void OnGUI()
{
	ConIO.OnGUI();
}

//GameMain.cs
	private void DelayShowSuperGod()
	{
		if (ModMenu.hack1)
		{
			this.isShowSuperGold = true;
		}
		else
		{
			this.isShowSuperGold = false;
		}
		this.ShowSuperGod();
	}

//SkillAssist
	public float SniperRanage()
	{
		return 10f;
	}


//RoleData.cs
	public void initData(RoleSex _sex = RoleSex.Man)
	{
		this.sex = _sex;
		this.skillIDList.Clear();
		this.uiButtonDict.Clear();
		this.propDict[RolePropKey.Hp] = (int)Singleton<DataManager>.Instance.CurGlobalConfig.getConfig("hp");
		this.propDict[RolePropKey.MoveSpeed] = (int)Singleton<DataManager>.Instance.CurGlobalConfig.getConfig("moveSpeed");
		this.propDict[RolePropKey.Level] = 1;
		this.skillBufferPropDict[EnumSkillBufferPropKey.Deceleration] = 0;
		this.skillBufferPropDict[EnumSkillBufferPropKey.Freezing] = 0;
		this.skillBufferPropDict[EnumSkillBufferPropKey.Blood] = 0;
		if (ConIO.toggle2)
		{
			this.Durability = 99999;
			this.MoveSpeedPercent = 3f;
		}
		else
		{
			this.Durability = 0;
			this.MoveSpeedPercent = 1f;
		}
		this.weaponIconStateDict.Clear();
		for (int i = 0; i < 8; i++)
		{
			this.weaponIconStateDict.Add(i, string.Empty);
		}
		this.grassID = -1;
		this.houseID = -1;
		this.isDead = false;
	}
	
//PlayerActor.cs
	public override bool HurtLogic(int killerID, string killerName, int skillID, float distance = 0f, bool isAtkMySelf = false)
	{
		bool result = false;
		SkillInfoData data = Singleton<DataManager>.Instance.skillInfoList.GetData(skillID);
		int num = int.Parse(data.atk);
		if (data.itemId == "grenade")
		{
			int num2 = int.Parse(data.atk);
			int num3 = (int)Singleton<DataManager>.Instance.CurGlobalConfig.getConfig("grenade_damage_min");
			num = (int)((1f + distance / (float)data.atkRangeVar) * (float)(num2 + num3)) + num3;//Change (num2 - num3) to (num2 + num3)
		}
		int num4 = num;
		if (this.roleData.Durability > 0 && this.roleData.weaponIconStateDict[6] != string.Empty)
		{
			string text = this.roleData.weaponIconStateDict[6];
			float num5 = float.Parse(Singleton<DataManager>.Instance.itemDataList.itemDict[text].var2);
			int itemPos = this.roleData.GetItemPos(text);
			if ((float)this.roleData.Durability + (float)num * (1f + num5) < 0f)//Change (1f - num5) to (1f + num5)
			{
				num4 = num + this.roleData.Durability + (int)((float)this.roleData.Durability * (1f + num5));//Change (1f - num5) to (1f + num5)
				GameMain.Instance.RefreshItem(this.roleData.id, text, 0, itemPos, false);
			}
			else
			{
				num4 = (int)((float)num * (1f + num5));//Change (1f - num5) to (1f + num5)
				GameMain.Instance.RefreshItem(this.roleData.id, text, this.roleData.Durability + (int)((float)num * num5), itemPos, false);//Change this.roleData.Durability - (int) to this.roleData.Durability + (int)
			}
		}
		if (!this.roleData.isDead)
		{
			int num6 = this.roleData.propDict[RolePropKey.Hp] + num4;//Change "- num4" to "+ num4"
			if (num6 <= 0)
			{
				result = true;
				GameMain.Instance.PlayerDead(this.roleData.id, killerID, skillID, string.Empty, killerName);
			}
			else
			{
				GameMain.Instance.RefreshHp(this.roleData.id, skillID, num6, string.Empty, true);
			}
		}
		return result;
	}
	
	private void RollMove()
	{
		3f;
	}
