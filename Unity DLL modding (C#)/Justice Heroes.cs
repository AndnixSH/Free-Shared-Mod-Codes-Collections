//Game: Justice Heroes Superheroes War: Action RPG
//Version: 200
//APK: https://apkpure.com/justice-heroes-superheroes-war-action-rpg/com.digitalartsgames.justice.heroes.superheroes.war.action.rpg

namespace Core
{
	public static class Constants
	{
		public static bool DEBUG_SKIP_TUTORIAL = true;
	}
}

//ActorInstance.cs
public HeroHit calculateDamage(HeroStats stats, ActorInstance target, HeroSkill mySkill)
{
	if (stats == null || target == null)
	{
		Debug.LogError("BUG: CalculateDamage without Target");
	}
	if (mySkill == null)
	{
		Debug.LogError("BUG: Impacto sin Skill Info");
	}
	HeroStats heroStats = target.stats;
	HeroHit heroHit = new HeroHit(mySkill);
	float num;
	if (this.teamID != TeamEnum.enemies)
	{
		num = mySkill.getPower(stats) * 20f; //here
	}
	else
	{
		num = mySkill.getPower(stats) * 0f; //here
	}
	float defenseWithBonus = target.getDefenseWithBonus();
}