//Game: Fury Fables
//Version: 1.0.9
//APK: https://apkpure.com/fury-fables/com.xl.ff.en

//Calling Mod menu
//Class: UIRoot
public void OnGUI()
{
	ModMenu.ButtonMenu();
}

//Class: DamageData
private int CalCritical1(FightSprite fromSprite, FightSprite toSprite, int totalDamage, out bool isCritical)
{
	float num = 0f;
	float num2 = 0f;
	if (fromSprite.GetProperty(EnumSpriteProperties.Critical) != null)
	{
		num = Convert.ToSingle(fromSprite.GetProperty(EnumSpriteProperties.Critical).Content);
	}
	if (toSprite.GetProperty(EnumSpriteProperties.RenXing) != null)
	{
		num2 = Convert.ToSingle(toSprite.GetProperty(EnumSpriteProperties.RenXing).Content);
	}
	if (toSprite.GetProperty(EnumSpriteProperties.Level) != null)
	{
		Convert.ToInt32(toSprite.GetProperty(EnumSpriteProperties.Level).Content);
	}
	float num3 = 0f;
	if (fromSprite.GetProperty(EnumSpriteProperties.FinalDamage) != null)
	{
		num3 = Convert.ToSingle(fromSprite.GetProperty(EnumSpriteProperties.FinalDamage).Content);
	}
	float num4 = 0f;
	float num5 = 0f;
	if (fromSprite.GetProperty(EnumSpriteProperties.CriticalDamageAdd) != null)
	{
		float num6 = (float)Convert.ToInt32(fromSprite.GetProperty(EnumSpriteProperties.CriticalDamageAdd).Content);
		num4 = Mathf.Min(num6 / (num6 + 3500f) * 1f, 0.75f);
	}
	if (toSprite.GetProperty(EnumSpriteProperties.CriticalDamageDef) != null)
	{
		float num7 = (float)Convert.ToInt32(toSprite.GetProperty(EnumSpriteProperties.CriticalDamageDef).Content);
		num5 = Mathf.Min(num7 / (num7 + 9800f) * 1f, 0.35f);
	}
	float num8;
	if (num4 < num5)
	{
		num8 = Mathf.Max(1.45f, 1.6f + num4 - num5);
	}
	else
	{
		num8 = 1.6f + num4 - num5;
	}
	float num9 = num / (3866f + num) + 0.05f - num2 / (3866f + num2);
	if (num9 >= 1f)
	{
		isCritical = true;
		return (int)((float)totalDamage * num8 + (float)((int)num3));
	}
	if (num9 <= 0f)
	{
		isCritical = false;
		return totalDamage + (int)num3;
	}
	float num10;
	if (Game.Instance.GetCurScene() is RoomScene)
	{
		num10 = fromSprite.SkillRandomValue;
	}
	else
	{
		num10 = UnityEngine.Random.Range(0f, 1f);
	}
	if (num9 >= num10)
	{
		isCritical = true;
		return (int)((float)totalDamage * num8 + (float)((int)num3));
	}
	// Mod here - High critical damage //
	if (ModMenu.hack1)
	{
		isCritical = true;
		return totalDamage + (int)num3 + 9999999;
	}
	// //
	isCritical = false;
	return totalDamage + (int)num3;
}
	
//Dumb enemy
//Class: MonsterSprite
public float EyesRange
{
	get
	{
		// Mod here - Dumb enemy //
		if (ModMenu.hack2)
		{
			return 0f;
		}
		// //
		return this.m_nEyesRange;
	}
	set
	{
		this.m_nEyesRange = value;
	}
}

public override bool IsCanSearch
{
	get
	{
		// Mod here - Dumb enemy //
		return !ModMenu.hack2 && !(this.m_pMoveAStar == null) && this.m_pMoveAStar.canSearch;
	}
}