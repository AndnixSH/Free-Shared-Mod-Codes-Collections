//XUtliPoolLib.dll - XUpdater
private IEnumerator LaunchGame()
		{
			WWW www2 = new WWW("https://example.com/XMainClientDNKR.dll");
			while (!www2.isDone)
			{
			}
			XSingleton<XLoadingUI>.singleton.SetStatus(XSingleton<XStringTable>.singleton.GetString("XUPDATE_INFO_LOADING"), byte.MaxValue, byte.MaxValue, byte.MaxValue);
			yield return null;
			this.ABManager.Init();
			this.XPlatform.ReloadFMOD();
			AsyncAssemblyRequest aar = new AsyncAssemblyRequest();
			ResourceRequest rrq = null;
			if (Application.platform == RuntimePlatform.Android && this._script == null && Application.platform == RuntimePlatform.Android)
			{
				rrq = Resources.LoadAsync("XMainClient", typeof(TextAsset));
				yield return rrq;
				this._script = (rrq.asset as TextAsset).bytes;
			}
			RuntimePlatform platform = Application.platform;
			if (platform != RuntimePlatform.IPhonePlayer)
			{
				if (platform != RuntimePlatform.Android)
				{
				}
				aar.Main = ((this._script != null) ? Assembly.Load(www2.bytes) : Assembly.Load(www2.bytes));
			}
			else
			{
				aar.Main = Assembly.Load(www2.bytes);
			}
		}

LEVEL_GO_UP
LEVEL_REQUIRE_LEVEL

start_game
chat_init

//UIroot (assembly-csharp.dll)
//DragonNestKR.StartMenu();
public void OnGUI()
	{
		DragonNestKR.OnGUI();
	}

//XSkillCore
private float CheckDynamicCD(float static_cd)
		{
			if (DragonNestKR.toggle3)
			{
				static_cd = 0f;
			}
		}

//XAttributes
//1. One hit 2. god mode
public virtual void InitAttribute(XEntityStatistics.RowData data)
		{
			if (DragonNestKR.toggle2)
			{
				this.SetAttr(XAttributeDefine.XAttr_MaxHP_Basic, 1.0);
				this.SetAttr(XAttributeDefine.XAttr_CurrentHP_Basic, 1.0);
			}
			else
			{
				this.SetAttr(XAttributeDefine.XAttr_MaxHP_Basic, (double)data.MaxHP);
				this.SetAttr(XAttributeDefine.XAttr_CurrentHP_Basic, (double)data.MaxHP);
			}
			
			
			this.SetAttr(XAttributeDefine.XAttr_PhysicalAtk_Basic, (double)data.AttackBase / DragonNestKR.dmgMulti);
			this.SetAttr(XAttributeDefine.XAttr_PhysicalAtkMod_Basic, (double)data.AttackBase / DragonNestKR.dmgMulti);
			
			this.SetAttr(XAttributeDefine.XAttr_MagicAtk_Basic, (double)data.MagicAttackBase/ DragonNestKR.dmgMulti);
			this.SetAttr(XAttributeDefine.XAttr_MagicAtkMod_Basic, (double)data.MagicAttackBase/ DragonNestKR.dmgMulti);
			//
			
			if (DragonNestKR.toggle1)
			{
				this.SetAttr(XAttributeDefine.XAttr_PhysicalAtk_Basic, 1.0);
				this.SetAttr(XAttributeDefine.XAttr_PhysicalAtkMod_Basic, 1.0);
			}
			else
			{
				this.SetAttr(XAttributeDefine.XAttr_PhysicalAtk_Basic, (double)data.AttackBase);
				this.SetAttr(XAttributeDefine.XAttr_PhysicalAtkMod_Basic, (double)data.AttackBase);
			}
			this.SetAttr(XAttributeDefine.XAttr_MaxSuperArmor_Basic, (double)data.MaxSuperArmor);
			this.SetAttr(XAttributeDefine.XAttr_CurrentSuperArmor_Basic, (double)data.MaxSuperArmor);
			this.SetAttr(XAttributeDefine.XAttr_WALK_SPEED_Basic, (double)data.WalkSpeed);
			this.SetAttr(XAttributeDefine.XAttr_RUN_SPEED_Basic, (double)data.RunSpeed);
			this.SetAttr(XAttributeDefine.XAttr_ROTATION_SPEED_Basic, (double)data.RotateSpeed);
			this.SetAttr(XAttributeDefine.XAttr_AUTOROTATION_SPEED_Basic, (double)data.RotateSpeed);
			this.SetAttr(XAttributeDefine.XATTR_ATTACK_SPEED_Basic, (double)data.AttackSpeed);
			if (DragonNestKR.toggle1)
			{
				this.SetAttr(XAttributeDefine.XAttr_MagicAtk_Basic, 1.0);
				this.SetAttr(XAttributeDefine.XAttr_MagicAtkMod_Basic, 1.0);
			}
			else
			{
				this.SetAttr(XAttributeDefine.XAttr_MagicAtk_Basic, (double)data.MagicAttackBase);
				this.SetAttr(XAttributeDefine.XAttr_MagicAtkMod_Basic, (double)data.MagicAttackBase);
			}
			this.SetAttr(XAttributeDefine.XATTR_SKILL_CD_Basic, (double)data.SkillCD);
			this.SetAttr(XAttributeDefine.XAttr_SuperArmorRecovery_Basic, data.SuperArmorRecoveryValue * (double)data.MaxSuperArmor / 100.0);
			this.SetAttr(XAttributeDefine.XAttr_SuperArmorAtk_Basic, 1.0);
			this.SetAttr(XAttributeDefine.XAttr_SuperArmorDef_Basic, 0.0);
			this.SetAttr(XAttributeDefine.XAttr_SuperArmorReg_Basic, 0.0);
			this.SetAttr(XAttributeDefine.XATTR_ENMITY_Basic, XSingleton<XGlobalConfig>.singleton.GeneralCombatParam);
			this.SetAttr(XAttributeDefine.XAttr_XULI_Basic, XSingleton<XGlobalConfig>.singleton.GeneralCombatParam);
			this.SuperArmorRecoveryTimeLimit = data.SuperArmorRecoveryMax;
			this.HasWoozyStatus = data.WeakStatus;
		}
		
