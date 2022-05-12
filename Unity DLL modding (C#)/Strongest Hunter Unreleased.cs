//Game: Strongest Hunter (Unreleased)
//Version: 1.0.8
//APK: https://apkpure.com/strongest-hunter-unreleased/com.opadv.ffa3gk1ls

//bypass root detections in smali
//keywords
//cw/sdk 
.dll
killprocess()
finish()

com\cw\sdk\ui\SignInActivity$9.smali
# virtual methods
.method public a(I)V
    .registers 2

    return-void
.end method


//AudioManager - SceneManager
public void OnGUI()
	{
		StrongestHunterr.OnGUI();
	}
	
//BattleUIManager
private void OnAutoBattleClickHandler(GameObject go)
	{
		//
		if (BattleApp.Instance.IsAutoBattle)
		{
			BattleApp.Instance.CloseAutoBattle();
			this.m_AutoBattle.spriteName = "9962";
			PlayerPrefs.SetInt("IsAutoBattle", 0);
			this.m_AutoBattleEffect.SetActive(false);
			return;
		}
		BattleApp.Instance.OpenAutoBattle();
		this.m_AutoBattle.spriteName = "9961";
		PlayerPrefs.SetInt("IsAutoBattle", 1);
		this.m_AutoBattleEffect.SetActive(true);
	}
	
private void OnSkipBattleClickHandler(GameObject go)
{
	if (this.m_LeftPowerValue < this.m_RightPowerValue)
	{
		AlertInfo alertInfo2 = new AlertInfo();
		alertInfo2.Content = ((LangItem)GameData.Instance.LangDictionary[50619]).txt;
		AlertView.GetInstance().Alert("tips_fankui_zidong", alertInfo2, "CLOSE_TIME", null, null, null, false);
		return;
	}
	Time.timeScale = 1f;
	BattleApp.Instance.IsSkipBattle = true;
	BattleApp.Instance.Pause();
	this.ShowBattleResult(true);
}


//BattleInfoManager
private void ReceivePlayerHurtInfo(List<BaseCommand.HurtInfo> Info)
	{
		foreach (BaseCommand.HurtInfo hurtInfo in Info)
		{
			if (hurtInfo.Target != null && !hurtInfo.Target.StateComp.GetEdgeDeadOrDeadState() && !hurtInfo.Target.BuffComp.IsInvincible())
			{
				switch (hurtInfo.HurtType)
				{
				case BaseCommand.HurtType.HURT_NONE:
					hurtInfo.Target.StateComp.WhenBeHurt(hurtInfo, hurtInfo.Attacker);
					break;
				case BaseCommand.HurtType.HURT_NORMAL:
					if (hurtInfo.Target.StateComp.CurState.HarmfulSkillEnable)
					{
						//split damage
						if (StrongestHunterr.toggle2 && hurtInfo.Target.AttributeComp.Prop.Side == UnitSideType.Left)
						{
							hurtInfo.HurtValue = 0; //god mode
						}
						else if (hurtInfo.Target.AttributeComp.Prop.Side == UnitSideType.Right)
						{
							hurtInfo.HurtValue *= StrongestHunterr.dmgMulti; //dmg multi
						}
						
					}
				}
			}
		}
	}