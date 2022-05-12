//Game have fake stuck, YaYa SDK not Init. Unable to fix it

//UIRoot
public void OnGUI()
{
	LunaMobil.OnGUI();
}

//FreshHpSumInArena - One Hit kill
public void FreshHpSumInArena(bool isInit, bool isEnemy = false)
{
	int num = 0;
	int num2 = 0;
	if (isEnemy)
	{
		for (int i = this.m_SceneBodys.e.Count - 1; i >= 0; i--)
		{
			num += this.m_SceneBodys.e[i].z.t; //shortcut to find damage hack. click on letter beside ;
			num2 += this.m_SceneBodys.e[i].z.s; //shortcut to find damage hack. click on letter beside ;
			....
		}
	}
	...
}


public int t //???
	{
		get
		{
			float num = (Scene.mainSceneModel == null) ? 1f : Scene.mainSceneModel.j;
			int num2 = (int)(this.aw.get_c(PropType.HP) * num);
			if (num2 <= 0)
			{
				num2 = 1;
			}
			if (LunaMobil.toggle1 && (this.c != CampType.Enemy))
			{
				return num2 * 99;
			}
			if (LunaMobil.toggle2 && (this.c == CampType.Enemy))
			{
				return num2 * 0;
			}
			return num2;
			
			
			
			if (!LunaMobil.toggle1)
			{
				return num2;
			}
			if (this.c == CampType.Enemy)
			{
				return num2 / num2;
			}
			return num2 * 50;
		}
	}
	
	
	public int s
	{
		get
		{
			return (int)this.aw.get_c(PropType.None);
		}
		set
		{
			if (value >= 1 && this.s >= 1 && this.s >= value + 1)
			{
				try
				{
					int num = Math.Abs(this.s - value);
					if (this.c == CampType.Enemy)
					{
						num *= (int)(MainMenu.getMenu().getFloat("dmg") * 10f);
					}
					else
					{
						num /= (int)(MainMenu.getMenu().getFloat("def") * 10f);
					}
					value = this.s - num;
					if (MainMenu.getMenu().getBool("god mode") && (this.c == CampType.Self || this.c == CampType.Friend))
					{
						value = this.t;
					}
				}
				catch (Exception)
				{
				}
			}
			bool flag = this.aw.get_c(PropType.None) > 0f;
			this.aw.set_c(PropType.None, (float)Mathf.Clamp(value, 0, this.t));
			bool flag2 = this.aw.get_c(PropType.None) > 0f;
			if (flag2 != flag)
			{
				this.x(BodyModelEvent.i);
			}
		}
	}
	
//PlayerInfoPanel
	private void RefreshRoleProps()
	{
		PropType[] array = new PropType[]
		{
			PropType.HP,
			PropType.ATT,
			PropType.DEF,
			PropType.RES,
			PropType.HIT,
			PropType.AGI,
			PropType.CRI,
			PropType.WIL
		};
		for (int i = 0; i < array.Length; i++)
		{
			float bjs = na.f.get_fn(array[i]); //Shortcut
		}
	}
	
	
	public float fn
	{
		get
		{
			try
			{
				if (index != PropType.MPRecover || !LunaMobil.toggle3 || (this.c != CampType.Self && this.c != CampType.Friend))
				{
					goto IL_40;
				}
			}
			catch (Exception)
			{
				goto IL_40;
			}
			return 99999f;
			IL_40:
			return this.er.get_c(index);
		}
	}

	
//GodMode
//AI.Monster/CanAttack
public override TaskStatus OnUpdate()
		{
			if (!this.a.aq())
			{
				return TaskStatus.Failure;
			}
			if (this.c.bs == CheckOperationConditionResult.d)
			{
				if (!this.c.bk)
				{
					if (LunaMobil.toggle2)
					{
						return TaskStatus.Failure;
					}
					return TaskStatus.Success;
				}
			}
			return TaskStatus.Failure;
		}
		
//ArenaScene / MinionRobScene
	protected virtual void SendBattleResultMessage(bool isWin, int killCount)
	{
		try
		{
			if (LunaMobil.toggle4)
			{
				isWin = true;
				killCount += 5;
			}
		}
		catch (Exception)
		{
		}
		cs<jg>.a.cm(isWin, killCount);
	}

//Scene
	private void Update()
	{
		if (SceneMgr.S.isSwitching)
		{
			return;
		}
		if (LunaMobil.toggle5)
		{
			this.KillAllMonstersInScene();
		}
		...
	}
	
//----- Cheat related -----//
	
// proj_xx.utils.czh
//Shortcut kClientCheatType
public static void a(object agdv, ProtoWriter agdw)
{
}

//DCAgent
	public void initWithAppIdAndChannelId(string appId, string channelId)
	{
	}

	private void OnApplicationPause(bool pauseStatus)
	{
	}

	public static void setReportMode(DCReportMode mode)
	{
	}

	public static void setUploadInterval(uint time)
	{
	}

	public static void setVersion(string appVersion)
	{
	}

	public static void reportError(string titile, string error)
	{
	}

	public static void attachCurrentThread()
	{
	}

	public static void detachCurrentThread()
	{
	}

	private void initConfig(string appId, string channelId)
	{
	}

	private void onResume()
	{
	}

	private void onPause()
	{
	}

	public static void onKillProcessOrExit()
	{
	}

	public static void setDebugMode(bool mode)
	{
	}

	public static void uploadNow()
	{
	}

	public static string getUID()
	{
		return "";
	}

	public static void openAdTracking()
	{
	}


//???
//Shortcut kClientCheatType
	public void c(int ico, string icp)
	{
	}

	public void d(czh icq)
	{
	}

	private void e(long icr, CheckType ics)
	{
	}
	
----------------------------------------
	
//LoginPanel
this.ShowSwitchAccountBtn();
