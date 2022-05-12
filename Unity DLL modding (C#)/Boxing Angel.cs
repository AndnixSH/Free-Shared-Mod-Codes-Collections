//Game: Boxing Angel
//Version: 1.0.18
//APK: https://apkcombo.com/en-pt/boxing-angel/th.in.monogame.boxingangel/

//Class: CSPlayerStateManager
public override void init()
{
	base.transform.localRotation = Quaternion.identity;
	this.m_AICommand.Init(this, this.m_OpponentRole);
	CSPropertyValue roleSelfPropertyValue = CSDataCenter.GetRoleSelfPropertyValue();
	CSPropertyValue roleEquipPropertyValue = CSDataCenter.GetRoleEquipPropertyValue();
	roleSelfPropertyValue.Add(roleEquipPropertyValue);
	this.m_RoleData.m_ATK_Jab = roleSelfPropertyValue.Jab * (float)Menu.AtkMul; //atk multiplier
	this.m_RoleData.m_ATK_Hook = roleSelfPropertyValue.Hook * (float)Menu.AtkMul; //atk multiplier
	this.m_RoleData.m_ATK_Uppercut = roleSelfPropertyValue.Upper * (float)Menu.AtkMul; //atk multiplier
	this.m_RoleData.m_BloodLimit = (roleSelfPropertyValue.Vigor * 0.05f + 1f) * 50f + 350f;
	this.m_RoleData.Defense_Jab = roleSelfPropertyValue.Defense_Jab * (float)Menu.DefMul; //def multiplier
	this.m_RoleData.Defense_Hook = roleSelfPropertyValue.Defense_Hook * (float)Menu.DefMul; //def multiplier
	this.m_RoleData.Defense_Uppercut = roleSelfPropertyValue.Defense_Upper * (float)Menu.DefMul; //def multiplier
	this.m_RoleData.m_DizzyLimit = roleSelfPropertyValue.Spirit * 0.3f + 50f;
	CSSkillData csskillData = this.m_RoleData.m_SkillData[0];
	csskillData.m_RoleType = ROLE_TYPE.PLAYER;
	csskillData.m_SkillID = CSDataCenter.m_PKRoleInfo.Nirvana_Use[0];
	csskillData.Init();
	CSSkillData csskillData2 = this.m_RoleData.m_SkillData[1];
	csskillData2.m_RoleType = ROLE_TYPE.PLAYER;
	csskillData2.m_SkillID = CSDataCenter.m_PKRoleInfo.Nirvana_Use[1];
	csskillData2.Init();
	this.m_RoleData.m_Speed_Jab = 1f;
	this.m_RoleData.m_Speed_Hook = 1f;
	this.m_RoleData.m_Speed_Uppercut = 1f;
	this.m_RoleData.m_CritLv = roleSelfPropertyValue.CritLV;
	this.m_RoleData.m_BloodReply = roleSelfPropertyValue.BloodReply;
	this.m_RoleData.m_CritDamage = roleSelfPropertyValue.CritDamage;
	this.m_RoleData.m_BloodAddition = roleSelfPropertyValue.BloodAddition;
	base.init();
}