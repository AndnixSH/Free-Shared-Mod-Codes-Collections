// asd4
private void Update()
{
	if (Help.state != 0)
	{
		return;
	}
	
	//Can always jump all time
	if (Input.GetButton("Jump") || Help.tap)
	{
		//change this.rgb.velocity.x to 0 to not move left or right when jumping
		this.rgb.velocity = new Vector2(0, this.groundVelocity.y + this.jumpSpeed);
		this.jumpTimer = 0f;
		Help.audioManager.PlaySound("jump");
	}
	if (!Input.GetButton("Jump"))
	{
		this.jumpTimer = -1f;
	}
}

// asd4
private void groundTouch(Collision2D collisionInfo)
{
	this.touchArea = 0f;
	if (collisionInfo.contacts.Length == 2)
	{
		this.touchArea = (collisionInfo.contacts[0].point - collisionInfo.contacts[1].point).magnitude;
	}
	this.touchArea = Mathf.Min(this.touchArea, 1f);
	this.touchArea = 1f;
	this.grounded = true;
	Vector2 vector = this.groundVelocity;
	this.groundVelocity = (collisionInfo.rigidbody ? collisionInfo.rigidbody.velocity : Vector2.zero);
	float num = 1E+10f; //Always sticky
	
	//remove this line to always stay in middle
	this.rgb.velocity = new Vector2(Mathf.MoveTowards(this.rgb.velocity.x, this.groundVelocity.x, num * this.touchArea * Time.fixedDeltaTime), this.rgb.velocity.y);
}


public partial class Gameplay : MonoBehaviour
{
	public void setScore(float score)
	{
		if (score <= this.currentScore)
		{
			return;
		}
		if (score % 1f == 0f)
		{
			this.gc.Refresh(false);
			this.pc.Refresh(false);
		}
		if (score > 1f)
		{
			this.ss.Replace();
		}
		
		//Set score here
		this.currentScore = 1337;
		this.scoreText.text = "1337";
		if (SteamManager.Initialized && score == 69f)
		{
			SteamUserStats.SetAchievement("achievement_69");
			SteamUserStats.StoreStats();
		}
	}
}
