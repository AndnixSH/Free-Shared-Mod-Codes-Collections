//signature bypass

// Namespace: FFClient.UI
public class RemoveFortressButton : FluidButton
{
	public int get_RoomCost(); // Offset: 0x6961E0 // Patch: 00 00 a0 e3
	public int get_SpellCost(); // Offset: 0x6962D4 // Patch: 00 00 a0 e3
}

// Namespace: FFCore
public class AbilitySimDataFacade : Singleton`1<AbilitySimDataFacade>, IRulesData // TypeDefIndex: 8298
{
	public int GetAbilityActionPointCost(int index); // Offset: 0xA9DCB0 // Patch: 00 00 a0 e3 1e ff 2f e1
}

//ARM64: 00 00 80 D2 C0 03 5F D6

// Namespace: FFClient.UI
//public class DisplayCard : MonoBehaviour, ICardHolder, IPointerClickHandler, IEventSystemHandler
//{
//	public int get_ActionPointCost(); // Offset: 0xA9DCB0 // Patch: 00 00 a0 e3
//}
