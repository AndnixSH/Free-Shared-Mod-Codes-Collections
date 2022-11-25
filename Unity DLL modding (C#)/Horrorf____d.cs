//AudioManager.cs
		private void OnGUI()
		{
			Main.OnGUI();
		}
		

//CameraController
		private void Awake()
		{
			float num = (float)Screen.width / (float)Screen.height;
			//change the camera float number here example 100f to 35f to zoom out
			this.thirdPersonCamera.fieldOfView = 1920f / num / 100f;
			this.firstPersonCamera.fieldOfView = 1920f / num / 100f * 6f;
			this.oldCamera.fieldOfView = 1920f / num / 100f;
			//-----------------------------------------------------------
			this._followPlayer = LevelController.instance.levelData.FollowPlayer.GetComponent<FollowPlayerController>();
			this.cameraState.Bind(delegate(int val)
			{
				Camera camera = (val != 0) ? ((val != 1) ? this.firstPersonCamera : this.thirdPersonCamera) : this.oldCamera;
				this.dynamicCamera.transform.parent = camera.transform.parent;
				this.dynamicCamera.CopyFrom(camera);
			}, Priority.Normal);
		}

//StateMachine
		private void Auth()
		{
			//Remove this code to bypass fake update popup
			if (RestClient.Inst.Environment == GameCore.Net.Rest.Environment.Production && Application.installerName != "com.android.vending")
			{
				UnityEngine.Debug.LogError("Application was not installed from Google Play Market");
				PopupManager.Instance.InitializeSimpleDialog(PopupType.SimpleDialogOfNewVersion, null, null, null, PriorityOfPopupDialog.High, null);
				return;
			}
			//-----------------------------------------------------------
			Profile.Startup();
			if (!string.IsNullOrEmpty(RestClient.Inst.AuthToken))
			{
				UnityEngine.Debug.Log("Has Token");
				RestClient.Inst.CallMain(delegate(bool success)
				{
					if (success)
					{
						this.TryAuthGoogle(true, delegate
						{
							RestClient.Inst.CallAuthSave();
						}, null);
						return;
					}
					UnityEngine.Debug.Log("Broken Token");
					RestClient.Inst.DeleteAuthToken();
					this.Auth();
				});
				return;
			}
			this.TryAuthGoogle(true, new Action(this.TryLogin), delegate
			{
				this.TryAuthGoogle(false, new Action(this.TryLogin), delegate
				{
					RestClient.Inst.CallAuthCreate(null);
				});
			});
		}