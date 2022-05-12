//Game: 위치스: 게임이미쳤다, 진짜 무한골드, 무한다이아
//Version: 1.4.9
//APK: https://www.apkmonk.com/app/com.gameto.wr.gp/

//Calling Mod menu
//Class: GameMain, GameRoot
public void OnGUI()
{
	ModMenu.OnGUI();
}

//1 hit kill
//Class: xdBaseRoleLogic
	public void notifyByHurt(xdDamageInfo di, xdBaseRoleLogic whoHitMe, int hurtValid, int hurtSort)
	{
		if (hurtValid < 1)
		{
			if (hurtValid == -1000)
			{
				xdBattleNumberMgr.inst.setNumberOnRoleHead(this, 78, enuXdBattleNumberStyle.white, enuXdBattleNumberSignStyle.nullg, false, base.footMan.transform.position, xdBattleNumberMgr.CHNOFFSET);
			}
			else
			{
				xdBattleNumberMgr.inst.setNumberOnRoleHead(this, (hurtValid != 0) ? 12 : 34, enuXdBattleNumberStyle.white, enuXdBattleNumberSignStyle.nullg, false, base.footMan.transform.position, xdBattleNumberMgr.CHNOFFSET);
			}
			return;
		}
		for (int i = 0; i < this.nXzFuncByPrevDamageList.Count; i++)
		{
			xdBaseRoleLogic.funcByPrevDamage funcByPrevDamage = this.nXzFuncByPrevDamageList[i];
			if (funcByPrevDamage != null)
			{
				di = funcByPrevDamage(this, whoHitMe, di);
			}
		}
		if (whoHitMe != null && whoHitMe.nXzDamageAddRace > 0 && this.propIO.race == whoHitMe.nXzDamageAddRace)
		{
			di.damage += di.damage * whoHitMe.nXzDamageAddRaceValue * 0.01f;
		}
		float num = 0f;
		if (di.type != xdDamageTyp.recovery && di.type != xdDamageTyp.recoveryMagic)
		{
			num = this.propIO.getFinalProp(enuXdRoleProp.rpDamageReduce);
			if (num > 1f)
			{
				num = 1f;
			}
		}
		di.damage -= di.damage * num;
		int num2 = this.notifyShieldByHurt(ref di);
		if (num2 > 0)
		{
			if (num2 == 1)
			{
				xdBattleNumberMgr.inst.setNumberOnRoleHead(this, 56, enuXdBattleNumberStyle.white, enuXdBattleNumberSignStyle.nullg, false, base.footMan.transform.position, xdBattleNumberMgr.CHNOFFSET);
			}
			else
			{
				xdBattleNumberMgr.inst.setNumberOnRoleHead(this, 12, enuXdBattleNumberStyle.white, enuXdBattleNumberSignStyle.nullg, false, base.footMan.transform.position, xdBattleNumberMgr.CHNOFFSET);
			}
			this.hurtCallBack(hurtSort, whoHitMe, true);
			return;
		}
		int inNum = (int)di.damage;
		if (whoHitMe && (whoHitMe.isPlayerSelf || whoHitMe.mRoleCamp == xdBaseRoleLogic.mainPlayer.mRoleCamp) && whoHitMe != this)
		{
			if (di.type == xdDamageTyp.critical)
			{
				xdBattleNumberMgr.inst.setNumberOnRoleHead(this, inNum, enuXdBattleNumberStyle.yellow, enuXdBattleNumberSignStyle.nullg, true, base.footMan.transform.position, 0);
			}
			else
			{
				enuXdBattleNumberStyle style;
				switch (di.type)
				{
				case xdDamageTyp.magic:
					style = enuXdBattleNumberStyle.white;
					goto IL_27E;
				case xdDamageTyp.real:
					style = enuXdBattleNumberStyle.white;
					goto IL_27E;
				case xdDamageTyp.recovery:
					style = enuXdBattleNumberStyle.green;
					goto IL_27E;
				}
				style = enuXdBattleNumberStyle.white;
				IL_27E:
				xdBattleNumberMgr.inst.setNumberOnRoleHead(this, inNum, style, enuXdBattleNumberSignStyle.nullg, false, base.footMan.transform.position, 0);
			}
		}
		else if (base.isPlayerSelf || this.mRoleCamp == xdBaseRoleLogic.playerMainPlayer.mRoleCamp)
		{
			xdBattleNumberMgr.inst.setNumberOnRoleHead(this, inNum, (di.type == xdDamageTyp.recovery) ? enuXdBattleNumberStyle.green : enuXdBattleNumberStyle.red, (di.type == xdDamageTyp.recovery) ? enuXdBattleNumberSignStyle.addg : enuXdBattleNumberSignStyle.subg, false, base.footMan.transform.position, 0);
		}
		if (di.type == xdDamageTyp.recovery)
		{
			di.damage = -di.damage;
		}
		double num3 = this.propIO.getAgeHealthProp();
		if (num3 < 1.0)
		{
			this.propIO.setAgeProp(enuXdRoleProp.rpHealth, 0.0);
		}
		else
		{
			// Mod here //
			if (ModMenu.hack1)
			{
				if (this.isPlayerSelf)
				{
					num3 -= (double)di.damage * 0.0;
				}
				else
				{
					num3 -= (double)di.damage + 99999999.0;
				}
			}
			// -------- //
			else
			{
				num3 -= (double)di.damage;
			}
			double finalHealthProp = this.propIO.getFinalHealthProp();
			if (num3 > finalHealthProp)
			{
				num3 = finalHealthProp;
			}
			this.propIO.setAgeProp(enuXdRoleProp.rpHealth, num3);
		}
		//...
	}
	
	public void setActionAttack(GameObject obj)
	{
		if (ModMenu.hack2 && !this.isPlayerSelf)
		{
			return;
		}
	}