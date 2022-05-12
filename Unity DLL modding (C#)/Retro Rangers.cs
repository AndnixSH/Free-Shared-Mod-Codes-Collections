//Game: Retro Rangers
//Version: 1.2.7
//APK: https://apkpure.com/retro-rangers/com.percent.retrorangers

//Class: intAdjuster
public int GetValue()
{
	if (ModMenu.hack1)
	{
		return 999999999;
	}
	return this.intValue.GetValue();
}

public bool PlusValue(int plusValue, bool textChange = true)
{
	if (ModMenu.hack1)
	{
		return true;
	}
	if (this.GetValue() + plusValue >= 0)
	{
		this.SetValue(this.GetValue() + plusValue, textChange);
		return true;
	}
	return false;
}