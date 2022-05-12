//Game: LoveBeat: Anytime (Global)
//Version: 2.26.2
//APK: https://apkpure.com/lovebeat-anytime-global/com.CrazyDiamond.LoveBeatMobile_Global

//Class: SceneManager
private void OnGUI()
{
	ModMenu.OnGUI();
}

//Class: ComboManager
public void ShowCombo(eInGameJudgeType type, int currentBeat, int nextBeat, Transform trans, bool isDrag)
{
	this.m_lastPlayedBeat = currentBeat;
	if (ModMenu.dmgMulti == 0 && this.m_nextBeat != currentBeat)
	{
		this.m_miss += KeyNoteInfo.Inst.GetSkipedBeat(this.m_nextBeat, currentBeat);
		this.InitCombo();
	}
	...
}
	
//Class: InGameManager_Classic
protected virtual void AddCombo()
{
	if (ModMenu.dmgMulti > 0)
	{
		this.m_Combo += (uint)this.m_KeyPattern[this.m_NowSlot].Count;
	}
	else
	{
		this.m_Combo += 1U;
	}
	if (this.m_Combo > this.m_MaxCombo)
	{
		this.m_MaxCombo = this.m_Combo;
	}
	if (this.m_FeverTime == 0)
	{
		this.m_FeverCount++;
	}
	this.PlayerScore += 2000U * (this.m_Combo - 1U) / (this.m_Combo + 50U);
	EventHub.InputSuccess(this.m_Combo);
}

protected virtual void BeatJudge()
{
	if (this.m_isJudgeComplete)
	{
		return;
	}
	if (this.m_KeyPattern[this.m_NowSlot].IsSpace)
	{
		this.InputFailureSpace();
		return;
	}
	if (ModMenu.dmgMulti == 0)
	{
		this.BeatPersent();
	}
	this.InputFailure();
	this.SF();
}

protected virtual void CulAS(SPACE_JUDGE _judge)
{
	uint num = 0U;
	if (ModMenu.dmgMulti > 0)
	{
		_judge = SPACE_JUDGE.BEAT_100;
	}
	...
}

protected virtual void CulAS(uint _successCount, int _total)
{
	if (ModMenu.dmgMulti > 0)
	{
		_successCount = (uint)_total;
	}
	...
}

