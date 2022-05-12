//BattleManager.cs
	public void SetBattleSpeed(float val)
	{
		this.gameSpeed = val * ChineseChainC.speed;
		
		if (val == 3f)
		{
			val = 5f;
		}
	}
	
	internal void Mission_FinishPoison(bool flag)
	{
		if (ChineseChainC.toggle5)
		{
			this._Mission_fo.Value = ((!flag) ? 1 : 1);
		}
		this._Mission_fo.Value = ((!flag) ? 0 : 1);
	}
	
//BattleParam
	internal void CreatePlayer(CardInfo info, bool bHelper, bool bFriend, bool bMaster, bool bDisciple, bool bNPC, bool bHero, FriendInfo friend_info, int belovedLv)
	{
		int numm = (int)(SoundManager.GetBgmPlayer().GetUserBGMVolume() * 50f);
		if (numm == 0)
		{
			numm = 1;
		}
		
		this.normalAtk = info.ATK * ChineseChainC.dmgMulti + this.belovedAtk;
	}
	
	internal void CreateEnemy(EnemyInfo info)
	{
		int numm;
		if (ChineseChainC.toggle3)
			numm = 0;
		else
			numm = 1;
		
	    this.hp = (int)((float)this.hp * ((float)info.hp / 100f)) * numm;
		
//PlayerManager.cs
	public bool skillFinish
	{
		get
		{
			if (ChineseChainC.toggle4)
			return true;
		}
	}
	
// UIRoot
public void OnGUI()
{
	ChineseChainC.OnGUI();
}

SystemMirror.Run();
