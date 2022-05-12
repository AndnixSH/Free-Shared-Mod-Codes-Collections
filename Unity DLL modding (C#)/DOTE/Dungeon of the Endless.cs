public void AddFood(float foodAmount, bool displayFeedback = true, bool triggerDungeonFIDSChangedEvent = true, bool checkPlayerIsLocal = true, bool isAutoTransfert = false)

public void AddFood(500, true, true, true, false)

public void AddIndustry(float industryAmount, bool displayFeedback = true, bool triggerDungeonFIDSChangedEvent = true, bool checkPlayerIsLocal = true, bool isAutoTransfert = false)

public void AddIndustry(500, true, true, true, false)

public void AddScience(float scienceAmount, bool displayFeedback = true, bool triggerDungeonFIDSChangedEvent = true, bool checkPlayerIsLocal = true, bool isAutoTransfert = false)

public void AddScience(500, true, true, true, false)

public void AddDust(float dustAmount, bool displayFeedback = true, bool triggerDungeonFIDSChangedEvent = true)

public void AddDust(500, true, true)

 if (GUI.Button(BtnRect(1, false), "Add 500 Food", BtnStyle))
        {
Player.LocalPlayer.AddFood(500, true, true, true, false);
        }

        if (GUI.Button(BtnRect(2, false), "Add 500 Industry", BtnStyle))
        {
Player.LocalPlayer.AddIndustry(500, true, true, true, false);
        }

        if (GUI.Button(BtnRect(3, false), "Add 500 Science", BtnStyle))
        {
Player.LocalPlayer.AddScience(500, true, true, true, false);
        }

        if (GUI.Button(BtnRect(4, false), "Add 500 Dust", BtnStyle))
        {
Player.dungeon.ConsumeDust(-500);
        }
		
		public void OnGUI()
{
	DOFE.MyGUI();
}