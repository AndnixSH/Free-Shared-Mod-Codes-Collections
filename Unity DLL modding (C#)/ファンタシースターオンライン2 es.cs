//BattleUtility.cs
//ARMv7: D8CBFC - FF 04 E0 E3 1e ff 2f e1
//ARM64: 144383C
	public static int CalcDamage(BattleUtility.AttackerParam atkParam, BattleUtility.RecieverParam rcvParam, ref BattleUtility.DamageResult dmgResult, bool isRecv, bool _IsGhostAttack)
	{
		...
		float num9 = atkParam.CalcC(isRecv, _IsGhostAttack);
		float num10 = atkParam.CalcOmega(isRecv, _IsGhostAttack);
		return (int)Mathf.Max(((num4 - num5) * num6 + num7 * num8) * num9 * num10, 1f) * Jap2Es2.dmgMulti; //
	}
	
//PlayerActBattle.cs
//ARMv7: AAA890
//ARM64: 11D0DC0
	private bool IsInvincible()
	{
		return true;
	}

//ChipFunction
private void CalcAttackDamageRatio(BattleUtility.AttackerParam _attackParam, BattleUtility.RecieverParam _rcv, ref int damage)
	{
		float num = Jap2Es2.dmgMulti;
	}
	
private void CalcWeakPointDamageRatio(BattleUtility.AttackerParam _attackParam, BattleUtility.RecieverParam rcv, ref int damage)
	{
		float num = Jap2Es2.dmgMulti;
	}

private void CalcWeaponAttributeDamageRatio(BattleUtility.AttackerParam _attackParam, BattleUtility.RecieverParam _rcv, ref int damage)
	{
		float num = Jap2Es2.dmgMulti;
	}
	
private void CalcMapDamageRatio(BattleUtility.AttackerParam _attackParam, ref int damage)
	{
		float num = Jap2Es2.dmgMulti;
	}


//BattleResultUI
InitParameter
this.result.EnemyKillSpeedGrade = grade;
		int num3 = (int)(Global.quest.BattleDamegeEvaluation * 200f);
		if (Global.quest.BattleDamegeEvaluation > 0f && Global.quest.BattleDamegeEvaluation < 0.1f)
		{
			num3 = 1;
		}
		this.result.DamagedRate = 120 - num3;
		if (this.result.DamagedRate < 0)
		{
			this.result.DamagedRate = 0;
		}
		this.result.DamagedCurrentPoint = num3;
		this.result.DamagedMaxPoint = 120;

//AndroidDialogManager
public void OnGUI()
{
	Jap2Es2.OnGUI();
}
