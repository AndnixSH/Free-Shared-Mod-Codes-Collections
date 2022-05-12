//Game: Frontline Army Battles: Assault Modern Warfare
//Version: 1.2
//APK: https://apkpure.com/frontline-army-battles-assault-modern-warfare/com.ParsisGames.BattleMastersEn

//Class: GameUnit
public virtual void ApplyDamage(float damage)
{
	if (this.MyTeam == MissionManager.Team.Player)
	{
		damage = 0f; //God mode
	}
	if (this.MyTeam == MissionManager.Team.Opponent)
	{
		damage *= 1110f; //1 hit kill
	}
	this.Health -= damage;
	if (this.MyRankIcon != null)
	{
		GUIShowScore guishowScore = UnityEngine.Object.Instantiate<GUIShowScore>(GUIManager.Me.SampleHealthReduce, GUIManager.Me.SampleHealthReduce.transform.parent);
		guishowScore.transform.localScale = new Vector3(1f, 1f, 1f);
		float num = -damage;
		if (this.MyTeam == MissionManager.Team.Player)
		{
			num /= AIManager.AIDiff;
		}
		guishowScore.InitializeLocal(Mathf.RoundToInt(num), this.MyRankIcon.transform.localPosition);
	}
	if (this.Health <= 0f)
	{
		this.Kill();
	}
}

//Class: MissionManager
public enum Team
{
	Player,
	Opponent
}