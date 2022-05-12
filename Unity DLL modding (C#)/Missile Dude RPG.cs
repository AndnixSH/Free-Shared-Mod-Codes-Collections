//UI_Master
	public void Start()
	{
		this.Start_Screen.SetActive(true);
		this.MainIcon_Set.transform.localPosition = new Vector3(-330f, 200f, 0f);
		this.Skill_Icon_Set.transform.localPosition = new Vector3(0f, -420f, 0f);
		this.Top_Menu_Set.transform.localPosition = new Vector3(0f, 200f, 0f);
		SoundManager.me.BGM_Play(0);
		Now_Data.me.GoldChange(new BigInteger("99999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999"));
		Now_Data.me.CRYSTAL_Change(new BigInteger("1000000"));
		Now_Data.me.MEDAL_Change(new BigInteger("1000000"));
		Now_Data.me.P_STONE_Change(new BigInteger("1000000"));
	}