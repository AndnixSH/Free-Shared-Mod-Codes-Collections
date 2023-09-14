// Namespace: CriticalOps.Gameplay
public class GameSystem // TypeDefIndex: 10064
{
	// RVA: 0x67FBC0 Offset: 0x67FBC0 VA: 0x67FBC0
	public void Update(float deltaTime) { }
}

// Namespace: CriticalOps.Gameplay
public class LocalCharacter : Character, IGameplayTickUpdate // TypeDefIndex: 9957
{
	// RVA: 0x8CA8DC Offset: 0x8CA8DC VA: 0x8CA8DC Slot: 20
	public void Gameplay_TickUpdate(float deltaTime) { }
	
	// RVA: 0x8D3318 Offset: 0x8D3318 VA: 0x8D3318 Slot: 15
	protected override void CharacterDestroy() { }
}

// Namespace: CriticalOps.Managers
public class TutorialManager : System<TutorialManager> // TypeDefIndex: 10255
{
	// RVA: 0x97B79C Offset: 0x97B79C VA: 0x97B79C
	public bool get_GameplayTutorialCompleted() { }
}