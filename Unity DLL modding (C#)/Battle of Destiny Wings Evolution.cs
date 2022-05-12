//Game: Battle of Destiny: Wings Evolution
//Version: 2.0.2.1904241019.1
//APK: https://apkcombo.com/en-pt/battle-of-destiny-3d-mmorpg/com.battledestiny.dragonball.clashofclans.pubg.mobilelegend.heroes.dragalialost/

//Calling Mod menu
//Class: UIRoot
public void OnGUI()
{
	ModMenu.OnGUI();
}

//Namespace: GameData
//Class: Skill
public int cd
{
	get
	{
		//NO SKILL CD
		if (ModMenu.hack1)
		{
			return 0;
		}
		return this._cd;
	}
	set
	{
		this._cd = value;
	}
}

public float changeSpeed
{
	get
	{
		//FAST SKILL
		if (ModMenu.hack3)
		{
			return this._changeSpeed * 1f;
		}
		return this._changeSpeed;
	}
	set
	{
		this._changeSpeed = value;
	}
}

//Class: BattleBaseAttrs 
public int MoveSpeed
{
	get
	{
		return this.moveSpeed.Val;
	}
	set
	{
		//x3 MOVE SPEED
		if (ModMenu.hack2)
		{
			base.SetValue(GameData.AttrType.MoveSpeed, 3000, true);
			return;
		}
		base.SetValue(GameData.AttrType.MoveSpeed, value, true);
	}
}

//Class: BattleCalculator
public static BattleCalculator.DamageResult CalculateDamage(BattleBaseAttrs caster, BattleBaseAttrs target, bool isCasterPlayer, bool isTargetPlayer, XDict<GameData.AttrType, long> casterTempAttrs, XDict<GameData.AttrType, long> targetTempAttrs)
{
	...
	if (isCasterPlayer)
	{
		damageResult.Damage *= (long)ModMenu.AtkMul; //ATK multiplier
	}
	if (isTargetPlayer)
	{
		damageResult.Damage /= (long)ModMenu.DefMul; //DEF multiplier
	}
	return damageResult;
}