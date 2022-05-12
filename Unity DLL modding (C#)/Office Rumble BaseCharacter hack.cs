using MuhanCommon;
using MuhanDefine;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Diagnostics;
using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;
using UnityEngine;

public class BaseCharacter : MonoBehaviourObject
{
    public bool Damage(int iFinalAttackPower, int iCriticalRate, HitPosition eHitPosition, bool isDefense = false, bool isSkillDamage = false)
    {
        iCharacterInfo getCharacterInfo;
        Character nPCCharacter;
        bool flag = true;
        this.m_bBlowCritical = false;
        this.m_SkillAttrInfo.Clear();
        this.DefenseBuffandDeBuffCheck();
        int num = 0;
        num = InGameFormular.GetFinalCharDefencePower((float) this.m_NormalDefensePower, this.m_iEquipItemDefensePower, this.m_fPassiveDefencePower, this.m_SkillAttrInfo, this.m_ArrBuildingBuffInfo);
        if (isSkillDamage && (InGameSystem.Instance.SkillInfo.AttributeType1 == 0x2712))
        {
            num = 0;
        }
        if ((this.m_eUser == InGameUser.NPC) && (StartGameInfo.GameType == EGAME_TYPE.eGameType_BreakDownStressForNPC))
        {
            num = 100;
        }
        if (this.m_eUser == InGameUser.Player)
        {
            getCharacterInfo = InGameSystem.Instance.NPCCharacter.GetCharacterInfo;
            nPCCharacter = InGameSystem.Instance.NPCCharacter;
        }
        else
        {
            getCharacterInfo = InGameSystem.Instance.PlayerCharacter.GetCharacterInfo;
            nPCCharacter = InGameSystem.Instance.PlayerCharacter;
        }
        EELEMENTAL_TYPE elementalType = (EELEMENTAL_TYPE) getCharacterInfo.ElementalType;
        EELEMENTAL_TYPE eElementalTypeForDefender = (EELEMENTAL_TYPE) this.GetCharacterInfo.ElementalType;
        int num2 = CContentsFormular.GetDamage(iFinalAttackPower, elementalType, num, eElementalTypeForDefender);
        int iDamage = (int) Math.Round((double) (num2 * 0.05f));
        int min = num2 - iDamage;
        int max = num2 + iDamage;
        int iRnadAttackPower = UnityEngine.Random.Range(min, max);
        float num7 = UnityEngine.Random.Range((float) 1f, (float) 101f);
        float num8 = ((float) iCriticalRate) / 100f;
        if (((num7 <= num8) && !isDefense) && !isSkillDamage)
        {
            float num9 = nPCCharacter.m_iCriticalAttackPower * 0.0001f;
            iRnadAttackPower = (int) Math.Round((double) (iRnadAttackPower * num9));
            this.m_bBlowCritical = true;
            this.AudioPlay(CharacterSoundState.Critical_Blow);
        }
        else if (!isDefense)
        {
            int hitSoundCombo;
            if (this.m_eUser == InGameUser.Player)
            {
                hitSoundCombo = InGameSystem.Instance.NPCCharacter.HitSoundCombo;
            }
            else
            {
                hitSoundCombo = InGameSystem.Instance.PlayerCharacter.HitSoundCombo;
            }
            if ((hitSoundCombo % 3) == 0)
            {
                this.AudioPlay(CharacterSoundState.Blow);
            }
            else if (isSkillDamage)
            {
                this.AudioPlay(CharacterSoundState.Blow);
            }
        }
        if (isDefense)
        {
            float num12 = iRnadAttackPower;
            num12 *= 0.2f;
            iRnadAttackPower = (int) num12;
        }
        this.m_iRealAttackPower = iRnadAttackPower;
        if (isSkillDamage)
        {
            if (InGameSystem.Instance.IsSkillAttribute2Apply(this.m_eUser) && (InGameSystem.Instance.SkillInfo.AttributeType2 == 0x4e23))
            {
                float num13 = ((float) InGameSystem.Instance.SkillInfo.AttributeValue2) / 10000f;
                float num14 = iRnadAttackPower * num13;
                InGameSystem.Instance.SkillBloodSucking(this.m_eUser, (int) num14);
            }
        }
        else
        {
            this.CheckSkillHyena(iRnadAttackPower);
        }
        if (!this.IsInvincible && !this.m_Animator.GetBool("Invincible"))
        {
            BaseSkill skill;
            if (isSkillDamage && (InGameSystem.Instance.SkillInfo.AttributeType1 == 0x2713))
            {
                if (!isDefense)
                {
                    this.OnCharacterEffect(this.m_bBlowCritical, eHitPosition);
                }
                return flag;
            }
            if (isSkillDamage && (InGameSystem.Instance.SkillInfo.AttributeType1 == 0x2714))
            {
                if (!isDefense)
                {
                    this.OnCharacterEffect(this.m_bBlowCritical, eHitPosition);
                }
                return flag;
            }
            if (!isDefense)
            {
                InGameSystem.Instance.IndicateHit(this.m_eUser, this.m_bBlowCritical, iRnadAttackPower);
            }
            if ((this.m_arrBaseSkill.TryGetValue(0x4e36, out skill) && skill.IsSkillOnOffState(ESKILL_ATTR_TYPE.eSkillAttrType_Shield)) && !isDefense)
            {
                SkillShield shield = (SkillShield) skill;
                int num15 = shield.GetSaveValue - iRnadAttackPower;
                if (num15 >= 0)
                {
                    shield.SetSaveValue = shield.GetSaveValue - iRnadAttackPower;
                    iRnadAttackPower = 0;
                }
                else
                {
                    iRnadAttackPower -= shield.GetSaveValue;
                    shield.StopSkill();
                }
            }
            if (this.m_arrBaseSkill.TryGetValue(0x4e4a, out skill) && skill.IsSkillOnOffState(ESKILL_ATTR_TYPE.eSkillAttrType_Share))
            {
                SkillShare share = (SkillShare) skill;
                float num16 = iRnadAttackPower * (((float) skill.GetSkillInfo.AttributeValue2) / 10000f);
                share.ApplyShareDamage(num16);
                iRnadAttackPower -= (int) num16;
            }
			//Mod here
            if (this.m_eUser != InGameUser.Player)
            {
                this.m_iCurrentHP = 0;
            }
			//Mod here
            if (this.m_arrBaseSkill.TryGetValue(0x4e33, out skill) && skill.IsSkillOnOffState(ESKILL_ATTR_TYPE.eSkillAttrType_AmplificationHealthPoint))
            {
                SkillAmplificationHealthPoint point = (SkillAmplificationHealthPoint) skill;
                point.SetDamageValue = point.GetDamageValue + iRnadAttackPower;
            }
            if (this.m_arrBaseSkill.TryGetValue(0x4e34, out skill) && skill.IsSkillOnOffState(ESKILL_ATTR_TYPE.eSkillAttrType_ThornsAura))
            {
                float num17 = iRnadAttackPower * (((float) skill.GetSkillInfo.AttributeValue2) / 10000f);
                iDamage = (int) num17;
                InGameSystem.Instance.PlayThornsDamage(this.m_eUser, iDamage);
            }
            InGameSystemEvent.DamageEvent(this, iRnadAttackPower);
        }
        if (InGameTutorialSystem.Instance.IsDefaultTutorialGuide)
        {
            if (this.m_eUser == InGameUser.Player)
            {
                if (((this.m_iCurrentHP <= 2) && (InGameSystem.Instance.GameState != InGameState.KO)) && (InGameSystem.Instance.GameState != InGameState.KO_FEVER))
                {
                    this.m_iCurrentHP = 2;
                }
            }
            else if (((this.m_iCurrentHP <= 2) && InGameTutorialSystem.Instance.IsInvincible) && ((InGameSystem.Instance.GameState != InGameState.KO) && (InGameSystem.Instance.GameState != InGameState.KO_FEVER)))
            {
                this.m_iCurrentHP = 2;
            }
        }
        InGameTutorialSystem.Instance.CheckHp(this.m_eUser, this.m_iCurrentHP, this.m_iTotalHeathPoint);
        if (this.m_iCurrentHP <= 0)
        {
            flag = false;
            this.m_CharacterInfo.State = CharacterState.KO;
            this.m_iCurrentHP = 0;
            InGameSystem.Instance.KO(this.m_eUser, false);
        }
        else
        {
            this.CheckSkillChangeChar(isSkillDamage);
            this.CheckSkillFury();
        }
        InGameSystem.Instance.UpdateHP(this.m_eUser, true, false);
        if (!isDefense)
        {
            this.OnCharacterEffect(this.m_bBlowCritical, eHitPosition);
        }
        return flag;
    }

    public bool DeBuffSkillCheck(iSkillInfo skillinfo)
}
