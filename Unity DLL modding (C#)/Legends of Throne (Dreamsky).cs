//Game: Legends of Throne (Dreamsky)
//Version: 3.0.45
//APK: https://www.apkmonk.com/app/com.dr.qmsg/

//Calling Mod menu
//Class: AudioManager
public void OnGUI()
{
	ModMenu.ButtonMenu();
}

//Class: BattleActorInfo. x100 dmg | god mode
public static DamagedResult CalculateDamage(Role sender, Role recevier, Skill skill, SkillTrigger eventFrameData, int groupOrder, BLDamageSource damageSource, int buffId = -1)
		{
			DamagedResult damagedResult = recevier.damagedResult;
			damagedResult.sender = sender;
			damagedResult.recevier = recevier;
			damagedResult.damageType = eventFrameData.GetBLSkillDamageTypeValue();
			damagedResult.frame = LogicTime.GetCurrent().frameCount;
			damagedResult.time = LogicTime.GetCurrent().time;
			DamageProperty damageProperty = sender.GetDamageProperty();
			DamageProperty damageProperty2 = recevier.GetDamageProperty();
			if (damageProperty != null && damageProperty2 != null)
			{
				bool flag = false;
				DebuffGongjiXiuzhengBLPassiveSkill debuffGongjiXiuzhengBLPassiveSkill = sender.GetDebuffGongjiXiuzhengBLPassiveSkill();
				if (debuffGongjiXiuzhengBLPassiveSkill != null && recevier.ContainsBuff(debuffGongjiXiuzhengBLPassiveSkill.buffIdList))
				{
					flag = true;
					if (PkLogicManager.isLog2FileForceEnable)
					{
						PkLogicManager.Log2FileForce("触发" + sender.getRoleIdStr() + "的被动技能308 DEBUFF攻击修正，需要临时增加属性");
					}
					for (int i = 0; i < debuffGongjiXiuzhengBLPassiveSkill.attrIds.Length; i++)
					{
						int prop = (int)debuffGongjiXiuzhengBLPassiveSkill.attrIds[i];
						long attrValue = debuffGongjiXiuzhengBLPassiveSkill.attrValues[i];
						long attrWanfenbi = debuffGongjiXiuzhengBLPassiveSkill.attrWanfenbis[i];
						sender.GetDamageProperty().AddAttr(prop, attrValue, attrWanfenbi, "DEBUFF攻击修正");
					}
				}
				bool flag2;
				float num = (!(flag2 = eventFrameData.IsPhysical())) ? damageProperty.nenglianggongji : damageProperty.wuligongji;
				float num2 = (!flag2) ? damageProperty.nengliangchuantou : damageProperty.wulichuantou;
				float num3 = (!flag2) ? damageProperty2.nengliangfangyu : damageProperty2.wulifangyu;
				float num4 = (!flag2) ? ConfigUtils.GetGlobalValue("nenglianggongjixishu") : ConfigUtils.GetGlobalValue("wuligongjixishu");
				float num5 = (num * eventFrameData.GetJinengbeilv(groupOrder) + eventFrameData.GetJinengJichuWuliGongjili(groupOrder)) / num4;
				if (PkLogicManager.isLog2FileForceEnable)
				{
					PkLogicManager.Log2FileForce(string.Concat(new object[]
					{
						"senderGongjili=",
						num,
						"|Jinengbeilv=",
						eventFrameData.GetJinengbeilv(groupOrder),
						"|JinengJichuWuliGongjili=",
						eventFrameData.GetJinengJichuWuliGongjili(groupOrder),
						"|jinengWuliShanghai=",
						num5
					}));
				}
				float jinenggongjishangxian = eventFrameData.GetJinenggongjishangxian(groupOrder);
				if (0f < jinenggongjishangxian)
				{
					num5 = Math.Min(num5, jinenggongjishangxian);
				}
				float num6;
				// Mod here //
				if (ModMenu.hack1)
				{
					if (sender.GetRoleType() == RoleType.Mecha)
					{
						num6 = 0.01f;
					}
					else
					{
						num6 = 1E-06f;
					}
				}
				else
				{
					num6 = 0.0001f;
				}
			}
		}