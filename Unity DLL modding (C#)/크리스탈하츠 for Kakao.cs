//Game: 크리스탈하츠 for Kakao
//Version: 3.20000838
//APK: https://apkpure.com/%ED%81%AC%EB%A6%AC%EC%8A%A4%ED%83%88%ED%95%98%EC%B8%A0-for-kakao/com.NextFloor.CrystalHeartsKakao

//Class: PlayerController - High atk
public int AttackPoint
{
	get
	{
		int num;
		if (Menu.hack1)
		{
			if (base.tag == "Player")
			{
				num = this.characterInfo.ATK * 50;
			}
			else
			{
				num = this.characterInfo.ATK * 0;
			}
		}
		else
		{
			num = this.characterInfo.ATK;
		}
		foreach (Modifier modifier in this.modifiers)
		{
			num = modifier.AttackPoint(this, num);
		}
		float num2 = 0f;
		if (this.Status[Skill.EffectType.AttackPointUp].isActive)
		{
			num2 += this.Status[Skill.EffectType.AttackPointUp].Amount;
		}
		if (this.Status[Skill.EffectType.AttackPointDown].isActive)
		{
			num2 -= this.Status[Skill.EffectType.AttackPointDown].Amount;
		}
		num += Mathf.RoundToInt((float)num * num2);
		return Mathf.Max(0, num);
	}
}