//Game: Cowboy Hunting: Dead Shooter
//Version: 1.1.1
//APK: https://apkpure.com/cowboy-hunting-dead-shooter/com.cowboyhuntingdeadshootinggame

//Class: BillingManager
public void callBilling(int id)
{
	for (int i = 0; i < BillingManager.GOODS_ID.Length; i++)
	{
		this._doAddCoins(i);
		if (i < 6)
		{
			AudioController.GetInstance().PlaySound(AudioName.get_golds, 1f);
		}
		else
		{
			AudioController.GetInstance().PlaySound(AudioName.get_diamonds, 1f);
		}
	}
	for (int j = 0; j < 3; j++)
	{
		if (LimitedOfferLoader.BuyedItem(j))
		{
			UI_Manage.GetInstance().uiCommon.uiBackMoneyBlood.UpdateMoney();
			UI_Manage.GetInstance().uiCommon.uiWordHints.PlayDisappearAni(MyString.LTOtrade, 4f);
		}
		UI_Manage.GetInstance().uiSpecialOfferCreator.UpdateState();
	}
}

//Class: PlayerBase
public int GetAttackBlood()
{
	return 99999999;
}

public void BeHit(int loseBlood, ColliderBodyParts hurtPart)
{
	if (this.m_dPlayerBaseData.m_dProperty.m_dCurrentBlood > 0 && loseBlood > 0)
	{
		PlayerBaseProperty dProperty = this.m_dPlayerBaseData.m_dProperty;
		Mathf.Max(0, this.m_dPlayerBaseData.m_dProperty.m_dCurrentBlood - loseBlood);
		dProperty.m_dCurrentBlood = 0;
		if (this.m_dPlayerBaseData.m_dProperty.m_dCurrentBlood <= 0)
		{
			MessageDispatcher.Instance.DispatchMsg(base.ID(), base.ID(), FSMMessageType.Die);
			MessageDispatcher.Instance.DispatchMsg(-1, GameCtrl.GetInstance().m_MissionEntity.ID(), FSMMessageType.Mission_KilledOneEnemy, this);
		}
		else
		{
			MessageDispatcher.Instance.DispatchMsg(base.ID(), base.ID(), FSMMessageType.BeHit, hurtPart);
		}
		UI_Manage.GetInstance().uiPlayingUIBloods.SetCurrentBlood(this.m_dPlayer.Neck, this.m_dPlayerBaseData.m_dProperty.m_dCurrentBlood, this.m_dPlayerBaseData.m_dProperty.m_dMaxBlood);
		UI_Manage.GetInstance().uiPlayingUISubBloods.GenerateEnemySubBlood(-loseBlood, this.m_dPlayer.Neck);
	}
}