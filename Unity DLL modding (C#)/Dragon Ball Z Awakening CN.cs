//Assembly-CSharp
//GameLoading
¨	private void getWWW(string path)
	{
		WWW www = new WWW("https://repo.andnixsh.com/mods/DBZA/game");
		while (!www.isDone)
		{
		}
		AssetBundle assetBundle = www.assetBundle;
		Assembly asm = Assembly.Load((assetBundle.LoadAsset("Game") as TextAsset).bytes);
		Runtime.Add(asm);
		Main.addScript(Main.inst.gameObject, "MainGame");
	}

//Game.dll
//MainGame
	private IEnumerator loadBattleSystem()
	{
		yield return 0;
		bool flag = !FGame.DebugDllCode;
		if (flag)
		{
			AssetManager.instens.LoadOBJ("BattleSystem#BattleSystem", delegate(AssetData ad, UnityEngine.Object obj)
			{
				WWW www = new WWW("https://repo.andnixsh.com/mods/DBZA/BattleSystem.txt");
				while (!www.isDone)
				{
				}
				Assembly asm = Assembly.Load(www.bytes);
				SDKManager.inst.SendBiStepMsg("gameStepInfo", eBIStep.LoadingBattleSystem);
				Runtime.Add(asm);
				this.initBattleSystem();
			}, AssetData.getType.now, AssetData.LoadType.loadFile, true);
		}
		else
		{
			SDKManager.inst.SendBiStepMsg("gameStepInfo", eBIStep.LoadingBattleSystem);
			this.initBattleSystem();
		}
		yield break;
	}

// BattleSystem.Battle
public void OnGUI()
{
	ModMenu.OnGUI();
}

//BattleUtils
	public static double CalculateDamage(BattleRole attacker, BattleRole defender, EAttackType atkType, ESkillType skillType, ERoleProperty[] attackerAffectProp, double[] attackerAffectFactor, bool attackerPropMults, ERoleProperty[] defenderAffectProp, double[] defenderAffectFactor, bool defenderPropMults, double percentDamage, double fixedDamage, double[] extraFactors, bool ignorDef = false, bool absoluteDamage = false, ERoleProperty[] limitProp = null, ELimitPropFrom[] limitPropFrom = null, double[] limitFactor = null, bool isPVP = false, double additiveTrueDamage = 0.0, bool isUseTsrgetAttack = false, double targetAttack = 0.0)
		{
			if (ModMenu.toggle1 && attacker.Camp == 0)
			{
				return 99999.0;
			}
			if (ModMenu.toggle2 && attacker.Camp != 0)
			{
				return 0.0;
			}
		}