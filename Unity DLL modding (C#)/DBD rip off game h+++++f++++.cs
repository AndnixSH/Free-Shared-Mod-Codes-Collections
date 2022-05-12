//Game name you know h+++++f++++
//Camera zoom out mod so you can easly see hunter

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
			//Remove this code to bypass fake update popup
		}