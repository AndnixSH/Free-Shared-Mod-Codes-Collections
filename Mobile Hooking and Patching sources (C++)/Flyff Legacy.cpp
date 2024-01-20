void (*o_ReceiveMonsterBeginAttackEvent)(void *_this, float fRotateY, int nAttackNo, long long monsterInstanceId);
void ReceiveMonsterBeginAttackEvent(void *_this, float fRotateY, int nAttackNo, long long monsterInstanceId)
{
    if (hack1)
        return;
    return o_ReceiveMonsterBeginAttackEvent(_this, fRotateY, nAttackNo, monsterInstanceId);
}