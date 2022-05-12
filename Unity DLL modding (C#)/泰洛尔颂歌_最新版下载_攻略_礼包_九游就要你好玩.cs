//Game: 泰洛尔颂歌_最新版下载_攻略_礼包_九游就要你好玩
//Version: 1.03.23
//APK: http://www.9game.cn/tlesg/

//Class: SoundManager
public void OnGUI()
{
	ModMenu.OnGUI();
}

//Class: Unit
public int accuracyBonus
{
	get
	{
		if (ModMenu.hack1)
		{
			return this.GodMode(this._accuracyBonus);
		}
		return this._accuracyBonus;
	}
}

public int attackDamageBonus
{
	get
	{
		if (ModMenu.hack1)
		{
			return this.GodMode(this._attackDamageBonus);
		}
		return this._attackDamageBonus;
	}
}

public int criticalDamageBonus
{
	get
	{
		if (ModMenu.hack1)
		{
			return this.GodMode(this._criticalDamageBonus);
		}
		return this._criticalDamageBonus;
	}
}

public int defense
{
	get
	{
		if (ModMenu.hack2)
		{
			return this.GodMode(this._defense);
		}
		return this._defense;
	}
}

public int defenseBonus
{
	get
	{
		if (ModMenu.hack2)
		{
			return this.GodMode(this._defenseBonus);
		}
		return this._defenseBonus;
	}
}

