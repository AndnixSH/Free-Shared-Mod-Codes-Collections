//Game: 데빌헌트 좀비도시
//Version: 26.3.3
//APK: https://apkpure.com/%EB%8D%B0%EB%B9%8C%ED%97%8C%ED%8A%B8-%EC%A2%80%EB%B9%84%EB%8F%84%EC%8B%9C/com.etgames.devil

//Calling Mod menu
//Class: UIRoot
public void OnGUI()
{
	ModMenu.ButtonMenu();
}

//Class: Monster
	protected override void InitCharacterCard(uint wLevel)
	{
		if (this.m_bCreateFromOnline)
		{
			return;
		}
		base.InitCharacterCard(wLevel);
		if (base.NpcSortType == eNpcSortType.Ally && this.m_pSummoner != null)
		{
			this.m_nHp = 100L;
			this.m_pOriginCard = this.m_pSummoner.CharacterCard;
		}
		else
		{
			this.m_nHp = base.InitAttr(this.m_pNpcInfo.GetHp(), wLevel);
			// God mode //
			if (ModMenu.hack1)
			{
				this.m_pOriginCard.nMaxHp = this.m_nHp / this.m_nHp;
			}
			else
			{
				this.m_pOriginCard.nMaxHp = this.m_nHp;
			}
			// Dumb enemy //
			if (ModMenu.hack1)
			{
				this.m_pOriginCard.nAttack = 1;
			}
			else
			{
				this.m_pOriginCard.nAttack = base.InitAttr(this.m_pNpcInfo.GetAttack(), wLevel);
			}
			// //
			//....
		}
	}