protected virtual void InputCtrl(INGAMECTRL_CLASSIC _ctrl)
{
	if (this.m_isInputEnd || this.m_PauseSkip || this.m_EndGame)
	{
		SoundManager.Inst.PlaySE(eSoundEffect.SE_Snap);
		return;
	}
	if (this.m_KeyPattern.Length <= this.m_NowSlot)
	{
		return;
	}
	if ((long)this.m_KeyPattern[this.m_NowSlot].Key.Length <= (long)((ulong)this.m_NowKey))
	{
		return;
	}
	if (this.m_KeyPattern[this.m_NowSlot].Key[(int)((uint)((UIntPtr)this.m_NowKey))] != KEYNOTETYPE_CLASSIC.UP)
	{
		if (this.m_KeyPattern[this.m_NowSlot].Key[(int)((uint)((UIntPtr)this.m_NowKey))] != KEYNOTETYPE_CLASSIC.LEFT)
		{
			if (this.m_KeyPattern[this.m_NowSlot].Key[(int)((uint)((UIntPtr)this.m_NowKey))] != KEYNOTETYPE_CLASSIC.DOWN)
			{
				if (this.m_KeyPattern[this.m_NowSlot].Key[(int)((uint)((UIntPtr)this.m_NowKey))] != KEYNOTETYPE_CLASSIC.RIGHT)
				{
					switch (this.m_NowSlot % 4)
					{
					case 0:
						this.TempTime = this.m_SpaceTime1;
						break;
					case 1:
						this.TempTime = this.m_SpaceTime2;
						break;
					case 2:
						this.TempTime = this.m_SpaceTime3;
						break;
					case 3:
						this.TempTime = this.m_SpaceTime4;
						break;
					}
					if (this.m_BeatTerm - ClassicDefine.Space_Pre100 <= this.TempTime && this.m_BeatTerm + ClassicDefine.Space_Over100 >= this.TempTime)
					{
						SoundManager.Inst.PlaySE(eSoundEffect.SE_Clap2);
						this.InputSuccessSpace(SPACE_JUDGE.BEAT_100);
						this.SSS(SPACE_JUDGE.BEAT_100);
						return;
					}
					if (this.m_BeatTerm - ClassicDefine.Space_Pre90 <= this.TempTime && this.m_BeatTerm + ClassicDefine.Space_Over90 >= this.TempTime)
					{
						SoundManager.Inst.PlaySE(eSoundEffect.SE_Clap1);
						this.InputSuccessSpace(SPACE_JUDGE.BEAT_90);
						this.SSS(SPACE_JUDGE.BEAT_90);
						return;
					}
					if (this.m_BeatTerm - ClassicDefine.Space_Pre80 <= this.TempTime && this.m_BeatTerm + ClassicDefine.Space_Over80 >= this.TempTime)
					{
						SoundManager.Inst.PlaySE(eSoundEffect.SE_Clap1);
						this.InputSuccessSpace(SPACE_JUDGE.BEAT_80);
						this.SSS(SPACE_JUDGE.BEAT_80);
						return;
					}
					if (this.m_BeatTerm - ClassicDefine.Space_Pre70 <= this.TempTime && this.m_BeatTerm + ClassicDefine.Space_Over70 >= this.TempTime)
					{
						SoundManager.Inst.PlaySE(eSoundEffect.SE_Clap1);
						this.InputSuccessSpace(SPACE_JUDGE.BEAT_70);
						this.SSS(SPACE_JUDGE.BEAT_70);
						return;
					}
					if (ModMenu.dmgMulti > 0)
					{
						SoundManager.Inst.PlaySE(eSoundEffect.SE_Clap2);
						this.InputSuccessSpace(SPACE_JUDGE.BEAT_100);
						this.SSS(SPACE_JUDGE.BEAT_100);
						return;
					}
					SoundManager.Inst.PlaySE(eSoundEffect.SE_Clap1);
					this.InputFailureSpace();
					return;
				}
			}
			SoundManager.Inst.PlaySE(eSoundEffect.SE_Snap);
			if (_ctrl == INGAMECTRL_CLASSIC.RIGHT)
			{
				this.InputSuccess();
				this.SS();
				return;
			}
			this.InputFailure();
			this.SF();
			return;
		}
	}
	SoundManager.Inst.PlaySE(eSoundEffect.SE_Snap);
	if (_ctrl == INGAMECTRL_CLASSIC.LEFT)
	{
		this.InputSuccess();
		this.SS();
		return;
	}
	this.InputFailure();
	this.SF();
}

protected virtual void InputFailure()
{
	if (ModMenu.dmgMulti > 0)
	{
		this.InputSuccess();
		return;
	}
	this.m_Combo = 0U;
	this.m_isAll = false;
	this.m_isInputEnd = true;
	this.m_isJudgeComplete = true;
	EventHub.InputFailure();
	this.m_Keynote.FailureBeat(this.m_NowSlot, this.m_NowKey);
	this.BeatPersent();
}

protected virtual void InputFailureSpace()
{
	if (ModMenu.dmgMulti > 0)
	{
		this.InputSuccessSpace(SPACE_JUDGE.BEAT_100);
		return;
	}
	if (this.m_isVibrate)
	{
		Handheld.Vibrate();
	}
	this.m_Combo = 0U;
	this.m_isAll = false;
	this.m_isInputEnd = true;
	EventHub.InputFailure();
	this.m_Keynote.FailureSpace(this.m_NowSlot);
	this.m_isJudgeComplete = true;
	if (this.m_NowSlot < 4 && this.m_NowDouble)
	{
		EventHub.BeatJudge(this.m_NowSlot, SPACE_JUDGE.BEAT_MISS, true);
		return;
	}
	EventHub.BeatJudge(this.m_NowSlot, SPACE_JUDGE.BEAT_MISS, false);
}

