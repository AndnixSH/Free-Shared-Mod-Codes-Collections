//Game: Amazing Freestyle Mobile
//Version: v2.10.0.2
//APK: https://apkcombo.com/en-pt/freestyle-mobile/com.triples.game.freestyle.tha/

//Class: UIRoot (To show mod menu)
public void OnGUI()
{
	ModMenu.OnGUI();
}

//Class: UBasket
public void OnNoGoal(UBasketball ball)
{
	if (ModMenu.hack1)
	{
		this.OnGoal(ball);
	}
}