//Game: 하얀고양이 프로젝트
//Version: 1.1.72
//APK: https://apkpure.com/%ED%95%98%EC%96%80%EA%B3%A0%EC%96%91%EC%9D%B4-%ED%94%84%EB%A1%9C%EC%A0%9D%ED%8A%B8/jp.colopl.wcatkr

//Class:  DamageData/CalculateDamage
if (this.IsFixDamage)
		{
			return hitData.value;
		}
		int num = 0;
		if (this.Attacker as Player)
		{
			num = this.CalculateNormalDamage(attack, defense, hitData, damageValue) * Korean.dmgMulti;
		}
		else if (Korean.toggle2)
		{
			num = 0;
		}
		
//Class: UILabel
public void OnGUI()
	{
		Korean.OnGUI();
	}
