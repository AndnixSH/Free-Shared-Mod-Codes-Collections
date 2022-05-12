//Game: Monster Empire AR CBT
//Version: 1.0.20
//APK: https://apkpure.com/monster-empire-ar-cbt/com.cmge.monstergocbt.gp

//Class: UIManager
public void OnGUI()
{
	ModMenu.OnGUI();
}

//Class: BaseObject
public void OnUnderAttack(int damage, bool isPlayAction, bool isNormal = false)
		{
			DelegateBridge _Hotfix0_OnUnderAttack = BaseObject.__Hotfix0_OnUnderAttack;
			if (_Hotfix0_OnUnderAttack != null)
			{
				_Hotfix0_OnUnderAttack.__Gen_Delegate_Imp52(this, damage, isPlayAction, isNormal);
				return;
			}
			if (!base.gameObject.activeSelf)
			{
				return;
			}
			if (this.m_bIsDie)
			{
				return;
			}
			this.m_RoleInfo.m_iHp -= damage;
			///// Mod here /////
			if (ModMenu.toggle1 && this.m_BaseTeam == BaseObject.BaseTeam.pPlayer)
			{
				this.m_RoleInfo.m_iHp -= damage * 0; //God mode
			}
			if (ModMenu.toggle2 && this.m_BaseTeam != BaseObject.BaseTeam.pPlayer)
			{
				this.m_RoleInfo.m_iHp -= damage * 20; //x20 DMG
			}
			///// //////// /////
			if (this.m_RoleInfo.m_iHp <= 0)
			{
				this.m_RoleInfo.m_iHp = 0;
				this.m_bIsDie = true;
				if (this == BattleController._Instence.m_IsActioningRole)
				{
					if (BattleController._Instence.m_ActionAnotherOnceList.Count > 0)
					{
						this.m_Animator.SetTrigger("Die");
						if (this.m_HeroPet)
						{
							this.SteMyPetDie();
						}
						base.StartCoroutine(this.WaitDieEnd(isNormal));
					}
					else
					{
						this.RoleDie(false, true);
					}
				}
				else
				{
					this.m_Animator.SetTrigger("Die");
					if (this.m_HeroPet)
					{
						this.SteMyPetDie();
					}
					base.StartCoroutine(this.WaitDieEnd(isNormal));
				}
				if (this.m_bIsSecondHurt)
				{
					this.m_bIsSecondHurt = false;
				}
			}
			else
			{
				if (damage > 0)
				{
					this.m_Animator.SetTrigger("Hurt");
				}
				if (isPlayAction)
				{
					base.StartCoroutine(this.WaitHurtEnd());
				}
			}
			if (this.m_RoleInfo.m_iBoss == 1 && this.m_BossShowInfo != null)
			{
				this.m_BossShowInfo.SubHealth();
			}
			else if (this.m_HealthBar)
			{
				this.m_HealthBar.SubHealth();
			}
		}