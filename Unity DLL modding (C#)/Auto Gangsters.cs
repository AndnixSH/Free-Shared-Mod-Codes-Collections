//ObjCharacter
	public void UpdateSkillCD()
	{
		for (int i = 0; i < this.CharacterSkillData.Count; i++)
		{
			if (this.CharacterSkillData[i].CDTimeCount > 0f)
			{
				if (ModMenu.hack3 && base.ObjType == GameDefine.OBJ_TYPE.OBJ_MAIN_PLAYER)
				{
					this.CharacterSkillData[i].CDTimeCount = 0f;
				}
				this.CharacterSkillData[i].CDTimeCount -= Time.deltaTime;
				if (this.CharacterSkillData[i].CDTimeCount <= 0f)
				{
					this.OnSkillEnable(this.CharacterSkillData[i].ID);
				}
			}
		}
	}
	
///Obj
	public GameDefine.OBJ_TYPE ObjType
	{
		get
		{
			return this.mObjType;
		}
	}
	
///GameDefine
	public enum OBJ_TYPE
	{
		OBJ_NPC,
		OBJ_MAIN_PLAYER,
		OBJ_OTHER_PLAYER,
		OBJ_ZOMBIE_PLAYER,
		OBJ_DROP_ITEM,
		OBJ_COLLECT_ITEM,
		OBJ_PLAYER_CAR,
		OBJ_NPC_CAR,
		OBJ_ZOMBIE_RAGDOLL
	}

	public bool IsStun()
	{
		return (ModMenu.hack4 && base.ObjType != GameDefine.OBJ_TYPE.OBJ_MAIN_PLAYER) || this.IsStunFlag || this.IsSleepFlag || this.IsKnockDownFlag;
	}

//CharacterAttributeData
	public float CurATK
	{
		get
		{
			if (ModMenu.hack1 && this.Camp == GameDefine.CAMP_TYPE.PLAYER_1)
			{
				return this.mCurATK * 99;
			}
			if (ModMenu.hack2 && this.Camp != GameDefine.CAMP_TYPE.PLAYER_1)
			{
				return this.mCurATK * 0;
			}
			return this.mCurATK;
		}
	}
	
	public float CurDEF
	{
		get
		{
			if (ModMenu.hack2 && this.Camp == GameDefine.CAMP_TYPE.PLAYER_1)
			{
				return this.mCurATK * 999;
			}
			return this.mCurDEF;
		}
	}
	
	public enum CAMP_TYPE
	{
		PLAYER_1,
		PLAYER_2,
		NORMAL_NPC,
		NPC_ATTACK_NPC,
		STATIC_NPC,
		FUNCTION_NPC,
		PLAYER_FRIEND_NPC,
		COUNT
	}
	
///
	public virtual GameDefine.CAMP_TYPE Camp
	{
		get
		{
			return this.mCamp;
		}
		set
		{
			this.mCamp = value;
		}
	}

//ChatUIRootLogic

	public static bool skill;

	public static float speed;

	public static float atk;

	public static float def;

	public static bool godmode;

	private bool checkCMD(string cmd)
	{
		if (cmd.ToLower().Equals("#skill"))
		{
			GameModPro.skill = !GameModPro.skill;
			GameModPro.ShowToastMessage("No Skill CD: " + GameModPro.skill.ToString());
			return true;
		}
		if (cmd.ToLower().Equals("#stun"))
		{
			GameModPro.godmode = !GameModPro.godmode;
			GameModPro.ShowToastMessage("Stun All: " + GameModPro.godmode.ToString());
			return true;
		}
		if (cmd.ToLower().Contains("#atk:"))
		{
			string text = Regex.Replace(cmd, "[^0-9]", "");
			GameModPro.atk = float.Parse(text);
			GameModPro.ShowToastMessage("x Attack Value: " + text);
			return true;
		}
		if (cmd.ToLower().Contains("#def:"))
		{
			string text2 = Regex.Replace(cmd, "[^0-9]", "");
			GameModPro.def = float.Parse(text2);
			GameModPro.ShowToastMessage("x Def Value: " + text2);
			return true;
		}
		return false;
	}
	
//public void OnClickInputSendBtn()
		if (this.checkCMD(text))
		{
			this.ChatInput.value = string.Empty;
			this.ClearLinkInfo();
			return;
		}
		
// UIRoot
public void OnGUI()
{
	ModMenu.OnGUI();
}
