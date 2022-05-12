//UIRoot
public void OnGUI()
{
	ModMenu.OnGUI();
}

//Monster - 1 hit
private uint CastHP(int hurtType, long lDamegHP, IActor actAttacker, bool bShowTips, bool ZeroHPDeath)
{
	if (base.gameObject == null)
	{
		return 0u;
	}
	if (ModMenu.toggle1)
	{
		lDamegHP = (long)(-(long)((ulong)this.m_data.HP));
	}
}
			
//Player - God mode
private ulong CalcHP(int nHurtType, long ulDamgeHp, bool bShowTip = false, IActor actorAttk = null, bool ZeroHPDeath = true)
{
	if (ModMenu.toggle2 && base.IsEnemy(actorAttk))
	{
		return (ulong)this.m_roleData.MaxHP;
	}
}
		
//IActor
IsEnemy