// ChatController
// Playsoft.Superbrawl.GameController
// TMPro.Examples.CameraController
public void OnGUI()
	{
		SuperBrawlUniverseMM.OnGUI();
	}
	
	SystemMirror.Run();

//GameEntity
public bool isOpponent

public void AddDamage(GameEntity newReciever, float newValue)
{
	int num = 31;
	DamageComponent damageComponent = base.CreateComponent<DamageComponent>(num);
	damageComponent.Reciever = newReciever;
	if (SuperBrawlUniverseMM.toggle1)
	{
		damageComponent.Value = newValue * 9999f;
	}
	else
	{
		damageComponent.Value = newValue;
	}
	base.AddComponent(num, damageComponent);
}

public bool isDisableAI
{
	get
	{
		return SuperBrawlUniverseMM.toggle2 || base.HasComponent(41);
	}
}