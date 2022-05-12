//Game: FINAL FANTASY AWAKENING：SE Authorize 3D ARPG
//Version: 1.19.0
//APK: https://apkpure.com/final-fantasy-awakening%EF%BC%9Ase-authorize-3d-arpg/com.se.finalfantasy

//Namespace: Client.Character
//Class: Character
public bool IsDead()
{
	return (ModMenu.hack1 && !this.IsHero()) || this.GetFSMState() == CharacterFSMStateType.DEAD;
}

public bool IsStrongShieldEnabled
{
	return true;
}

public bool NotDamageable
{
	return this.GetStatus(StatusType.NOT_DAMAGEABLE);
}

public bool IsWeakShieldEnabled
{
	get
	{
		return (ModMenu.hack2 && !this.IsHero()) || this.IsStand() || this.IsMoving() || this.IsControlled() || this.IsFlying() || this.IsHit();
	}
}

public bool IsWeakness()
{
	return (ModMenu.hack2 && this.IsHero()) || (this.GetCharacterData().HasWeakness && this.weaknessTimer.IsNotExceed() && this.isWeaknessInvoke);
}

public float HitRadius
{
	get
	{
		if (ModMenu.hack3 && !this.IsHero())
		{
			return 100f;
		}
		if (this.Skin == null)
		{
			return 0f;
		}
		return this.Skin.model.hitRadius * this.scale;
	}
}

//Class: Skill
public float CoolTime
{
	get
	{
		float result;
		if (!this._caster.GetSkillCoolSpeed().IsZero())
		{
			if (ModMenu.hack4)
			{
				result = 0f;
			}
			else
			{
				result = this._data.CoolTime / this._caster.GetSkillCoolSpeed();
			}
		}
		else if (ModMenu.hack4)
		{
			result = 0f;
		}
		else
		{
			result = this._data.CoolTime;
		}
		return result;
	}
}