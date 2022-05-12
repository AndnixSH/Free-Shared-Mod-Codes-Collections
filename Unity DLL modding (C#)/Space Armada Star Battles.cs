//APKIntegrityChecker.cs
	private void Check()
	{
		APKIntegrityChecker.Validated = true;
	}
	
//CurrencyBehaviour.cs
	public bool HaveMoneyForCost(CurrencyCost cost)
	{
		return true;
	}

	public bool HaveMoneyForCost(CurrencyType type, ObscuredInt cost)
	{
		return true;
	}

	public bool HaveMoneyForProperty(PropertyDef def)
	{
		return true;
	}