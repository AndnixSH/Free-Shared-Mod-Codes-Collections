//Game: 御龍無雙：真三國3D動作策略卡牌手游
//Version: 1.50.0
//APK: https://apkpure.com/%E5%BE%A1%E9%BE%8D%E7%84%A1%E9%9B%99%EF%BC%9A%E7%9C%9F%E4%B8%89%E5%9C%8B3d%E5%8B%95%E4%BD%9C%E7%AD%96%E7%95%A5%E5%8D%A1%E7%89%8C%E6%89%8B%E6%B8%B8/com.hxgames.lzyy.tw

//Dump Assembly-Csharp.dll from memory

//one_wujiang
public int magic_atk
{
	get
	{
		return (!ModMenu.hack1) ? this._magic_atk : (this._magic_atk + 999999);
	}
	set
	{
		this._magic_atk = value;
	}
}

public int phy_atk
{
	get
	{
		return (!ModMenu.hack1) ? this._phy_atk : (this._phy_atk + 999999);
	}
	set
	{
		this._phy_atk = value;
	}
}

public int magic_def
{
	get
	{
		if (ModMenu.hack2)
		{
			return this._magic_def + 999999;
		}
		return this._magic_def;
	}
	set
	{
		this._magic_def = value;
	}
}

public int phy_def
{
	get
	{
		if (ModMenu.hack2)
		{
			return this._phy_def + 999999;
		}
		return this._phy_def;
	}
	set
	{
		this._phy_def = value;
	}
}