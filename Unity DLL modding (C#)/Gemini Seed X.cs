//AudioManager
public void OnGUI()
{
	ModMenu.OnGUI();
}

//StageUnitEntity
private void InitParameter(int level, BattleAttribute attribute, int hitPoint, int attack, int defense, int activity)
{
	
	this.Level.Value = level;
	SecretBase<long> baseHitPoint = this.BaseHitPoint;
	long num = (long)hitPoint;
	this.CurrentHitPoint.Value = num;
	num = num;
	this.AdjustHitPoint.Value = num;
	baseHitPoint.Value = num;
	SecretBase<long> baseAttack = this.BaseAttack;
	num = (long)attack;
	if (ModMenu.hack1 && this.IsAlly)
	{
		num = (long)(attack * 1000);
	}
	if (ModMenu.hack2 && !this.IsAlly)
	{
		num = (long)(attack * 0);
	}
	this.AdjustAttack.Value = num;
	baseAttack.Value = num;
	SecretBase<long> baseDefense = this.BaseDefense;
	num = (long)defense;
	this.AdjustDefense.Value = num;
	baseDefense.Value = num;
	SecretBase<long> baseActivity = this.BaseActivity;
	num = (long)activity;
	this.CurrentActivity.Value = num;
	num = num;
	this.AdjustActivity.Value = num;
	baseActivity.Value = num;
	this.BattleAttribute.Value = attribute;
	this.BurstGage = 0L;
}