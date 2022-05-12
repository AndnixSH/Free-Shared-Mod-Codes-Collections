//LightingManager
//LocalisationManager
//AudioManager
//StatsManager
private void Start()
private void Awake()
private void Update()
private void OnGUI()

//
void OnGUI()
{
	TestGUI.Spawn(0, "");
}

//Player
public MinMaxFloat speedLimit
	{
		get
		{
			if (GetGUI.toggles[0])
			{
				return new MinMaxFloat(120f, 240f);
			}
			return Singleton<CharacterManager>.Instance.currentCharacterStats.speedLimit;
		}
	}

//MovementSnowboard 
private float backflipSpeed
	{
		get
		{
			if (GetGUI.toggles[1])
				return Singleton<CharacterManager>.Instance.currentCharacterStats.backflipSpeed * 2;
			return Singleton<CharacterManager>.Instance.currentCharacterStats.backflipSpeed;
		}
	}
	
public float jumpStrength
	{
		get
		{
			if (GetGUI.toggles[2])
				return Singleton<CharacterManager>.Instance.currentCharacterStats.jumpStrength * 2;
			return Singleton<CharacterManager>.Instance.currentCharacterStats.jumpStrength;
		}
	}
	
	public void Landing()
	{
		if (this.player.invincible || GetGUI.toggles[4])
				{
					this.ChangePlayerState(Player.PlayerState.boarding);
				}
	}
//Collectable
public void Collect()
	{
		if (GetGUI.toggles[3])
			num2 *= 100;
	}
	
