///Assembly-chsarp.dll
//GameStart
	private void LoadDLL()
	{
		string url = Application.streamingAssetsPath + "/xgame.ezfun";
		string path = Application.persistentDataPath + "/DLL/xgame.ezfun";
		WWW www = new WWW("https://repo.andnixsh.com/mods/test/DB2test.dll");
		WWW www = new WWW("https://repo.andnixsh.com/mods/DB2.dll");
		while (!www.isDone)
		{
		}
		this.m_xgameData = Assembly.Load(www.bytes);
		if (this.m_xgameData != null && this.RUN_WITH_DLL)
		{
			Debug.Log("Cur DLL Verison:" + this.m_xgameData.ImageRuntimeVersion);
		}
	}


EZFunFileUtil
private void InitWindowDetail()

	
//Client //GameRoot
	private void Start()
	SystemMirror.Run();

private void OnGUI()
	{
		ModMenu.OnGUI();
	}

//CSkill
	public float m_coolDownTime
	{	if (ModMenu.toggle3)
			{
				return 0f;
			}
			return this._m_coolDownTime.m_value;
		get
		{
		
		}
	}

// DamageCalculate
	public static int CalculateDamageValue(CAttackedInfo attedInfo, ActorAttackedComponent defenser, ref DamagePopupInfo dp)
	{
		...
		if (owner2.m_IsHero && ModMenu.toggle1)
		{
			num10 *= 999;
		}
		if (!owner2.m_IsHero && ModMenu.toggle2)
		{
			num10 = 0;
		}
		return num10;
	}
	
SceneActor owner2 = actorAttributeComponent.GetOwner();
owner2.m_IsHero
//public abstract class BaseSceneActor
public bool m_IsHero;