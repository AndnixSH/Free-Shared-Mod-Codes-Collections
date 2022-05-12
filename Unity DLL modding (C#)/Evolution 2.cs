//BaseScene
//SoundManager
		public void OnGUI()
		{
			MenuInstance.OnGUI();
		}

//Player
private bool HitImplWrapped(HpData data)
		{
			//god mode
			if (MenuInstance.toggle2 && this.Group == Groups.Blue)
			{
				return false;
			}
			if (!this._hitImplEnabled)
			{
				return false;
			}
			if (!this.Alive)
			{
				return false;
			}
			float num = 1f;
			if (!data.WillResurrectAfterDeath)
			{
				num = ((data.DamageInfo.GrenadeType != GamePlay.Grenade.TypeE.None || data.IsMeleeAttack) ? this.CommonDamageModifier : this.BulletDamageModifier);
			}
			int num2 = Mathf.RoundToInt((float)data.Damage * num);
			int num3 = (!this.CheatsController.IsUndead) ? Mathf.Min(this.Health, num2) : num2;
			this.Health -= num3 * MenuInstance.dmgMulti; //damage mod
		}
		
//ConnectionScreensController
		public void OnBaseSceneLoaded()
		{
			int baseLoadingCount = this.BaseLoadingCount;
			this.BaseLoadingCount = baseLoadingCount + 1;
			Debug.Log("<color=yellow><b>OnBaseSceneLoaded, State = {0}, BaseLoadingCount = {1}</b></color>".F(new object[]
			{
				this._authServer.State.CurrentValue,
				this.BaseLoadingCount
			}));
			if (this._authServer.State.CurrentValue != AuthServer.StateE.ConnectedToEsrv)
			{
				this._authServer.Reconnect();
				this._shouldShowBase = true;
				return;
			}
			this.TryShowBaseFirstTime();
		}
		
		private void OnConnectionStateChanged(AuthServer.StateE connectionState)
		{
			
			if (connectionState != AuthServer.StateE.ConnectedToEsrv)
			{
				return;
			}
			this.IsTechWorksActive = false;
			if (Singleton<ProxySceneLoader>.Instance.IsAtBase())
			{
				this.OnEndReconnect();
				this.CloseTechScreens();
			}
			if (this._shouldShowBase && this.TryShowBaseFirstTime())
			{
				this._shouldShowBase = false;
			}
		}
		
//AuthServer
public void Reconnect()
		{
			UnityEngine.Debug.Log("AuthServer.Reconnect");
			
			if (this.State.CurrentValue.IsOneOf(new AuthServer.StateE[]
			{
				AuthServer.StateE.Disconnected,
				AuthServer.StateE.StartAuthorising
			}))
			{
				this.Connect();
			}
			else
			{
				this.ChangeState(AuthServer.StateE.ConnectingToEsrv);
				if (this._reconnect != null)
				{
					Singleton<DoOnMainThread>.Instance.Stop(this._reconnect);
				}
				this._esrvConnection.OnReconnect();
				this._reconnect = this.ShowLostConnectionScreen();
				Singleton<DoOnMainThread>.Instance.StartCoroutine(this._reconnect);
			}
			CommandsStreams.Main.OnNext("AuthServerBehaviour.reconnect");
		}
		
//EsrvConnection
private void ProcessListenData(Dictionary<string, object> json, object data = null)
		{
				//remove
				if (text3 == "ERROR_CHEATER_DETECTED")
				{
					this._authServer.MarkAsBanned();
					return;
				}
		}