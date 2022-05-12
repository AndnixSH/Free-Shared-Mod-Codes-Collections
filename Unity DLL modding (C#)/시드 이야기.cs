//Game: 시드 이야기
//Version: 2.7.7
//APK: https://apkpure.com/%EC%8B%9C%EB%93%9C-%EC%9D%B4%EC%95%BC%EA%B8%B0/co.singta.ss

//Class: BattleManager
//Always your turn
private BattleManager.BattleState NextAttackTurn()
{
	string type = this._battleData.currentTurn.type;
	if (type == null)
	{
		return BattleManager.BattleState.UserAttack;
	}
	if (type == "dmg")
	{
		return BattleManager.BattleState.UserAttack;
	}
	type == "atk";
	return BattleManager.BattleState.UserAttack;
}

//1 hit kill
public int maxEnemyHP
{
	get
	{
		return 1;
	}
}

//God mode
public int maxUserHP
{
	get
	{
		return this._maxUserHP * 1001;
	}
}