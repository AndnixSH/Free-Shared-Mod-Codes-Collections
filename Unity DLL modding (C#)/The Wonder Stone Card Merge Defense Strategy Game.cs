//Game: The Wonder Stone: Card Merge Defense Strategy Game
//Version: 2.0.23
//APK: https://apkpure.com/the-wonder-stone-card-merge-defense-strategy-game/com.cookapps.TheWonderStone

//Class: CharCharacter - 10 dmg
public virtual bool HitDamage(int damage, bool critical, Color txtColor = default(Color), bool photonEvent = false)
{
	if (!object.Equals(txtColor, default(Color)))
	{
		critical = false;
	}
	GameObject gameObject = MNObjectPool.Instance.PopFromPool("TxtDamage", null);
	Transform transform = gameObject.transform;
	transform.SetParent(CvsBattle.instance.transform);
	transform.localScale = Vector3.one;
	Vector3 position = (this._centerPos != null) ? this._centerPos.position : this._transform.position;
	Vector3 position2 = CvsBattle.instance._camInGame.WorldToScreenPoint(position);
	transform.position = Camera.main.ScreenToWorldPoint(position2);
	transform.position = new Vector2(transform.position.x, transform.position.y + 1.3f);
	gameObject.GetComponent<TxtDamage>().Init(damage, critical, txtColor);
	this._myStats.hp -= damage;
	if (ModMenu.hack1 && this._teamType == eTeamType.Enemy)
	{
		this._myStats.hp -= damage * 10;
	}
	if (TutorialManager.instance != null && MNUserData.instance.tutorial_step == 1 && this._myStats.trait == eUnitTrait.Castle && this._teamType == eTeamType.My && this._myStats.hp < 1)
	{
		this._myStats.hp = 1;
	}
	this.UpdateHp(true);
	return this.DeathCheck();
}

//Class: CharCharacter - God mode
public override bool BeHit(CharEntity enemyEntity, CCData ccData = null, int plusAttackDamage = 0, string hitEffectName = "")
{
	if (this._protected)
	{
		return false;
	}
	if (ModMenu.hack2 && this._teamType == eTeamType.My)
	{
		return false;
	}
	...
}