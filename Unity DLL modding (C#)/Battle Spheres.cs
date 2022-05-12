//Game: Battle Spheres
//Version: 157
//APK: https://apkpure.com/battle-spheres/com.gtoken.battlespheres

//Calling Mod menu
//Class: tk2dUIManager
public void OnGUI()
{
	ModMenu.OnGUI();
}

//Class: CoreGameManager
//1 hit kill
public int Team1CurHP
{
	get
	{
		if (ModMenu.hack1)
		{
			return int.MaxValue;
		}
		return this._team1CurHp;
	}
}

//Class: DamageObject
//God mode
public static int CalculateAdditionalDamageFromElemToElem(int atk, ElementEnum from, ElementEnum to)
{
	if ((from == ElementEnum.Dark && to == ElementEnum.Light) || (from == ElementEnum.Light && to == ElementEnum.Dark) || (from == ElementEnum.Water && to == ElementEnum.Fire) || (from == ElementEnum.Fire && to == ElementEnum.Nature) || (from == ElementEnum.Nature && to == ElementEnum.Water))
	{
		if (IxoMonoSingleton<CoreGameManager>.Instance.IsOwnerOfCurActivePlayerUnit && ModMenu.hack2)
		{
			return Mathf.FloorToInt((float)atk * DamageObject.ELEMENT_BONUS_MULTIPLIER) * 10000;
		}
		return Mathf.FloorToInt((float)atk * DamageObject.ELEMENT_BONUS_MULTIPLIER);
	}
	else
	{
		if ((from != ElementEnum.Fire || to != ElementEnum.Water) && (from != ElementEnum.Nature || to != ElementEnum.Fire) && (from != ElementEnum.Fire || to != ElementEnum.Water) && (from != ElementEnum.Water || to != ElementEnum.Nature) && IxoMonoSingleton<CoreGameManager>.Instance.IsOwnerOfCurActivePlayerUnit && ModMenu.hack2)
		{
			return Mathf.FloorToInt((float)atk * DamageObject.ELEMENT_BONUS_MULTIPLIER) * 10000;
		}
		if ((from != ElementEnum.Fire || to != ElementEnum.Water) && (from != ElementEnum.Nature || to != ElementEnum.Fire) && (from != ElementEnum.Fire || to != ElementEnum.Water) && (from != ElementEnum.Water || to != ElementEnum.Nature))
		{
			return Mathf.FloorToInt(-(float)atk * DamageObject.ELEMENT_WEAKNESS_MULTIPLIER);
		}
		if (IxoMonoSingleton<CoreGameManager>.Instance.IsOwnerOfCurActivePlayerUnit && ModMenu.hack2)
		{
			return Mathf.FloorToInt((float)atk) * 10000;
		}
		return 0;
	}
}