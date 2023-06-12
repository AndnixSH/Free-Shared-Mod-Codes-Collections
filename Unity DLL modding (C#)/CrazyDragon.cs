

//NativeManager	
	public bool IsDectection()
	{
		return false;
	}

	public bool IsDebuggable()
	{
		return false;
	}
	
//PlayerControllerBase
ReviveAll()

//EnemyMng
Die() -> Enemy.On_Die()



//damage ?
Arua_list.Add

Character.info.is_player

smali
AssemblyChecking()V

ClassesChecking()

//Login
private void Start_Init()
	{
		SingletonBase<Notification>.Inst.Setup();
		SingletonBase<NativeManager>.Inst.Setup();
		if (SingletonBase<NativeManager>.Inst.IsDebuggable())
		{
			this.m_Mode.Set(Login.State.Detection);
			return;
		}
		if (SingletonBase<NativeManager>.Inst.IsDectection())
		{
			this.m_Mode.Set(Login.State.Detection);
			return;
		}

private void Detection_Init()
	{
		
	}
SingletonBase<NativeManager>.Inst.ShowToast("This program has been tamper detection!");

//EnemyMng
is_all_die

// SoundMng
public void OnGUI()
{
	CrazyDragonMod.OnGUI();
}

//DamageApply
if (this.info.ability == null || damage == 0)
		{
			return;
		}
		if (attacker.info.is_player && CrazyDragonMod.toggle1)
		{
			int hp11 = this.info.ability.hp;
			this.HP_Apply(attacker, -9999999);
			int hp22 = this.info.ability.hp;
			if (this.On_Damage != null && hp11 != hp22)
			{
				this.On_Damage(this, attacker, 9999999);
			}
			return;
		}
		if (!attacker.info.is_player && CrazyDragonMod.toggle2)
		{
			int hp33 = this.info.ability.hp;
			this.HP_Apply(attacker, 0);
			int hp44 = this.info.ability.hp;
			if (this.On_Damage != null && hp33 != hp44)
			{
				this.On_Damage(this, attacker, 0);
			}
			return;
		}
		int hp5 = this.info.ability.hp;
		this.HP_Apply(attacker, -damage);
		int hp6 = this.info.ability.hp;
		if (this.On_Damage != null && hp5 != hp6)
		{
			this.On_Damage(this, attacker, damage);
		}

//Skill		

public float CoolTime()
	{
		if (CrazyDragonMod.toggle3)
		{
			return 0f;
		}
		
public float Damage_Percent()
	{
		if (CrazyDragonMod.toggle1)
		{
			return 999999f;
		}
		if (this.tb_skill == null)
		{
			return 0f;
		}
		float num = this.SkillOptionValue(_TABLE_ITEM_SKILL_OPTION.TYPE.ADD_DAMAGE);
		return (this.tb_skill.fDamage + num) * (ModMenu.hack1 ? 20f : 1f);
	}