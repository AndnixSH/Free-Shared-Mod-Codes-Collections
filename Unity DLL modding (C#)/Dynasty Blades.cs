///Assembly-chsarp.dll
//GameStart
private void LoadDLL()
{
	string url = Application.streamingAssetsPath + "/xgame.ezfun";
	string path = Application.persistentDataPath + "/DLL/xgame.ezfun";
	WWW www = new WWW("Link to DLL");
	while (!www.isDone)
	{
	}
	this.m_xgameData = Assembly.Load(www.bytes);
	if (this.m_xgameData != null && this.RUN_WITH_DLL)
	{
		Debug.Log("Cur DLL Verison:" + this.m_xgameData.ImageRuntimeVersion);
	}
}

//xgame.ezfun
// ResMonsterModel
public int maxHP
{
	get
	{
		if (ModMenu.toggle1)
		{
			return this._maxHP.m_value / this._maxHP.m_value;
		}
		return this._maxHP.m_value;
	}
	set
	{
		this._maxHP.m_value = value;
	}
}
[ProtoMember(3, IsRequired = true, Name = "attack", DataFormat = DataFormat.TwosComplement)]
public int attack
{
	get
	{
		if (ModMenu.toggle2)
		{
			return this._attack.m_value / this._attack.m_value;
		}
		return this._attack.m_value;
	}
	set
	{
		this._attack.m_value = value;
	}
}