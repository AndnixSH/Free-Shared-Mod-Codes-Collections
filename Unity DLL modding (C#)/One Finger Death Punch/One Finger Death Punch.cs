//PlayerInfo
get_MissDelay

public float MissDelay
	{
		get
		{
			if (OFDP.toggle1)
			{
				return 0f;
			}
			return Mathf.Max(this.m_Stat.m_fMissDelay, 0.001f);
		}
	}
	
public bool IsMissDelay
	{
		get
		{
			return !OFDP.toggle1 && this.m_MissTime > 0f;
		}
	}


//GameInfo	
public static int GetMissDelay(string type)
	{
		if (OFDP.toggle1)
		{
			return 0;
		}
		return GameInfo.m_EnemyInfoTable[type].missdelay;
	}
	

//SoundManager
private void Update()
	{
		OFDP.Update();
	}
	
public void OnGUI()
{
	OFDP.OnGUI();
}