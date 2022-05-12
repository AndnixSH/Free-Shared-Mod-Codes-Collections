using UnityEngine;
using UnityEngine.UI;
using System.Collections;
using System.Text;

public class ShowToast : MonoBehaviour {

	string toastString;
	string input;
	AndroidJavaObject currentActivity;
	AndroidJavaClass UnityPlayer;
	AndroidJavaObject context;
	
	void Start(){
		if(Application.platform == RuntimePlatform.Android){
			UnityPlayer = new AndroidJavaClass("com.unity3d.player.UnityPlayer");
			currentActivity = UnityPlayer.GetStatic<AndroidJavaObject>("currentActivity"); 
			context = currentActivity.Call<AndroidJavaObject>("getApplicationContext");
		}
		//showToastOnUiThread("Modded by AndnixSH# - Platinmods.com\nYou might get virus + adwares if you downloaded this mod from unknown source. If so, uninstall it immediately and download mod from platinmods.com instead");
		//TW9kZGVkIGJ5IEFuZG5peFNIIyAtIFBsYXRpbm1vZHMuY29tXG5Zb3UgbWlnaHQgZ2V0IHZpcnVzICsgYWR3YXJlcyBpZiB5b3UgZG93bmxvYWRlZCB0aGlzIG1vZCBmcm9tIHVua25vd24gc291cmNlLiBJZiBzbywgdW5pbnN0YWxsIGl0IGltbWVkaWF0ZWx5IGFuZCBkb3dubG9hZCBtb2QgZnJvbSBwbGF0aW5tb2RzLmNvbSBpbnN0ZWFk
		byte[] bytes = Convert.FromBase64String("TW9kZGVkIGJ5IEFuZGl4U0gjIC0gUGxhdGlubW9kcy5jb20=");
		showToastOnUiThread(Encoding.ASCII.GetString(bytes));
		showToastOnUiThread(Encoding.ASCII.GetString(bytes));
	}


	void showToastOnUiThread(string toastString){		
		this.toastString = toastString;
		currentActivity.Call ("runOnUiThread", new AndroidJavaRunnable (showToast));
	}

	void showToast(){		
		AndroidJavaClass Toast = new AndroidJavaClass("android.widget.Toast");
		AndroidJavaObject javaString=new AndroidJavaObject("java.lang.String",toastString);
		AndroidJavaObject toast = Toast.CallStatic<AndroidJavaObject> ("makeText", context, javaString, Toast.GetStatic<int>("LENGTH_LONG"));
		toast.Call ("show");
	}
}