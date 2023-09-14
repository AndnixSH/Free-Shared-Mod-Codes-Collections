//BattleManager
	private BattleManager.BattleState NextAttackTurn()
	{
		string type = this._battleData.currentTurn.type;
		if (type != null)
		{
			if (type == "dmg")
			{
				return BattleManager.BattleState.UserAttack;
			}
			if (type == "atk")
			{
				return BattleManager.BattleState.UserAttack;
			}
		}
		return BattleManager.BattleState.UserAttack;
	}