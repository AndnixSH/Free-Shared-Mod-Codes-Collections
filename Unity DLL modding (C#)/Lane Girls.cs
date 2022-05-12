//Game: Lane Girls
//Version: 1.1.0

//Class: CloverCore.WarshipBehaviour
public int DecreaseHp

if (ModMenu.hack1)
{
	if (this.warship.bFriend)
	{
		nOffset = 0;
	}
	else
	{
		nOffset = nOffset * 100 + 5000;
	}
}
	
if (ModMenu.hack1 && this.warship.bFriend)
{
	nOffset = 0;
}
if (ModMenu.hack1 && !this.warship.bFriend)
{
	nOffset = nOffset * 100 + 5000;
}

//Class: UIRoot	
public void OnGUI()
{
	ModMenu.OnGUI();
}

