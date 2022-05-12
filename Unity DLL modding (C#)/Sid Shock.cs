//Game: Sid Shock
//Version: 1.0.5
//APK: https://jkrepublic.pro/sid-shock-apk-mod/#download

//Class: CharacterBase
private void ChangeHP(int slotIndex, long delta)
{
	if (this.updateDamageAction != null)
	{
		this.updateDamageAction(slotIndex, -delta);
	}
	this._totalDamage -= delta;
	if (ModMenu.hack2 && !this.IsMyHero() && delta < 0L)
	{
		this.SetCurHP(0L);
	}
	if (ModMenu.hack1 && this.IsMyHero() && delta < 0L)
	{
		this.SetCurHP(this.MaxHP);
	}
	this.SetCurHP(this.CurHP + delta);
}
	
//Class: SceneRoot
public void OnGUI()
{
	ModMenu.OnGUI();
}