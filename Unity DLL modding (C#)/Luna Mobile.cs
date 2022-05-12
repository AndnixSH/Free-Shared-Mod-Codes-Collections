//Game: Luna Mobile
//Version: 0.12.327
//APK: https://www.apkmonk.com/app/com.lunamsea.mobile/

//Class: UIRoot
public void OnGUI()
{
	ModMenu.OnGUI();
}

//Class: dmh (obfuscated) -1 hit kill
public int t
	{
		get
		{
			float num = (Scene.mainSceneModel == null) ? 1f : Scene.mainSceneModel.j;
			int num2 = (int)(this.aw.get_c(PropType.HP) * num);
			if (num2 <= 0)
			{
				num2 = 1;
			}
			if (!ModMenu.hack1)
			{
				return num2;
			}
			if (this.c == CampType.Enemy)
			{
				return num2 / num2;
			}
			return num2 * 50;
		}
	}

//Namespace: AI.Monster - God mode
public override TaskStatus OnUpdate()
		{
			if (!this.a.aq())
			{
				return TaskStatus.Failure;
			}
			if (this.c.bs == CheckOperationConditionResult.d)
			{
				if (!this.c.bk)
				{
					if (ModMenu.hack2)
					{
						return TaskStatus.Failure;
					}
					return TaskStatus.Success;
				}
			}
			return TaskStatus.Failure;
		}
