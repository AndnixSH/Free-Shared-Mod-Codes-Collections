//Game: Pirate Legend—At World's end
//Version: 2.2.1
//APK: https://apkpure.com/pirate-legend%E2%80%94at-world-s-end/com.pirate.legend.worldend

//Calling Mod menu
//Class: AudioManager
public void OnGUI()
{
	ModMenu.OnGUI();
}

//Class: AgentInfo - God mode
	public void AddHp(int addHp)
	{
		this.hp_ += addHp;
		if (ModMenu.hack1)
		{
			this.hp_ += addHp * 9999;
		}
		if (this.hp_ > this.hpMax_)
		{
			this.hp_ = this.hpMax_;
		}
	}

	public void AddPower(int val)
	{
		this.power_ += val;
		if (ModMenu.hack1)
		{
			this.power_ += val * 50;
		}
		if (this.power_ < 0)
		{
			this.power_ = 0;
		}
		if (this.power_ > this.powerMax_)
		{
			this.power_ = this.powerMax_;
		}
	}