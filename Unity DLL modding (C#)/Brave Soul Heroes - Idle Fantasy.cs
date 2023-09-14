//BattleControl.cs
	public void OnGUI()
	{
		ModMenu.OnGUI();
	}


		private void Update()
		{
			this.timer += Time.deltaTime;
			if (this.timer > this.waitTime)
			{
				if (Menu.Hack1)
				{
					Combat combat = UnityEngine.Object.FindObjectOfType<Combat>();
					if (combat == null)
					{
						Debug.LogWarning("No Combat found in scene");
						return;
					}
					CombatCharacter[] members = combat.EnemyTeam.Members;
					for (int i = 0; i < members.Length; i++)
					{
						members[i].Defense.Die();
					}
				}
				this.timer = 0f;
			}
		}