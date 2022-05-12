//Game: Superhero War: Robot Fight - City Action RPG
//Version: 3.0
//APK: https://play.google.com/store/apps/details?id=com.ubimob.superhero.war

//Hooking with LGL mod menu

void (*old_get_hitEnemy)(void* _this, int damage);
void get_hitEnemy(void *_this, int damage) {
	if (hack2){
		return old_get_hitEnemy(_this, 0);
	}
	return old_get_hitEnemy(_this, damage);		
}

void (*old_get_hitEnemy2)(void* _this, int damage);
void get_hitEnemy2(void *_this, int damage) {
	if (hack2){
		return old_get_hitEnemy2(_this, 0);
	}
	return old_get_hitEnemy2(_this, damage);		
}

void (*old_get_hitPlayer)(void* _this, int damage, bool isBullet);
void get_hitPlayer(void *_this, int damage, bool isBullet) {
	if (hack1){
		return old_get_hitPlayer(_this, damage * 99, isBullet);
	}
	return old_get_hitPlayer(_this, damage, isBullet);		
}

void (*old_get_hit)(void* _this, int damage);
void get_hit(void *_this, int damage) {
	if (hack1){
		return old_get_hit(_this, damage * 99);
	}
	return old_get_hit(_this, damage);		
}

MSHookFunction((void *)getAbsoluteAddress(libName, 0x43983C), (void *)get_hitEnemy, (void **) &old_get_hitEnemy); //PlayerController
MSHookFunction((void *)getAbsoluteAddress(libName, 0x433620), (void *)get_hitEnemy2, (void **) &old_get_hitEnemy2); //MyHouse
MSHookFunction((void *)getAbsoluteAddress(libName,0x36F2B8), (void *)get_hitPlayer, (void **) &old_get_hitPlayer); //EnemyController
MSHookFunction((void *)getAbsoluteAddress(libName,0x433370), (void *)get_hit, (void **) &old_get_hit); //EnemyController