// Namespace: Assets.Scripts.Unity.UI
public class PowersInGameScreen : SimplePopupDisplay, IHardwareBackSupport
{
	private int GetItemCost(EquipmentNode node); // Offset: 0x61C1BC // Patch: 00 00 A0 E3 1E FF 2F E1
	public int GetItemCost(IItemButton item); // Offset: 0x622150 // Patch: 00 00 A0 E3 1E FF 2F E1
}

// Namespace: 
public class DFPKeyValues // TypeDefIndex: 10024
{
	public string getMoneySpent(); // Offset: 0xB2BFA0 // Patch: 00 00 A0 E3 1E FF 2F E1
}

// Namespace: Assets.Scripts.Unity.Player
public class AdventureTimePlayer : Player`1<ProfileModel>
{ 
	public int get_Gems(); // Offset: 0x65BAA4 // Patch: 7F 08 A0 E3 1E FF 2F E1
	public int get_Money(); // Offset: 0x65BB58 // Patch: 7F 08 A0 E3 1E FF 2F E1
}