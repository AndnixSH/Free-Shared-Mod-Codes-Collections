//THis is how you bypass Cheat Engine Detection on Unity Gamers

using System;
using System.Diagnostics;
using CodeStage.AntiCheat.Detectors;
using CodeStage.AntiCheat.ObscuredTypes;
using UnityEngine;
using UnityEngine.Events;

public class FiveampCheatCore : MonoBehaviour
{
	public static bool hackDetected
	{
		return false;
	}

	private void Awake()
	{
		//code removed
	}

	public static void LogEvent(string s)
	{
		//code removed
	}

	private void CheckForCheatEngine()
	{
		//code removed
	}

	private void OnSpeedHackDetect()
	{
		//code removed
	}

	private void OnValueChange()
	{
		//code removed
	}

	public static void OnHackingDetected(string p_type = "")
	{
		//code removed
	}

	private static ObscuredBool s_didDetectHack = false;
}
