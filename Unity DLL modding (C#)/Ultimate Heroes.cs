//Game: Ultimate Heroes
//Version: 1.0.4
//APK: https://apkpure.com/ultimate-heroes/com.ftt.hod.gl.aos

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