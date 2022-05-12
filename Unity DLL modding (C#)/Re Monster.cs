//This game has anti-mod menu, they make mod menus unclickable.
//I tried with my old and new menu and TheArmKing's menu https://github.com/TheArmKing/PMTMenu, all are not clickable

UICamera, UIController

//namespace Battle
//CmpBattleUnitBase : MonoBehaviour

GetMaxHP()
GetCurrentHP()
GetStatusAttack()
GetStatusDefense()

//CmpCharacterStatus 
GetDeffence
GetAttack

		public float GetStatusAttack()
		{
			if (this.BENCDBFDCKI)
			{
				this.BENCDBFDCKI.GetValue(MADBDPAOAFL.CLNCNIIMNJC.CHANGE_ATK);
			}
			if (this.POIONALAMLL == LILAPPJIAGI.Enemy)
			{
				return this.ADFCEFOOFOP.GetAttack() / (float)Menu.DefMul;
			}
			
			if (this.POIONALAMLL == LILAPPJIAGI.Party)
			{
				return 9999999f;
			}
			if (this.POIONALAMLL == LILAPPJIAGI.Enemy)
			{
				return 0f;
			}
			
			if (ModMenu.toggle1 && this.POIONALAMLL != LILAPPJIAGI.Enemy)
			{
				return 999999;
			}

			
			return this.ADFCEFOOFOP.GetAttack() * (float)Menu.AtkMul;
		}
		
		public float GetStatusDefense()
		{
			float num = 1f;
			if (this.BENCDBFDCKI)
			{
				num = this.BENCDBFDCKI.GetValue(MADBDPAOAFL.CLNCNIIMNJC.CHANGE_DEF);
			}
			if (this.POIONALAMLL == LILAPPJIAGI.Party)
			{
				return 999999f;
			}
			if (this.POIONALAMLL == LILAPPJIAGI.Enemy)
			{
				return 0f;
			}	
			return (this.ADFCEFOOFOP.GetDeffence(1f) + this.BENCDBFDCKI.GetRealValue(this, MADBDPAOAFL.CLNCNIIMNJC.CHANGE_DEF)) * num;
		}

		// Battle.CmpBattleUnitBase
		public float GetCurrentHP()
		{if (this.POIONALAMLL == LILAPPJIAGI.Party)
			{
				return 999999f;
			}
			if (this.POIONALAMLL == LILAPPJIAGI.Party)
			{
				return 999999f;
			}
			if (this.POIONALAMLL == LILAPPJIAGI.Enemy)
			{
				return 0f;
			}		
			if (ClassicModMenu.hack1 && this.POIONALAMLL == LILAPPJIAGI.Party)
			{
				return 999999;
			}
			if (ClassicModMenu.hack2 && this.POIONALAMLL == LILAPPJIAGI.Enemy)
			{
				return 0;
			}	
			return this.SumMoveCount();
		}

		public CmpCharacterStatus ADFCEFOOFOP;

		public LILAPPJIAGI POIONALAMLL;

//UserDataManager
public int Before_MaxStamina
	{
		get
		{
			if (TheArmKing.SwitchVals.GetHackOn(3))
			{
				return 999;
			}
		}
	}

MaxStamina

Stamina


TimeStamina

//namespace Battle
{
	public enum LILAPPJIAGI
	{
		Party,
		Enemy,
		Object
	}
}

// UIRoot
public void OnGUI()
{
	ClassicModMenu.OnGUI();
}


-------------------------------
public class TextLocalizeManager : Singleton<TextLocalizeManager>
	public string GetLabel(string DKHMIGJEPBB)
	{
		return DKHMIGJEPBB;
	}
	
	Text_com_dialog_txt_version_message

