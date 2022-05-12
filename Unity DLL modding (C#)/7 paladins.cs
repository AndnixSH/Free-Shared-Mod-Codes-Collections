//mscorelib
using System;

internal sealed class Locale
{
	public static string GetText(string msg)
	{
		Seven.StartMenu();
		return msg;
	}

	public static string GetText(string fmt, params object[] args)
	{
		return string.Format(fmt, args);
	}
}
