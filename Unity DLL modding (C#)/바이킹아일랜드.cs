//BattleActor
	public virtual EReactType TakeDamage(BaseActor attacker, int damage, EDamageType damageType, bool canKnockBack1, float knockbackForce)
	{
		if (this.targetActor == null)
		{
			this.SetTarget(attacker);
		}
		this.aggroSys.AddTarget(attacker.gameObject, damage);
		this.SpawnEffectEx("Prefab/fx_beaten_001", null, this.myTrans.position + (attacker.myTrans.position - this.myTrans.position) * 0.25f + new Vector3(0f, 1f, 0f));
		bool flag = base.StateMachine.currentState is BattleActor.BattleSkillActionState;
		if (this.hasRigidbody && canKnockBack1)
		{
			this.myRigid.AddForce((this.myTrans.position - attacker.myTrans.position).normalized * knockbackForce);
			if (this.pawnBaseData.actorType == ActorType.Viking && !flag)
			{
				base.StateMachine.ChangeState(this.GetNewState(EActorState.Damaged));
			}
		}
		int num = damage - this.pawnBaseData.GetDefense();
		num = ((num >= 0) ? num : 1);
		//God mode
		//1 Hit Kill enemy
		if (this.pawnBaseData.actorType != ActorType.Boss && this.pawnBaseData.actorType != ActorType.Enemy)
		{
			PawnBaseData pawnBaseData = this.pawnBaseData;
			pawnBaseData.hp = pawnBaseData.hp;
		}
		else
		{
			this.pawnBaseData.hp -= this.pawnBaseData.hp;
		}
		//
		BaseActor.DrawDamage(this, Mathf.Max(1, num));
		if (this.pawnBaseData.hp <= 0)
		{
			this.pawnBaseData.hp = 0;
			base.StateMachine.ChangeState(this.GetNewState(EActorState.Die));
			return EReactType.Died;
		}
		if (damageType == EDamageType.Magical && !this.isDie && !flag)
		{
			SoundMgr.instance.PlayClip("Sound/Char/se_battle_common_shot_001", false);
			if (this.pawnBaseData.actorType != ActorType.Boss && this.pawnBaseData.actorType != ActorType.Enemy)
			{
				AnimationController.Play(this, EAnimNames.damaged01, false, false, true);
			}
			if (this.pawnBaseData.actorType != ActorType.Boss)
			{
				AnimationController.Play(this, EAnimNames.idle01, true, false, true);
			}
		}
		return EReactType.Damaged;
	}
