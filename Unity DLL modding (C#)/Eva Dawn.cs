//ConfMonster - god mode
	public int atk
	{
		get
		{
			if (Team.Mod4)
			{
				return 0;
			}
			return this._atk;
		}
	}
	

//DProp - higk atk
		public int atk
		{
			get
			{
				int? atk = this._atk;
				if (atk == null)
				{
					return 0;
				}
				if (Team.Mod1)
				{
					return atk.Value * 20;
				}
				return atk.Value;
			}
			set
			{
				this._atk = new int?(value);
			}
		}

//ConfSkillInfo - max atk range
	public int rageGet
	{
		get
		{
			if (Team.Mod2)
			{
				return 9999;
			}
			return this._rageGet;
		}
	}
	
//ConfSkill - no cd
	public int cdTime
	{
		get
		{
			if (Team.Mod3)
			{
				return this._cdTime - this._cdTime;
			}
			return this._cdTime;
		}
	}
	

	----------------------------------

//Combatant
CalcDamage
if (attacker.ToString() == "MainPlayer")
			{
				return Combatant.__Hitfix0_CalcDamage(this, attacker, skill, index) * EvaDawn.dmgMulti;
			}
			return Combatant.__Hitfix0_CalcDamage(this, attacker, skill, index);

if (attacker.ToString() == "MainPlayer")
{
	return num9 * EvaDawn.dmgMulti;
}
			

if (EvaDawn.toggle2 && (attacker.ToString() == "Monster" || attacker.ToString() == "Building"))
		{
			return 0;
		}
	
-MainPlayer
-Monster
-Building
	
OnHit

//DamageEvent
ProcessHit

Start

//ConfCommonResource
public int fastCost
	{
		get
		{
			if (EvaDawn.toggle3)
			{
				return 0;
			}
		}
	}
	
public int cooldown
	{
		get
		{
			if (EvaDawn.toggle3)
			{
				return 0;
			}
		}
	}
	
// DInstance
public long getCooldownTime()
{
	return 0L;
}

public long cooldownTime
		{
			get
			{
				if (EvaDawn.toggle3)
				{
					return 0;
				}
			}
		}

public bool cooldownTimeSpecified
{
	get
	{
		if (EvaDawn.toggle3)
			{
				return false;
			}
	}
}

//Combatant
public bool isCooldowning
		{
			get
			{
				if (EvaDawn.toggle3)
				{
					return false;
				}
			}
		}
		
//SceneLoading	
	public void OnGUI()
	{
		EvaDawn.MyGUI();
	}