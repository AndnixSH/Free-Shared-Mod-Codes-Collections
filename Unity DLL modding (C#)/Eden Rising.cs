//Assets._TheWall.Scripts.UI.Contexts.Crafting
// BlueprintItemContext
public int RequiredAmount
		{
			get
			{
				return 0;
			}
		}
		
// Assets._TheWall.Scripts.UI.Contexts.Actor
// ActorContext
public float Health
		{
			get
			{
				return this.healthProperty.Value;
			}
		}
		
public float Mana
{
	get
	{
		return this.manaProperty.Value;
	}
}
