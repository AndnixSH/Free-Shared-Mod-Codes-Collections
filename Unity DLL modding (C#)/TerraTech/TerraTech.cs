//Damageable
public float Damage(ManDamage.DamageInfo info)
	{
		if (TerraTechModMenu.toggle1 && this.Block != null && this.Block.tank != null && this.Block.tank.IsPlayer)
		{
			return 0f;
		}
	}

		//ManSFX
		public void OnGUI()
		{
			TerraTechModMenu.OnGUI();
		}
		public void Update()
		{
			TerraTechModMenu.Update();
		}