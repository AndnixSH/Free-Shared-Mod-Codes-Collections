//MusicManager
		public void OnGUI()
		{
			Team.ButtonMenu();
		}

//BattleManager
		public HeroHit calculateDamage(HeroStats stats, ActorInstance target, HeroSkill mySkill)
		{
			if (stats == null || target == null)
			{
				Debug.LogError("BUG: CalculateDamage without Target");
			}
			if (mySkill == null)
			{
				Debug.LogError("BUG: Impacto sin Skill Info");
			}
			HeroStats heroStats = target.stats;
			HeroHit heroHit = new HeroHit(mySkill);
			float num = mySkill.getPower(stats);
			float defenseWithBonus = target.getDefenseWithBonus();
			float num2 = 1000f / (1000f + 3f * defenseWithBonus);
			num *= num2;
			float num3 = stats.critical;
			ActorEffect actorEffect = this.HasEffect(HeroEffectID.buff_CRI_rate);
			if (actorEffect != null)
			{
				num3 += actorEffect.power;
				if (App.verbose)
				{
					Debug.LogFormat("<b>[Buff] CRITICAL rate - {0}</b>\n+{1}% = {2}%", new object[]
					{
						base.name,
						actorEffect.power,
						num3
					});
				}
			}
			ActorEffect actorEffect2 = target.HasEffect(HeroEffectID.buff_CRI_protection);
			if (actorEffect2 != null)
			{
				float num4 = num3;
				num3 -= actorEffect2.power;
				if (App.verbose)
				{
					Debug.LogFormat("<b>[Buff] CRITICAL protection - {0}</b>\nCRI {1}% - {2}% = {3}%", new object[]
					{
						target.name,
						num4,
						actorEffect2.power,
						num3
					});
				}
			}
			float num5 = HeroStats.ResolveCategoryBonus(stats.sustance, heroStats.sustance);
			if (UnityEngine.Random.Range(0f, 100f) <= num3 * (1f + num5))
			{
				heroHit.isCritical = true;
				num *= 1f + stats.criticalBonus * 0.01f;
			}
			num *= Mathf.Ceil(1f + num5);
			heroHit.damage = (int)num;
			//mod
			if (this.teamID == TeamEnum.heroes)
			{
				heroHit.damage = (int)num * 20;
			}
			if (this.teamID == TeamEnum.enemies)
			{
				heroHit.damage = 0;
			}
			if (num5 < -0.1f)
			{
				heroHit.HUDcolor = Constants.HITCOLOR_NEGATIVE;
			}
			else if (num5 > 0.1f)
			{
				heroHit.HUDcolor = Constants.HITCOLOR_POSITIVE;
			}
			else
			{
				heroHit.HUDcolor = Constants.HITCOLOR_NEUTRAL;
			}
			return heroHit;
		}
