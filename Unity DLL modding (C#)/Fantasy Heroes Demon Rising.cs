//Game: Fantasy Heroes: Demon Rising
//Version: 1.9.1.1811151638.13
//APK: https://play.google.com/store/apps/details?id=com.fantasyh.gp

//Calling Mod menu
//Class: SoundManager
public void OnGUI()
{
	ModMenu.OnGUI();
}

//BattleCalculator
	public static BattleCalculator.DamageResult CalculateDamage(BattleBaseAttrs caster, BattleBaseAttrs target, bool isCasterPlayer, bool isTargetPlayer, XDict<GameData.AttrType, long> casterTempAttrs, XDict<GameData.AttrType, long> targetTempAttrs)
	{
		...
		if (isCasterPlayer && ModMenu.hack1)
		{
			damageResult.Damage *= 1000L; //50 attack
		}
		if (isTargetPlayer && ModMenu.hack2)
		{
			damageResult.Damage /= 1000L; //50 defence
		}
	}

//Skill
//no skill cd
		public int cd
		{
			get
			{
				if (ModMenu.hack3)
				{
					return 0;
				}
				return this._cd;
			}
		}

		public float changeSpeed
		{
			get
			{
				if (ModMenu.hack3)
				{
					return this._changeSpeed * 4f;
				}
				return this._changeSpeed;
			}
		}
		
//BattleBaseAttrs
//x3 move speed
	public int MoveSpeed
	{
		get
		{
			return this.moveSpeed.Val;
		}
		set
		{
			if (ModMenu.hack4)
			{
				this.SetValue(GameData.AttrType.MoveSpeed, 3000, true);
				return;
			}
			this.SetValue(GameData.AttrType.MoveSpeed, value, true);
		}
	}