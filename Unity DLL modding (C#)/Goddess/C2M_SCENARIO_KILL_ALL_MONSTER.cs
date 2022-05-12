using System;
using PBBase;

namespace PackScenario
{
	public class C2M_SCENARIO_KILL_ALL_MONSTER : IPBData
	{
		public static CPBMessageInfo GetPBMsgInfo()
		{
			CPBMessageInfo result;
			if (C2M_SCENARIO_KILL_ALL_MONSTER.gs_PBMsgInfo != null)
			{
				result = C2M_SCENARIO_KILL_ALL_MONSTER.gs_PBMsgInfo;
			}
			else
			{
				C2M_SCENARIO_KILL_ALL_MONSTER.gs_PBMsgInfo = new CPBMessageInfo();
				C2M_SCENARIO_KILL_ALL_MONSTER.gs_PBMsgInfo.strPkgName = "PackScenario";
				C2M_SCENARIO_KILL_ALL_MONSTER.gs_PBMsgInfo.strMsgName = "C2M_SCENARIO_KILL_ALL_MONSTER";
				C2M_SCENARIO_KILL_ALL_MONSTER.gs_PBMsgInfo.tpCreateMsg = typeof(C2M_SCENARIO_KILL_ALL_MONSTER);
				C2M_SCENARIO_KILL_ALL_MONSTER.gs_PBMsgInfo.AddFldInfoFinished();
				result = C2M_SCENARIO_KILL_ALL_MONSTER.gs_PBMsgInfo;
			}
			return result;
		}

		private static CPBMessageInfo gs_PBMsgInfo;
	}
}