protected virtual void InputSuccess()
{
	this.Check();
	this.AddCombo();
	this.m_Keynote.SuccessBeat(this.m_NowSlot, this.m_NowKey);
	this.m_NowKey += 1U;
	if (ModMenu.dmgMulti <= 0)
	{
		if ((ulong)this.m_NowKey == (ulong)((long)this.m_KeyPattern[this.m_NowSlot].Count))
		{
			this.m_isInputEnd = true;
			this.m_isJudgeComplete = true;
			if (this.m_NowSlot >= 4 || !this.m_NowDouble)
			{
				EventHub.BeatJudge(this.m_NowSlot, SPACE_JUDGE.BEAT_100, false);
				return;
			}
			EventHub.BeatJudge(this.m_NowSlot, SPACE_JUDGE.BEAT_100, true);
		}
		return;
	}
	this.m_isInputEnd = true;
	this.m_isJudgeComplete = true;
	if (this.m_NowSlot < 4 && this.m_NowDouble)
	{
		EventHub.BeatJudge(this.m_NowSlot, SPACE_JUDGE.BEAT_100, true);
		return;
	}
	EventHub.BeatJudge(this.m_NowSlot, SPACE_JUDGE.BEAT_100, false);
}

protected virtual void MissionJudge(bool _isDouble)
{
	if (this.m_EndGame)
	{
		return;
	}
	if (this.m_FeverTime != 0)
	{
		this.m_FeverTime--;
		if (this.m_FeverTime == 0)
		{
			this.FeverMode(false);
		}
	}
	else if (this.m_FeverTime == 0 && this.m_FeverCount >= 50)
	{
		this.FeverMode(true);
	}
	float num;
	if (_isDouble)
	{
		num = (float)this.m_Beat_Total_Value / (8f * (float)ClassicDefine.KeySuccessValue) * 100f;
	}
	else
	{
		num = (float)this.m_Beat_Total_Value / (4f * (float)ClassicDefine.KeySuccessValue) * 100f;
	}
	if (ModMenu.dmgMulti > 0)
	{
		if (ModMenu.dmgMulti == 1)
		{
			if (!this.m_isActiveDanceTime && !this.m_isSendMissionOn)
			{
				if (!this.m_isNoneNetwork)
				{
					this.m_Net.SendScore(this.m_NowMission, this.PlayerScore, MISSION_JUDGE.WOW, this.m_FeverCount, this.m_Combo);
				}
				else
				{
					EventHub.RecvScore(this.m_NowMission, this.PlayerScore, 0, MISSION_JUDGE.WOW, this.m_FeverCount, this.m_Combo);
				}
			}
			else
			{
				if (!this.m_isNoneNetwork)
				{
					this.m_Net.SendScore(this.m_SendMission, this.PlayerScore, MISSION_JUDGE.WOW, this.m_FeverCount, this.m_Combo);
				}
				else
				{
					EventHub.RecvScore(this.m_SendMission, this.PlayerScore, 0, MISSION_JUDGE.WOW, this.m_FeverCount, this.m_Combo);
				}
				this.m_SendMission += 1U;
			}
			EventHub.MissionJudge(MISSION_JUDGE.WOW);
			this.LuckyCoin();
			this.m_Wow += 1U;
			EventHub.Judge_Wow();
		}
		if (ModMenu.dmgMulti == 2)
		{
			if (!this.m_isActiveDanceTime && !this.m_isSendMissionOn)
			{
				if (!this.m_isNoneNetwork)
				{
					this.m_Net.SendScore(this.m_NowMission, this.PlayerScore, MISSION_JUDGE.COOL, this.m_FeverCount, this.m_Combo);
				}
				else
				{
					EventHub.RecvScore(this.m_NowMission, this.PlayerScore, 0, MISSION_JUDGE.COOL, this.m_FeverCount, this.m_Combo);
				}
			}
			else
			{
				if (!this.m_isNoneNetwork)
				{
					this.m_Net.SendScore(this.m_SendMission, this.PlayerScore, MISSION_JUDGE.COOL, this.m_FeverCount, this.m_Combo);
				}
				else
				{
					EventHub.RecvScore(this.m_SendMission, this.PlayerScore, 0, MISSION_JUDGE.COOL, this.m_FeverCount, this.m_Combo);
				}
				this.m_SendMission += 1U;
			}
			EventHub.MissionJudge(MISSION_JUDGE.COOL);
			this.m_Cool += 1U;
		}
		if (ModMenu.dmgMulti == 3)
		{
			if (!this.m_isActiveDanceTime && !this.m_isSendMissionOn)
			{
				if (!this.m_isNoneNetwork)
				{
					this.m_Net.SendScore(this.m_NowMission, this.PlayerScore, MISSION_JUDGE.NORMAL, this.m_FeverCount, this.m_Combo);
				}
				else
				{
					EventHub.RecvScore(this.m_NowMission, this.PlayerScore, 0, MISSION_JUDGE.NORMAL, this.m_FeverCount, this.m_Combo);
				}
			}
			else
			{
				if (!this.m_isNoneNetwork)
				{
					this.m_Net.SendScore(this.m_SendMission, this.PlayerScore, MISSION_JUDGE.NORMAL, this.m_FeverCount, this.m_Combo);
				}
				else
				{
					EventHub.RecvScore(this.m_SendMission, this.PlayerScore, 0, MISSION_JUDGE.NORMAL, this.m_FeverCount, this.m_Combo);
				}
				this.m_SendMission += 1U;
			}
			EventHub.MissionJudge(MISSION_JUDGE.NORMAL);
			this.m_Normal += 1U;
		}
		if (ModMenu.dmgMulti == 4)
		{
			if (!this.m_isActiveDanceTime && !this.m_isSendMissionOn)
			{
				if (!this.m_isNoneNetwork)
				{
					this.m_Net.SendScore(this.m_NowMission, this.PlayerScore, MISSION_JUDGE.BAD, this.m_FeverCount, this.m_Combo);
				}
				else
				{
					EventHub.RecvScore(this.m_NowMission, this.PlayerScore, 0, MISSION_JUDGE.BAD, this.m_FeverCount, this.m_Combo);
				}
			}
			else
			{
				if (!this.m_isNoneNetwork)
				{
					this.m_Net.SendScore(this.m_SendMission, this.PlayerScore, MISSION_JUDGE.BAD, this.m_FeverCount, this.m_Combo);
				}
				else
				{
					EventHub.RecvScore(this.m_SendMission, this.PlayerScore, 0, MISSION_JUDGE.BAD, this.m_FeverCount, this.m_Combo);
				}
				this.m_SendMission += 1U;
			}
			EventHub.MissionJudge(MISSION_JUDGE.BAD);
			this.m_Bad += 1U;
		}
	}

	...
}
	
