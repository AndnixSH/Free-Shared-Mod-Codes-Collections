//DebugUIToggle

public class DebugUIToggle : Amplitude.Unity.Framework.Behaviour
{
	private void Update()
	{
		if (!UnityEngine.Input.GetKeyDown(KeyCode.F1) || !global::Input.IsShiftKeyDown())
		{
			if (UnityEngine.Input.GetMouseButtonDown(1) && DebugUIController.IsVisible)
			{
				DebugUIController.RequestShow = false;
				DebugUIController.RequestHide = true;
			}
			return;
		}
		if (DebugUIController.IsVisible)
		{
			DebugUIController.RequestShow = false;
			DebugUIController.RequestHide = true;
			return;
		}
		if (this.Controller != null)
		{
			this.Controller.gameObject.SetActive(true);
		}
		DebugUIController.RequestShow = true;
		DebugUIController.RequestHide = false;
	}
}