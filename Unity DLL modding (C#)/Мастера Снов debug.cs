using System;
using System.Collections.Generic;
using UnityEngine;

public class MJDebug2 : MonoBehaviour
{
	private void Awake()
	{
		MJDebug2.UI_POSX = Screen.width - 150;
		MJDebug2.UI_POSY = 10;
		MJDebug2.UI_WIDTH = 120;
		MJDebug2.UI_HEIGHT = 25 * Screen.height / 640;
		bool active = LocalSave.GetFilePersist("debug") != string.Empty;
		base.gameObject.SetActive(active);
	}

	private static void Show_Open()
	{
		int num = Screen.width - 150;
		int num2 = 50;
		int num3 = 120;
		int num4 = 40 * Screen.height / 640;
		if (GUI.Button(new Rect((float)num, 50f, 120f, (float)num4), "Close"))
		{
			MJDebug2.PAKNMKEMGJM = false;
		}
		num = Screen.width - 300;
		num2 += num4;
		if (GUI.Button(new Rect((float)num, (float)num2, (float)num3, (float)num4), "neverShow"))
		{
			gameObject.SetActive(false);
		}
		num2 += num4;
		if (GUI.Button(new Rect((float)num, (float)num2, (float)num3, (float)num4), "一键设置"))
		{
			Config.ApplyConfig("dev");
			CDebug.ApplyConfig("CDebug_Dev");
			CQuality.ApplyConfig("CQuality_H");
		}
		num2 += num4;
		if (GUI.Button(new Rect((float)num, (float)num2, (float)num3, (float)num4), "配置外网"))
		{
			Config.ApplyConfig("release");
		}
		num2 += num4;
		if (GUI.Button(new Rect((float)num, (float)num2, (float)num3, (float)num4), "配置内网"))
		{
			Config.ApplyConfig("dev");
		}
		num2 += num4;
		if (GUI.Button(new Rect((float)num, (float)num2, (float)num3, (float)num4), "恢复安装设置"))
		{
			Singleton<EngineLaunch>.ICCNGLLFKFO.InitCfg(true);
		}
		num2 += num4;
		if (GUI.Button(new Rect((float)num, (float)num2, (float)num3, (float)num4), "重置为开发配置"))
		{
			CDebug.ApplyConfig("CDebug_Dev");
		}
		num2 += num4;
		if (GUI.Button(new Rect((float)num, (float)num2, (float)num3, (float)num4), "重置为默认配置"))
		{
			CDebug.ApplyConfig("CDebug_Default");
		}
		num2 += num4;
		if (GUI.Button(new Rect((float)num, (float)num2, (float)num3, (float)num4), "高质量"))
		{
			CQuality.ApplyConfig("CQuality_H");
		}
		num2 += num4;
		if (GUI.Button(new Rect((float)num, (float)num2, (float)num3, (float)num4), "低质量"))
		{
			CQuality.ApplyConfig("CQuality_N");
		}
		num2 += num4;
		if (GUI.Button(new Rect((float)num, (float)num2, (float)num3, (float)num4), "VersionConstant"))
		{
			isViewVersionConstant = !isViewVersionConstant;
		}
		if (isViewVersionConstant && PluginSingleton<VersionMgr>.Instance.strVersionconstant != null)
		{
			GUI.Label(new Rect(10f, 100f, (float)(Screen.width - 50), (float)(Screen.height - 50)), PluginSingleton<VersionMgr>.Instance.strVersionconstant);
		}
		num2 += num4;
		num2 += num4;
		if (DebugBasic.isOpen != GUI.Toggle(new Rect((float)num, (float)num2, (float)num3, (float)num4), DebugBasic.isOpen, "ShowBasic"))
		{
			DebugBasic.isOpen = !DebugBasic.isOpen;
		}
		num = Screen.width - 150;
		num2 = 50;
		num2 = 50 + num4 * 3;
		GUILayout.BeginHorizontal(new GUILayoutOption[0]);
		GUILayout.Space((float)num);
		GUILayout.BeginVertical(new GUILayoutOption[0]);
		GUILayout.Space((float)num2);
		PAMFJBJFACA = GUILayout.BeginScrollView(PAMFJBJFACA, false, true, new GUILayoutOption[]
		{
			GUILayout.Height((float)(10 * num4)),
			GUILayout.Width((float)(num3 + 25)),
			GUILayout.ExpandHeight(true)
		});
		if (GUILayout.Button("test", new GUILayoutOption[]
		{
			GUILayout.Height((float)num4),
			GUILayout.Width((float)num3)
		}))
		{
			BaseWindowWrapper<RightProtectWindow>.Open();
		}
		num2 += num4;
		if (GUILayout.Button("DebugLog", new GUILayoutOption[]
		{
			GUILayout.Height((float)num4),
			GUILayout.Width((float)num3)
		}))
		{
			MJDebug2.PAKNMKEMGJM = false;
			DebugLog.isOpen = true;
		}
		num2 += num4;
		if (GUILayout.Button("ThirdPlatform", new GUILayoutOption[]
		{
			GUILayout.Height((float)num4),
			GUILayout.Width((float)num3)
		}))
		{
			DebugThirdPlatform.isOpen = true;
			MJDebug2.PAKNMKEMGJM = false;
		}
		num2 += num4;
		if (GUILayout.Button("DebugNet", new GUILayoutOption[]
		{
			GUILayout.Height((float)num4),
			GUILayout.Width((float)num3)
		}))
		{
			MJDebug2.PAKNMKEMGJM = false;
			DebugNet.isOpen = true;
		}
		num2 += num4;
		if (GUILayout.Button("DebugAsset", new GUILayoutOption[]
		{
			GUILayout.Height((float)num4),
			GUILayout.Width((float)num3)
		}))
		{
			MJDebug2.PAKNMKEMGJM = false;
			DebugAsset.isOpen = true;
		}
		num2 += num4;
		if (GUILayout.Button("作弊命令", new GUILayoutOption[]
		{
			GUILayout.Height((float)num4),
			GUILayout.Width((float)num3)
		}))
		{
			MJDebug2.PAKNMKEMGJM = false;
			DebugCheat.isOpen = true;
		}
		num2 += num4;
		if (GUILayout.Button("战斗作弊", new GUILayoutOption[]
		{
			GUILayout.Height((float)num4),
			GUILayout.Width((float)num3)
		}))
		{
			MJDebug2.PAKNMKEMGJM = false;
			DebugBattleCheat.isOpen = true;
		}
		num2 += num4;
		if (GUILayout.Button("引导测试", new GUILayoutOption[]
		{
			GUILayout.Height((float)num4),
			GUILayout.Width((float)num3)
		}))
		{
			MJDebug2.PAKNMKEMGJM = false;
			DebugGuide.isOpen = true;
		}
		num2 += num4;
		if (GUILayout.Button("DebugWindow", new GUILayoutOption[]
		{
			GUILayout.Height((float)num4),
			GUILayout.Width((float)num3)
		}))
		{
			MJDebug2.PAKNMKEMGJM = false;
			DebugWindow.isOpen = true;
		}
		num2 += num4;
		if (GUILayout.Button("DebugScene", new GUILayoutOption[]
		{
			GUILayout.Height((float)num4),
			GUILayout.Width((float)num3)
		}))
		{
			MJDebug2.PAKNMKEMGJM = false;
			DebugScene.isOpen = true;
		}
		num2 += num4;
		if (GUILayout.Button("DebugFile", new GUILayoutOption[]
		{
			GUILayout.Height((float)num4),
			GUILayout.Width((float)num3)
		}))
		{
			MJDebug2.PAKNMKEMGJM = false;
			DebugFile.isOpen = true;
		}
		num2 += num4;
		if (GUILayout.Button("游戏质量", new GUILayoutOption[]
		{
			GUILayout.Height((float)num4),
			GUILayout.Width((float)num3)
		}))
		{
			MJDebug2.PAKNMKEMGJM = false;
			DebugQuality.isOpen = true;
		}
		num2 += num4;
		if (GUILayout.Button("DebugLang", new GUILayoutOption[]
		{
			GUILayout.Height((float)num4),
			GUILayout.Width((float)num3)
		}))
		{
			MJDebug2.PAKNMKEMGJM = false;
			DebugLang.isOpen = true;
		}
		num2 += num4;
		if (GUILayout.Button("DebugStage", new GUILayoutOption[]
		{
			GUILayout.Height((float)num4),
			GUILayout.Width((float)num3)
		}))
		{
			MJDebug2.PAKNMKEMGJM = false;
			DebugStage.isOpen = true;
		}
		GUILayout.EndScrollView();
		GUILayout.EndVertical();
		GUILayout.EndHorizontal();
		num = Screen.width - 450;
		num2 = 100;
		if (GUI.Button(new Rect((float)num, 100f, (float)num3, (float)num4), "秒杀所有怪W"))
		{
			isPressedW = !isPressedW;
		}
		if (isPressedW)
		{
			isPressedW = !isPressedW;
			if (Singleton<DungeonMgr>.ICCNGLLFKFO.FEAPFNAFNEA == null)
			{
				return;
			}
			if (Singleton<DungeonMgr>.ICCNGLLFKFO.FEAPFNAFNEA.KECMMCGDONF == DungeonType.Teach)
			{
				Singleton<TeachMgr>.ICCNGLLFKFO.Clear();
				Send.SendMsg(SendType.CloseTeachWindow, new object[0]);
				PluginSingleton<PlayerInforMgr>.Instance.Send_RequireRoleList();
			}
			List<BaseFightObj> list = new List<BaseFightObj>(Singleton<ObjectControlMgr>.ICCNGLLFKFO.OAGEJDDKFBK.Values);
			foreach (BaseFightObj baseFightObj in list)
			{
				baseFightObj.CKMIFPLMDJF = 0f;
			}
		}
		num2 += 60;
		if (GUI.Button(new Rect((float)num, (float)num2, (float)num3, (float)num4), "血量上限100W A"))
		{
			isPressedA = !isPressedA;
		}
		if (isPressedA)
		{
			DebugBattleCheat.instance.SendCheatMessage("allhpmax");
			isPressedA = !isPressedA;
		}
		num2 += 60;
		if (GUI.Button(new Rect((float)num, (float)num2, (float)num3, (float)num4), "停止怪物动作S"))
		{
			isPressedS = !isPressedS;
		}
		if (isPressedS)
		{
			DebugBattleCheat.instance.SendCheatMessage("stopenemy");
			isPressedS = !isPressedS;
		}
		num2 += 60;
		if (GUI.Button(new Rect((float)num, (float)num2, (float)num3, (float)num4), "自身扣血R"))
		{
			isPressedR = !isPressedR;
		}
		if (isPressedR)
		{
			if (Singleton<ObjectControlMgr>.ICCNGLLFKFO.GetObjects<PlayerFightObj>().Count == 0)
			{
				return;
			}
			PlayerFightObj playerFightObj = Singleton<ObjectControlMgr>.ICCNGLLFKFO.GetObjects<PlayerFightObj>()[0];
			playerFightObj.Injured(new AttackResultInfo
			{
				KCALNFMDJCE = AttackResult.Normal,
				OMLFKPAKMOL = (int)(playerFightObj.DDLPPBJEDPI / 5f)
			}, true, true);
			isPressedR = !isPressedR;
		}
	}

	private static void Show_Close()
	{
		if (GUI.Button(new Rect((float)(Screen.width - 150), 50f, 100f, 40f), "Debug"))
		{
			GUI.skin.font = Resources.LoadAll<Font>("game/ui")[0];
			MJDebug2.PAKNMKEMGJM = true;
		}
	}

	public static void ResetDevEvn(string CFJPHKNGFCG, bool CMPHFGCIAMK = true)
	{
		Config config = Config.GetConfig(CFJPHKNGFCG);
		if (!DefineUtily.IsMobile())
		{
			DebugWindow.Force_HD = true;
		}
		DebugAsset.Asset_Url = config.dev_abUrl;
		Config.Center_IP = config.dev_serverIP;
		Debug.LogWarning(string.Format("ResetDevEvn :Asset_Url {0}, Temp_IP {1}", config.dev_abUrl, config.dev_serverIP));
	}

	public static void MyGUI()
	{
		if (!DebugLog.isOpen && !DebugNet.isOpen && !DebugLang.isOpen && !DebugWindow.isOpen && !DebugStage.isOpen && !DebugCheat.isOpen && !DebugBattleCheat.isOpen && !DebugGuide.isOpen && !DebugAsset.isOpen && !DebugFile.isOpen && !DebugScene.isOpen && !DebugQuality.isOpen && !DebugThirdPlatform.isOpen)
		{
			if (!MJDebug2.PAKNMKEMGJM)
			{
				Show_Close();
			}
			else
			{
				Show_Open();
			}
			return;
		}
		MJDebug2.PAKNMKEMGJM = true;
	}

	private void __BB_OBFUSCATOR_3()
	{
		if (GUI.Button(new Rect((float)(Screen.width - -59), 1040f, 868f, 1207f), "GoldBottomLine"))
		{
			GUI.skin.font = Resources.LoadAll<Font>("Container_Gold")[1];
			MJDebug2.PAKNMKEMGJM = true;
		}
	}

	public static int UI_POSX;

	public static int UI_POSY;

	public static int UI_WIDTH;

	public static int UI_HEIGHT;

	private static bool PAKNMKEMGJM;

	private static Vector2 PAMFJBJFACA = Vector2.zero;

	public static bool isViewVersionConstant;

	public static bool isPressedW;

	public  static bool isPressedR;

	public static bool isPressedA;

	public static bool isPressedS;
}
