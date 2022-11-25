// UIRoot
public void OnGUI()
{
	SR.OnGUI();
}

IsLoadTypeMonster
	//Char
public float GetHP()
{
	if (SR.toggle1 && this.IsLoadTypePlayer())
		{
			return 999999f;
		}
	
	return 9999999f;
}

public float GetMP()
	{
		
		if (SR.toggle2 && this.IsLoadTypePlayer())
		{
			return 999999f;
		}
		if (this.IsLoadTypePlayer())
		{
			return 999999f;
		}
		int index = 20;
		return this.Info.nStatus[index];
	}

public float GetAttack()
	{
		if (this.IsLoadTypePlayer())
		{
			if (this.bBuffType[42])
			{
				return 0f;
			}
			int index = 4;
			return this.Info.nStatus[index] * (float)SR.dmgMulti;
		}
		else
		{
			if (this.bBuffType[42])
			{
				return 0f;
			}
			int index2 = 4;
			return this.Info.nStatus[index2];
		}
	}

	public float Get_MagicAttack()
	{
		if (this.IsLoadTypePlayer())
		{
			if (this.bBuffType[42])
			{
				return 0f;
			}
			int index = 5;
			return this.Info.nStatus[index] * (float)SR.dmgMulti;
		}
		else
		{
			if (this.bBuffType[42])
			{
				return 0f;
			}
			int index2 = 5;
			return this.Info.nStatus[index2];
		}
	}
	//OpenLevelLimitToastMsg
	//UI_Adventure_Manager 
	private void onMovePanelRight()
	{
		if (this._iCurrChapterIndex >= this._iLastClearChapterIndex)
		{
			int nextChapterRequireLevel = MonoSingleton<Info_Manager>.instance.Map.GetNextChapterRequireLevel(this._eCurrentGameMode);
			
		}
		this._iPrevChapterIndex = this._iCurrChapterIndex;
		this._iCurrChapterIndex++;
		this.onMovePanel();
	}
	
	///////////
	public bool IsLoadTypePlayer()
	{
		return this.LoadType == Info_Char.E_LOAD_TYPE.PLAYER;
	}

	public bool IsLoadTypeMonster()
	{
		return this.LoadType == Info_Char.E_LOAD_TYPE.MONSTER;
	}

	
	
