namespace HUD
{
    void (*SetHelpMessage)(char const* helpLabel, char* pHelpMsg, bool bQuick, bool bDisplayForever, int bAddToBrief, unsigned int nConditionFlag);
    char* (*GetText)(void* _this, const char* key);
}