//Game: Clan&Conquest
//Version: 0.0.14
//APK: https://apkpure.com/clan-conquest/com.eliterising.cnc

//Calling Mod menu
//Class: SoundManager
public void OnGUI()
{
	ModMenu.ButtonMenu();
}

//Class: UnitAttribute
	public void Init(int unitIdx, int unitLevel, int decreaseHP, int layer)
	{
		this.Reset();
		TableUnit tableUnit = SingletonBase<TableManager>.Instance.Get<TableUnit>();
		TableUnit.Data data = tableUnit.GetData(unitIdx);
		this.id = unitIdx;
		this.level = unitLevel;
		this.unitType = data.unit_type;
		this.rarity = data.rarity;
		base.HP_MAX.Init((data.hp + data.hp_increase * (this.level - 1)) * Mod4uMenu.DefMul); //defence multiplier
		base.HP.Init(base.HP_MAX.NowValue - decreaseHP);
		this.max_mp = data.mp + data.mp_increase * (this.level - 1);
		this.mp = this.max_mp;
		base.ATT.Init((data.ap + data.ap_increase * (this.level - 1)) * Mod4uMenu.AtkMul); //attack multiplier
		//....
	}