//Class: InGame_KeyNoteHead
private void DetermineMiss()
{
	if (ModMenu.dmgMulti > 0)
	{
		this.OnPress(true);
		return;
	}
	...
}

private void DetermineMiss(int takeBeat)
{
	if (ModMenu.dmgMulti > 0)
	{
		this.OnPress(true);
		return;
	}
	...
}

private void JudgeTouchTime()
{
	float num = this.KeyNote.CurrentBaseInfo.GetTime() - BubbleManager.Inst.CurrentTime;
	if (num < 0f)
	{
		num *= -1f;
	}
	float num2 = Time.deltaTime - 0.02f;
	if (num2 > 0f)
	{
		if (num <= 0.02f + num2)
		{
			this.mJudgeType = eInGameJudgeType.Crazy;
		}
		else if (num <= 0.1f + num2)
		{
			this.mJudgeType = eInGameJudgeType.Wow;
		}
		else if (num <= 0.2f + num2)
		{
			this.mJudgeType = eInGameJudgeType.Cool;
		}
		else if (num <= 0.3f + num2)
		{
			this.mJudgeType = eInGameJudgeType.Bad;
		}
	}
	else if (num <= 0.02f)
	{
		this.mJudgeType = eInGameJudgeType.Crazy;
	}
	else if (num <= 0.1f)
	{
		this.mJudgeType = eInGameJudgeType.Wow;
	}
	else if (num <= 0.2f)
	{
		this.mJudgeType = eInGameJudgeType.Cool;
	}
	else if (num <= 0.3f)
	{
		this.mJudgeType = eInGameJudgeType.Bad;
	}
	switch (ModMenu.dmgMulti)
	{
	case 1:
		this.mJudgeType = eInGameJudgeType.Crazy;
		break;
	case 2:
		this.mJudgeType = eInGameJudgeType.Wow;
		break;
	case 3:
		this.mJudgeType = eInGameJudgeType.Cool;
		break;
	case 4:
		this.mJudgeType = eInGameJudgeType.Bad;
		break;
	}
	if (this.mJudgeType == eInGameJudgeType.Crazy && this.KeyNote.CurrentBaseInfo.isLucky)
	{
		EventHub.LuckyCoin(PlayerInfo.Inst.m_UID);
		PlayerInfo.Inst.SendGetLuckyCoin();
	}
}

