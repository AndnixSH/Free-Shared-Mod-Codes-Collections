//Game: CrusadersAttack:BOOST
//Version: v1.0.25
//APK: https://apkpure.com/crusadersattack-boost/kr.fulse.CrusadersAttack

//Class: UIRoot
public void OnGUI()
{
	ModMenu.OnGUI();
}

//Class: GameCore
protected void FixedUpdate()
{
	this.InvincibleEnabled = ModMenu.hack1; //God mode
	this._bulletMaskList.Clear();
	this.ProcessCheckTankSkill();
	this.ProcessCollision();
}

//Class: GameMonster
	private DamageInfo CalculateDamage(HitInfo info)
	{
		float num = (!this.IgnoreCounterDamage) ? this.Element.GetTakenRate(info.Element) : 1f;
		float num2 = this.CalculateArmor(info.IgnoreArmor);
		float damage = info.Damage;
		float num3 = this.GetElementReducedDamage(info.Element) * this.GetClassReducedDamage(info.CharClass);
		float num4 = damage * num * num3 * ((!this.GetCondition(MonsterCondition.Defense).Active) ? 1f : 0f);
		num4 *= 1f + this.GetCondition(MonsterCondition.ArmorBreak).GetValueOrDefault(0f);
		num4 = Mathf.Clamp(num4 - ((num2 <= 1f) ? (num4 * num2) : num2), (float)((Mathf.Abs(num4) >= Mathf.Epsilon) ? 1 : 0), num4 * (float)ModMenu.dmgMulti); //DMG multiplier
		return DamageInfo.Generate(Mathf.FloorToInt(num4), (num4 != 0f && num > 1f) ? info.Element : CharacterElement.None, num, num2);
	}