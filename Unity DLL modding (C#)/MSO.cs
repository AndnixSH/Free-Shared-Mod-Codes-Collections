		//ActDetectorBase.cs
		//ActDetectorBase.cs
		private void Start()
		{
			this.inited = false;
		}
		
		private void OnEnable()
		{
		}
		
		//InjectionDetector.cs
		public static void StartDetection(Action callback)
		{
		}

		public static void StopDetection()
		{
		}
		private void StartDetectionInternal(Action callback)
		{
		}
		protected override void ResumeDetector()
		{
		}
		private void OnInjectionDetected()
		{
		}
		private bool AssemblyAllowed(Assembly ass)
		{
		}
		
		//ObscuredCheatingDetector.cs
		public static void StartDetection(Action callback)
		{
		}
		private void StartDetectionInternal(Action callback)
		{
		}
		protected override void ResumeDetector()
		{
		}
		internal void OnCheatingDetected()
		{
		}
		
		//SpeedHackDetector.cs
		public static void StartDetection(Action callback)
		{
		}
		public static void StartDetection(Action callback, float checkInterval)
		{
		}
		public static void StartDetection(Action callback, float checkInterval, byte falsePositives)
		{
		}
		public static void StartDetection(Action callback, float checkInterval, byte falsePositives, int shotsTillCooldown)
		{
		}
		private void StartDetectionInternal(Action callback, float checkInterval, byte falsePositives, int shotsTillCooldown)
		{
		}
		protected override void ResumeDetector()
		{
		}
		
		//WallHackDetector.cs
		public static void StartDetection(Action callback)
		{
		}

		public static void StartDetection(Action callback, Vector3 servicePosition)
		{
		}
		private void StartDetectionInternal(Action callback, Vector3 servicePosition)
		{
		}
		protected override void ResumeDetector()
		{
		}
		private void Update()
		{
		}
		
		//\LastLevel\Legion\Dom\PlayerProfile.cs
		public bool HavePremium()
		{
			return true;
		}
		
		//\LastLevel\Legion\Dom\WeaponActionProfile.cs
		using MSO;
		public float _damageModifier = 1f;
		private void CalculateWeaponParameters()
		{

			if (this._damageModifier < 0f)
			{
				this._damageModifier = 999f;
			}
		}
		
		public void Shoot()
		{
			if (this._currentBullets == 0)
			{
				throw new InvalidOperationException("No ammo");
			}
			this._lastShootTime = Time.time;
			ObscuredInt obscuredInt = ++this._currentBullets;
			this._currentBullets = obscuredInt;
			ObscuredInt currentBullets = obscuredInt;
			this._currentBullets = currentBullets;
			this._currentBullets = currentBullets;
		}
		public int CalculateDamageFromDistance(float distance, int maxDamage, int minDamage)
		{
			if (Main.mDamage)
			{
				return 499;
			}
		}
		public int OptimalDamage
		{
			get
			{
				if (Main.mDamage)
				{
					return 99999999;
				}
				return (int)((float)this._template.Damage * this._damageModifier);
			}
		}
		public int FaloffDamage
		{
			get
			{
				if (Main.mDamage)
				{
					return 999999;
				}
				return (int)((float)this._template.MinimalDamage * this._damageModifier);
			}
		}
		
		//\LastLevel\Legion\Quark\QuarkRoomPlayer.cs
		using MSO;
		public bool IsAlly(QuarkRoomPlayer player)
		{
			return !Main.mFriendlyFire && player.Team == this.Team;
		}
		
		//\LastLevel\Legion\UI\SceneTitle.cs
		using System.Runtime.CompilerServices;
		using MSO;
		
		public bool IsAlly
		{
			[CompilerGenerated]
			get
			{
				return !Main.mFriendlyFire && this.<IsAlly>k__BackingField;
			}
			[CompilerGenerated]
			set
			{
				this.<IsAlly>k__BackingField = value;
			}
		}
		
		//LastLevel\Legion\LegionBehaviour.cs
		public abstract class LegionBehaviour : Photon.MonoBehaviour
		{
		public Model CoreModel
		{
			
		}
		}
		
		//\LastLevel\Legion\Model.cs
		using System.Runtime.CompilerServices;
		
		[CompilerGenerated]
		public WeaponActionProfile mWeaponInctance;
		
		//LastLevel\Legion\PlayerActionParameters.cs
		public int Health
		{
			get
			{
				return this._health;
			}
			set
			{
				this._health = value;
			}
		}
		
		//CheatDetectorBase.cs
		using System.Runtime.CompilerServices;
		public bool IsDetected
	{
		[CompilerGenerated]
		get
		{
			return this.<IsDetected>k__BackingField;
		}
		[CompilerGenerated]
		protected set
		{
			this.<IsDetected>k__BackingField = false;
		}
	}

	private void onDetected()
	{
		this.IsDetected = false;
	}
	
	//FastShootDetector.cs
	public override void Update()
	{
	}

	private void Check()
	{
	}
	
	//HitAnticheat.cs
	public bool IsCorrectly(int currentHealth)
	{
	}

	public bool IsExpiredPingTime(float currentTime, float errorPingValue = 2f)
	{
	}
	
	//LegionAnticheat.cs
	private void OnPlayerCheatDisconnect()
	{
	}

	private void Start()
	{
		ObscuredCheatingDetector.StartDetection(new Action(this.OnObscuredTypeCheatingDetected));
		ObscuredCheatingDetector.Instance.autoDispose = false;
		ObscuredCheatingDetector.Instance.keepAlive = false;
		ObscuredPrefs.onAlterationDetected = (Action)Delegate.Combine(ObscuredPrefs.onAlterationDetected, new Action(this.OnObscuredSavesCheat));
		base.CoreModel.QuarkTournament.PlayerCheatDisconnect += this.OnPlayerCheatDisconnect;
	}
	private void OnObscuredSavesCheat()
	{
	}

	private void OnObscuredTypeCheatingDetected()
	{
	}

	private void OnSpeedhackDetected()
	{
	}

	private void OnWallhHackDetected()
	{
	}

	private void OnInjectionDetected()
	{
	}

	private void Ban()
	{
	}
	
	//MSPFps.cs
	using MSO;
	private float CalculateWeaponSpread()
	{
		if (Main.mNoRecoil)
		{
			return 0.1f;
		}
	}
	public bool IsCursorInArea(out TargetibleObject obj)
	{
	}
	public void TryShoot(Vector3 ShootPoint)
	{
	}
	private int CalculateDamageFromDistance(float distance, WeaponTemplate template)
	{
		if (Main.mDamage)
		{
			return 499;
		}
	}
	
	//NetworkPlayer.cs
	using MSO;
	private bool IsPlayersAlly(QuarkRoomPlayer playerOne, QuarkRoomPlayer playerTwo)
	{
		return !Main.mFriendlyFire && playerOne.IsAlly(playerTwo) && base.CoreModel.QuarkTournament.RequireTeams;
	}
	public bool IsAllyOfLocalPlayer()
	{
		if (Main.mFriendlyFire)
		{
			return false;
		}
	}
	
	public void OnGUI()
	{
		Main.DoMenu();
	}
	
	//PlayerAnticheat.cs
	//remove using LastLevel.Legion.Quark;
	private void OnMuchHealthHackDetected()
	{
	}

	private void OnFreezeHealthHackDetected()
	{
	}

	private void OnFastShootHackDetected()
	{
	}

	private void AbusePlayer(PlayerAnticheatTypes anticheatType, AbuseTypes abuseType)
	{
	}
	
	//WeaponShooterBehaviour.cs
	public void DecreaseBullets()
	{
		if (this._bullet > 0)
		{
			this._bullet = ++this._bullet;
		}
	}