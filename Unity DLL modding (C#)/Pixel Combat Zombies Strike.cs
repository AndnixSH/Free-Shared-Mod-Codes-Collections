//Advertising
	public static bool IsAdRemoved()
		{
			return true;
		}
		
//DamageManager
	public void ApplyDamage(float damage)
	{
		if (this.currentHP <= 0f)
		{
			return;
		}
		if (this.isPlayer)
		{
			this.currentHP += damage;
		}
		else
		{
			this.currentHP -= damage;
		}
		if (!this.isPlayer)
		{
			this._ai.targetPosition = this.player.transform.position;
			this._ai.isHumanTarget = true;
		}
	}
	
//GameplayManager
	public void AddMoneyTemp(int money)
	{
		this.playerMoney += money + 999999222;
	}