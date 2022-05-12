//NativeReceiver
notifyAnalytics

//data=hFyP0%2b%2fnkmT5zwxMnGziHVVZDauJs9nZBOI%2byFupHregI%2fTIG2BpJKmSgWZFwl5bKsyklQNcKtlQGUtLeiRs0f54768XczuMl4LIfX20uTRj5Gr3xNpst9TWu6oTHO0t2%2bWh1SAFNyh8rbdh%2blVUvERjjlWnMPtdjcVjn6e4emzJo%2bIQXc2f342r%2b5znv6A4HfLfoXFhZMjW%2fUQbrA4zU4M0aarw4oTvmKytNPrlziLA5GKqn5JrL8ZK2VLEJw3D%2b3Kaw5C8pp0XcNOEkuoP680wxZMRHs%2fRICOr2UX4M90%3d&app=rob&rcToken=bba92dd57962bd836cf6e2ce1cd4ee8c

//data=IUUL73%2fUfybCQlKVgrnSHyDYsJgVyJXcys3nBqa9zKlg3VTZiTdMave4fsoO5Jsa%2b7eX02KEOy2RPwJ9uB8tH7zTnbvCDeXdnC%2bAPpknWXc3vskXI64tDS4ReJ9NWjLGDyxrSIZdSwG8QuHmBBaldFY5cKPICxikc6IQZ2%2fEBke2%2b%2fpMqa%2fyf5bmgsYx5zZivWx0uf8LAERma8YNaaqhUbxyuYT9Yxv84VPwMM4kds0LS1hKiEjtebhg1gKg6BxZ1eME2gfTeOCKbqY73P8zV8m5EV2lzWVgdxq5%2bpVUbSLcs0K8GeXOeN5m9%2bJrj6IEfR9MRwAiz39lEfuczk5rB5IixxQ77%2f06eKdtu4EUMTw40135f9JZWsCE2ZxW%2fkg%2fO%2bNpvJOsmn%2bMzacw0bQwgw%3d%3d&app=rob&rcToken=65a058ba32f9417d9f046f3a4ad9f440

//data=hFyP0%2b%2fnkmT5zwxMnGziHVVZDauJs9nZBOI%2byFupHregI%2fTIG2BpJKmSgWZFwl5bKsyklQNcKtlQGUtLeiRs0WARD6aip6c90byBa6jH7SRUNo04zD3WW057RuQohS5cGyDN8UpbDYwx7mxVz%2bgVXrbehhuU6UWe3U%2bepu911%2fv437QfOWp9GgTq%2fFnplfBvA2Lv66WWr%2bQ2OAWH2um1b0G0ymqvJRWoG3nyfWJUCQOX1Did5Cd8TEuxMsinnzc348yC1Huh4zRHVB3Ph7iK7cpbucfu1k7DLDNhp59q5DY%3d&app=rob&rcToken=d2f4bdda7b29c2b17a8a33b6fb5655bc


//SoundManager
public void OnGUI()
	{
		DP.OnGUI();
	}

//InGameUtility
public static float CalcDamageDetailToEnemy(float atk, float defense, float tolerance)
	{

		if (DP.toggle1)
		{
			return (atk * (1f - tolerance) - defense) * (float)DP.dmgMulti;
		}
		return atk * (1f - tolerance) - defense;
	}

//Player : Character
protected override int CalcDamage(AttackedHitStatusLocal status, ref AtkAttribute damage_details)
	{
	if (DP.toggle1)
		{
			return 1;
		}
		return num;
		
	
	public float playerAtk
	{
		get
		{
			return this._playerAtk * (float)DP.dmgMulti;
		}
		protected set
		{
			this._playerAtk = value;
		}
	}
	
	
	protected float playerDef
	{
		get
		{
			return this._playerDef * (float)DP.defMulti;
		}
		set
		{
			this._playerDef = value;
		}
	}