	private string GetOpponentName()
	{
		return "";
	}
	
// UIDrawCall
public void OnGUI()
{
	RGR.MyGUI();
}

	
//TrafficPopulator
	public void StartTraffic()
	{
	}
	
//AIDriver

if (RGR.toggle3)
	{
		return;
	}
//DeviceSettings
	private void DefaultSettings(DeviceBase.eDevicePerformance perf)
	{
		QualitySettings.vSyncCount = ((Device.Instance().GetScreenRefreshRate() <= 45f) ? 1 : 2);
		QualitySettings.anisotropicFiltering = ((perf != DeviceBase.eDevicePerformance.BEST) ? AnisotropicFiltering.Disable : AnisotropicFiltering.Enable);
		QualitySettings.masterTextureLimit = ((perf <= DeviceBase.eDevicePerformance.LOW) ? 1 : 0);
		Application.targetFrameRate = 60;
	}
	
//RaceCar
public class HandlingState
	{
		public bool IsBoosting()
		{
			return RGR.toggle2 || this.m_boostTime > 0f;
		}
public bool CanStartBoost()
	{
if (RGR.toggle2)
			{
			return true;
			}
	}
	
public float GetRemainingBoostTime()
	{
		if (RGR.toggle2)
		{
			return 999f;
		}
		return this.m_handlingState.m_boostTime;
	}s
//UIDrawCall