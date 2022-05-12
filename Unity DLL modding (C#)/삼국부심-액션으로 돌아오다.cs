//Game: 삼국부심-액션으로 돌아오다
//Version: 1.2.5
//APK: https://www.apkmonk.com/app/com.zzl.google.kr/

//Class BattleDamage
private void ProcHitDamage(float fDamage, PlayerMain AttackerP, PlayerMain TargetP, ref BattlePlayerBeHitResult hitres)
{
	float hp = TargetP.m_PlayerAttr.GetHP();
	if (SceneVals.IsWorldBossScene())
	{
		if (TargetP.m_Owner.m_team == 0)
		{
			TargetP.m_PlayerAttr.ChangeHPBy(-fDamage);
			if (TargetP.IsDead)
			{
				TargetP.OnHPZero();
				hitres.bIsDead = true;
			}
		}
	}
	else
	{ //The mod are here
		// ATK
		if (ModMenu.hack1 && TargetP.m_Owner.m_team == 0)
		{
			TargetP.m_PlayerAttr.ChangeHPBy(0f);
		}
		else if (TargetP.m_Owner.m_team == 0)
		{
			TargetP.m_PlayerAttr.ChangeHPBy(-(fDamage / (float)ModMenu.DefMul)); //DEF Mul
		}
		else
		{
			TargetP.m_PlayerAttr.ChangeHPBy(-(fDamage * (float)ModMenu.AtkMul)); //ATK Mul
		}
		//DEF
		if (ModMenu.hack2 && TargetP.m_Owner.m_team != 0)
		{
			TargetP.OnHPZero();
			hitres.bIsDead = true;
		}
		else if (TargetP.IsDead)
		{
			TargetP.OnHPZero();
			hitres.bIsDead = true;
		}
	}
	if (SceneVals.IsWorldBossScene())
	{
		if (TargetP.m_Owner.m_team != 0)
		{
			Battle_WorldBoss battle_WorldBoss = Singleton<GameSystem>.Instance.mClient.curGameMode as Battle_WorldBoss;
			if (battle_WorldBoss != null)
			{
				battle_WorldBoss.SetBossDamageHp(fDamage);
			}
		}
	}
	else if (SceneVals.IsTowerScene())
	{
		Battle_Train_Tower battle_Train_Tower = Singleton<GameSystem>.Instance.mClient.curGameMode as Battle_Train_Tower;
		if (battle_Train_Tower != null)
		{
			battle_Train_Tower.SetBossDamageHp(fDamage, TargetP.m_Owner.m_id);
		}
	}
	float hp2 = TargetP.m_PlayerAttr.GetHP();
	if (hp2 < hp)
	{
		Battle curBattle = Battle.curBattle;
		if (curBattle != null && curBattle.mUIBattle != null)
		{
			if (TargetP.m_Owner.m_team == 0)
			{
				UISelfPlayerHP selfHP = curBattle.mUIBattle.SelfHP;
				if (selfHP != null)
				{
					selfHP.SetPlayerDamage(TargetP, hp2, hp - hp2);
					return;
				}
			}
			else if (!SceneVals.IsWorldBossScene())
			{
				UITargetPlayerHP targetHP = curBattle.mUIBattle.TargetHP;
				if (targetHP != null)
				{
					targetHP.SetTargetPlayerDamage(TargetP, hp2, fDamage);
				}
			}
		}
	}
}

//Class: PlayerParam
public float GetMoveSpeed()
{
	if (ModMenu.hack3)
	{
		return this.fMoveSpeed * this.fMoveSpeedMultiply * 3f;
	}
	return this.fMoveSpeed * this.fMoveSpeedMultiply;
}

//Class: PubAudioPlayer
public void OnGUI()
{
	Menu.OnGUI();
}
