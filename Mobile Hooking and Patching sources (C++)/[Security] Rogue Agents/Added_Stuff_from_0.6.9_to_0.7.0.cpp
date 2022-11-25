Alle Changes von 0.6.9 > 0.7.0

Added:

private void UnsubScribe() { }
// RVA: 0x0 Offset: 0x0 VA: 0x0
Class: KillFeedNotifier

Changed: 

private IEnumerator disconnected(DisconnectCause cause) { }
Namespace: MatchManager

Added: 

public DisconnectCause cause; // 0x0
class: MatchManager

Added:

private float _NextRefreshTime; // 0x0

public float REFRESH_TIME_INTERVAL; // 0x0

// RVA: 0x0 Offset: 0x0 VA: 0x0
private void RefreshToCheckForCheating() { }
class: PlayerValidatorManager

Added:

public float REFRESH_TIME_INTERVAL; // 0x0
class: GameSettings

Added:
public void Leave() { }
// RVA: 0x0 Offset: 0x0 VA: 0x0
	
class: MatchSetup_GamePage

Added:

private void SubScribeToLobby() { }
// RVA: 0x0 Offset: 0x0 VA: 0x0
	
class: Waiting_GamePage