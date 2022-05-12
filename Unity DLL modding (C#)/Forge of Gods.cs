	//AndroidUnityUtilWrapper.cs
	public static bool InstalledFromRightLocation()
	{
		return true;
	}

	//FieldMonster.cs
	public int attack
	{
		get
		{
			if (ModMenuScript.hack1)
			{
				if (this.Data.Owner == MonsterData.OwnerType.ENEMY && !FieldController.isMultiplayer)
				{
					num4 = (float)this.Data.attack / DifficultyController.GetEnemyStatsMultiplier();
				}
			}
			else
			{
				num4 = (float)this.Data.attack * DifficultyController.GetEnemyStatsMultiplier();
			}
			if (ModMenuScript.hack3 && this.Data.Owner == MonsterData.OwnerType.PLAYER)
			{
				return 99999999;
			}
		}
	}

	public int defence
	{
		get
		{
			if (ModMenuScript.hack2)
			{
				if (this.Data.Owner == MonsterData.OwnerType.ENEMY && !FieldController.isMultiplayer)
				{
					num4 = (float)this.Data.defence / DifficultyController.GetEnemyStatsMultiplier();
				}
				else
				{
					num4 = (float)this.Data.defence * DifficultyController.GetEnemyStatsMultiplier();
				}
			}
			if (ModMenuScript.hack4 && this.Data.Owner == MonsterData.OwnerType.PLAYER)
			{
				return 99999999;
			}
		}
	}

	//GameSettings.cs
	public static bool TUTORIAL_ENABLED
	{
		get
		{
			return false;
		}
	}

	//Initializer.cs
	private void OnObscuredTypeCheatingDetected()
	{
	}

	private void OnSpeedHackCheatingDetected()
	{
	}
	
	
	//SoundManager.cs
	public void OnGUI()
	{
		ModMenuScript.MyGUI();
	}
	
	
	//ModMenuScript.cs
	using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ModMenuScript : MonoBehaviour {

    public static bool hack1;
    public static bool hack2;
    public static bool hack3;
    public static string string1;
    public static string string2;
    public static string string3;
    public static bool ShowHide = false;

    public static void MyGUI()
    {

        if (GUI.Button(new Rect(20, 20, 130f, 30f), "SHOW/HIDE"))
        {
            ShowHide = !ShowHide;
        }

        if (ShowHide)
        {
            GUI.Box(new Rect(20, 50, 180, 170), "Andnix mod menu");
            if (GUI.Button(new Rect(25, 80, 170f, 30f), string1))
            {
                hack1 = !hack1;
            }
            if (GUI.Button(new Rect(25, 115, 170f, 30f), string2))
            {
                hack2 = !hack2;
            }
            if (GUI.Button(new Rect(25, 150, 170f, 30f), string3))
            {
                hack3 = !hack3;
            }
        }

        if (hack1)
        {
            string1 = "No enemy damage <color=green>ON</color>";
            hack1 = false;
        }
        else
        {
            string1 = "No enemy damage <color=red>OFF</color>";
            hack1 = true;
        }

        if (hack2)
        {
            string2 = "Very high Damage <color=green>ON</color>";
            hack2 = false;
        }
        else
        {
            string2 = "Very high Damage <color=red>OFF</color>";
            hack2 = true;
        }

        if (hack3)
        {
            string3 = "Very high defense <color=green>ON</color>";
            hack3 = false;
        }
        else
        {
            string3 = "Very high defense <color=red>OFF</color>";
            hack3 = true;
        }
    }
}

