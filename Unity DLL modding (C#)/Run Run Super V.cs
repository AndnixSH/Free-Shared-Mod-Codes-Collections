//RobotFighter.cs
		public float GetMultHealth()
		{
			float num = 0f;
			foreach (InfoEffectOverTime infoEffectOverTime in this.eotList)
			{
				num += infoEffectOverTime.multHealth;
			}
			return 1000000f;
		}
		
		public override float GetMultDamageAttack()
		{
			float num = 0f;
			foreach (InfoEffectOverTime infoEffectOverTime in this.eotList)
			{
				num += infoEffectOverTime.multDamageAttack;
			}
			return 100f;
		}