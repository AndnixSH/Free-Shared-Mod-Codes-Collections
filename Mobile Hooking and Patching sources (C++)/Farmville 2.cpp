//I shared my source because of Farmville 2 leechers. Fuck them
//More source to come when it is capable
//Credit: DaReadPanDa and AndnixSH

//SVFastFinish - GetFastFinishCostWithOverride
int (*orig_GetFastFinishCostWithOverride)(void* _this, int a1, int a2);
int GetFastFinishCostWithOverride(void* _this, int a1, int a2) {
	if (hack5)
		return 1;
	return orig_GetFastFinishCostWithOverride(_this, a1, a2);
}

//ItemManager - GetItemCost
int (*orig_GetItemCost)(void* _this, monoString* a1, int a2);
int GetItemCost(void* _this, monoString* a1, int a2) {
	if (hack5)
		return 1;
	return orig_GetItemCost(_this, a1, a2);
}

//SVInventory
void (*orig_Remove)(void* _this, monoString* item, int amount, monoString* reason, monoString* description, bool shouldShow, void* economyTransactionStatsData, bool updateWTDict);
void Remove(void* _this, monoString* item, int amount, monoString* reason, monoString* description, bool shouldShow, void* economyTransactionStatsData, bool updateWTDict) {
	if (hack1)
		return;
	return orig_Remove(_this, item, amount, reason, description, shouldShow, economyTransactionStatsData, updateWTDict);
}

void (*orig_Add)(void* _this, monoString* itemName, int amount, monoString* reason, bool allowMaxOverflow, monoString* description, bool shouldShow, void* economyTransactionStatsData, bool showNotifyDialog);
void Add(void* _this, monoString* itemName, int amount, monoString* reason, bool allowMaxOverflow, monoString* description, bool shouldShow, void* economyTransactionStatsData, bool showNotifyDialog) {
    
	//Sorry, no spoonfeed for string modding. Try learn programming instead waiting to be spoonfed
	
	return orig_Add(_this, itemName, amount, reason, allowMaxOverflow, description, shouldShow, economyTransactionStatsData, showNotifyDialog);
}

//Old DLL modding (NOT c++ hooking/patching related)
1. Keys                               | Keyword: GetCount                          | Class: SVInventory : MonoBehaviour              
2. Anticheat                          | Keyword: Cheat                             | Class:                                                              
3. ToastMessage                                  Use Splash PNG or classes.dex
4. Coins                              | Keyword: GetCount                          | Class: SVInventory : MonoBehaviour              
5. Free Speedup                       | Keyword: DoPerformFastFinish               | Class: SVFastFinish : MonoBehaviour             
6. Free Speedup                       | Keyword: Setup                             | Class: TimeConstructionStage : ConstructionStage 
7. Free Barn Upgrades                 | Keyword: GetItemCost                       | Class: ItemManager : MonoBehaviour 
8. Free ingredients                   | Keyword: GetItemCost                       | Class: ItemManager : MonoBehaviour 


How to mod free Speedup:

1. Method: DoPerformFastFinish               

First: replace all " fastFinishCostWithOverride " with -500 as example

Second: replace " hardCost = fastFinishCostWithOverride; " to " hardCost = -500 "; 
		

2. Method: Setup

Simple replace "protoData.constructionAccelerationCashCost" with -500 as example