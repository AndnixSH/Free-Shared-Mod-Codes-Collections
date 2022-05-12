using System;
using System.Collections;
using System.Collections.Generic;
using I2.Loc;
using PC.Data.Entity;
using PlanetCommander;
using UnityDI;
using UnityEngine;

public class APKIntegrityChecker : MonoBehaviour
{
	public void ApplicationVersionNotValid()
	{
		base.StartCoroutine(this.ShowDialogRoutine());
	}

	private IEnumerator ShowDialogRoutine()
	{
		yield return new WaitForSeconds(1f);
		DialogPopupData dialogPopupData = new DialogPopupData(ScriptLocalization.Get("Warning"), ScriptLocalization.Get("system_error_wrong_version_android"));
		dialogPopupData.ButtonsData.Add(new ButtonData("OK", ButtonColor.Default, delegate()
		{
			APKIntegrityChecker.DoQuit();
		}));
		CommonUIManager.ShowDialogPopup(dialogPopupData);
		yield break;
	}

	private IEnumerator ShowDialogServerRoutine(List<RegionConfiguration> confs, Action<RegionConfiguration> callback)
	{
		yield return new WaitForSeconds(1f);
		CommonUIManager.ShowDialogPopup(new DialogPopupData("Сервер", "Выбор за тобой:")
		{
			ButtonsData = 
			{
				new ButtonData(confs[0].RegionName, ButtonColor.Green, delegate()
				{
					callback(confs[0]);
				}),
				new ButtonData(confs[1].RegionName, ButtonColor.Green, delegate()
				{
					callback(confs[1]);
				})
			}
		});
		yield break;
	}

	public void ServerChoose(List<RegionConfiguration> confs, Action<RegionConfiguration> callback)
	{
		if (APKIntegrityChecker.serverChoosen)
		{
			return;
		}
		base.StartCoroutine(this.ShowDialogServerRoutine(confs, callback));
	}

	private static void DoQuit()
	{
		Utilities.OpenStore();
		Application.Quit();
	}

	private void Awake()
	{
		if (APKIntegrityChecker.Instance != null)
		{
			UnityEngine.Object.Destroy(base.gameObject);
			return;
		}
		ContainerHolder.Container.Resolve<ErrorsHandler>(null);
		APKIntegrityChecker.Instance = this;
	}

	private void Start()
	{
		APKIntegrityChecker.Validated = true;
	}

	private void OnDestroy()
	{
		APKIntegrityChecker.Instance = null;
	}

	public static APKIntegrityChecker Instance;

	public static bool Validated;

	public static bool serverChoosen;
}
