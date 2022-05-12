private IEnumerator LoadDllScript(string url)
	{
		yield return null;
		yield return null;
		yield return null;
		using (WWW www = new WWW("https://example.com/logic.bytes.a.vng"))
		{
			...
	}

public float MoveSpeed
	{
		get
		{
			if (ModMenu.toggle1)
			{
				return 2f;
			}
			return this.newSpd * MUStrong.dmgMulti;
		}
	}

//MiracleSkillLogic
	public bool IsTargetInSkillRange(SkillInfo skill, Vector3 pos, Vector3 targetPos, float moveOffset = 0f)
	{
		if (ModMenu.toggle2)
		{
			return true;
		}
		...
	}

//HUDText
public void OnGUI(){
	
	ModMenu.OnGUI();
}