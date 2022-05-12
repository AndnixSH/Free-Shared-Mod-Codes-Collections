//Game: 剑魂榜
//Version: 1.1.1
//APK: http://news.4399.com/jianhb/

//Calling Mod menu
//Class: GameMain, GameRoot
public void OnGUI()
{
	ModMenu.OnGUI();
}

//Class: Monster
//1 hit kill
public uint MaxHP
		{
			[MethodImpl(MethodImplOptions.NoInlining)]
			get
			{
				if (ModMenu.hack1)
				{
					return 1u;
				}
				return this.maxHP_;
			}
			set
			{
				if (ModMenu.hack1)
				{
					this.maxHP_ = 0;
				}
				this.maxHP_ = value;
			}
		}

		//God mode		
		public uint PhyAtk
		{
			[MethodImpl(MethodImplOptions.NoInlining)]
			get
			{
				if (ModMenu.hack2)
				{
					return 0u;
				}
				return this.phyAtk_;
			}
			set
			{
				if (ModMenu.hack2)
				{
					this.phyAtk_ = 0;
				}
				this.phyAtk_ = value;
			}
			
		public uint MagicAtk
		{
			[MethodImpl(MethodImplOptions.NoInlining)]
			get
			{
				if (ModMenu.hack2)
				{
					return 0u;
				}
				return this.magicAtk_;
			}
			set
			{
				if (ModMenu.hack2)
				{
					this.magicAtk_ = 0;
				}
				this.magicAtk_ = value;
			}