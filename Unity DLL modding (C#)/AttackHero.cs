//Game: Attack Hero
//Version: 1.1.0
//APK: https://hero.ejoy.com/pc/

// AndroidManager
public void OnGUI()
{
	ModMenu.OnGUI();
}

//Class: RoleCtrl
public void CollideHitHurt(RoleCtrl attackPlayer)
{
	if (attackPlayer != null)
	{
		AnimStateAttackAttribute currentRigidTime = attackPlayer.GetCurrentRigidTime();
		float num;
		if (currentRigidTime != null)
		{
			num = (attackPlayer.roleAttribute.ATK + attackPlayer.roleAttribute.buffAttack) * currentRigidTime.multiplyATK;
		}
		else
		{
			num = attackPlayer.roleAttribute.ATK + attackPlayer.roleAttribute.buffAttack;
		}
		num += UnityEngine.Random.value * 2f;
		num *= LianZhaoManage.AttackPowerRate();
		if (this.GetRoleCategory() == RoleCtrl.RoleCategory.Enemy)
		{
			if (ModMenu.toggle1)
			{
				this._roleAttribute.HP.value = 0f;
			}
			this._roleAttribute.HP.value -= num;
			if (this._roleAttribute.HP.value < 0f)
			{
				this._roleAttribute.HP.value = 0f;
				this.KillBossListen(attackPlayer);
			}
			SceneMain.sceneMain.playerCtrl.AddAngry(1f);
			int lianZhaoShuMu = LianZhaoManage.GetLianZhaoShuMu();
			if (lianZhaoShuMu <= 2)
			{
				DamagePopupManager.Popup(RoleCtrl.RoleCategory.Enemy, this.GetHitEffectPos(), (int)num, 1);
				return;
			}
			if (lianZhaoShuMu - 3 > 2)
			{
				DamagePopupManager.Popup(RoleCtrl.RoleCategory.Enemy, this.GetHitEffectPos(), (int)num, 3);
				return;
			}
			DamagePopupManager.Popup(RoleCtrl.RoleCategory.Enemy, this.GetHitEffectPos(), (int)num, 2);
			return;
		}
		else if (!SceneMain.sceneMain.playerCtrl.unmatched && !ModMenu.toggle2)
		{
			this._roleAttribute.HP.value -= num;
			if (this._roleAttribute.HP.value < 0f)
			{
				this._roleAttribute.HP.value = 0f;
			}
			DamagePopupManager.Popup(RoleCtrl.RoleCategory.Hero, this.GetHitEffectPos(), (int)num, 1);
			UiManage.GetUI<FightMainUI>().GetSelectCard(this).PlayHitEffect();
		}
	}
}