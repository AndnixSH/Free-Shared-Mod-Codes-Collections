//Game: Seal of Codex
//Version: v2.11.1219
//APK: https://apkpure.com/seal-of-codex/com.funfia.sealofcodex

//AudioManager
public void OnGUI()
{
	ModMenu.OnGUI();
}

//Class: BattleUnitController
private void applyHit(OFullAttackData fullData)
{
	if (ModMenu.hack1 && this.BattleUnitCamp == BattleUnitController.UnitCamp.PLAYER)
	{
		return;
	}
}

public bool IsDead
{
	get
	{
		if (ModMenu.hack2)
		{
			return this.BattleUnitCamp == BattleUnitController.UnitCamp.ENEMY || this.m_isDead;
		}
		return this.m_isDead;
	}
}