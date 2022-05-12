//Orig
int __fastcall BattleSkill::getEnableBurstSkill(int a1, TaskBattleCard3D *a2, int a3)
{
  int v3; // r7
  TaskBattleCard3D *v4; // r5
  int v5; // r6
  int v6; // r4
  int v7; // r8
  int result; // r0
  _DWORD *v9; // r6
  int v10; // r0
  BattleLogic *v11; // r0
  int v12; // r1

  v3 = a1;
  v4 = a2;
  v5 = a3;
  v6 = TaskBattleCard3D::getBurstSkill(a2);
  if ( v6
    && ((v7 = DBMaster::getSkillInfoFromID(*(_DWORD *)(Net::s_instance + 28), **(_DWORD **)v6), v5)
     || (v9 = *(_DWORD **)v6,
         v10 = BattleSkill::calcSkillCondPenalty(v3, v4),
         v11 = (BattleLogic *)SkillUtil::getSkillCondPercentage(v9, v10, 0),
         BattleLogic::isPercentage(v11, v12))
     && *(_DWORD *)(v6 + 4)
     && BattleSkill::isSkillCondOk(v3, v7, v4)) )
  {
    result = v6;
  }
  else
  {
    result = 0;
  }
  return result;
}

//Mod
int __fastcall BattleSkill::getEnableBurstSkill(BattleSkill *a1, TaskBattleCard3D *a2, int a3)
{
  BattleSkill *v3; // r7
  TaskBattleCard3D *v4; // r5
  int v5; // r6
  int v6; // r4
  int v7; // r8
  int result; // r0
  int *v9; // r6
  int v10; // r0
  BattleLogic *v11; // r0
  int v12; // r1
  int v13; // t1

  v3 = a1;
  v4 = a2;
  v5 = a3;
  v6 = TaskBattleCard3D::getBurstSkill(a2);
  if ( v6
    && ((v7 = DBMaster::getSkillInfoFromID(*(DBMaster **)(Net::s_instance + 28), **(_DWORD **)v6), v5)
     || (v9 = *(int **)v6,
         v10 = BattleSkill::calcSkillCondPenalty(v3, v4),
         v11 = (BattleLogic *)SkillUtil::getSkillCondPercentage(v9, v10, 0),
         BattleLogic::isPercentage(v11, v12))
     && (v13 = *(_DWORD *)(v6 + 4), BattleSkill::isSkillCondOk(v3, v7, v4, 0))) )
  {
    result = v6;
  }
  else
  {
    result = 0;
  }
  return result;
}