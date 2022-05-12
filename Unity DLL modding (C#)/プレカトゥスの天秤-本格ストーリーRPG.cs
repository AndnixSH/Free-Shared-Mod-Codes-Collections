//Game: プレカトゥスの天秤-本格ストーリーRPG
//Version: 1.1.8
//APK: https://apkpure.com/%E3%83%97%E3%83%AC%E3%82%AB%E3%83%88%E3%82%A5%E3%82%B9%E3%81%AE%E5%A4%A9%E7%A7%A4-%E6%9C%AC%E6%A0%BC%E3%82%B9%E3%83%88%E3%83%BC%E3%83%AA%E3%83%BCrpg/jp.fg.precatus

//Class: BattleLogic
public int Hp
{
	get
	{
		if (!this._position.isPlayer)
		{
			return this._Hp;
		}
		return this.MaxHp;
	}
}

public int Sp
{
	get
	{
		if (!this._position.isPlayer)
		{
			return this._Sp;
		}
		return this.MaxSp;
	}
}

private PositionData _position;
		
//positiondata	
public bool isPlayer;