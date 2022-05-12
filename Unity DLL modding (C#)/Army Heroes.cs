//Game: Army Heroes
//Version: 0.4.2
//APK: https://apkpure.com/army-heroes/com.progressgames.army.heroes

//CurrencyProperty
public int First
{
	get
	{
		return 999999;
	}
}	

public int Second
{
	get
	{
		return 999999;
	}
}	
		
//Tpc
private void OnDamageTaken(float amount)
{
	if (this.IsEnemy)
	{
		this.SetDead();
	}
}
