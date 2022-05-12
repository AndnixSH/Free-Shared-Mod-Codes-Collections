public class CUnit // TypeDefIndex: 3973
public static float Calc_AttackSpeed(CUnitInfo info); // 0x8CDF91
public void SetSkillCooltime(int nSkillIdx); // 0x8BA1BE

_Z14callSendResultiPcS_i
_Z12getfilecheckv
callMessage
j___stack_chk_fail
anti_debugv

    public static void Hacks()
    {
        for (int i = 0; i < 5; i++)
        {
            if (Ally[i] != null)
            {
                for (int j = 0; j < 7; j++)
                {
                    Ally[i].Skill[j].fCooltime = 0f;
                    Ally[i].Skill[j].fTotalCooltime = 0f;
                    Ally[i].Skill[j].fAICooltime = 0f;
                }
                Ally[i].Info.data.nSpecial = 0x7d0;
                Ally[i].Ability[0] = 150000f;
                Ally[i].Ability[1] = 150000f;
                Ally[i].Ability[2] = 150000f;
                Ally[i].Ability[3] = 150000f;
                Ally[i].Ability[4] = 350f;
                Ally[i].Ability[6] = 150000f;
                Ally[i].Ability[7] = 150000f;
                Ally[i].Ability[8] = 150000f;
                Ally[i].Ability[9] = 150000f;
            }
        }
    }


   public bool CanUseSkill()
    {
        Stage.Hacks();
        if (this.ContEffect[0x15].IsActive())
        {
            return false;
        }
        if (this.ContEffect[12].IsActive())
        {
            return false;
        }
        return this.CanBattle();
    }