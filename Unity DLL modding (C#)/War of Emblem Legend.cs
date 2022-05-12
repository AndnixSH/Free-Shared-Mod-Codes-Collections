//Game: War of Emblem - Legend
//Version: .6.7
//APK: https://apkpure.com/war-of-emblem-legend/com.kurokostudio.legend

//Namespace: Client.Battle.Unit
//Class: BattleUnit
public void SetHP(int hp, bool fireEvent = true)
{
	this.HP.Value = hp;
	if (fireEvent)
	{
		BattleUnitFightBoradLogicData battleUnit = NetDataManager.Instance.BattleInfo.GetBattleUnit(base.ID);
		if (battleUnit != null)
		{
			if (ModMenu.hack1)
			{
				if (this.Camp == CampType.E_Attacker)
				{
					battleUnit.CurHP = this.HP.Value + 9999999;
				}
				else
				{
					battleUnit.CurHP = 1;
				}
			}
			else
			{
				battleUnit.CurHP = this.HP.Value;
			}
		}
		this.RefreshFightBoradUI();
		ClientEventManager.Instance.FireEvent(new HPChangedEvent(this.OwnerPlayerID), ClientEventManager.Usage.Immediate);
	}
}

//CinemaController
//BackgroundMusicManager 
//XUIManager
public void OnGUI()
{
	Team.ButtonMenu();
}