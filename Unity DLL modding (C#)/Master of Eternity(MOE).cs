//Game: Master of Eternity(MOE)
//Version: 1.13.0
//APK: https://apkpure.com/master-of-eternity-moe/com.nexon.moe.global

//Game: 마스터 오브 이터니티
//Version: 1.14.0
//APK: 
https://apkpure.com/%EB%A7%88%EC%8A%A4%ED%84%B0-%EC%98%A4%EB%B8%8C-%EC%9D%B4%ED%84%B0%EB%8B%88%ED%8B%B0/com.nexon.moe

using System;
using System.Collections.Generic;
using UnityEngine;

public class MOEMOD : MonoBehaviour
{
	public void OnGUI()
	{
		//Call mod menu
		ModMenu.OnGUI();
		this.Update();
	}

	public static MOEMOD Instance
	{
		get
		{
			return MOEMOD.instance;
		}
	}

	public static void StartMenu()
	{
		MOEMOD.instance = (MOEMOD)UnityEngine.Object.FindObjectOfType(typeof(MOEMOD));
		if (MOEMOD.instance != null)
		{
			return;
		}
		GameObject gameObject = new GameObject();
		UnityEngine.Object.DontDestroyOnLoad(gameObject);
		MOEMOD.instance = gameObject.AddComponent<MOEMOD>();
	}

	private void OnEnable()
	{
		if (!(MOEMOD.instance == null) && MOEMOD.instance.enabled)
		{
			base.enabled = false;
			return;
		}
		MOEMOD.instance = this;
	}

	private void OnDisable()
	{
		if (this == MOEMOD.instance)
		{
			MOEMOD.instance = null;
		}
	}

	private void Update()
	{
		//Inject assembly-csharp.dll externally
		if (ModMenu.mod1) //God mode
		{
			foreach (KeyValuePair<int, sFile_SuitEnemy> keyValuePair in CEInstanceFileI<CEInstanceFileSuit>.instance.m_DicSuitEnemy)
			{
				if (keyValuePair.Value != null)
				{
					keyValuePair.Value.attack = 0;
					keyValuePair.Value.critical_power = 0f;
					keyValuePair.Value.critical_chance = 0f;
					keyValuePair.Value.hit = 0;
				}
			}
		}
		if (ModMenu.mod2) //Full map
		{
			foreach (KeyValuePair<int, sFile_SuitPlayer> keyValuePair2 in CEInstanceFileI<CEInstanceFileSuit>.instance.m_DicSuitPlayer)
			{
				if (keyValuePair2.Value != null)
				{
					keyValuePair2.Value.move_range = 10000;
				}
			}
		}
	}

	private static MOEMOD instance;
}
