// iQBFramework.Manager.ZZSoundManager
public void OnGUI()
{
	MenuInstance.OnGUI();
}

//ZZDP_Enemy
	public int Defence
	{
		get
		{
			if (MenuInstance.toggle1)
				return 1;
			return 1;
		}
		set
		{
			this.defence = value;
		}
	}
	
	public int HPBase
	{
		get
		{
			if (MenuInstance.toggle1)
				return 1;
			return 1;
		}
		set
		{
			this.hPBase = value;
		}
	}

	public int Attack
	{
		get
		{
			if (MenuInstance.toggle2)
				return 1;
			return 1;
		}
		set
		{
			this.attack = value;
		}
	}