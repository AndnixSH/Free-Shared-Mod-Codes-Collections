public class KKCharacterEntity : BaseGameEntity // TypeDefIndex: 5362
{
	public int GetCurrDamage(bool isPhysical, bool isHitVitalpart, bool isIgnoreAbilityLv); // RVA: 0xB6EFAC Offset: 0xB6EFAC
}

public class KKPlayer // TypeDefIndex: 5733
{
	public int GetVipLv(); // RVA: 0x48B6EC Offset: 0x48B6EC
}

protected KKCharacterEntity.CampType m_eCamp;

public enum CampType
{
	E_START,
	E_PLAYER,
	E_ENEMY,
	E_MAX
}