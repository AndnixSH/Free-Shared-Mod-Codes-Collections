	public static void ShowToastMessage(string message)
	{
		AndroidJavaObject @static = new AndroidJavaClass("com.unity3d.player.UnityPlayer").GetStatic<AndroidJavaObject>("currentActivity");
		AndroidJavaObject context = @static.Call<AndroidJavaObject>("getApplicationContext", new object[0]);
		AndroidJavaClass toastClass = new AndroidJavaClass("android.widget.Toast");
		@static.Call("runOnUiThread", new object[]
		{
			new AndroidJavaRunnable(delegate()
			{
				toastClass.CallStatic<AndroidJavaObject>("makeText", new object[]
				{
					context,
					message,
					toastClass.GetStatic<int>("LENGTH_LONG")
				}).Call("show", new object[0]);
			})
		});
	}
