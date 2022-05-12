using PMT.MenuMaker;

//UILabel
	public void OnGUI()
	{
		Team.ButtonMenu();
	}

//Character
//Godmode
public int ILMGLGAKPJO
	{
		get
		{
			if (GetGUI.toggles[0] && this.IsPlayer())
			{
				return this.FOGGOOIIOMP.POJHGBICJDI(MMIDCCFJCBD.MaxHealth);
			}
			return this.HONDBMCCJLK.HOGKBPNHKJE();
		}
	}
	
//1 hit kill
public int GBANDKIBPGK
	{
		get
		{
			if (!GetGUI.toggles[1])
			{
				return (this.FOGGOOIIOMP == null) ? 0 : this.FOGGOOIIOMP.POJHGBICJDI(MMIDCCFJCBD.MaxHealth);
			}
			if (this.IsPlayer())
			{
				return this.FOGGOOIIOMP.POJHGBICJDI(MMIDCCFJCBD.MaxHealth);
			}
			return 1;
		}
	}
	
//max energy
public int JBBNHAMBAHF
	{
		get
		{
			if (GetGUI.toggles[2])
			{
				return this.FOGGOOIIOMP.POJHGBICJDI(MMIDCCFJCBD.MaxEnergy);
			}
			return this.NDFKENFLEGN.HOGKBPNHKJE();
		}
	}
	
	//PODMKMGFCKA
	//No cooldown
	private IDIFBIKAFNJ LPCMNFIDKIK(AGPADOJEPJE GGCCNAPLBJK)
	{
		if (this.COCACCKADJL.FOGGOOIIOMP.FBCKJHOIJGB() < GGCCNAPLBJK.JDKNHLCBMNF)
		{
			return IDIFBIKAFNJ.LockedLevel;
		}
		int cilbbknggfi = GGCCNAPLBJK.CILBBKNGGFI;
		if (this.COCACCKADJL.JBBNHAMBAHF < cilbbknggfi)
		{
			return IDIFBIKAFNJ.InsufficientEnergy;
		}
		if (!GGCCNAPLBJK.GNJBDJMAAOO())
		{
			if (GetGUI.toggles[3])
			{
				return IDIFBIKAFNJ.Ready;
			}
			return IDIFBIKAFNJ.InCooldown;
		}
		else
		{
			if (this.KIIGHCBMAEP == OEDGGLAIAJA.JACOFOPEAKF.HMFPGBGEDDO)
			{
				return IDIFBIKAFNJ.UsingOtherAbility;
			}
			return IDIFBIKAFNJ.Ready;
		}
	}
	
	public void Start()
		{
	MakeGUI.PreInit();
	SetGUI.openString = "Cheat";				//text for the opening button, which can be dragged around
	SetGUI.closeString = "Close";				//text for the closing button, if short will be placed differently
	SetGUI.labels = new string[]				//labels for the buttons; can be as many as needed
	{
		"God mode",
		"1 hit kill",
		"Max energy",
		"No cooldown"
	};
	SetGUI.creditString = "Modded by Andnixsh";		//credits line at the bottom of the menu
	SetGUI.menuXPos = -1f;						//X position of the menu, all positions are calculated from the top-left corner
	SetGUI.menuYPos = -1f;						//Y position of the menu, suggested value: 45
	SetGUI.openXPos = -1f;						//X position of the opening button
	SetGUI.openYPos = -1f;						//Y position of the opening button
	SetGUI.closeXPos = -1f;						//Y position of the closing button, suggested value: -1
	SetGUI.closeYPos = -1f;						//X position of the closing button, suggested value: -1
	SetGUI.hasMargin = true;					//margins around the buttons, suggested value: true
	SetGUI.buttonSize = 50;						//max size of the buttons, from 40 to 60
	SetGUI.menuAlpha = 1f;						//transparency of the menu, from 0.5f to 1f
	SetGUI.menuStyle = 0;						//style of the menu, from 0 to 3
	MakeGUI.Init();
		}