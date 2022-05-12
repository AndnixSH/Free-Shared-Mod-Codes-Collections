public void OnGUI()
{
	FF.OnGUI();
}

* FF.dmgMulti
//FF_InGame_FishingResult.cs
	public void SetResult(bool _isSuccess)
		{//Error code 1006
			
			
//FF_Fish
public void AddFishHp(float _addHp)
		{
			
			this.SetFishDie();
			this.inGame.fishInfo.SetHp();
		}
		
		// FirstFishing.FF_Fish
public void AddFishDamage(float _damage)
{
	float num = this.maxHp * BF_Singleton_MonoBehaviour<BF_App>.Instance.GetGlobal(BF_Enum.eGlobal.LIMIT_MAX_FISH_DAMAGE);
	if (num < _damage)
	{
		_damage = num;
	}
	this.AddFishHp(-_damage * 3f);
}

//BF_Localization
public string GetText(string _key, eTextCategory _eCategory)
		{
			return _key;
		}

		public string GetTextCommon(string _key)
		{
			return _key;
		}
		
		//TitleViewController
		private void CheckClientInitService()
		{
			ClientInitService clientInitService = ClientInitService.Spawn();
			clientInitService.Context.device = "a";
			clientInitService.Context.ver_name = this.projectInformation.GetBundleVersion();
			clientInitService.Context.ver_code = this.projectInformation.GetVersionCode();
			byte[] bytes = Encoding.UTF8.GetBytes("E1:0E:6D:E5:0C:83:E5:C3:AA:2B:3C:AC:F7:02:1B:A3");
		}
		
		private string GetSignatureMD5Hash()
		{
			byte[] bytes = Convert.FromBase64String("RTE6MEU6NkQ6RTU6MEM6ODM6RTU6QzM6QUE6MkI6M0M6QUM6Rjc6MDI6MUI6QTM=");
			return Encoding.ASCII.GetString(bytes);
		}
//FF_InGame_Ui
public void OnReelRelease()
		{
			if (BF_Singleton<BF_DataManager>.Instance.CheckAutoPlay())
			{
				return;
			}
			if (!this.isReelPress)
			{
				return;
			}
			this.SetReelPress(false);
			this.shakePlusDistance = 1f;
			this.shakePlusDistanceTime = 0f;
			this.fishInfo.SetNowDistanceFontSize(34);
			BF_Singleton<BF_Sound>.Instance.StopEffect(BF_Enum.eSound.FX_Rod_Spool);
			if (!BF_Singleton_MonoBehaviour<TutorialManager>.Instance.isTutorialChapter)
			{
				BF_Singleton<BF_Sound>.Instance.PlayEffect(BF_Enum.eSound.FX_Rod_Unwind);
			}
			this.tensionBar.SetTensionBarMoveType(eTensionBarMoveType.Down);
			BF_Camera.Instance.SetIsUpFightingFov(false);
			this.tensionBar.CheckFinalPin();
		}
		
		//FF_InGameTension
		
		ObscuredFloat rememberDmg;
		public void CheckFinalPin()
		{
			if (0f < this.finalPinCoolTime)
			{
				return;
			}
			float tensionRate = this.nowTensionValue / this.G_MAX_TENSION;
			this.tbFinalPinInfo = TableData.Instance.GetTbFinalPinInfo(this.inGame.tbStage.FinalFinGroupMatch, tensionRate);
			bool flag = this.tbFinalPinInfo.Result != 0;
			this.tbFinalPinInfo.Result = 3; //
			if (flag)
			{
				this.nowTensionValue -= this.nowTensionValue * this.tbFinalPinInfo.TensionDecRate;
				this.finalPinCoolTime = this.tbFinalPinInfo.CoolTime;
				this.SetActiveFinalPinMoveEffect(true);
				this.SetFinalPinColor(150f, 100f, 100f);
				ObscuredFloat obscuredFloat = this.inGame.fish.GetNormalDamage() * this.tbFinalPinInfo.PinDamageMultiple;
				if (this.tbFinalPinInfo.Result == 1)
				{
					this.SetComboCount(0);
					BF_Singleton<BF_Sound>.Instance.PlayEffect(BF_Enum.eSound.FX_UI_Pin_Miss);
				}
				else if (this.tbFinalPinInfo.Result == 3)
				{
					BF_Singleton<BF_Sound>.Instance.PlayEffect(BF_Enum.eSound.FX_UI_Pin_Perfect);
					BF_Camera.Instance.SetImpactShake(0.3f);
					this.AddComboCount();
					tb_FinalPinCombo tbFinalPinCombo = TableData.Instance.GetTbFinalPinCombo(this.comboCount);
					float tbStackBoostInfoDamageIncRate = TableData.Instance.GetTbStackBoostInfoDamageIncRate(this.damageLineStackCount);
					obscuredFloat *= 1f + tbFinalPinCombo.FinalPinDamageInc + tbStackBoostInfoDamageIncRate;
					this.finalPinResetTime = (float)tbFinalPinCombo.FinalPinResetTime;
					this.maxFinalPinResetTime = this.finalPinResetTime;
					this.SetDamageLineStackCount(0);
					this.SetFinalPinResetTimeBar(0f, true);
					this.finalPinEffect.PlayTouchEffect();
				}
				else
				{
					BF_Singleton<BF_Sound>.Instance.PlayEffect(BF_Enum.eSound.FX_UI_Pin_Cool);
				}
				if (obscuredFloat != 0f)
				{
					this.rememberDmg = obscuredFloat * obscuredFloat;
				}
				else
				{
					obscuredFloat = this.rememberDmg;
				}
				ObscuredFloat value = this.inGame.GetTotalPlayerAbility(BF_Enum.eAbilityType.FinalPinDamageInc);
				ObscuredFloat value2 = BF_Singleton<BF_DataManager>.Instance.fishData.GetTotalFishAbility(BF_Enum.eFishAbilityType.FinalPinDamageDec);
				ObscuredFloat value3 = BF_Singleton<BF_DataManager>.Instance.fishEventData.GetFishEventAbility(BF_Enum.eFishAbilityType.FinalPinDamageDec);
				obscuredFloat = obscuredFloat * (1f + value) * (1f - value2 * (1f + value3));
				this.inGame.fishInfo.SetDamageEffect(this.inGame.fish.maxHp, (int)obscuredFloat, 0, true);
				this.inGame.fish.addHp = obscuredFloat;
				ObscuredFloat obscuredFloat2 = this.inGame.fish.maxHp * BF_Singleton_MonoBehaviour<BF_App>.Instance.GetGlobal(BF_Enum.eGlobal.LIMIT_MAX_FISH_DAMAGE);
				if (obscuredFloat2 < this.inGame.fish.addHp)
				{
					this.inGame.fish.addHp = obscuredFloat2;
				}
				FF_Fish fish = this.inGame.fish;
				fish.addHp *= -1f;
				this.inGame.fish.tempAddHp = this.inGame.fish.addHp;
				this.inGame.fish.AddFishHpNew();
				FF_InGame_Ui ff_InGame_Ui = this.inGame;
				ff_InGame_Ui.tempTotalFishDamage -= this.inGame.fish.tempAddHp;
				this.SetFinalPinResult((BF_Enum.eFinalPinResult)this.tbFinalPinInfo.Result);
			}
		}
		
		
	
private void Update()
{
	if (this.isActive)
	{
		if (this.barMoveDirect == 1)
		{
			float global4 = BF_Singleton_MonoBehaviour<BF_App>.Instance.GetGlobal(BF_Enum.eGlobal.DEFAULT_TENSION_UP_SPEED);
			float totalFishAbility = BF_Singleton<BF_DataManager>.Instance.fishData.GetTotalFishAbility(BF_Enum.eFishAbilityType.Str);
			float totalPlayerAbility = this.inGame.GetTotalPlayerAbility(BF_Enum.eAbilityType.Str);
			float num = global4 * (1f + (totalFishAbility - totalPlayerAbility) / 100f);
			float global2 = BF_Singleton_MonoBehaviour<BF_App>.Instance.GetGlobal(BF_Enum.eGlobal.MIN_TENSION_UP_SPEED);
			float global3 = BF_Singleton_MonoBehaviour<BF_App>.Instance.GetGlobal(BF_Enum.eGlobal.MAX_TENSION_UP_SPEED);
			if (num < global2)
			{
				num = global2;
			}
			else if (global3 < num)
			{
				num = global3;
			}
			if (BF_Singleton<BF_DataManager>.Instance.inGameType != BF_Enum.eInGameType.Tutorial || BF_Singleton_MonoBehaviour<TutorialManager>.Instance.nextTbTutorialChapter == null || BF_Singleton_MonoBehaviour<TutorialManager>.Instance.nextTbTutorialChapter.NextStepConditionType != 8)
			{
				if (BF_Singleton<BF_DataManager>.Instance.fishEventData.IsFishEventType(eFishEventType.Jumping))
				{
					num *= 1f + BF_Singleton_MonoBehaviour<BF_App>.Instance.GetGlobal(BF_Enum.eGlobal.TENSION_UP_FOR_FISH_EVENT_JUMPING);
				}
				else if (BF_Singleton<BF_DataManager>.Instance.fishEventData.IsFishEventType(eFishEventType.Reverse))
				{
					num *= -1f;
					this.inGame.nextTensionDamageArr = this.inGame.GetNextTensionDamageArr(this.nowTensionValue);
				}
				else if (BF_Singleton<BF_DataManager>.Instance.fishEventData.IsFishEventType(eFishEventType.Runaway))
				{
					num -= num * BF_Singleton_MonoBehaviour<BF_App>.Instance.GetGlobal(BF_Enum.eGlobal.TENSION_RATE_FOR_FISH_EVENT_RUNAWAY);
				}
				else if (BF_Singleton<BF_DataManager>.Instance.fishEventData.IsFishEventType(eFishEventType.Hold))
				{
					num = BF_Singleton_MonoBehaviour<BF_App>.Instance.GetGlobal(BF_Enum.eGlobal.HOLD_EVENT_TENSION_UP_SPEED);
				}
			}
			if (this.inGame.fish.IsDie())
			{
				this.SetTensionBarShake(FF_InGameTension.eTensionBarShakeType.Die);
			}
			else
			{
				if (BF_Singleton<BF_DataManager>.Instance.fishEventData.IsFishEventType(eFishEventType.Hold))
				{
					this.SetTensionBarShake(FF_InGameTension.eTensionBarShakeType.Hold);
				}
				else
				{
					this.SetTensionBarShake(FF_InGameTension.eTensionBarShakeType.Normal);
				}
				float num2 = num * Time.deltaTime;
				this.addTensionUpValue = num2;
				this.nowTensionValue += num2 * (float)this.barMoveDirect;
				this.CheckTotalTensionValueForFever(true, num2);
			}
			float num3 = this.G_MAX_TENSION + this.G_MAX_TENSION * BF_Singleton_MonoBehaviour<BF_App>.Instance.GetGlobal(BF_Enum.eGlobal.FAIL_MAX_TENSION_RATE);
			if (num3 <= this.nowTensionValue)
			{
				this.nowTensionValue = num3;
				this.tensionHighFlowTime += Time.deltaTime;
			}
			else
			{
				this.tensionHighFlowTime = 0f;
			}
		}
		else
		{
			float num4 = BF_Singleton_MonoBehaviour<BF_App>.Instance.GetGlobal(BF_Enum.eGlobal.DEFAULT_TENSION_DOWN_SPEED);
			if (this.inGame.fish.IsDie())
			{
				num4 -= num4 * 0.3f;
			}
			else if (BF_Singleton<BF_DataManager>.Instance.fishEventData.IsFishEventType(eFishEventType.Reverse))
			{
				num4 *= -1f;
				this.inGame.nextTensionDamageArr = this.inGame.GetNextTensionDamageArr(this.nowTensionValue);
			}
			else if (BF_Singleton<BF_DataManager>.Instance.fishEventData.IsFishEventType(eFishEventType.Hold))
			{
				num4 *= 1f + BF_Singleton_MonoBehaviour<BF_App>.Instance.GetGlobal(BF_Enum.eGlobal.HOLD_EVENT_TENSION_DOWN_SPEED);
			}
			if (BF_Singleton<BF_DataManager>.Instance.inGameType != BF_Enum.eInGameType.Tutorial || BF_Singleton_MonoBehaviour<TutorialManager>.Instance.nextTbTutorialChapter == null || BF_Singleton_MonoBehaviour<TutorialManager>.Instance.nextTbTutorialChapter.NextStepConditionType != 7)
			{
				if (BF_Singleton<BF_DataManager>.Instance.fishEventData.IsFishEventType(eFishEventType.Jumping) || BF_Singleton<BF_DataManager>.Instance.fishEventData.IsFishEventType(eFishEventType.Runaway))
				{
					this.SetTensionBarShake(FF_InGameTension.eTensionBarShakeType.Hold);
				}
				else
				{
					float num5 = num4 * Time.deltaTime;
					this.nowTensionValue += num5 * (float)this.barMoveDirect;
					this.CheckTotalTensionValueForFever(false, num5);
				}
			}
		}
		if (0f < this.finalPinCoolTime)
		{
			this.finalPinCoolTime -= Time.deltaTime;
			if (this.finalPinCoolTime <= 0f)
			{
				this.SetFinalPinColor(255f, 0f, 0f);
				this.finalPinCoolTime = 0f;
				this.SetActiveFinalPinMoveEffect(false);
			}
			this.SetFinalPinBar(false);
		}
		if (this.nowTensionValue <= 0f)
		{
			if (this.nowTensionValue < 0f)
			{
				this.nowTensionValue = 0f;
			}
			this.tensionLowFlowTime += Time.deltaTime;
		}
		else
		{
			this.tensionLowFlowTime = 0f;
		}
		this.SetTensionBar();
		if (base.gameObject.activeSelf)
		{
			for (int i = 0; i < this.pinAni.Length; i++)
			{
				this.pinAni[i].SetInteger(BF_Define.PIN_ACTION, -1);
			}
		}
	}
}

