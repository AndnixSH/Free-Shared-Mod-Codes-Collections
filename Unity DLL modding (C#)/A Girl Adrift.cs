player.ins.currency.gem.Add((double)99999));
player.ins.currency.diamond.Add((double)99999));
player.ins.currency.gold.Add((double)99999));
player.ins.currency.mastery.Add((double)99999));


player.ins.currency.Add(new CurNumPair(data.ins.currecny.diamond, 200.0), new Vector3?(Vector3.zero), true);

// ui_win_setting
private void OnEnable()
{
	Refresher.UI.AddListener(new UnityAction(this.Refresh_UI));
	if (player.isLoaded)
	{
		player.ins.currency.Add(new CurNumPair(data.ins.currecny.dimension, 20000.0), new Vector3?(Vector3.zero), true);
		player.ins.currency.Add(new CurNumPair(data.ins.currecny.autosell, 20000.0), new Vector3?(Vector3.zero), true);
		player.ins.currency.Add(new CurNumPair(data.ins.currecny.diamond, 20000.0), new Vector3?(Vector3.zero), true);
		player.ins.currency.Add(new CurNumPair(data.ins.currecny.gold, 20000.0), new Vector3?(Vector3.zero), true);
		player.ins.currency.Add(new CurNumPair(data.ins.currecny.mana, 20000.0), new Vector3?(Vector3.zero), true);
		player.ins.currency.Add(new CurNumPair(data.ins.currecny.mastery, 20000.0), new Vector3?(Vector3.zero), true);
		player.ins.currency.Add(new CurNumPair(data.ins.currecny.potion, 20000.0), new Vector3?(Vector3.zero), true);
		player.ins.currency.Add(new CurNumPair(data.ins.currecny.amber, 20000.0), new Vector3?(Vector3.zero), true);
		player.ins.currency.Add(new CurNumPair(data.ins.currecny.trace, 20000.0), new Vector3?(Vector3.zero), true);
		player.ins.currency.Add(new CurNumPair(data.ins.currecny.buff, 20000.0), new Vector3?(Vector3.zero), true);
		this.Refresh_UI();
	}
}

private void Refresh_UI()
{
	this.text_version.text = "PMT Team";
}
