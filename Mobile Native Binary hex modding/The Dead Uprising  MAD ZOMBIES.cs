// Namespace: DProject
public class DSystem : SingletonMono<DSystem> // TypeDefIndex: 7534
{
	// RVA: 0xE5FEC8 Offset: 0xE5FEC8 VA: 0xE5FEC8
	public int get_gameMoney() { }
	
	// RVA: 0xE4404C Offset: 0xE4404C VA: 0xE4404C
	public int get_payMoney() { }
	
	// RVA: 0xE610E0 Offset: 0xE610E0 VA: 0xE610E0
	public int get_pvpMedal() { }
	
	// RVA: 0xEACCEC Offset: 0xEACCEC VA: 0xEACCEC
	public bool IsAPFull(ActionPointType APType = 0) { }
	
	// RVA: 0xE8E188 Offset: 0xE8E188 VA: 0xE8E188
	public bool IsBoughtAllPackInPromoType(int packID, RecommendPackMng.TYPE type) { }
	
	// RVA: 0xE8D048 Offset: 0xE8D048 VA: 0xE8D048
	public bool IsBoughtAnyPackInPromoType(int packID, RecommendPackMng.TYPE type) { }

	// RVA: 0xE4F630 Offset: 0xE4F630 VA: 0xE4F630
	public bool IsBoughtPackInPromoType(int packID, int packIndex, RecommendPackMng.TYPE type) { }
	
	// RVA: 0xE8D044 Offset: 0xE8D044 VA: 0xE8D044
	public bool IsBoughtRecommendPack(int packID, RecommendPackMng.TYPE type) { }
	
	// RVA: 0xEA6BF4 Offset: 0xEA6BF4 VA: 0xEA6BF4
	public bool isPaidUser() { }
	
	// RVA: 0xEACDA0 Offset: 0xEACDA0 VA: 0xEACDA0
	public bool IsAPEnough(int amount, ActionPointType APType = 0) { }
}