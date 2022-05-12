//Game: 生死格斗5无限
//Version: 2.5.0
//APK: https://www.9game.cn/ssgd5wx/

//Class: Herodata
public float AttackQualityRate
{
	get
	{
		return this.heroObj.aptitude_gain * ModMenu.dmgMulti;
	}
}

public float AttackStarRate
{
	get
	{
		if (this.hasNoHeroLevel > 0)
		{
			return 1f;
		}
		HeroStarObj data = StaticData.GetData<HeroStarObj>(this.GetStarId());
		return data.growth_atk * ModMenu.dmgMulti;
	}
}

public float AttackStarValue
{
	get
	{
		if (this.hasNoHeroLevel > 0)
		{
			return 0f;
		}
		HeroStarObj data = StaticData.GetData<HeroStarObj>(this.GetStarId());
		return data.star_atk_value * ModMenu.dmgMulti;
	}
}

public override bool changeHp(int damageHp, DamageType damageType)
{
	if (ModMenu.toggle2)
	{
		return false;
	}
}

//Class: game.modules.battle.BattleControllerBtnSubView
//Class: UGUISpriteAnimation
//Class: UIDrawHeroView
//Class: UIEmbattleNameItem
//Class: UIEmbattleView
//Class: UIItemHead
//Class: UIRankPlayerSimpleInfo
//Class: UISignView
public void OnGUI()
{
	ModMenu.OnGUI();
}