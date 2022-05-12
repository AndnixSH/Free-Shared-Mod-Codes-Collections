//Game: LINE BLEACH -PARADISE LOST-
//Version: 1.1.4
//APK: https://apkpure.com/line-bleach-paradise-lost/com.linecorp.LGNSOULS

//mscorelib.dll
//Class: Locale
	public static string GetText(string msg)
	{
		MenuMaker.StartMenu(); // Call menu
		return msg;
	}

//Assembly-CSharp-firstpass.dll
//Mod menu

using System;
using System.Collections.Generic;
using UnityEngine;

namespace LineBleach
{
	public class LineBleach : MonoBehaviour
	{
		public static void LineBleachShow()
		{
			LineBleach.wRect = GUI.Window(0, LineBleach.wRect, new GUI.WindowFunction(LineBleach.LineBleach_Label), "", new GUIStyle());
			if (LineBleach.ShowHide)
			{
				LineBleach.LineBleach_Main();
			}
		}

		public static void LineBleach_Main()
		{
			GUI.Box(new Rect(LineBleach.wRect.x + 45f, LineBleach.wRect.y + 90f, 300f, 300f), "<size=18><color=aqua>\n[REDACTED]</color></size><size=18><color=yellow>\nCREDIT:</color></size><size=18><color=red>\n[REDACTED]</color></size>");
			if (GUI.Button(new Rect(LineBleach.wRect.x + 80f, LineBleach.wRect.y + 200f, 230f, 40f), LineBleach.string1))
			{
				LineBleach.LineBleachS1 = !LineBleach.LineBleachS1;
			}
			if (GUI.Button(new Rect(LineBleach.wRect.x + 80f, LineBleach.wRect.y + 250f, 230f, 40f), LineBleach.string2))
			{
				LineBleach.LineBleachS2 = !LineBleach.LineBleachS2;
			}
			if (LineBleach.LineBleachS1)
			{
				LineBleach.string1 = "<size=16>1 HIT <color=lime>ON</color></size>";
			}
			else
			{
				LineBleach.string1 = "<size=16>1 HIT <color=red>OFF</color></size>";
			}
			if (LineBleach.LineBleachS2)
			{
				LineBleach.string2 = "<size=16>GOD MODE <color=lime>ON</color></size>";
			}
			else
			{
				LineBleach.string2 = "<size=16>GOD MODE <color=red>OFF</color></size>";
			}
		}

		public static void LineBleach_Label(int windowID)
		{
			if (Event.current.type == EventType.MouseUp)
			{
				LineBleach.ShowHide = !LineBleach.ShowHide;
			}
			if (LineBleach.Image == null)
			{
				byte[] data = new byte[]
				{
					"Not showing all elements because this array is too big (11132 elements)"
				};
				LineBleach.Image = new Texture2D(1, 1);
				LineBleach.Image.LoadImage(data);
			}
			GUI.DrawTexture(new Rect(1f, 1f, 150f, 150f), LineBleach.Image);
			GUI.DragWindow();
		}

		private void method_0()
		{
			if (cIngameBattleUtil.Instance == null)
			{
				return;
			}
			if (cIngameBattleUtil.Instance.BattleOperator == null)
			{
				return;
			}
			if (cIngameBattleUtil.Instance.BattleView == null)
			{
				return;
			}
			List<cHeroInfo> heroList = cIngameBattleUtil.Instance.BattleOperator.EnemyTeam.GetHeroList(false);
			if (heroList != null)
			{
				for (int i = 0; i < heroList.Count; i++)
				{
					if (heroList[i] != null && heroList[i].Status.HP > 1L)
					{
						heroList[i].Status.SetHP(1L);
					}
				}
			}
		}

		private void method_1()
		{
			if (cIngameBattleUtil.Instance == null)
			{
				return;
			}
			if (cIngameBattleUtil.Instance.BattleOperator == null)
			{
				return;
			}
			if (cIngameBattleUtil.Instance.BattleView == null)
			{
				return;
			}
			List<cHeroInfo> heroList = cIngameBattleUtil.Instance.BattleOperator.UserTeam.GetHeroList(false);
			if (heroList != null)
			{
				for (int i = 0; i < heroList.Count; i++)
				{
					if (heroList[i] != null && heroList[i].Status.HP < heroList[i].Status.MAX_HP)
					{
						heroList[i].Status.SetHP(heroList[i].Status.MAX_HP);
					}
				}
			}
		}

		public static bool LineBleachS1;

		public static bool LineBleachS2;

		public static bool LineBleachS3;

		public static bool LineBleachS4;

		public static string string1;

		public static string string2;

		public static string string3;

		public static string string4;

		public static bool ShowHide = false;

		public static bool loaded = false;

		public static GUIStyle Style;

		public static Rect wRect = new Rect(0f, 0f, 235f, 200f);

		public static Texture2D Image = null;
	}
}
