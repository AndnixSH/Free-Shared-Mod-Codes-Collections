using System;
using System.Collections;
using Devdog.InventoryPro.Dialogs;
using I2.Loc;
using PestelLib.AssetBundles;
using PlanetCommander;
using UnityDI;
using UnityEngine;

public class APKIntegrityChecker : MonoBehaviour
{
	private void Check()
	{
		if (Application.platform != 11 || Application.isEditor || Debug.isDebugBuild)
		{
			APKIntegrityChecker.Validated = true;
			return;
		}
		string installerID = CubeSoftwareNative.Instance.GetInstallerID();
		bool flag = CubeSoftwareNative.Instance.ValidateSignature("23AA19D52FF0D4CF4D05DE9FD035FA52ED97C9B5");
		bool flag2 = installerID == "com.android.vending";
		bool flag3 = CubeSoftwareNative.Instance.IsDebuggable();
		this._errCode = 0;
		if (!flag)
		{
			this._errCode |= 1;
		}
		if (!flag2)
		{
			this._errCode |= 2;
		}
		if (flag3)
		{
			this._errCode |= 4;
		}
		if (this._errCode != 0)
		{
			base.StartCoroutine(this.ShowDialogRoutine());
		}
		Debug.Log("_errCode =" + this._errCode);
		APKIntegrityChecker.Validated = (this._errCode == 0);
	}

	private IEnumerator ShowDialogRoutine()
	{
		yield return new WaitForSeconds(1f);
		this.confirmationDialog.ShowDialog(base.transform, ScriptLocalization.Get("Warning"), ScriptLocalization.Get("APKCheckError"), delegate(InventoryUIDialogBase dialog)
		{
			APKIntegrityChecker.DoQuit();
		}, delegate(InventoryUIDialogBase dialog)
		{
			APKIntegrityChecker.DoQuit();
		}, true);
		yield break;
	}

	private IEnumerator ShowLoadingDialogRoutine()
	{
		yield return new WaitForSeconds(1f);
		this.loadingDialog.ShowDialog(base.transform, ScriptLocalization.Get("Warning"), ScriptLocalization.Get("GPSConnectionFailed"), delegate(InventoryUIDialogBase dialog)
		{
			APKIntegrityChecker.Reload();
		}, delegate(InventoryUIDialogBase dialog)
		{
			APKIntegrityChecker.Quit();
		}, ScriptLocalization.Get("retry"), ScriptLocalization.Get("QUIT"));
		yield break;
	}

	private static void DoQuit()
	{
		Utilities.OpenStore();
		Application.Quit();
	}

	private static void Quit()
	{
		Application.Quit();
	}

	private static void Reload()
	{
		BundlesLoadingController.Instance.Restart();
	}

	private void Awake()
	{
		if (APKIntegrityChecker.Instance != null)
		{
			Object.Destroy(base.gameObject);
			return;
		}
		ContainerHolder.Container.Resolve<ErrorsHandler>(null);
		BundlesLoadingController.LoadingFailed = (Action)Delegate.Combine(BundlesLoadingController.LoadingFailed, new Action(delegate()
		{
			base.StartCoroutine(this.ShowLoadingDialogRoutine());
		}));
		APKIntegrityChecker.Instance = this;
	}

	private void Start()
	{
		this.Check();
	}

	private void OnDestroy()
	{
		APKIntegrityChecker.Instance = null;
	}

	public static APKIntegrityChecker Instance;

	public static bool Validated;

	[SerializeField]
	private ConfirmationDialog confirmationDialog;

	[SerializeField]
	private ConfirmationDialog loadingDialog;

	private int _errCode;
}
