//PlayerCollisionHandler
//God mode
	public static bool BonusInvincible
	{
		get
		{
			return ModMenu.hack1 || PlayerCollisionHandler.s_bonusInvincible;
		}
		set
		{
			PlayerCollisionHandler.s_bonusInvincible = value;
		}
	}
	
	public bool DebugInvincible
	{
		get
		{
			return ModMenu.hack1 || this.m_debugInvincible;
		}
		set
		{
			this.m_debugInvincible = value;
		}
	}

	public bool Invincible
	{
		get
		{
			return ModMenu.hack1 || this.m_invincible;
		}
		set
		{
			this.m_invincible = value;
		}
	}
	
	//AmmoDefinition
	//ShotGun Hit
	public float SplashRadiusMultiplier
	{
		get
		{
			if (ModMenu.hack2)
			{
				return 9999999f;
			}
			return this.m_splashRadiusMultiplier;
		}
	}
	
	//AmmoComponent 
	//Unlimited Bullet
	protected bool UnlimitedAmmo
	{
		get
		{
			return ModMenu.hack3 || this.m_weapon.WeaponDefinition.IsMounted || this.m_weapon.PlayerAttack.PlayerInput.UnlimitedAmmo;
		}
	}
	

	protected bool UnlimitedClip
	{
		get
		{
			return ModMenu.hack3 || this.m_weapon.WeaponDefinition.IsMounted || this.m_weapon.PlayerAttack.PlayerInput.UnlimitedClip;
		}
	}
	
//AudioManager
public void OnGUI()
	{
		ModMenu.OnGUI();
	}