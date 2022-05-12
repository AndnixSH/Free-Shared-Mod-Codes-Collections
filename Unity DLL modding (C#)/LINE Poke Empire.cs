//Game: LINE Poke Empire
//Version: 1.2.0
//APK: https://apkpure.co/line-poke-empire/

//Calling Mod menu
//Class: UIRoot
public void OnGUI()
{
	ModMenu.ButtonMenu();
}

//Namespace: Race
//Class: BeUnit. 1 hit kill | god mode
		public void SetInitHp(int fHp)
		{
			if (ModMenu.hack1)
			{
				if (this.Camp != BeTeamCamp.TeamCamp_My)
				{
					this.m_iHp = 1;
					this.m_iMaxHp = 1;
				}
				else
				{
					this.m_iHp = 9999999;
					this.m_iMaxHp = 9999999;
				}
			}
			else
			{
				this.m_iHp = fHp;
				this.m_iMaxHp = fHp;
			}
			this.TeamInfo.MaxHp += fHp;
		}