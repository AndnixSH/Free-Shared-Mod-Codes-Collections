FantaziumGo.Controller

key.error.buildingtoofar
key.error.portaltoofaraway
key.error.needhigherlevelforarena
key.serviceexception.cause.too_far


Stop AndroidFIneLocationService

///FantaziumGo.Gotcha.Logic

//CatchBall
//ARMv7: 232B04 - 1e ff 2f e1
//x86: 1FDD8E - c3
private void CalculateSpin()
		{
		}

//CreatureBehavior
//ARMv7: 233D24 - 01 00 a0 e3 1e ff 2f e1
//x86: 1FF10C - b8 01 00 00 00 c3
public bool CanCatch()
		{
			return true;
		}
//ARMv7: 233D24 - 00 00 a0 e3 1e ff 2f e1
//x86: 2098D6 - b8 00 00 00 00 c3
	private float GetChanceToAttack()
		{
			return 0f;
		}

		private float GetChanceToJump()
		{
			return 0f;
		}

		private float GetMoveCheckCooldownSeconds()
		{
			return 0f;
		}
		
///GoShared
//LocationManager
updateUi()

else if (this._gpsState == LocationManager.GpsState.GPS_FAKE_POSITION)
			{
				this.ShowBannerWithText(true, LocalizationManager.GetLocalizedValue("key.error.gps.fakePosition", new object[0]));
			}
			
			
public static bool isPlayableGpsState(LocationManager.GpsState state)
		{
			return state == LocationManager.GpsState.OK || state == LocationManager.GpsState.GPS_LOW_ACCURACY_SILENT || state == LocationManager.GpsState.GPS_NO_SIGNAL_SILENT || state == LocationManager.GpsState.GPS_FAKE_POSITION;
		}
		
private bool isEmulatorCheckEnabledOnDevice()
{
	return false;
}

//GameContext
public void DestroyLoadingScreen()
ToastDialog.Show("Modded by AndnixSH# - Platinmods.com\nAlways download this mod from platinmods.com,\nnot from unofficial sources.\n\n" + LocalizationManager.GetLocalizedValue("startup.warning", new object[0]),

//SoundManager
private void Start() 