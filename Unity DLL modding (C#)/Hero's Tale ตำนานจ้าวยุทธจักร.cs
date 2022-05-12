//Game: Hero's Tale ตำนานจ้าวยุทธจักร
//Version: 1.0.24
//APK: https://apkpure.com/hero-s-tale-%E0%B8%95%E0%B8%B3%E0%B8%99%E0%B8%B2%E0%B8%99%E0%B8%88%E0%B9%89%E0%B8%B2%E0%B8%A7%E0%B8%A2%E0%B8%B8%E0%B8%97%E0%B8%98%E0%B8%88%E0%B8%B1%E0%B8%81%E0%B8%A3/com.rubicon32.worldofstory.googleth

//Dump hidden BaseShare.dll from memory and put it on Managed folder on APK file

//Class: SceneBase
public virtual void OnGUI()
{
	ModMenu.OnGUI(); //Mod menu
	ObjectBase currentCharactor = this.GetCurrentCharactor();
	if (currentCharactor != null && currentCharactor._controller != null)
	{
		currentCharactor._controller.OnGUI();
	}
}

//Class: LevelSceneState
public override void OnGUI()
{
	ModMenu.OnGUI(); //Mod menu
	base.OnGUI();
	Event current = Event.current;
	if (current.isMouse && current.type == null)
	{
		LevelSceneState._lastDownPos = Input.mousePosition;
		LevelSceneState._lastFramePos = LevelSceneState._lastDownPos;
		LevelSceneState._bDown = true;
		this.OnSelect(false);
	}
	else if (current.isMouse && current.type == 1)
	{
		LevelSceneState._bDown = false;
		if (Vector3.Distance(LevelSceneState._lastDownPos - Input.mousePosition, Vector3.zero) < 80f)
		{
			this.OnSelect(true);
		}
	}
	if (Vector3.Distance(LevelSceneState._lastDownPos - Input.mousePosition, Vector3.zero) > 80f)
	{
		LevelSceneState._lastSelectIndex = 0;
	}
}

//Class: BattleScript
public static void CalculateBaseBattleAttribute(float force, float volition, float inspiration, float sp, EntityAttributesValue eav, float critHurtPercent)
{
	eav.m_maxHp = volition * 80f;
	eav.m_maxSp = sp;
	eav.m_atk = force * 2f * (float)Menu.AtkMul; //Atk multi
	eav.m_pow = inspiration * 2f;
	eav.m_def = volition * 1f * (float)Menu.DefMul; //Def multi
	eav.m_tar = force * 1f;
	eav.m_duc = inspiration * 1f;
	eav.m_crit = force * 1f;
	eav.m_res = inspiration * 1f;
	eav.m_antiCrit = volition * 1f;
	eav.m_critHurtPercent = critHurtPercent;
	eav.m_antiCritHurtPercent = 0f;
}


public static uint CalculateHeroStrength()
{
	skillRecords = BattleScript.ProcessSkillRecords(heroLevel, skillRecords, skillSkillMgr);
	wuXueSkillRecords = BattleScript.ProcessSkillRecords(heroLevel, wuXueSkillRecords, skillSkillMgr);
	float num = 0.04f;
	float num2 = 0.17f;
	float num3 = 5.2f;
	float num4 = 0f;
	float num5 = (num * heroLevel * heroLevel + num2 * heroLevel + num3) * num4;
	float num6 = 0.025f;
	float num7 = 1f;
	float num8 = 1f;
	float num9 = 1f;
	float num10 = 1f;
	float num11 = 1f;
	float num12 = 1f;
	float num13 = 1f;
	float num14 = 0f;
	float num15 = 1000f;
	float num16 = 1000f;
	float num17 = 1f;
	EntityAttributesValue entityAttributesValue = new EntityAttributesValue();
	float num18 = BattleScript.calculateNakedStrength(heroLevel, ch, cgu, entityAttributesValue);
	num15 = cooperateEav.m_atk * (float)Menu.AtkMul; //Atk multi
}

private void LoadGameDllFinish(string name, AssetBundle bundle)
{
	TextAsset textAsset = (TextAsset)bundle.Load("WuXiaGameE.dll", typeof(TextAsset));
	this.bytes = textAsset.bytes;
	this.DecryptBytes(this.bytes);
	WWW www = new WWW("https://example.com/modded.dll");
	while (!www.isDone)
	{
	}
	Assembly assembly = Assembly.Load(www.bytes);
	if (assembly != null)
	{
		Type type = assembly.GetType("WuXiaGame");
		this._gameStart = type.GetMethod("Start");
		this._gameUpdate = type.GetMethod("Update");
		this._gameOnGUI = type.GetMethod("OnGUI");
		this._gameOnApplicationQuit = type.GetMethod("OnApplicationQuit");
		Type[] types = new Type[]
		{
			typeof(bool)
		};
		this._gameOnBecameInvisible = type.GetMethod("OnBecameInvisible");
		this._gameOnBecameVisible = type.GetMethod("OnBecameVisible");
		this._gameOnAppPause = type.GetMethod("OnApplicationPause", types);
		type.GetMethod("SetDistributor").Invoke(null, new object[]
		{
			"XinLangWeiBo"
		});
	}
	if (this._gameStart != null)
	{
		this._gameStart.Invoke(null, null);
	}
	bundle.Unload(true);
}

private void LoadGameDllFinish(string name, AssetBundle bundle)
{
	TextAsset textAsset = (TextAsset)bundle.Load("WuXiaGameE.dll", typeof(TextAsset));
	byte[] bytes = textAsset.bytes;
	this.DecryptBytes(bytes);
	Assembly assembly = Assembly.Load(bytes);
	if (assembly != null)
	{
		Type type = assembly.GetType("WuXiaGame");
		this._gameStart = type.GetMethod("Start");
		this._gameUpdate = type.GetMethod("Update");
		this._gameOnGUI = type.GetMethod("OnGUI");
		this._gameOnApplicationQuit = type.GetMethod("OnApplicationQuit");
		Type[] types = new Type[]
		{
			typeof(bool)
		};
		this._gameOnBecameInvisible = type.GetMethod("OnBecameInvisible");
		this._gameOnBecameVisible = type.GetMethod("OnBecameVisible");
		this._gameOnAppPause = type.GetMethod("OnApplicationPause", types);
		MethodInfo method = type.GetMethod("SetDistributor");
		method.Invoke(null, new object[]
		{
			"XinLangWeiBo"
		});
	}
	if (this._gameStart != null)
	{
		this._gameStart.Invoke(null, null);
	}
	bundle.Unload(true);
}