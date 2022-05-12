//Game: Basketball Crew 2k19 - streetball bounce madness
//Version: 10.0.1007 
//APK: https://apkpure.com/basketball-crew-2k19-streetball-bounce-madness/com.xp101.basketball

//Class: CharacterStatistic
public float GetShootPercent(CharacterBehaviour.ID id, Vector3 ballOutPos, float specificShot_prob_sum = 0f, float specificShot_abs_sum = 0f, bool bIgnorePercentLog = true)
{
	if (this.character.opponentTeam == 1)
	{
		return 100f; //Player Always Goal
	}
	return 0f; //Enemy never goal
}
