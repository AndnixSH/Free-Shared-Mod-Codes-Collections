//Game: Guardians Of Fantasy
//Version: 1.0.2
//APK: https://apkpure.com/guardians-of-fantasy/com.gamedreamer.mcen

//Call mod menu
//Class: UIRoot
public void OnGUI()
{
	ModMenu.OnGUI();
}

//Class: Monster
		public override void OnHit(IFieldObject iAttacker, int final_damage, int type)
		{
			FieldObject fieldObject = (FieldObject)iAttacker;
			if (base.State != 6)
			{
				if (final_damage == 0)
				{
					return;
				}
				int instance_id = fieldObject.Instance_id;
				if (base.State == null && !this.IsNotHit && this.PlayingSkillAnimTime <= 0f && !base.Revive)
				{
					this.HitDelayTime = 0f;
					if (type == 0)
					{
						string dataString = fieldObject.GetDataString("type");
						float @float = DataListManager.inst.GetData("Action", dataString).GetFloat("hitDelay");
						this.HitDelayTime = this.GetHitDelayTime() + @float;
					}
					else if (type == 2)
					{
						this.HitDelayTime = this.GetHitDelayTime();
					}
					else if (type == 1)
					{
						Skill skill = (Skill)fieldObject.GetSkillInfo(fieldObject.Packet_Skill.skill_id);
						this.HitDelayTime = this.GetHitDelayTime() + skill.HoldTime;
						if (skill.MoveType == "charge")
						{
							Data data = DataListManager.inst.GetData("SkillSpecial", skill.SkillData.ID);
							if (data != null)
							{
								this.HitDelayTime += data.GetFloat("PreAnimTime");
							}
						}
					}
					this.m_target_id = fieldObject.Instance_id;
					this.m_target_type = fieldObject.type;
					if (final_damage > 0)
					{
						base.ChangeState(9, false);
					}
				}
				else if (this.PlayingSkillAnimTime <= 0f && !base.Revive)
				{
					this.CheckEncounter(fieldObject);
				}
				// Mod here - One hit kill //
				if (ModMenu.hack1)
				{
					this.CalcHit(fieldObject.type, instance_id, final_damage + 99999);
					return;
				}
				// //
				this.CalcHit(fieldObject.type, instance_id, final_damage);
			}
		}