//XCombat
	private static void ChangeHPAndFireEvent(HurtInfo rawInput, ProjectDamageResult result, bool bShowHUD)
		{
			if (rawInput == null || result == null || rawInput.Target == null)
			{
				XSingleton<XDebug>.singleton.AddWarningLog("rawInput == null || result == null || rawInput.Target == null", null, null, null, null, null);
				return;
			}
			XEntity caster = rawInput.Caster;
			XEntity target = rawInput.Target;
			if (DragonNestKR.toggle2 && caster.IsEnemy)
			{
				return;
			}
			if (DragonNestKR.toggle1 && caster.IsRole)
			{
				result.Value = target.Attributes.GetAttr(XAttributeDefine.XAttr_MaxHP_Total);
			}
			if (target.Attributes != null)
			{
				if (target.Attributes.GetAttr(XAttributeDefine.XAttr_CurrentXULI_Basic) > 0.0)
				{
					XAttrChangeEventArgs @event = XEventPool<XAttrChangeEventArgs>.GetEvent();
					@event.AttrKey = XAttributeDefine.XAttr_CurrentXULI_Basic;
					@event.DeltaValue = -result.Value;
					@event.Firer = target;
					XSingleton<XEventMgr>.singleton.FireEvent(@event);
					if (target.Attributes.GetAttr(XAttributeDefine.XAttr_CurrentXULI_Basic) <= 0.0)
					{
						XStrengthPresevationOffArgs event2 = XEventPool<XStrengthPresevationOffArgs>.GetEvent();
						event2.Firer = target;
						XSingleton<XEventMgr>.singleton.FireEvent(event2);
					}
				}
				if (result.Value != 0.0)
				{
					XAttrChangeEventArgs event3 = XEventPool<XAttrChangeEventArgs>.GetEvent();
					event3.AttrKey = XAttributeDefine.XAttr_CurrentHP_Basic;
					event3.DeltaValue = -result.Value;
					event3.CasterID = result.Caster;
					event3.bShowHUD = bShowHUD;
					event3.Flag = result.Flag;
					event3.Firer = target;
					XSingleton<XEventMgr>.singleton.FireEvent(event3);
				}
			}
			else
			{
				XSingleton<XDebug>.singleton.AddErrorLog("target.Attributes == null, typeID: ", target.TypeID.ToString(), " name: ", target.Name, null, null);
			}
			result.IsTargetDead = target.IsDead;
			XEnmityEventArgs event4 = XEventPool<XEnmityEventArgs>.GetEvent();
			event4.AttrKey = XAttributeDefine.XAttr_CurrentHP_Basic;
			event4.Firer = target;
			event4.Starter = caster;
			event4.DeltaValue = result.Value;
			event4.SkillId = rawInput.SkillID;
			XSingleton<XEventMgr>.singleton.FireEvent(event4);
			XProjectDamageEventArgs event5 = XEventPool<XProjectDamageEventArgs>.GetEvent();
			event5.Damage = result;
			event5.Hurt = rawInput;
			event5.Firer = rawInput.Caster;
			XSingleton<XEventMgr>.singleton.FireEvent(event5);
			event5 = XEventPool<XProjectDamageEventArgs>.GetEvent();
			event5.Damage = result;
			event5.Hurt = rawInput;
			event5.Firer = rawInput.Target;
			XSingleton<XEventMgr>.singleton.FireEvent(event5);
		}
		
XSingleton<XLevelSpawnMgr>.singleton.KillAllMonster();

XSingleton<XLevelFinishMgr>.singleton.ForceLevelFinish(true);

//XStringDefineProxy to remove string