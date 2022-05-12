//Game: Paradise War
//APK US: https://apkplz.net/app/com.enjoygame.ttwyus
//APK JP: https://www.apkmonk.com/app/com.enjoygame.ttwyjp/
//APK CN: https://www.apkfollow.com/app/tian-yu-zhan-ji-tian-tang-sheng-chong-chuan-shuo-zai-xian/com.enjoygame.ttwyft/

//Calling Mod menu
//Class: SoundManager
public void OnGUI()
{
	ModMenu.ButtonMenu();
}

//Namespace: BossMonster
//Class: egm (obfuscated)
	public int k
	{
		get
		{
			return this.o * ModMenu.AtkMul;
		}
	}

	public int l
	{
		get
		{
			return this.p * ModMenu.DefMul;
		}
	}
	
//hard to find but here is tip how you can find the corret function
	public static float aw(egm aihs, string aiht)
	{
		if (aihs == null)
		{
			return 0f;
		}
		//search or analyze those enums kDamagePercnet and kDamagePoint, you may find this function easier and click on k or l (whatever) to go into real function
		if (aiht == dsa.f(ConstType.kDamagePercnet, string.Empty)) 
		{
			return (float)aihs.k; //k here
		}
		if (aiht == dsa.f(ConstType.kDamagePoint, string.Empty))
		{
			return (float)aihs.l; //l here
		}
		if (aiht == dsa.f(ConstType.kSkillGroupId, string.Empty))
		{
			return (float)aihs.b;
		}
		if (aiht == dsa.f(ConstType.kSkillTypeString, string.Empty))
		{
			return (float)aihs.h;
		}
		return 0f;
	}
