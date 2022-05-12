//Game: Little Sister
//Version: 1.101
//APK: https://apkpure.com/little-sister/com.littlesister.littlesister

//Class: BaseObject
public virtual void ApplyDamage(BaseObject attacker, Skill skill, int damage)
{
	if (this.GetCamp() != CommonParam.PlayerCamp)
	{
		this.ChangeHp(-(damage * 50)); //x50 DMG
	}
	if (this.GetCamp() == CommonParam.PlayerCamp)
	{
		this.ChangeHp(-(damage * 0)); //God mode
	}
	if (attacker == null || skill == null)
	{
		return;
	}
	if (!skill.isNormalAttack && this.GetCamp() != CommonParam.PlayerCamp)
	{
		this.ShowPaoPao(damage.ToString(), PAOTEXT_TYPE.BLUE);
	}
	else
	{
		string strInfo = damage.ToString();
		if (attacker.mbIsCriticalStrike)
		{
			this.ShowPaoPao(strInfo, PAOTEXT_TYPE.YELLOW);
		}
		else if (this.GetCamp() == CommonParam.PlayerCamp)
		{
			this.ShowPaoPao(strInfo, PAOTEXT_TYPE.RED);
		}
		else
		{
			this.ShowPaoPao(strInfo, PAOTEXT_TYPE.RED);
		}
	}
}
