//Game: Blades Tale
//Version: v1.0.5
//APK: https://apkcombo.com/apk-downloader/?device=&arch=&android=&q=com.nsplay.ghgl.android

//Class: UIRoot
public void OnGUI()
{
	ModMenu.OnGUI();
}

//Namespace: NS_Player
//Class: Player
private uint CastHP(int hurtType, long lDamegHP, IActor actAttacker, bool bShowTips, bool ZeroHPDeath)
{
	if (base.gameObject == null)
	{
		return 0U;
	}
	if (ModMenu.hack1)
	{
		lDamegHP = (long)(-(long)((ulong)this.m_data.HP));
	}
	...
}

private ulong CalcHP(int nHurtType, long ulDamgeHp, bool bShowTip = false, IActor actorAttk = null, bool ZeroHPDeath = true)
{
	if (ModMenu.hack2 && base.IsEnemy(actorAttk))
	{
		return (ulong)this.m_roleData.MaxHP;
	}
	...
}