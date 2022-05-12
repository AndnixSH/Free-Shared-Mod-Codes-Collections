//Use this code to call. Encode with Base64
//byte[] bytes = Convert.FromBase64String("TW9kZGVkIGJ5IEJNRDRFIHBsYXRpbm1vZHMuY29tIDopXG5UaGlzIGFwayBkb2VzIG5vdCBjb250YWluIGV4dHJhIGFkd2FyZXMgYW5kIG1hbHdhcmVz");
//Encoding.ASCII.GetString(bytes);
//Mensaje.call().Message(Encoding.ASCII.GetString(bytes));

using System;
using UnityEngine;

	public class Mensaje
	{
		public void Message(string message)
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

		public static Mensaje call()
		{
			if (Mensaje.bl == null)
			{
				return Mensaje.bl = new Mensaje();
			}
			return Mensaje.bl;
		}

		public static Mensaje bl;
	}
