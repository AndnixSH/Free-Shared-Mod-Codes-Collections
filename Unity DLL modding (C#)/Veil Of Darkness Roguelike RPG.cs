//Game: Veil Of Darkness : Roguelike RPG
//Version: 51
//APK: https://play.google.com/store/apps/details?id=lab.janus.veilofdarkness

//Class: PlayerCtrl
private void sendAttack(Constant.ActionType action, float damage)
{
	if (!DataMng.instance.IsBattle() && !this.mMoveLock)
	{
		DataMng.instance.SetIsBattle(true);
	}
	if (this.mAttackDirectIdx == 0 || this.mAttackDirectIdx == 1)
	{
		this.checkTile(this.situArr[this.mAttackDirectIdx].CallActions(action, 99999f)); //mod it here
	}
}

private void calcHurt(Constant.ActionType action, float damage)
{
	damage = 0f; //added damage field
	....
}