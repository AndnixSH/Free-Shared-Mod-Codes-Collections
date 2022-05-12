// FuncOpenModel
public void Debug_AllOpen()
{
	foreach (FuncOpenInfo funcOpenInfo in this._func_infos)
	{
		if (funcOpenInfo != null)
		{
			funcOpenInfo.is_open = true;
		}
	}
	this.FireChangeEvent();
}
public void Debug_SetOpen(int id, bool is_open)
{
	Log.LogInfo("Debug_SetOpen, id:{0}, is_open:{1}", new object[]
	{
		id,
		is_open
	});
	FuncOpenInfo info = this.GetInfo(id);
	info.is_open = is_open;
	this.FireChangeEvent();
}
