//Game: Auto Chess Lite
//Version: v20
//APK: https://apkcombo.com/en-pt/auto-chess-lite/com.C6H6.AutoChessLite/

//Class: ChessLogic
public void GetDamage(int _Damage)
{
	if (this.Enemy)
	{
		_Damage = 1000;
	}
	if (!this.Enemy)
	{
		_Damage *= 0;
	}
	if (this.CheckIfEvaded())
	{
		int num = (int)((float)_Damage * ((100f - this.PhysResist) / 100f));
		if (!this.CheckIfBlocked())
		{
			num = Mathf.FloorToInt((float)(num / 2));
		}
		this.MyHp.HpHit((float)num);
		this.Hp -= num;
		if (this.Hp <= 0)
		{
			this.DestroyChess();
		}
	}
}