//Dev removed it from the game. Don't ask for it

using System;
using mygui2;
using PackScenario;

internal static partial class GMCommand
{
	private static bool ProcessLocalCommand(string[] args)
	{
		string text = args[0];
		bool result;
		if (Config.res_url.Contains("static") && text != "gmtmoyu")
		{
			result = true;
		}
		else
		{
			string text2 = text;
			switch (text2)
			{
			case "gmt":
				PluginMM.gmt.ShowControlPanel(true);
				return true;
			case "gmtmoyu":
				PluginMM.gmt.ShowControlPanel(false);
				return true;
			case "hideui":
				UIManager.HideUI = true;
				BaseApp.config.auto_hide_ui = true;
				PluginMM.chat_sys.HideMainPanel();
				return true;
			case "func_open":
				if (args.Length == 1)
				{
					PluginMM.func_open.model.Debug_AllOpen();
				}
				else
				{
					for (int i = 1; i < args.Length; i++)
					{
						string[] array = args[i].Split(new char[]
						{
							'='
						});
						int num2 = int.Parse(array[0]);
						bool is_open = int.Parse(array[1]) != 0;
						PluginMM.func_open.model.Debug_SetOpen(num2, is_open);
					}
				}
				return true;
			case "guide_reset":
				PluginMM.task_guide.Debug_Reset();
				return true;
			case "guide_run":
			{
				int num2 = int.Parse(args[1]);
				PluginMM.task_guide.Debug_Run(num2);
				return true;
			}
			case "debug_attrib":
				if (args.Length != 2)
				{
					BaseMM.notice.ShowTip("错误的指令格式", false, false);
				}
				else
				{
					PluginMM.mainRole.model.Debug_Attrib(args[1]);
				}
				return true;
			case "kill":
				if (PluginMM.scene.IsLocalAI)
				{
					PluginMM.obj.LocalAI_KillAllMonsters(true, 0);
				}
				else
				{
					C2M_SCENARIO_KILL_ALL_MONSTER data = new C2M_SCENARIO_KILL_ALL_MONSTER();
					PluginApp.network.SendProbuf(OpCodes_C2S.C2M_SCENARIO_KILL_ALL_MONSTER, data);
				}
				return true;
			case "fps":
				BaseApp.config.show_fps = !BaseApp.config.show_fps;
				BaseMM.notice.ShowTip(BaseApp.config.show_fps ? "fps enabled!" : "fps disabled!", false, false);
				return true;
			case "preload_info":
				BaseMM.notice.ShowTip(string.Format("currnt rate {0}, net type {1}", BaseAppLoader.CurrentRate, App.sdk.GetNetType().ToString()), false, false);
				break;
			case "bossai":
				GMCommand.CheckBossAICmd(args);
				return true;
			case "all_avatar":
				RoleAppearPanel.TestAllAvatar = true;
				return true;
			case "wc_team_guess_time":
			{
				int day = int.Parse(args[1]);
				PluginMM.worldcup.model.DebugChangeTeamGuessTime(day);
				return true;
			}
			case "logattack":
				PluginMM.role.model.ShowMaxAttack();
				return true;
			case "stop_ai_attack":
				return true;
			case "gender":
			{
				int num3 = int.Parse(args[1]);
				if (num3 != 1 && num3 != 2)
				{
					BaseMM.notice.ShowTip("参数错误", false, false);
					return true;
				}
				PluginMM.mainRole.TestGender(num3);
				return true;
			}
			case "ispk":
				BaseMM.notice.ShowTip(PluginMM.globak_pk.IsEntered ? "isPK:yes!" : "isPK:no!", false, false);
				return true;
			case "trace_fight":
				FightUtils.TraceFight = true;
				return true;
			case "qiyu":
			{
				int num2 = int.Parse(args[1]);
				PluginMM.qiyu.Qiyu(num2);
				return true;
			}
			case "enable_attack_sound":
			{
				int num2 = int.Parse(args[1]);
				if (num2 == 1)
				{
					ObjBehaviour.test_enable_attack_sound = true;
				}
				else
				{
					ObjBehaviour.test_enable_attack_sound = false;
				}
				return true;
			}
			case "enable_hit_sound":
			{
				int num2 = int.Parse(args[1]);
				if (num2 == 1)
				{
					ObjBehaviour.test_enable_hit_sound = true;
				}
				else
				{
					ObjBehaviour.test_enable_hit_sound = false;
				}
				return true;
			}
			case "zb_activity":
			{
				int num2 = int.Parse(args[1]);
				PluginMM.route_act.model.TestZB(num2);
				return true;
			}
			case "wanfa_enter":
			{
				int game_id = int.Parse(args[1]);
				int room_id = int.Parse(args[2]);
				PluginMM.team.EnterDirect(game_id, room_id);
				return true;
			}
			case "simi_times":
			{
				int scoreTimes = int.Parse(args[1]);
				PluginMM.goddness_date.model.ScoreTimes = scoreTimes;
				return true;
			}
			}
			result = false;
		}
		return result;
	}
}
