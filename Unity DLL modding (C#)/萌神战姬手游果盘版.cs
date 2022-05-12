//Game: 萌神战姬手游果盘版
//Version: 21.5
//APK: http://www.2265.com/game/184477.html

//UIRoot
public void OnGUI()
{
  	ModMenu.OnGUI();
}

//XBattleFormula
public static AffectValueInfo GetDamage(XCharacterData caster, XCharacterData target, XSkillLvUp lvUp, XAffectInfo affectInfo, XBattleReportCreater btCreater)
{
	AffectValueInfo affectValueInfo = new AffectValueInfo();
	float num = caster.GetAttributes().GetAttrFloat(XESKillLvUpType.ATK.ToString());
	float num2 = target.GetAttributes().GetAttrFloat(XESKillLvUpType.DEF.ToString());
	if (ModMenu.toggle1 && caster.StandDiretion == StandDir.Left)
	{
		num *= num;
	}
	if (ModMenu.toggle2 && target.StandDiretion == StandDir.Left)
	{
		num *= 0f;
	}
}