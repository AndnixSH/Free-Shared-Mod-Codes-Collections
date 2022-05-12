//Game: 로스트 하바나 for kakao
//Version: 1.1.7
//APK: https://apkpure.com/%EB%A1%9C%EC%8A%A4%ED%8A%B8-%ED%95%98%EB%B0%94%EB%82%98-for-kakao/com.kakaogames.havana

//Calling Mod menu
//Class: UIRoot
public void OnGUI()
{
	ModMenu.ButtonMenu();
}

//No skill cooldown
//SkillInstance
public int SkillLevel
	{
		get
		{
			if (ModMenu.hack1)
			{
				return this.m_nSkillLevel + 99;
			}
			return this.m_nSkillLevel;
		}
	}
	
	public float GetRestCooltime()
	{
		if (this.m_fLastUseTime == -1f)
		{
			return 0f;
		}
		if (!BaseManager<SkillManager>.Instance.m_bSkillCoolTimeUseMode || BaseManager<SkillManager>.Instance.m_bSkillCoolTimeUseMode_System != 0)
		{
			float num = 0f;
			if (this.m_fPrevTime != 0f)
			{
				num = Time.time - this.m_fPrevTime;
			}
			this.m_fLastUseTime += num;
		}
		float num2 = Time.time - this.m_fLastUseTime;
		this.m_fPrevTime = Time.time;
		if (num2 >= this.GetCooltime())
		{
			return 0f;
		}
		// Mod here //
		if (ModMenu.hack2)
		{
			return this.GetCooltime() - this.GetCooltime();
		}
		//----------// 
		return this.GetCooltime() - num2;
	}