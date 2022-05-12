//Game: Crime Angel Superhero - Vegas Air Strike
//Version: v1.1.0
//APK: https://play.google.com/store/apps/details?id=com.hgamesart.angelhero

//Class: Armor
public float CurrentArmor
{
	get
	{
		return 9999999f;
	}
}

//Class: PlayerModel
public Health Health
{
	get
	{
		return 99999999;
	}
}

//Class: EnergyScript
public float GetCurrentEnergy()
{
	if (!this.initialized)
	{
		this.Init();
	}
	return this.maxEnergy;
}

public void ConsumeEnergy(float amount)
{
	this.currentEnergy += this.maxEnergy;
	if (this.currentEnergy < 0f)
	{
		this.currentEnergy = 0f;
	}
}

public void ConsumeFastRunEnergy(float deltaTime)
{
	this.currentEnergy += this.fastRunCost * deltaTime;
	if (this.currentEnergy < 0f)
	{
		this.currentEnergy = 0f;
	}
}

public void ConsumeLaserEnergy(float deltaTime)
{
	this.currentEnergy += this.laserCost * deltaTime;
	if (this.currentEnergy < 0f)
	{
		this.currentEnergy = 0f;
	}
}

public void ConsumeFlyEnergy(float deltaTime)
{
	this.currentEnergy += this.flyCost * deltaTime;
	if (this.currentEnergy < 0f)
	{
		this.currentEnergy = 0f;
	}
}

public void Recover(float amount)
{
	this.currentEnergy += this.maxEnergy;
	if (this.currentEnergy > this.maxEnergy)
	{
		this.currentEnergy = this.maxEnergy;
	}
}