//Game: Lineage II: Dark Legacy
//Version: 0.12.1
//APK: https://apkpure.com/lineage-ii-dark-legacy/com.ncsoft.lineage.dark.legacy

//Need hooking

public class SimSystem : ISimEventListener, ISimHashStateProvider, ISimHashProvider
{
	public void TogglePause(bool pause) { }

	public void SetAutoControl(int autoMove, int autoAttack, int autoSkill) { }
}

//Hook TogglePause and to call SetAutoControl to kill all enemies