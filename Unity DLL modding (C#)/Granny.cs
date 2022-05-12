//EnemyAIGranny
FixedUpdate

public virtual void followPlayer()
	{
	}

//spiderHitPlayer
	public virtual void OnTriggerEnter(Collider other)
	{
		string b;
		while (ModMenu.hack1)
		{
			switch (1)
			{
			case 0:
				break;
			default:
				b = "MagicalWorld";
				IL_35:
				if (other.gameObject.tag == b)
				{
					((spiderControll)this.Spider.GetComponent(typeof(spiderControll))).huntPlayer = false;
					((spiderControll)this.Spider.GetComponent(typeof(spiderControll))).playerDead();
					((playerCaught)this.Player.GetComponent(typeof(playerCaught))).spiderBitePlayer = true;
				}
				return;
			}
		}
		b = "Player";
		goto IL_35;
	}

//backgroundSound
	public void OnGUI()
	{
		ModMenu.OnGUI();
	}