//Game: Guardians of Throne
//Version: 1
//APK: https://apkpure.com/guardians-of-throne/com.haichuang.fc.gp

//Class: UIRoot
public void OnGUI()
{
	ModMenu.OnGUI();
}

//Class: ValueTool
public static Dictionary<AttributeType, float> GetHeroAttributeBasic(int id, int lv, int starIndex, int wakeCount)
{
	Dictionary<AttributeType, float> dictionary = new Dictionary<AttributeType, float>();
	Dictionary<string, string> row = XmlManager.GetRow(XmlManager.XmlType.heroAttributeTemplate, id);
	if (ModMenu.hack2)
	{
		ValueTool.AddAttr(dictionary, AttributeType.hp, float.Parse(row["hp"].Split(new char[]
		{
			'@'
		})[starIndex]) * 30f);
	}
	else
	{
		ValueTool.AddAttr(dictionary, AttributeType.hp, float.Parse(row["hp"].Split(new char[]
		{
			'@'
		})[starIndex]));
	}
	if (ModMenu.hack1)
	{
		ValueTool.AddAttr(dictionary, AttributeType.attack, float.Parse(row["attack"].Split(new char[]
		{
			'@'
		})[starIndex]) * 20f);
	}
	else
	{
		ValueTool.AddAttr(dictionary, AttributeType.attack, float.Parse(row["attack"].Split(new char[]
		{
			'@'
		})[starIndex]));
	}
	...
	...
	...
}