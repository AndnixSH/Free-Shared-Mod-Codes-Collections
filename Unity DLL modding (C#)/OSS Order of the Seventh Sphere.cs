//Game: OSS Order of the Seventh Sphere
//Version: 1.1.190114
//APK: https://apkpure.com/oss-order-of-the-seventh-sphere/hothead.snoozefox.oss

//Class: Monster_Action
public void SetHP(int dmg)
{
	this.current_hitpoint -= dmg * 999; //<---
	if (this.current_hitpoint > this.Hit_point)
	{
		this.current_hitpoint = this.Hit_point;
	}
	if (this.Monster_name == "servant troll" && this.current_hitpoint < 1)
	{
		this.current_hitpoint = 1;
	}
	if (this.Monster_name.ToLower() == "belphegor" && dmg == 9999)
	{
		this.current_hitpoint = 0;
	}
	this.SetHPBarStat.Update_HP_Bar();
}