//Game: Amazing Stickman Ninja
//Version: v1.1
//APK: https://apkcombo.com/en-pt/amazing-stickman-ninja/net.bmt.stickman/

//Class: GameConstant
public static int getGold()
{
	return PlayerPrefs.GetInt(GameConstant.GOLD, 5000000);
}