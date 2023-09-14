//StartPopup
private void ClickStart()
{
	if (Team.Hack1)
	{
		this.SetUseItemIDs();
		this.SendStartPacket();
		Sound.Play(SND.SELECT_BT_SND, false, false);
	}
	...
	}

//UserMoneyUI
public void SetEnergyRefreshTime()
{
	if (!ModelManager.Instance.GetUserData().IsFreeTime && !Team.Hack1)
	{
		this.sprFree.gameObject.SetActive(false);
		this.labelEnergyCount.gameObject.SetActive(true);
		if (Extern.GetRemainderTimeFromSecond(ModelManager.Instance.GetUserData().EnergyNextChargeTime) <= 0 && ModelManager.Instance.GetUserData().Energy < JsonParse.Instance.GetSettingValue(SettingType.MaxEnergy))
		{
			ModelManager.Instance.GetUserData().AddEnergy();
			this.UpdateUserMoney(true);
		}
		this.labelRefreshTime.text = this.MakeTime(ModelManager.Instance.GetUserData().EnergyNextChargeTime);
		int settingValue = JsonParse.Instance.GetSettingValue(SettingType.MaxEnergy);
		if (ModelManager.Instance.GetUserData().Energy >= settingValue)
		{
			this.sprEnergyTime.gameObject.SetActive(false);
		}
		this.skaniEnergy.skeleton.SetSkin("normal");
		return;
	}
	this.sprFree.gameObject.SetActive(true);
	this.labelEnergyCount.gameObject.SetActive(false);
	this.sprEnergyTime.gameObject.SetActive(true);
	this.labelRefreshTime.text = this.MakeTime(ModelManager.Instance.GetUserData().FreeEnergyTime);
	Vector3 localPosition = this.sprEnergyTime.transform.localPosition;
	if (this.labelRefreshTime.text.Length > 5)
	{
		localPosition.x = -70f;
	}
	else
	{
		localPosition.x = 0f;
	}
	this.sprEnergyTime.transform.localPosition = localPosition;
	this.skaniEnergy.skeleton.SetSkin("free");
}

//Customer
private void Update()
{
	if (GameManager.Instance.m_bPause)
	{
		return;
	}
	if (this.m_State == CUSTOMER_STATE.WAIT && !Team.Hack2)
	{
		this.UpdateWaitBar();
	}
	this.CheckSleepTime();
	if (Input.GetMouseButtonDown(0))
	{
		RaycastHit2D raycastHit2D = Physics2D.Raycast(Camera.main.ScreenToWorldPoint(Input.mousePosition), Vector2.zero);
		if (raycastHit2D.collider != null && raycastHit2D.collider.gameObject == base.gameObject)
		{
			this.ClickCustomer();
		}
	}
}

//GameInterface
protected void CheckPlayTime()
{
	if (Team.Hack3)
	{
		return;
	}
	if (TutorialManager.Instance.m_IsTutorial)
	{
		return;
	}
	this.m_PlayTime += Time.deltaTime;
	this.UpdatePlayTimeUI();
	if (this.m_PlayTime >= this.m_MaxPlayTime)
	{
		this.m_PlayTime = this.m_MaxPlayTime;
		GameManager.Instance.TimeOver();
	}
	if (!GameManager.Instance.m_bPause)
	{
		this.m_RealPlayTime += Time.deltaTime;
	}
}
