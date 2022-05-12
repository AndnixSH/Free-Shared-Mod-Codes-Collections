//Game: Fantasy Adventure Latest 3D RPG game
//Version: 1.0.10
//APK: https://apkpure.com/fantasy-adventure-latest-3d-rpg-game/com.fantasy.us.en

//Dump hidden dll from memory. Assembly name called Geart3D. Rename it to Assembly-UnityScript.dll

//Calling Mod menu
//Class: UIRoot
public void OnGUI()
{
	ModMenu.ButtonMenu();
}

//Class: Character. hack1 = high dmg | hack2 = god mode
	public virtual void beAttack(Character hiter, postAttack attachInfo, GameObject damager, Vector3 hitDir)
	{
		if (ModMenu.hack2)
		{
			num2 = attachInfo.finalDamage - attachInfo.finalDamage;
		}
		if (this.type != CharacterType.CT_Monster || !ModMenu.hack1)
		{
			
		}
		if (this.type == CharacterType.CT_Npc && ModMenu.hack2)
		{
			num2 = attachInfo.finalDamage - attachInfo.finalDamage;
		}
		if (this.isBoss() && ModMenu.hack1)
		{
			num2 = attachInfo.finalDamage * 100;
		}
	}