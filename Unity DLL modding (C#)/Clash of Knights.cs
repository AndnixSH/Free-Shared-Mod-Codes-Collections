//Game: Clash of Knights
//Version: v10501
//APK: https://apkpure.com/clash-of-knights/com.neowizgames.game.fkglb

public class Actor : MonoBehaviour
{
	public virtual int Damage(Actor attacker, AttackType attackType, int damage, AttackInfo attackInfo, bool critical = False) { }
}