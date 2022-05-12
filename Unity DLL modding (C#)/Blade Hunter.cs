//Game: Blade Hunter
//Version: v2.0.2
//APK: https://apkcombo.com/en-gb/blade-hunter/com.cuplay.bh.en.androidgp/

//DLL: TianyuCommon.dll
//Namespace: TianyuCommon.Plugins
//Class: ianyuVirtual
public int CalDamage(TianyuVirtual attacker, TianyuVirtual hitter, AttackSource source)
{
	if (ModMenu.hack1 && hitter.mUnit.Info.UType == UnitInfo.UnitType.TYPE_MONSTER)
	{
		return 999999;
	}
	if (ModMenu.hack2 && hitter.mUnit.Info.UType != UnitInfo.UnitType.TYPE_MONSTER)
	{
		return 0;
	}
	...
}