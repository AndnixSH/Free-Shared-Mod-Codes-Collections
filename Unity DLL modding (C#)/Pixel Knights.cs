//BaseUnit
	public int hp
	{
		[CompilerGenerated]
		get
		{
			if (this.isPlayer)
			{
				return 10000;
			}
			return 0;
		}
		[CompilerGenerated]
		set
		{
			this.<hp>k__BackingField = value;
		}
	}

//UnitPlayer
	public override int AttackDamage
	{
		get
		{
			float num = (float)base.AttackDamage;
			if (base.shotLevel <= this.mShotPower.Length)
			{
				num *= this.mShotPower[base.shotLevel];
			}
			if (BattleManager.HaveBuff(eIN_GAME_BUFF.ATK_BONUS))
			{
				num += num * 0.3f;
			}
			if (ModMenu.hack1 && !this.isAiPlayer)
			{
				return Mathf.CeilToInt(num * 100f);
			}
			return Mathf.CeilToInt(num);
		}
	}
	
	public override void TakeDamage(BaseUnit.DamageParam p)
	{
		if (ModMenu.hack2 && !this.isAiPlayer)
		{
			return;
		}
		if (base.fsm.HaveCondition(eCONDITION.ANGEL_WING))
		{
			return;
		}
		this.OnTakeDamage(p.damage);
		if (base.hp <= 0)
		{
			if (!this.isAiPlayer)
			{
				UIFace.ShowFace(UIFace.eFACE.DEATH, base.faceUIName);
			}
			this.AddFlag(UnitPlayer.eFlAG.DEATH);
			this.OnActionDead();
		}
		else if (!this.isAiPlayer)
		{
			UIFace.ShowFace(UIFace.eFACE.PAIN, base.faceUIName);
		}
		base.TakeDamage(p);
	}
	
	//GameManager
	
	public class ACCOUNT
	{
		public static int totalCoin
		{
			get
			{
				return 99999999;
			}
		}

		public static int totalCash
		{
			get
			{
				return 99999999;
			}
		}
		
//UnitMonster
	public override float moveSpeed
	{
		get
		{
			if (this.isAngry)
			{
				return base.moveSpeed;
			}
			return base.moveSpeed * 3f;
		}
	}
