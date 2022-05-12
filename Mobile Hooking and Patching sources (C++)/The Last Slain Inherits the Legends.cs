//Game: The Last Slain Inherits the Legends
//Version: 1.0.43
//APK: https://apkpure.com/the-last-slain-inherits-the-legends/com.rockberrygames.thelastslain

public sealed class ActorStatus : ActorHandle
{
	public void AddDamage(HitType hitType, int damage, optional InfluenceType influenceType, optional Actor attacker); // RVA: 0x69DFB8 Offset: 0x69DFB8
}

[DisallowMultipleComponent] // RVA: 0x265350 Offset: 0x265350
public class Actor : MonoBehaviour // TypeDefIndex: 3848
{
	public ActorType get_actorType(); // RVA: 0x608D70 Offset: 0x608D70
}

//hook
int (*get_actorType)(void *_this) = (int(*)(void *))getRealOffset(0x608D70);

void (*orig_AddDamage)(void* _this, int a1, int damage, int a3, int a4, bool a5);
void AddDamage(void* _this, int a1, int damage, int a3, int a4, bool a5) {
	
	if (get_actorType == 1)
	{
		damage * 100;
	}
	else
	{
		damage = 0;
	}
	
	return orig_AddDamage(_this, a1, _damage, a3, a4, a5); 
}
