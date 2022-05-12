//Game: Bloop Go!
//Version: 1.1.5
//APK: https://play.google.com/store/apps/details?id=com.bloop.bloopgo&hl=en&gl=US

//GameController
public void OnGUI()
{
	ModMenu.OnGUI();
}

//CurrencyDisplay
using Bloop;
private void Start()
{
Game.User.AddCurrency(2000);
}
	
// Move
private void FixedUpdate()
if (ModMenu.hack1)
{
	if (this.m_player)
	{
		this._force.x = this.m_speed * 5f;
	}
	else
	{
		this._force.x = this.m_speed * 0.2f;
	}
}
else
{
	this._force.x = this.m_speed * num;
}
		
		
public void Jump(bool p_force = false)
{
	if (this._jumpCooldown <= 0f && (this._grounded || p_force || this._bounceCooldown > 0f))
	{
		this._jumpCooldown = 0.1f;
		if (p_force)
		{
			AudioSystem.PlaySFX("ExtraJump", this.m_audioSource, false);
		}
		else
		{
			AudioSystem.PlaySFX("Jump", this.m_audioSource, false);
		}
		if (p_force)
		{
			this.ResetVelocityY();
		}
		this.AddForce((!p_force) ? this.m_jump : (this.m_jump * 2f), 1);
		if (this._blob != null)
		{
			this._blob.Impact();
		}
		this.CheckGrounded(0.5f);
		for (int i = 0; i < this._groundCheckColliders.Length; i++)
		{
			if (this._groundCheckColliders[i] != null)
			{
				Bounce component = this._groundCheckColliders[i].GetComponent<Bounce>();
				if (component != null)
				{
					component.Trigger(this);
				}
			}
		}
		return;
	}
	if (this.m_player)
	{
		this._jumpCooldown = 0.1f;
		if (p_force)
		{
			AudioSystem.PlaySFX("ExtraJump", this.m_audioSource, false);
		}
		else
		{
			AudioSystem.PlaySFX("Jump", this.m_audioSource, false);
		}
		if (p_force)
		{
			this.ResetVelocityY();
		}
		this.AddForce((!p_force) ? this.m_jump : (this.m_jump * 2f), ForceMode2D.Impulse);
		if (this._blob != null)
		{
			this._blob.Impact();
		}
		this.CheckGrounded(0.5f);
		for (int j = 0; j < this._groundCheckColliders.Length; j++)
		{
			if (this._groundCheckColliders[j] != null)
			{
				Bounce component2 = this._groundCheckColliders[j].GetComponent<Bounce>();
				if (component2 != null)
				{
					component2.Trigger(this);
				}
			}
		}
	}
}
		