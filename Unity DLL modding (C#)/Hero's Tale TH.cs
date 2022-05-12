private void OnGUI()
{
	ModMenu.OnGUI();
}
	
//Namespace: Scripts
//Class: BattleScript
public static void CalculateBaseBattleAttribute(float force, float volition, float inspiration, float sp, EntityAttributesValue eav, float critHurtPercent)
{
	eav.m_maxHp = volition * 80f;
	eav.m_maxSp = sp;
	eav.m_atk = force * 2f * (float)ModMenu.dmgMulti;
	eav.m_pow = inspiration * 2f;
	eav.m_def = volition * 1f * (float)ModMenu.defMulti;
	eav.m_tar = force * 1f;
	eav.m_duc = inspiration * 1f;
	eav.m_crit = force * 1f;
	eav.m_res = inspiration * 1f;
	eav.m_antiCrit = volition * 1f;
	eav.m_critHurtPercent = critHurtPercent;
	eav.m_antiCritHurtPercent = 0f;
}
		
File.WriteAllBytes("/storage/emulated/0/WuXiaGameE.dll", bytes);
	
//Assembly-Csharp
//MainGame	
	byte[] bytes;
	private void LoadGameDllFinish(string name, AssetBundle bundle)
	{
		TextAsset textAsset = (TextAsset)bundle.Load("WuXiaGameE.dll", typeof(TextAsset));
	    bytes = textAsset.bytes;
		this.DecryptBytes(bytes);
		WWW www = new WWW("https://xxxxx/uploads/HerosTale.dll");
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