using System;
using UnityEngine;

public class CubeSoftwareNative : MonoBehaviour
{
	public static CubeSoftwareNative Instance
	{
		get
		{
			if (CubeSoftwareNative.sInstance == null)
			{
				GameObject gameObject = new GameObject(typeof(CubeSoftwareNative).Name);
				CubeSoftwareNative.sInstance = gameObject.AddComponent<CubeSoftwareNative>();
				Object.DontDestroyOnLoad(gameObject);
			}
			return CubeSoftwareNative.sInstance;
		}
	}

	public bool ValidateSignature(string signature)
	{
		bool result;
		using (AndroidJavaClass androidJavaClass = new AndroidJavaClass("com.cubesoftware.cubesoftwarenative.CubeSoftwareNative"))
		{
			result = androidJavaClass.CallStatic<bool>("ValidateSignature", new object[]
			{
				signature
			});
		}
		return result;
	}

	public string GetInstallerID()
	{
		string result;
		using (AndroidJavaClass androidJavaClass = new AndroidJavaClass("com.cubesoftware.cubesoftwarenative.CubeSoftwareNative"))
		{
			result = androidJavaClass.CallStatic<string>("GetInstallerID", Array.Empty<object>());
		}
		return result;
	}

	public bool IsDebuggable()
	{
		bool result;
		using (AndroidJavaClass androidJavaClass = new AndroidJavaClass("com.cubesoftware.cubesoftwarenative.CubeSoftwareNative"))
		{
			result = androidJavaClass.CallStatic<bool>("IsDebuggable", Array.Empty<object>());
		}
		return result;
	}

	public string GetDirectory(string name)
	{
		string result;
		using (AndroidJavaClass androidJavaClass = new AndroidJavaClass("com.cubesoftware.cubesoftwarenative.CubeSoftwareNative"))
		{
			result = androidJavaClass.CallStatic<string>("GetDirectory", new object[]
			{
				name
			});
		}
		return result;
	}

	private static CubeSoftwareNative sInstance;
}
