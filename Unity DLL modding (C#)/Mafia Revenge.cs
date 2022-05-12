//Modded codes
// GunBase
public float get_RecoilSpeed()
{
	return 100f;
}

//GrenadeBoomGrade
{
	public static GrenadeBoomGrade.Type Grade(float dist)
	{
		return GrenadeBoomGrade.Type.Perfect;
	}

	public static string SpriteName(GrenadeBoomGrade.Type grade)
	{
		if (grade == GrenadeBoomGrade.Type.Perfect)
		{
			return "boom";
		}
		return string.Empty;
	}

//SkillCooler
public int GetMaxChargeCount
	{
		get
		{
			return 1;
		}
	}

	public int GetNowChargeCount
	{
		get
		{
			return 1;
		}
	}

// NativeManager
public void N2U_OnHackDetected(string result)
{
}

