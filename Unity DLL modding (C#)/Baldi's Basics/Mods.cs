//BaldiScript
	private void Move()
	{
		if (base.transform.position == this.previous & this.coolDown < 0f)
		{
			this.Wander();
		}
		this.moveFrames = 1f; //here
		this.timeToMove = this.baldiWait - this.baldiTempAnger;
		this.previous = base.transform.position;
		this.baldiAudio.PlayOneShot(this.slap);
		this.baldiAnimator.SetTrigger("slap");
	}
	
//FirstPrizeScript
	private void FixedUpdate()
	{
		
	}