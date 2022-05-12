//Game: 決戰！鬼盜船
//Version: 2.1.0.2 
//APK: https://apkpure.com/%E6%B1%BA%E6%88%B0%EF%BC%81%E9%AC%BC%E7%9B%9C%E8%88%B9/com.heartsnet.sgqh.gp


//SoundManager
	public void OnGUI()
	{
		Chinese.OnGUI();
	}

//Fighter 
//Attack - Crit
if (Chinese.toggle1 && this.TeamSide == 0)
			{
				return 999999f;
			}
			if (Chinese.toggle2 && this.TeamSide == 1)
			{
				return 0f;
			}


return (buffData.buffTarget != Target_Team_Type.Team_Type_Self || targetFighter == selfFighter) && (buffData.buffTarget != Target_Team_Type.Team_Type_Self_Team || targetFighter.TeamSide == selfFighter.TeamSide) && (buffData.buffTarget != Target_Team_Type.Team_Type_Enemy || targetFighter.TeamSide != selfFighter.TeamSide);