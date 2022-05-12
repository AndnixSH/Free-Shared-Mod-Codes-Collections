//Game: Eleria
//Version: 0.4.3
//APK: https://apkpure.ai/eleria/

//Game is not working

//SoundManager
	public void OnGUI()
	{
		ModMenu.OnGUI();
	}

//ActorManager
	private int InitMonsterObject(GameObject model, MonsterInfo Monster, MonsterRefreshConfig refresh, ActorDefination def, List<int> equipBuffList)
	{
		MonsterConfig monsterConfig = Monster.monsterConfig;
		if (refresh == null)
		{
			refresh = Singleton<ConfigDataManager>.Instance.GetDataById<MonsterRefreshConfig>(Monster.monsterVo.Id);
		}
		if (def == null)
		{
			def = Singleton<ConfigDataManager>.Instance.GetDataById<ActorDefination>(monsterConfig.model);
		}
		if (refresh == null)
		{
			DebugUtil.LogErrorFormat("�Ҳ�����Ӧ�Ĺ���ˢ�±�Id:{0}", new object[]
			{
				Monster.monsterVo.Id
			});
			return 0;
		}
		model.transform.parent = null;
		model.name = refresh.id.ToString();
		model.transform.localScale = Vector3.one * monsterConfig.scale;
		model.transform.localRotation = Quaternion.Euler(0f, -90f, 0f);
		ActorMonster actorMonster = model.AddComponent<ActorMonster>();
		actorMonster.ActorAttachBones = Utils.find(model, "AttachBones");
		MonsterProperty monsterProperty = actorMonster.actorProperty as MonsterProperty;
		monsterProperty.id = refresh.id;
		monsterProperty.attack = monsterConfig.physicAttack;
		monsterProperty.defense = monsterConfig.physicDefense;
		monsterProperty.crit = monsterConfig.crit;
		monsterProperty.symptom = monsterConfig.symptom;
		if (Monster.monsterVo != null)
		{
			if (ModMenu.mod1) //One hit kill
			{
				monsterProperty.hp = Monster.monsterVo.Hp - 99999999;
			}
			else
			{
				monsterProperty.hp = Monster.monsterVo.Hp;
			}
			monsterProperty.curHp = Monster.monsterVo.CurHp;
			monsterProperty.id = Monster.monsterVo.Id;
			if (ModMenu.mod2) //God mode
			{
				monsterProperty.attack = Monster.monsterVo.Attack - 99999999;
			}
			else
			{
				monsterProperty.attack = Monster.monsterVo.Attack;
			}
			monsterProperty.defense = Monster.monsterVo.Defense;
			monsterProperty.crit = Monster.monsterVo.Crit;
			monsterProperty.symptom = Monster.monsterVo.Symptom;
			monsterProperty.fu = Monster.monsterVo.Fu;
		}
		//...
	}