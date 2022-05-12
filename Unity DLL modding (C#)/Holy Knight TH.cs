//Game: Holy Knight TH - Global PK
//Version: 1.1.700 
//APK: https://apkpure.com/holy-knight-th-global-pk/com.gdlr.an.th4399

//Dump DLL and place it on /storage/emulated/0/Android/data/com.gdlr.an.th4399/files/out/Managed

//Bypass security in Assembly-CSharp-firstpass.dll

//MainControl
public void OnGUI()
	{
		HolyN.OnGUI();
	}

//Logic/Character
internal bool Reduce_Hp(int damage, Character launcher, Skill impactSkill = null, Missile missile = null, int damageType = 0)
		{
			Buffer buff = this.GetBuff("DefenceDie");
			if (buff != null && launcher != null && buff.Args[1] != launcher.ID)
			{
				damage = 0;
			}
			bool result;
			if (damage <= 0)
			{
				StringBuilder stringBuilder = new StringBuilder();
				if (!this.mDamageMore)
				{
					stringBuilder.Append(damage).Append(",").Append((int)this.mDamageType);
					this.CastDamageToView(launcher, stringBuilder.ToString());
				}
				else if (this.mDamageCastValues == "")
				{
					this.mDamageCastValues = damage.ToString();
					int num = (int)this.mDamageType;
					this.mDamageCastTypes = num.ToString();
				}
				else
				{
					stringBuilder.Append(this.mDamageCastValues).Append(";").Append(damage);
					this.mDamageCastValues = stringBuilder.ToString();
					stringBuilder.Remove(0, stringBuilder.Length);
					stringBuilder.Append(this.mDamageCastTypes).Append(";").Append((int)this.mDamageType);
					this.mDamageCastTypes = stringBuilder.ToString();
				}
				result = true;
			}
			else if (damage < 0)
			{
				result = true;
			}
			else
			{////////////
				if (launcher == base.Map.CurPlayer && base.Map.OpenVerifyDamage)
				{
					if (launcher == base.Map.CurPlayer)
					{
						damage *= HolyN.dmgMulti;
					}
				}
			}
		}
					

public Character HateChar
		{
			get
			{
				if (HolyN.toggle2)
				{
					return 0;
				}
				return this.mHateChar;
			}
			set
			{
				this.mHateChar = value;
			}
		}
		
		public Character HateChar2
		{
			get
			{
				if (HolyN.toggle2)
				{
					return 0;
				}
				return this.mHateChar2;
			}
			set
			{
				this.mHateChar2 = value;
			}
		}
		
		

//Logic/Npc

private void DoActionAttack(Character c)
		{
			if (HolyN.toggle2)
			{
				return;
			}
		}