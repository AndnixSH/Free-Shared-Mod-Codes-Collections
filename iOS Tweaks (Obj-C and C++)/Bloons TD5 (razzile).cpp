/**************************************************************
 **************************************************************
 * Bloons TD 5 Mods
 * Includes: No money loss, debug active (possibly)
 * Place towers anywhere, money hack, round skip hack (why?)
 * *********************Created by razzile*********************	
 **************************************************************/
#include <substrate.h>

int (*old_RecieveMonkeyMoney)(int x, int money); //holds legit function

int RemoveMoney() { 
	//empty for no effect
} 

bool GetDebug() { 
return true; //may not work on newer versions
} 

bool Projectile_CanDamageBloon() { 
return true; //all projectiles 
}

bool CanPlaceTower() { 
return true;
}

int ReceiveMonkeyMoney(int x, int money) { 
	return old_RecieveMonkeyMoney(x, 99999);
}


bool HasFinishedSpawning() { 
return true; //round skip
}

%ctor {
	/* comment out any hacks you don't want */
	MSHookFunction(((void*)MSFindSymbol(NULL, "__ZN12CGameProfile11RemoveMoneyEf")),(void*)RemoveMoney,NULL); 
	MSHookFunction(((void*)MSFindSymbol(NULL, "__ZN9CDebugXml8GetValueERKSs")),(void*)GetDebug,NULL);
	MSHookFunction(((void*)MSFindSymbol(NULL, "__ZN11CProjectile18TaskCanDamageBloonEP11CWeaponTaskP6CBloonRbS4_")),(void*)&Projectile_CanDamageBloon,NULL);
	MSHookFunction(((void*)MSFindSymbol(NULL, "__ZN4CMap13CanPlaceTowerEP10CBaseTowerPP16CMapMaskModifier")),(void*)&CanPlaceTower,NULL);
	MSHookFunction(((void*)MSFindSymbol(NULL, "__ZN16CPlayerProfileV118ReceiveMonkeyMoneyEj")),(void*)ReceiveMonkeyMoney,(void**)&old_RecieveMonkeyMoney);
	MSHookFunction(((void*)MSFindSymbol(NULL, "__ZNK6CRound19HasFinishedSpawningEv")),(void*)HasFinishedSpawning,NULL);
}
