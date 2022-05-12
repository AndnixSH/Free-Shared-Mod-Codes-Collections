//Game: Dimension Summoner Final Fighting Fantasy PVP RPG
//Version: 2.3
//APK: https://apkpure.com/dimension-summoner-final-fighting-fantasy-pvp-rpg/com.dimensionsummoner.poppace

//Dump hidden dll from memory. Assembly name called scriptdll. Rename it to DOTween43.dll

//Calling Mod menu
//Class: MusicManager
public void OnGUI()
{
	ModMenu.ButtonMenu();
}

//Class: BattleActorInfo. x100 dmg | god mode
	public void FreshAttribute()
	{
		this.absorbMpRate = this.m_ActorAttributeBase.AbsorbMpRate;
		this.hitAbsorbMpRate = this.m_ActorAttributeBase.HitAbsorbMpRate;
		this.mSpeed = this.m_ActorAttributeBase.Speed;
		if (ModMenu.hack1)
		{
			if (this.isPlayer)
			{
				this.adAtk = this.m_ActorAttributeBase.ADAtk * 100;
				this.adDef = this.m_ActorAttributeBase.ADDef;
				this.apAtk = this.m_ActorAttributeBase.APAtk * 100;
				this.apDef = this.m_ActorAttributeBase.APDef;
			}
			else
			{
				this.adAtk = this.m_ActorAttributeBase.ADAtk * 0;
				this.adDef = this.m_ActorAttributeBase.ADDef;
				this.apAtk = this.m_ActorAttributeBase.APAtk * 0;
				this.apDef = this.m_ActorAttributeBase.APDef;
			}
		}
		else
		{
			this.adAtk = this.m_ActorAttributeBase.ADAtk;
			this.adDef = this.m_ActorAttributeBase.ADDef;
			this.apAtk = this.m_ActorAttributeBase.APAtk;
			this.apDef = this.m_ActorAttributeBase.APDef;
		}