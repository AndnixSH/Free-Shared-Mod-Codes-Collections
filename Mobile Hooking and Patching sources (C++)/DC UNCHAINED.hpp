//public class AvatarLevelObject : AvatarAbstract
//protected override void _OnDie(bool forceDeadState_) { }
void (*_OnDie)(void *_this, bool a1);

//public class CharacterStatus : IPoolObject
//public void ForceSetHP(int value_)
void (*get_ForceSetHP)(void *_this, int value_);

//public abstract class AvatarAbstract : HidingComponent 
//public AvatarGroupType get_avatarGroupType() 
int (*get_avatarGroupType)(void *_this);

// public enum AvatarGroupType
// {
	// PARTY,
	// ENEMY
// }

//public sealed class LevelManager : Singleton<LevelManager>
//public void HandleOnDamage(AvatarAbstract casterAvatar_, CharacterStatus targetStatus_, int damage_) { }
void (*orig_HandleOnDamage)(void *_this, void *casterAvatar_, void *targetStatus_, int a3);
void HandleOnDamage(void *_this, void *casterAvatar_, void *targetStatus_, int a3) {
	if(_this != NULL)
	{ 
		int avatarGroupType = get_avatarGroupType(casterAvatar_);
		if (hack1 & avatarGroupType == 0) //PARTY
		{
			get_ForceSetHP(targetStatus_, 999999999);
		}
		if (hack2 & avatarGroupType == 1) //ENEMY
		{
			get_ForceSetHP(targetStatus_, 0);
		}
	}
	return orig_HandleOnDamage(_this, casterAvatar_, a2, a3);
}

//public class AvatarLevelObject : AvatarAbstract
//protected override int _OnDamage(AvatarAbstract casterAvatar_, CharacterStatus targetStatus_, ref FormulaDamageData formulaDamageData_, int criticalSoundFxID_, int criticalCameraShakingID_)
void (*orig__OnDamage)(void *_this, void * casterAvatar_, void * targetStatus_, void * formulaDamageData_, int criticalSoundFxID_, int criticalCameraShakingID_);
void _OnDamage(void *_this, void * casterAvatar_, void * targetStatus_, void * formulaDamageData_, int criticalSoundFxID_, int criticalCameraShakingID_) {
	if(_this != NULL)
	{ 
		int avatarGroupType = get_avatarGroupType(casterAvatar_);
		if (hack3 & avatarGroupType == 1) //PARTY
		{
			_OnDie(targetStatus_, true);
		}
	}
	return orig__OnDamage(_this, casterAvatar_, targetStatus_, formulaDamageData_, criticalSoundFxID_, criticalCameraShakingID);
}

//public class AvatarUnitBase : AvatarAbstract
//private void _SetComoboCount(int count_)
void (*orig__SetComoboCount)(void *_this, int count_);
void _SetComoboCount(void *_this, int count_) {
	return orig__SetComoboCount(_this, 1000);
}