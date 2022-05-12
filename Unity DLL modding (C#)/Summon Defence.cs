//UIManager
public void OnGUI()
{
	SummonDefense.OnGUI();
}

//Unit
public int GetAtk()
{
	if (this.isSkillActPowerUp)
	{
		return this.atkPowerUp;
	}
	if (this.unitTeam == eUnitTeam.ENEMY && SummonDefense.toggle2)
	{
		return this.atk - this.atk;
	}
	if (this.unitTeam != eUnitTeam.ENEMY && SummonDefense.toggle1)
	{
		return this.atk * 999;
	}
	return this.atk;
}

UserMain.Instance.updateUserGoods(ePointType.JEWEL, 9999999L);
UserMain.Instance.updateUserGoods(ePointType.COIN, 9999999L);