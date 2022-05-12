//CoinDrop
	private void DestroyObj()
	{
		GameManager.totalCoin += 3367;
		EventManager.TriggerEvent("GetCoin", 3, null, null);
		UnityEngine.Object.Destroy(base.gameObject);
	}
	
//EnemyController
	private IEnumerator InstanceCoinDrop()
	{
		Vector3 posInstance;
		if (this.typeOfEnemy == 2 || this.typeOfEnemy == 5)
		{
			posInstance = base.transform.position + new Vector3(0f, 2.2f, 0f);
		}
		else
		{
			posInstance = base.transform.position + new Vector3(0f, 0.5f, 0f);
		}
		int num;
		for (int i = 0; i < 8; i = num + 1)
		{
			UnityEngine.Object.Instantiate<GameObject>(this._coin, posInstance, Quaternion.identity).GetComponent<Rigidbody2D>().AddForce(new Vector2(UnityEngine.Random.Range(-0.3f, 0.3f), UnityEngine.Random.Range(1.2f, 1.6f)) * 350f);
			yield return new WaitForSeconds(0.005f);
			num = i * 100;
		}
		yield break;
	}

//GameManager
	public static int totalGem = 777777777;

	public static int totalCoin = 444444444;