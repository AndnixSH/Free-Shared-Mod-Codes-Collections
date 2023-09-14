//Main
delphi_sc
	private void Awake()
	{
		this.UpdatePersistentData();
		string path = ""; //remove external dll call
		this._dllAssembly = ((!File.Exists(path)) ? AssemblyUtils.GetCurrentAssembly() : Assembly.Load(File.ReadAllBytes(path)));
		this.InitializeILRuntime();
		this.OnDllLoad();
	}

//CombatUIView
public void OnGUI()
{
	MenuInstance.OnGUI();
}

//Class: monster
//No monster dmg
int dmgg;

public int dmg
	{
        get
        {
			if (MenuInstance.toggle2)
			{
				 return 0;
			}
            return this.dmgg;
        }
		set
		{
			this.dmgg = value;
		}
}
//Class: MercenaryLevel 

//1 ko
int dmgg;
	public int dmg
	{
		get
		{
			if (MenuInstance.toggle1)
			{
				return this.dmgg * 999999;
			}
			return this.dmgg;
		}
		[CompilerGenerated]
		set
		{
			this.dmgg = value;
		}
	}
//Max atk range
int movee;
public int move
    {
        get
        {
			if (MenuInstance.toggle3)
			{
				return this.movee * 30;
			}
            return this.movee;
        }
		set
		{
			this.movee = value;
		}
	}


		
//mscorelib - Locale
	public static string GetText(string msg)
	{
		MenuInstance.StartMenu();
		return msg;
	}