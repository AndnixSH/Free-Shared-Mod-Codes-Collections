		string text = args[0];
        string text2 = text;
        switch (text2)
        {
            case "enable_hit_sound":
                if (int.Parse(args[1]) == 1)
                {
                    ObjBehaviour.test_enable_hit_sound = true;
                }
                else
                {
                    ObjBehaviour.test_enable_hit_sound = false;
                }
                return true;
            case "guide_reset":
                PluginMM.task_guide.Debug_Reset();
                return true;
            case "hideui":
                UIManager.HideUI = true;
                BaseApp.config.auto_hide_ui = true;
                PluginMM.chat_sys.HideMainPanel();
                return true;
            case "gmt":
                PluginMM.gmt.ShowControlPanel();
                return true;
            case "qiyu":
                int id = int.Parse(args[1]);
                PluginMM.qiyu.Qiyu(id);
                return true;
            case "gender":
                {
                    int num2 = int.Parse(args[1]);
                    if (num2 != 1 && num2 != 2)
                    {
                        BaseMM.notice.ShowTip("参数错误", false, false);
                        return true;
                    }
                    PluginMM.mainRole.TestGender(num2);
                    return true;
                }
            case "trace_fight":
                FightUtils.TraceFight = true;
                return true;
            case "bossai":
                GMCommand.CheckBossAICmd(args);
                return true;
            case "logattack":
                PluginMM.role.model.ShowMaxAttack();
                return true;
            case "enable_attack_sound":
                {
                    if (int.Parse(args[1]) == 1)
                    {
                        ObjBehaviour.test_enable_attack_sound = true;
                    }
                    else
                    {
                        ObjBehaviour.test_enable_attack_sound = false;
                    }
                    return true;
                }
            case "zb_activity":
                {
                    int pos = int.Parse(args[1]);
                    PluginMM.route_act.model.TestZB(pos);
                    return true;
                }
            case "debug_attrib":
                {
                    if (args.Length != 2)
                    {
                        BaseMM.notice.ShowTip("错误的指令格式", false, false);
                    }
                    else
                    {
                        PluginMM.mainRole.model.Debug_Attrib(args[1]);
                    }
                    return true;
                }
            case "guide_run":
                {
                    int id2 = int.Parse(args[1]);
                    PluginMM.task_guide.Debug_Run(id2);
                    return true;
                }
            case "ispk":
                {
                    BaseMM.notice.ShowTip(PluginMM.globak_pk.IsEntered ? "isPK:yes!" : "isPK:no!", false, false);
                    return true;
                }
            case "func_open":
                {
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
                            int id3 = int.Parse(array[0]);
                            bool is_open = int.Parse(array[1]) != 0;
                            PluginMM.func_open.model.Debug_SetOpen(id3, is_open);
                        }
                    }
                    return true;
                }
            case "zombie_prof":
                {
                    if (args.Length != 4)
                    {
                        BaseMM.notice.ShowTip("错误的指令格式", false, false);
                    }
                    else
                    {
                        int prof = ConvertUtils.ToInt(args[1]);
                        int num3 = ConvertUtils.ToInt(args[2]);
                        int num4 = ConvertUtils.ToInt(args[3]);
                        PluginMM.zombie.SetMainroleWanfaProf(prof, num3 != 0, num4 != 0);
                    }
                    return true;
                }
            case "kill":
                if (PluginMM.scene.IsLocalAI)
                {
                    PluginMM.obj.LocalAI_KillAllMonsters(true, 0, true);
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
        }
        return false;