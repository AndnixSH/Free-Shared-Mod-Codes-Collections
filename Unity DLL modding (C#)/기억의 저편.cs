//Game: 기억의 저편
//Version: 3.37.1
//APK: https://apkpure.com/%EA%B8%B0%EC%96%B5%EC%9D%98-%EC%A0%80%ED%8E%B8/com.neowizgames.game.fantasyworld

//Class: BattleCardData
public float get_magic_atk()
{
	float num = this.magic_atk;
	if (ModMenu.hack1 && this.side == BasePlayer.WhichSide.Self)
	{
		num = this.magic_atk * 10f;
	}
	if (ModMenu.hack2 && this.side != BasePlayer.WhichSide.Self)
	{
		num = this.magic_atk - this.magic_atk;
	}
	foreach (BuffData buffData in this.buffList)
	{
		num += this.get_buff_value(buffData, buffData.magic_atk_rate, this.base_magic_atk, false);
	}
	return num;
}

public float get_physical_atk()
{
	float num = this.physical_atk;
	if (ModMenu.hack1 && this.side == BasePlayer.WhichSide.Self)
	{
		num = this.physical_atk * 10f;
	}
	if (ModMenu.hack2 && this.side != BasePlayer.WhichSide.Self)
	{
		num = this.physical_atk - this.physical_atk;
	}
	foreach (BuffData buffData in this.buffList)
	{
		num += this.get_buff_value(buffData, buffData.physical_atk_rate, this.base_physical_atk, false);
	}
	return num;
}

//Class: UILabel
public void OnGUI()
{
	ModMenu.OnGUI();
}