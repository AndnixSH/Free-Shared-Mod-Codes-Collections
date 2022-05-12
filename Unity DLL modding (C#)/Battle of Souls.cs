//Game: Battle of Souls
//Version: 4.3
//APK: https://apkcombo.com/battle-of-souls/com.global.kr.google.xqgames.battleofsoul/

//UIRoot
public void OnGUI()
{
	ModMenu.OnGUI();
}

//SoulController
private float GetDamage(SkillType _skillType, float _damage, float _defense, float _skillDefend, bool _isCritical, bool _isPenetrate)
{
	if (this.GetObjectAttributeType() != ObjectAttributeType.Soul)
	{
		num = _damage / (float)ModMenu.DefMul;
	}
	num = _damage * (float)ModMenu.AtkMul;
}