private void ShowJudgeEffects(bool isDrag)
{
	int beat = this.KeyNote.CurrentBaseInfo.GetBeat();
	int nextBeat = beat;
	switch (this.KeyNote.KeyNoteKind)
	{
	case eKeyNoteKind.Single:
		nextBeat = ((this.KeyNote.NextBaseInfo == null) ? 0 : this.KeyNote.NextBaseInfo.GetBeat());
		break;
	case eKeyNoteKind.Long:
		if (this.mTakeBeat - this.mJudgeCount == 1)
		{
			nextBeat = ((this.KeyNote.NextBaseInfo == null) ? 0 : this.KeyNote.NextBaseInfo.GetBeat());
		}
		break;
	case eKeyNoteKind.Chain:
		if (this.mHitBeat - this.mJudgeCount == 1)
		{
			nextBeat = ((this.KeyNote.NextBaseInfo == null) ? 0 : this.KeyNote.NextBaseInfo.GetBeat());
		}
		else
		{
			this.mJudgeCount++;
		}
		break;
	}
	switch (ModMenu.dmgMulti)
	{
	case 1:
		this.mJudgeType = eInGameJudgeType.Crazy;
		break;
	case 2:
		this.mJudgeType = eInGameJudgeType.Wow;
		break;
	case 3:
		this.mJudgeType = eInGameJudgeType.Cool;
		break;
	case 4:
		this.mJudgeType = eInGameJudgeType.Bad;
		break;
	}
	this.KeyNote.Judge.ShowJudge(this.mJudgeType);
	switch (this.mJudgeType)
	{
	case eInGameJudgeType.Bad:
		ComboManager.Inst.InitCombo(this.mJudgeType, beat, nextBeat, isDrag);
		if (this.KeyNote.KeyNoteKind != eKeyNoteKind.Long)
		{
			SoundManager.Inst.PlaySE(eSoundEffect.SE_Touch);
			return;
		}
		break;
	case eInGameJudgeType.Cool:
		ComboManager.Inst.ShowCombo(this.mJudgeType, beat, nextBeat, this.mTrans, isDrag);
		if (this.KeyNote.KeyNoteKind != eKeyNoteKind.Long)
		{
			SoundManager.Inst.PlaySE(eSoundEffect.SE_Touch);
			return;
		}
		break;
	case eInGameJudgeType.Wow:
		ComboManager.Inst.ShowCombo(this.mJudgeType, beat, nextBeat, this.mTrans, isDrag);
		if (this.KeyNote.KeyNoteKind != eKeyNoteKind.Long)
		{
			SoundManager.Inst.PlaySE(eSoundEffect.SE_Touch);
			return;
		}
		break;
	case eInGameJudgeType.Crazy:
		ComboManager.Inst.ShowCombo(this.mJudgeType, beat, nextBeat, this.mTrans, isDrag);
		if (this.KeyNote.KeyNoteKind != eKeyNoteKind.Long)
		{
			SoundManager.Inst.PlaySE(eSoundEffect.SE_Crazy);
		}
		break;
	default:
		return;
	}
}