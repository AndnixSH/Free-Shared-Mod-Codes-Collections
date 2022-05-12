using System;
using BaseFrame;
using CodeStage.AntiCheat.ObscuredTypes;
using FirstFishing.Data;
using UnityEngine;
using UnityEngine.UI;

namespace FirstFishing
{
	public partial class FF_InGameTension : MonoBehaviour
	{
		public void CheckFinalPin()
		{
			if (0f < this.finalPinCoolTime)
			{
				return;
			}
			float tensionRate = this.nowTensionValue / this.G_MAX_TENSION;
			this.tbFinalPinInfo = TableData.Instance.GetTbFinalPinInfo(this.inGame.tbStage.FinalFinGroupMatch, tensionRate);
			BF_Enum.eFinalPinResult result = (BF_Enum.eFinalPinResult)this.tbFinalPinInfo.Result;
			if (result != BF_Enum.eFinalPinResult.None)
			{
				this.nowTensionValue -= this.nowTensionValue * this.tbFinalPinInfo.TensionDecRate;
				this.finalPinCoolTime = this.tbFinalPinInfo.CoolTime;
				this.SetActiveFinalPinMoveEffect(true);
				this.SetFinalPinColor(150f, 100f, 100f);
				ObscuredFloat value = this.inGame.fish.GetNormalDamage();
				ObscuredFloat obscuredFloat = value * this.tbFinalPinInfo.PinDamageMultiple;
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
				if (0f < obscuredFloat)
				{
					ObscuredFloat value2 = this.inGame.GetTotalPlayerAbility(BF_Enum.eAbilityType.FinalPinDamageInc);
					ObscuredFloat value3 = BF_Singleton<BF_DataManager>.Instance.fishData.GetTotalFishAbility(BF_Enum.eFishAbilityType.FinalPinDamageDec);
					ObscuredFloat value4 = BF_Singleton<BF_DataManager>.Instance.fishEventData.GetFishEventAbility(BF_Enum.eFishAbilityType.FinalPinDamageDec);
					obscuredFloat = obscuredFloat * (1f + value2) * (1f - value3 * (1f + value4));
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
				}
				this.SetFinalPinResult((BF_Enum.eFinalPinResult)this.tbFinalPinInfo.Result);
			}
		}
	}
}
