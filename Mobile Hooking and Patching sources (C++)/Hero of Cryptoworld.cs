 public class BattleCreature : ICreature 
{
	public bool get_CanAttack(); // RVA: 0xAA1D04 Offset: 0xAA1D04
	public BattleGroup get_Group(); // RVA: 0xA9FFC4 Offset: 0xA9FFC4
}
public class BattleGroup 
{
	public BattleGroup.eGroupType get_GroupType(); // RVA: 0xA98D08 Offset: 0xA98D08
}
public class StatInfo 
{
	public void SetValue(eStatType type, int value); // RVA: 0x1239E1C Offset: 0x1239E1C
}

//----------------------------

int (*get_actorType)(void *_this) = (int(*)(void *))getRealOffset(0xA9FFC4);
int (*get_Group)(void *_this) = (int(*)(void *))getRealOffset(0xA98D08);

bool (*orig_get_CanAttack)(void* _this);
bool get_CanAttack(void* _this) {
	
	bool actorType = get_actorType(_this);
	bool Group = get_Group(_this);
	
	if (actorType(Group) == 1)
	{
		return false;
	}
	else
	{
		return true;
	}
	
	return orig_CanAttack(_this); 
}