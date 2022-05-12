//Game: Đại Tiên Truyện - Đại Chiến Tam Giới
//Version: 5.33
//APK: https://apkpure.com/%C4%91%E1%BA%A1i-ti%C3%AAn-truy%E1%BB%87n-%C4%91%E1%BA%A1i-chi%E1%BA%BFn-tam-gi%E1%BB%9Bi/com.daitientruyen.galaxy

//Class: BaseObject
public virtual void ApplyDamage(BaseObject attacker, Skill skill, int damage)
{
	this.ChangeHp(-damage);
	//-----------
	if (ModMenu.hack1 && this.GetCamp() == CommonParam.PlayerCamp)
	{
		this.ChangeHp(0);
	}
	else
	{
		this.ChangeHp(-damage * 10000);
	}
	//-----------
	if (attacker == null || skill == null)
	{
		return;
	}
	if (!skill.isNormalAttack && this.GetCamp() != CommonParam.PlayerCamp)
	{
		this.ShowPaoPao(damage.ToString(), PAOTEXT_TYPE.BLUE);
		return;
	}
	string strInfo = damage.ToString();
	if (attacker.mbIsCriticalStrike)
	{
		this.ShowPaoPao(strInfo, PAOTEXT_TYPE.YELLOW);
		return;
	}
	if (this.GetCamp() == CommonParam.PlayerCamp)
	{
		this.ShowPaoPao(strInfo, PAOTEXT_TYPE.RED);
		return;
	}
	this.ShowPaoPao(strInfo, PAOTEXT_TYPE.RED);
}

//UIRoot
public void OnGUI()
{
	ModMenu.OnGUI();
}