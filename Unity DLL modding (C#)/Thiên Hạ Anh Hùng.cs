//Game: Thiên Hạ Anh Hùng
//Version: 1.7.1.1022
//APK VN: https://apkpure.com/thi%C3%AAn-h%E1%BA%A1-anh-h%C3%B9ng/vn.sohagame.sg195
//APK EN: https://apkpure.com/pocket-kingdoms-war-of-glory/mobi.mobgame.threekings

//Class: BattleAtk
private AttackInfo CollectAtkInfo(Attack atk)
{
	//Fast win
	if (!this.attackerUnit.isSelf)
	{
		atk.damages.Clear();
	}
	....
}