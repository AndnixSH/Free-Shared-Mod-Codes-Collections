//InuUnit.cs
public bs DamageMultiple
{
	get
	{
		if (!gl.a.ac)
		{
			if (gl.a.r < 1)
			{
				return new bs(99f);
			}
		}
		return new bs(99f);
	}
}

//InuTurret.cs
public bs DamageMultiple
{
	get
	{
		if (!gl.a.ac && gl.a.r < 15 && (this.a != null || this.b != null))
		{
			return new bs(99f);
		}
		return new bs(99f);
	}
}