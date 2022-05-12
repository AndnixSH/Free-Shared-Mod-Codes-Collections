//Game: 식신키우기
//Version: 1.10
//APK: https://play.google.com/store/apps/details?id=com.Toonnori.DoEat

//Class: GameDataManager
public void AddMoney(GameDataManager.e_MoneyType _eType, ulong _iAddMoney)
{
	if (_eType == GameDataManager.e_MoneyType.Gold)
	{
		this.Gold += _iAddMoney;
	}
	else if (_eType == GameDataManager.e_MoneyType.Dia)
	{
		this.Dia += (int)_iAddMoney;
	}
	this.Dia = int.MaxValue; //Max diamond
	this.SaveMoney();
}

//Gold not decreasing
public void SubMoney(GameDataManager.e_MoneyType _eType, ulong _iSubMoney)
{
	// if (_eType == GameDataManager.e_MoneyType.Gold)
	// {
		// this.Gold -= _iSubMoney;
	// }
	// else if (_eType == GameDataManager.e_MoneyType.Dia)
	// {
		// this.Dia -= (int)_iSubMoney;
	// }
	if (this.Gold <= 0UL || this.Dia <= 0)
	{
		return;
	}
	this.SaveMoney();
}