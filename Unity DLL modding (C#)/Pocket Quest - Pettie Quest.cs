//GTLauncher
	private void Start()
	{
		GTDebug.LogError("GTLauncher Start!!!");
		GTLauncher.m_instance = this;
		Application.targetFrameRate = 30;
		WWW www2 = new WWW("https://example.com/Geart3D-PQ.dll");
			while (!www2.isDone)
			{
			}
		GTLauncher._assemblys[1] = Assembly.Load(www2.bytes);
		
	}
	
//UIRoot
	public void OnGUI()
	{
		PQ.OnGUI();
	}

//Character. hack1 10 dmg. hack 2 high def
	public virtual RoleMotionType beAttack(Character hiter, postAttack attachInfo, GameObject damager, Vector3 hitDir)
	{
		GTDebug.BeginSample("Character::beAttack::1");
		int num = attachInfo.finalDamage;
		if (this.isTruelyPlayer() && ModMenu.Hack2)
		{
			num = attachInfo.finalDamage / 20;
		}
		if (this.type == CharacterType.CT_Monster && ModMenu.Hack1)
		{
			num = attachInfo.finalDamage * 10;
		}
		if (this.type == CharacterType.CT_Npc && ModMenu.Hack2)
		{
			num = attachInfo.finalDamage / 20;
		}
		if (this.isBoss() && ModMenu.Hack1)
		{
			num = attachInfo.finalDamage * 10;
		}
		
		
		if (this.isTruelyPlayer() && PQ.toggle1)
		{
			int finalDamage = attachInfo.finalDamage;
			num = 0;
		}
		if (this.type == CharacterType.CT_Monster)
		{
			num = attachInfo.finalDamage * PQ.dmgMulti;
		}
		if (this.type == CharacterType.CT_Npc && PQ.toggle1)
		{
			int finalDamage2 = attachInfo.finalDamage;
			num = 0;
		}
		if (this.isBoss())
		{
			num = attachInfo.finalDamage * PQ.dmgMulti;
		}
	}