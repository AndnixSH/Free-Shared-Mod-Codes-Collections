206
207

//FullVerMgr
public void FullVerState(string _state)
		{
			this.closeConnectingVC();
			this.www_timeout = 5f;
			this.full_ver_random_id = this.GenerateRandomID(50);
			string body = string.Format("{0}` {1}` {2}", this.full_ver_random_id, this.device_id, this.mac_addr);
			this.request_idx = FullVerMgr.REQUEST.GENERATE_FULL_VER_CODE;
			this.RequestToServer("in_app/generate_full_ver_code.php", body);
		}
		
		


// InApp
	private void ResponseFromServer(string content)
	{
		this.closeLocalConnectingVC();
		this.enableBuyButton(false);
		this.gl.CompanyCash[0] += 1000000L;
		this.gl.CompanyValue[0] += 1000000L;
		base.UpdateMoneyView();
		TextFileMgr.SaveGameSlot(5);
	}

//MessageMgr
private void updateView()
	{
		this.textMessage.text = this.messageIdx.ToString();
	}
44