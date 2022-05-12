//Game: Original Robot War
//Version: v1.5.1
//APK: https://apkpure.com/original-robot-war/com.jiqiren.og.google

//UIRoot
	public void OnGUI()
	{
		ModMenu.OnGUI();
	}

//GameCharactor - x100 DMG
	public override int base_atk()
	{
		if (ModMenu.hack1)
		{
			return this._atk * 100;
		}
		return this._atk;
	}
	
//GameMonster - GOD MODE
	public int atk()
	{
		if (ModMenu.hack2)
		{
			return 0;
		}
		return this.BaseData().atk;
	}
