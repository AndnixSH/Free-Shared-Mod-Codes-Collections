//Game: 諾文尼亞 連珠魔法奇遇祭
//Version: 1.7.2
//APK: https://apkpure.com/%E8%AB%BE%E6%96%87%E5%B0%BC%E4%BA%9E-%E9%80%A3%E7%8F%A0%E9%AD%94%E6%B3%95%E5%A5%87%E9%81%87%E7%A5%AD/com.enjoygame.nwnytw

//protobufData.dll

//Class: BattleSerFighter
	public int baseHp
		{
			get
			{
				return this._baseHp * 10;
			}
			set
			{
				this._baseHp = value;
			}
		}

		public int baseAtk
		{
			get
			{
				return this._baseAtk * 10;
			}
			set
			{
				this._baseAtk = value;
			}
		}

		public int baseDef
		{
			get
			{
				return this._baseDef * 10;
			}
			set
			{
				this._baseDef = value;
			}
		}

		public int baseReply
		{
			get
			{
				return this._baseReply * 10;
			}
			set
			{
				this._baseReply = value;
			}
		}