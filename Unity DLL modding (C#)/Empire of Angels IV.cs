//TitleSceneController

//UnitTB
public float ATK()
	{
		if (this.isPlayerFaction())
		{
			return this.ability.ATK * 999f;
		}
		return this.ability.ATK * 0f;
	}

//UILabel
public void OnGUI()
{
	MakeGUI.OnGUI();
}

// UnitTB
public float ATK()
{
	if (GetGUI.toggles[0] && this.isPlayerFaction())
	{
		return this.ability.ATK * 999f;
	}
	if (GetGUI.toggles[1] && !this.isPlayerFaction())
	{
		return this.ability.ATK * 0f;
	}
	return this.ability.ATK;
}