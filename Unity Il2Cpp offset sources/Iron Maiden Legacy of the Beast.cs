// Namespace: Blackcomb
[Serializable]
public class SimPlayerAgent : BlackSimObject // TypeDefIndex: 6728
{
	// RVA: 0xC615B4 Offset: 0xC615B4 VA: 0xC615B4
	public SimAgentTypes get_agentType() { }
	
	// RVA: 0xC61F44 Offset: 0xC61F44 VA: 0xC61F44
	public void AdjustHealthPoint(BlackSimManager simManager, SimEffectBehaviour seb, SimPlayerAgent sourceAgent, string dmgType, int rawDmgValue, string triggerType, bool isCrit = False) { }
}

// Namespace: Blackcomb
public enum SimAgentTypes // TypeDefIndex: 6751
{
	// Fields
	public int value__; // 0x0
	public const SimAgentTypes Eddie = 0; // 0x0
	public const SimAgentTypes Ally = 1; // 0x0
	public const SimAgentTypes Creature = 2; // 0x0
	public const SimAgentTypes Boss = 3; // 0x0
}