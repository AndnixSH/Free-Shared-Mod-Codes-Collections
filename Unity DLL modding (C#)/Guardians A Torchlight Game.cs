//Game: Guardians: A Torchlight Game
//Version: 0.7.0
//APK: https://play.google.com/store/apps/details?id=com.pwrd.tlwest

//Calling Mod menu
//Class: UIRoot, ChatManager (Namespace: Client.Chat), GameAudioController (Namespace: Client)
public void OnGUI()
{
	ModMenu.ButtonMenu();
}

//Namespace: Client.Character
//Class: Player
private void _RebuildPlayerBaseData(PlayerTemplate.Stat stat)
		{
			if (stat != null)
			{
				CharacterData characterStat = Player._CharacterStat;
				characterStat.HealthPoint.Redefine(0f, stat.max_health_point, stat.max_health_point, 1f, 0f, 1f, 0f);
				characterStat.MagicPoint.Redefine(0f, stat.max_magic_point, 0f, 1f, 0f, 1f, 0f);
				//High dmg
				if (ModMenu.hack1)
				{
					characterStat.AttackPoint.Redefine(stat.attack_point, 3000f, 3000f);
				}
				else
				{
					characterStat.AttackPoint.Redefine(stat.attack_point, 1f, 0f);
				}
				characterStat.ArmorPoint.Redefine(stat.armor_point, 1f, 0f);
				characterStat.CriticalHitChance.Redefine(stat.critical_hit_chance, 1f, 0f);
				characterStat.CriticalHitDamage.Redefine(stat.critical_hit_damage, 1f, 0f);
				characterStat.BlockChance.Redefine(stat.block_chance, 1f, 0f);
				characterStat.BlockDamage.Redefine(stat.block_damage, 1f, 0f);
				characterStat.ModelMoveSpeed = stat.base_move_speed;
				characterStat.RealMoveSpeed.Redefine(stat.current_move_speed, 1f, 0f);
				characterStat.AttackSpeed.Redefine(stat.attack_speed, 1f, 0f);
				characterStat.SkillCostRate.Redefine(stat.skill_cost_rate, 1f, 0f);
				characterStat.SkillCoolSpeed.Redefine(stat.skill_cool_speed, 1f, 0f);
				characterStat.RestoreHealth.Redefine(stat.restore_health, 1f, 0f);
				characterStat.RestoreMagic.Redefine(stat.restore_magic, 1f, 0f);
				characterStat.AttackRestoreHealth.Redefine(stat.attack_restore_health, 1f, 0f);
				characterStat.AttackRestoreMagic.Redefine(stat.attack_restore_magic, 1f, 0f);
				characterStat.DamageBonus.Redefine(stat.damage_bonus, 1f, 0f);
				//High defence
				if (ModMenu.hack2)
				{
					characterStat.DamageReduction.Redefine(stat.damage_reduction, 5000f, 5000f);
				}
				else
				{
					characterStat.DamageReduction.Redefine(stat.damage_reduction, 1f, 0f);
				}
			}
		}


//No cd time
	