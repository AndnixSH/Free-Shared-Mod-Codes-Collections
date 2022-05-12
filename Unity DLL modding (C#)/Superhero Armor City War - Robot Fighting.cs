//Game: Superhero Armor City War - Robot Fighting
//Version: 1.0.11
//APK: https://apkpure.com/superhero-armor-city-war-robot-fighting/com.ubimob.superhero.armor

//Class: GameManager
public static int totalCoin = 99999999;

public static int totalGem = 9999999;

public static int totalPoint = 99999999;
	
//PlayerController
public void getHit_Enemy(int damage)
{
	damage = damage * (100 - this.desIatk) / 100;
	int num = damage - this.defPlayer * 100;
	if (num < 1)
	{
		num = 1;
	}
	this.HealthMaxPlayer -= (float)num;
	this.clipHealth.ClipRect = new Rect(this.clipHealth.ClipRect.x - (float)num / this.currentHealth, 0f, 1f, 1f);
	if (!this.isDeath)
	{
		UnityEngine.Object.Instantiate<GameObject>(this.Explode, base.transform.position + new Vector3(UnityEngine.Random.Range(-0.1f, 0.1f), UnityEngine.Random.Range(0.4f, 0.8f), 0f), Quaternion.Euler(new Vector3(0f, 0f, (float)UnityEngine.Random.Range(0, 360))));
		UnityEngine.Object.Instantiate<GameObject>(this.blood, base.transform.position + new Vector3(UnityEngine.Random.Range(-0.3f, 0.3f), UnityEngine.Random.Range(1.8f, 2.8f), 0f), Quaternion.identity).GetComponent<SystemBloodController>().blood = 0;
	}
	if (this.HealthMaxPlayer <= 0f && !this.isDeath)
	{
		this.isDeath = true;
		this.SetAnim("Fall2", false);
		this.bgBlack.SetActive(false);
		this.SkillCon.SetSkillPlayerDie();
		this._UIGamePlay.Lose();
	}
	if (!this.isDeath && !this.isHurt && !this.isJump && !this.isJumping && !this.isSkill1 && !this.isSkill2 && !this.isSkill3 && !this.isSkill4 && !this.isAttack)
	{
		this.isHurt = true;
		this.skeletonAnimationHead.state.SetAnimation(0, "Hit", false);
	}
}