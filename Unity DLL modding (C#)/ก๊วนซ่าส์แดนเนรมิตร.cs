//Game: ก๊วนซ่าส์แดนเนรมิตร
//Version: 1.1.4
//APK: https://apkpure.com/%E0%B8%81%E0%B9%8A%E0%B8%A7%E0%B8%99%E0%B8%8B%E0%B9%88%E0%B8%B2%E0%B8%AA%E0%B9%8C%E0%B9%81%E0%B8%94%E0%B8%99%E0%B9%80%E0%B8%99%E0%B8%A3%E0%B8%A1%E0%B8%B4%E0%B8%95%E0%B8%A3/com.hg.mgidth.android/

//Dump DZMainAssembly.dll from memory and rename to Assembly-UnityScript.dll

//Calling Mod menu
//Class: UIRoot
public void OnGUI()
{
	ModMenu.OnGUI();
}

//When use high dmg, must use with god mode
//All stat + 5000 When On mod must Enchane 1 time effect will done
//and when want off mod all stat+5000 must enchan 1 time to off mod
//All Stat + 5000 On + enchane 1 Time = Mod On done
//All Stat + 5000 Off + enchane 1 Time = Mod Off done
//Namespace: com.game.vo
//Class: BaseRoleVo
	public uint AttMMax
	{
		if (GetGUI.toggles[2])
		{
			this.udF3PIx5RY.Value + 5000u;
		}
	}
	
	public uint AttPMax
	{
		if (GetGUI.toggles[2])
		{
			this.zvJ3QxfJgy.Value + 5000u;
		}
	}
	
	//High damage
	public uint Crit
	{
		if (GetGUI.toggles[2])
		{
			this.ncE3IfOeM0.Value + 9999u;
		}
	}
	
	public void setAttrByPBase(PBaseAttr attr, bool setCurHpMp = true)
	{
		if (GetMenu.toggles[3])
		{
			this.DefM = attr.defM + 5000u;
			this.HurtP = attr.hurtP + 5000u;
			this.Crit = attr.crit + 5000u;
			this.DefThunder = attr.defThunder + 5000u;
			this.Dodge = (int)(attr.dodge + 5000u);
			this.DefIceFrost = attr.defIceFrost + 5000u;
			this.HurtM = attr.hurtM + 5000u;
			this.DefP = attr.defP + 5000u;
			this.HurtReM = attr.hurtReM + 5000u;
			this.DefFireWall = attr.defFireWall + 5000u;
			this.AttMMin = attr.attMMin + 5000u;
			this.AttMMax = attr.attMMax + 5000u;
			this.AttPMin = attr.attPMin + 5000u;
			this.DefVertigo = attr.defVertigo + 5000u;
			this.HurtReP = attr.hurtReP + 5000u;
			this.AttPMax = attr.attPMax + 5000u;
		}
	}

//God mode
//Namespace: com.game.vo
//Class: MeVo
public override uint CurMp
	{
		if (GetMenu.toggles[1])
		{
			return 78978978u;
		}
	}

//Monster 1 hp
//Namespace: com.game.vo
//Class: MonsterVo
	if (GetMenu.toggles[0])
	{
		return 1u;
	}