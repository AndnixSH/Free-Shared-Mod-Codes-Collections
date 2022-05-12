//cashshop_controll
	public void rear_btn_money_6()
	{
		Money_controll.living += 1000000000L;
		Money_controll.G_controll();
	}

	public static void btn_gam_5()
	{
		GameObject.Find("BGM_cont").GetComponent<audio_controll>().btn_1();
		Money_controll.alone += 10000;
		Money_controll.G_controll();
	}
	
	public static void btn_Pinkgam_5()
	{
		GameObject.Find("BGM_cont").GetComponent<audio_controll>().btn_1();
		Money_controll.idol += 20000;
		Money_controll.G_controll();
	}

//setting_controll
public void btn_ThnaksTo()
{
}

//CurGem *2
if (GUI.Button(new Rect(Team.wRect.x + 80f, Team.wRect.y + 200f, 230f, 40f), text))
	{
		if (Money_controll.alone <= 0)
		{
			Money_controll.alone = 100;
		}
		Money_controll.alone *= 2;
		Money_controll.G_controll();
	}

//CurMoney *2
	if (GUI.Button(new Rect(Team.wRect.x + 80f, Team.wRect.y + 250f, 230f, 40f), text2))
	{
		if (Money_controll.living < 0L)
		{
			Money_controll.living *= 100L;
		}
		Money_controll.living *= 2L;
		Money_controll.G_controll();
	}
	
