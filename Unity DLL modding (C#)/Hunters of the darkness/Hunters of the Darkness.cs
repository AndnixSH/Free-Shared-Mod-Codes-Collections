
Crit
if (HOTD.toggle3)
			{
				return 999999;
			}

// UIRoot
public void OnGUI()
{
	HOTD.OnGUI();
}

			
//ReqCharatorDamageMessage ?

	
	public int Crit
	{
		get
		{
			return 33333;
		}
		set
		{
			this._crit = value;
		}
	}
	
//ActorAttackState
	public override float CritDamagePct
	{
		get
		{
			return 24242424f;
		}
		set
		{
			this._additionalCritDamagePct = value;
		}
	}
	//SkillCooldownPanel
	private void Tick()
	{
		if (HOTD.toggle2)
		{
			return;
		}
	
//SkillItem
private void OnSkillStateChanged(SkillState state)
	{
		if (HOTD.toggle2)
		{
			this.OnReadyToUse();
			return;
		}
	}
	
	public void Tick()
	{
		if (HOTD.toggle2)
		{
			return;
		}
	}
//SkillConfig
	public float Cd
	{
		get
		{
		if (HOTD.toggle2)
		{
			return 0;
		}

//ActorAttackState
public float AdditionalSkillCD
	{
		get
		{
			if (HOTD.toggle2)
			{
				return 0f;
			}
			return this._additionalSkillCD;
		}
	}

//StillInstance

public bool IsCooling
{
	get
	{

		return !HOTD.toggle2 || this._isCooling;
	}
}

public float ManaCost
	{
		get
		{
			if (HOTD.toggle4)
		{
			return 0;
		}

			return 0f;
		}
	}
	
//AutoBattlePanel
	private bool IsEnableAutoFight
	{
		get
		{
			return true;
		}
	}
//ActorBasicState

OnHurt

if (!this._isDefending || this._isDefenceBroken)
		{
			if (attacker.Camp == Camp.Player)
			{
				this.ReduceTenacity(num7 + attackBlock.extraTenacityDamage * (float)HOTD.dmgMulti);
				this.ModifyHealth(-num7 * (float)HOTD.dmgMulti, flag, false);
			}
			else if (HOTD.toggle1 && attacker.Camp != Camp.Player)
			{
				this.ReduceTenacity(0f);
				this.ModifyHealth(0f, flag, false);
			}
			else
			{
				this.ReduceTenacity(num7 + attackBlock.extraTenacityDamage);
				this.ModifyHealth(-num7, flag, false);
			}
			
			
			if (attacker.Camp == Camp.Player)
			{
				this.ReduceTenacity(num4 + attackBlock.extraTenacityDamage * (float)HOTD.dmgMulti);
				this.ModifyHealth(attacker, -num4 * (float)HOTD.dmgMulti, flag, false);
			}
			else if (HOTD.toggle1 && attacker.Camp != Camp.Player)
			{
				this.ReduceTenacity(0f);
				this.ModifyHealth(attacker, 0f, flag, false);
			}
			else
			{
				this.ReduceTenacity(num4 + attackBlock.extraTenacityDamage);
				this.ModifyHealth(attacker, -num4, flag, false);
			}
		}
		
		/////
			if (GetMenu.toggles[0] && attacker.Camp == Camp.Player)
			{
				this.ReduceTenacity(this.AdditionalTenacity);
				this.ModifyHealth(-this.MaxHealth, isCritHurt, false);
			}
			if (GetMenu.toggles[1] && attacker.Camp != Camp.Player)
			{
				this.ReduceTenacity(0f);
				this.ModifyHealth(-0f, isCritHurt, false);
			}
			else
			{
				this.ReduceTenacity(num7 + attackBlock.extraTenacityDamage);
				this.ModifyHealth(-num7, isCritHurt, false);
			}
			float num9 = num4 * num5;
			if (num9 > 0f && this.OnRestrainEvent != null)
			{
				this.OnRestrainEvent(-num9);
			}
		}
		this._lastHurtRecoverHp = ((!flag) ? 0f : num7);
		return true;
	}
	
	protected ActorAttackState _attack;
	_attack.Camp == Camp.Player
	
	if (attacker.Camp == Camp.Player)
			{
				this.ReduceTenacity(999999f);
				this.ModifyHealth(-999999f, flag, false);
			}
			
// AntiCheatManager
protected override void Awake()
{
}