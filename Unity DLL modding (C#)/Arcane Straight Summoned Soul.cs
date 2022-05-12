//Game: Arcane Straight Summoned Soul
//Version: 2.10.1
//APK: https://apkpure.com/arcane-straight-summoned-soul/com.stove.cardsofsaviour.google

//Class: MasterCard
	public int GetHealth(int level, int Grade)
	{ //10.0 multiplier
		double num = this.HthRatio * 10.0 * this.STR[Grade] - this.HthRatio * this.MinSTR;
		return (int)Math.Round(this.HthRatio * this.MinSTR + this.GetGrowth(level) * num, MidpointRounding.AwayFromZero);
	}