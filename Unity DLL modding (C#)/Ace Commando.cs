//Game: Ace Commando
//Version: 1.0.11
//APK: https://apkpure.com/ace-commando/com.threye.commandox

//Class: CashTrigger
public void AddCashNow()
{
	Singleton<GameData>.Instance.Salary += this.cash + 99999f;
	Singleton<PopUpTextPanel>.Instance.ShowPopUpText(base.transform.position, "Cash: " + this.cash.SignString() + this.cash.AbsValue().ToString(), Color.white);
}
		
//Class: PlayerData
public bool PremiumMode
{
	get
	{
		return true;
	}
}
		
//Class: CharacterHealth
public void Deal(float amount)
{
	if (this.Health <= 0f || !this.IsTakingDamage)
	{
		return;
	}
	if (this.gameObject.tag == "Player") //If is player
	{
		this.Health -= amount * this.damageMultiplier * 0f; //Deal no damage to player
	}
	else
	{
		this.Health -= amount * this.damageMultiplier * 100f; //Deal high damage to enemy
	}
	if (this._healthBar)
	{
		if (!this._healthBar.gameObject.activeSelf)
		{
			this._healthBar.gameObject.SetActive(true);
		}
		this._healthBar.SetFillAmount(this.Health / this.MaxHealth);
	}
	if (this.Health <= 0f)
	{
		base.SendMessage("OnDead");
	}
}