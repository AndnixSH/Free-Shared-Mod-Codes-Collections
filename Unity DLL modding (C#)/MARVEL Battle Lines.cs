//namespace CommonMV.Duel
//public class Character : ICloneable
public int BaseAttack
{
	[CompilerGenerated]
	get
	{
		if (!Menu.hack1)
		{
			return this.<BaseAttack>k__BackingField;
		}
		if (this.GetOwner() == PlayerNo.Player1 && this.GetController() == PlayerNo.Player1)
		{
			return this.<BaseAttack>k__BackingField * 10;
		}
		return this.<BaseAttack>k__BackingField * 0;
	}
	[CompilerGenerated]
	private set
	{
		this.<BaseAttack>k__BackingField = value;
	}
}