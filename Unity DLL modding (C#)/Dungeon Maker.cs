//GC
	public static long uSoul
	{
		//ARMv7: 0x3100C8
		get
		{
			return 99999L; 
		}
		set
		{
			if (value < (long)global::GC.nDungeonMaxSoul) // <
			{
				value = (long)global::GC.nDungeonMaxSoul;
			}
			global::GC.uRefSoul = value;
			global::GC.uRefSoul.RandomizeCryptoKey();
			global::GC.SetLong(ValueKey.eSoul, value);
			ObscuredPrefs.SetLong("CryptSoul", value);
			if (value < 0L)
			{
				global::GC.SetVIP(true);
			}
			if (pageDefence.obj != null)
			{
				pageDefence.obj.RefreshTopSoul();
			}
		}
	}
	
	public static long nGold
	{
		get
		{
			return 989898989L;
		}
	}
	
	public static int nDungeonMaxSoul
	{
		get
		{
			return 99999;
		}
	}
	
	public static long uMaseog
	{
		get
		{
			return 9898989L;
		}
	}
	
		public static void MakeSpecialModiRoom(RoomKey eMain, List<PlayerAreaData> listPlayerData)
	{
		if (global::GC.nRefGold < global::GC.GetStorePrice(ActionStoreKey.eRoomModi))
		{
			return;
		}
		long num = 0L;
		for (int i = 0; i < listPlayerData.Count; i++)
		{
			num += global::GC.GetAccuRoomExp(listPlayerData[i]);
		}
		global::GC.nGold -= global::GC.GetStorePrice(ActionStoreKey.eRoomModi);
		global::GC.AddInt(ValueKey.eStoreBuyRoomModi, 1);
		PlayerAreaData newPlayerRoom = global::GC.GetNewPlayerRoom(eMain, -1, -1);
		newPlayerRoom.nNewExp = num;
		if (global::GC.CheckBuyRebirthStoreItem(ValueKey.eSpecialFacilityModiAlwaysUpgraded))
		{
			newPlayerRoom.bRoomUpgrade = true;
		}
		global::GC.AutoLevelUpRoom(newPlayerRoom);
		bool bAlter = BData.GetRoom(newPlayerRoom.eRoomID).bAlter;
		int nDungeonMaxSoul = 99999;
		long uSoul = 99999L;
		...
	}
	
//SaveManager.cs
public static void CheckVIP()
if (global::GC.uMaseog < 0L || num - num5 - global::GC.uMaseog != 0L)
		{
			global::GC.SetVIP(false);
		}
		else
		{
			global::GC.SetVIP(false);
		}