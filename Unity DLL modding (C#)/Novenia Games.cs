//Game: Novenia-Magic Beads Adventure
//Version: 1.5.1
//APK: https://www.apkmonk.com/app/com.enjoygame.nwnyen/

//Game: 諾文尼亞 連珠魔法奇遇祭
//Version: 1.7.2
//APK: https://apkpure.com/%E8%AB%BE%E6%96%87%E5%B0%BC%E4%BA%9E-%E9%80%A3%E7%8F%A0%E9%AD%94%E6%B3%95%E5%A5%87%E9%81%87%E7%A5%AD/com.enjoygame.nwnytw

//Dump hidden dll from memory. Assembly name called scriptdll. Rename it to DOTween43.dll

//Calling Mod menu
//Class: UIRoot
public void OnGUI()
{
	ModMenu.ButtonMenu();
}

//Class: FighterInfo
//x10 dmg 
public int baseAtk
		{
			get
			{
				if (ModMenu.hack1 && this.isAteam())
				{
					return this.invariants.baseAtk * 15;
				}
				return this.invariants.baseAtk;
			}
		}
		
//High HP
public int baseHp
		{
			get
			{
				if (ModMenu.hack2 && this.isAteam())
				{
					return this.invariants.baseHp * 100;
				}
				return this.invariants.baseHp;
			}
		}
