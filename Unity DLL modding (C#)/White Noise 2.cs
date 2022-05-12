using System;
using System.Linq;
using HighlightingSystem;
using Milkstone.Utils;
using UnityEngine;
using UnityEngine.Rendering;

public class CheatsScript : MonoBehaviour
{
	private void Awake()
	{
		if (!Environment.GetCommandLineArgs().Contains("-cheats"))
		{
			UnityEngine.Object.DestroyImmediate(this);
		}
	}

	private void Update()
	{
		if (Input.GetKeyDown(KeyCode.F9))
		{
			if (PhotoModeCamera.instance != null)
			{
				PhotoModeCamera.instance.Destroy();
			}
			else
			{
				UnityEngine.Object.Instantiate<GameObject>(Resources.Load<GameObject>("PhotoMode"));
				PhotoModeCamera.instance.StopTime = true;
			}
		}
		if (Input.GetKeyDown(KeyCode.F8))
		{
			if (PhotoModeCamera.instance != null)
			{
				StageScript.Instance.AllowInput = true;
				PhotoModeCamera.instance.Destroy();
			}
			else
			{
				StageScript.Instance.AllowInput = false;
				UnityEngine.Object.Instantiate<GameObject>(Resources.Load<GameObject>("PhotoMode"));
				PhotoModeCamera.instance.StopTime = false;
			}
		}
		if (Input.GetKeyDown(KeyCode.F10))
		{
			GameObject gameObject = new GameObject();
			MegaGrab megaGrab = gameObject.AddComponent<MegaGrab>();
			megaGrab.SrcCamera = Camera.main;
			megaGrab.SaveName = "Capture";
			megaGrab.ResUpscale = 2;
			megaGrab.AASamples = 4;
			megaGrab.Quality = 1f;
			megaGrab.Path = Environment.CurrentDirectory;
			megaGrab.OutputFormat = IMGFormat.Tga;
			megaGrab.GrabWidthWillBe = 1920;
			megaGrab.GrabHeightWillBe = 1080;
			megaGrab.GrabKey = KeyCode.None;
			megaGrab.DoScreenGrab();
			Debug.Log("Done Screenshot");
			UnityEngine.Object.Destroy(gameObject, 0.1f);
		}
		if (Input.inputString.Length > 0)
		{
			this.lastInput += Input.inputString.ToLower();
			if (this.lastInput.Length > 10)
			{
				this.lastInput = this.lastInput.Remove(0, this.lastInput.Length - 10);
			}
			if (this.lastInput.EndsWith("ravpic"))
			{
				this.Ravpic();
			}
			else if (this.lastInput.EndsWith("movie"))
			{
				this.Ravpic();
				this.Noise();
				this.Outline();
				this.StopTapes();
				this.Music();
			}
			else if (this.lastInput.EndsWith("shazam"))
			{
				StageScript.Instance.EndStage(StageScript.EndStageReasons.SurvivorsWon);
			}
			else if (this.lastInput.EndsWith("iddqd"))
			{
				((SurvivorController)StageScript.Instance.LocalCharacter).Data.Die();
			}
			else if (this.lastInput.EndsWith("showtapes"))
			{
				foreach (GoalInstance goalInstance in StageScript.Instance.Goals)
				{
					if (goalInstance != null && !goalInstance.IsCleared)
					{
						HighlighterHelper componentInChildren = goalInstance.GetComponentInChildren<HighlighterHelper>();
						if (componentInChildren != null)
						{
							componentInChildren.ConstantOn(Color.white, 30f);
						}
					}
				}
			}
			else if (this.lastInput.EndsWith("sane"))
			{
				((SurvivorController)StageScript.Instance.LocalCharacter).Data.Sanity.MaxOut();
			}
			else if (this.lastInput.EndsWith("terror"))
			{
				((SurvivorController)StageScript.Instance.LocalCharacter).Data.Sanity.Progress = 0f;
			}
			else if (this.lastInput.EndsWith("outline"))
			{
				this.Outline();
			}
			else if (this.lastInput.EndsWith("asylum"))
			{
				foreach (SurvivorController survivorController in StageScript.Instance.Survivors)
				{
					if (!survivorController.IsRemote && !survivorController.IsLocal)
					{
						survivorController.Data.Sanity.Value = 0f;
					}
				}
			}
			else if (this.lastInput.EndsWith("stoptapes"))
			{
				this.StopTapes();
			}
			else if (this.lastInput.EndsWith("nomonster"))
			{
				StageScript.Instance.Monster.gameObject.SetActive(false);
			}
			else if (this.lastInput.EndsWith("flash"))
			{
				StageScript.Instance.Monster.Data.StartFlashed(null);
			}
			else if (this.lastInput.EndsWith("debug"))
			{
				GameObject original = Resources.Load<GameObject>("UI/HUD/Debug");
				GameObject gameObject2 = UnityEngine.Object.Instantiate<GameObject>(original);
				gameObject2.transform.parent = PanelManager.Instance.transform;
				gameObject2.transform.Reset();
			}
			else if (this.lastInput.EndsWith("powerup"))
			{
				if (StageScript.Instance.LocalCharacter.IsSurvivor)
				{
					SurvivorController survivorController2 = StageScript.Instance.LocalCharacter as SurvivorController;
					survivorController2.ResetPowers();
				}
				else
				{
					MonsterController monsterController = StageScript.Instance.LocalCharacter as MonsterController;
					monsterController.Data.ResetPowers();
				}
			}
			else if (this.lastInput.EndsWith("catch"))
			{
				if (StageScript.Instance.LocalCharacter.IsSurvivor)
				{
					SurvivorController survivorController3 = StageScript.Instance.LocalCharacter as SurvivorController;
					StageScript.Instance.Monster.transform.position = survivorController3.transform.position - survivorController3.transform.forward * 1.2f * 0.9f;
				}
				else
				{
					SurvivorController survivorController4 = StageScript.Instance.Survivors[0];
					StageScript.Instance.Monster.transform.position = survivorController4.transform.position - survivorController4.transform.forward * 1.2f * 0.9f;
				}
			}
			else if (this.lastInput.EndsWith("getbot"))
			{
				SurvivorController survivorController5 = null;
				foreach (SurvivorController survivorController6 in StageScript.Instance.Survivors)
				{
					if (survivorController6.Movement.IsBot && survivorController6.Data.IsAlive)
					{
						survivorController5 = survivorController6;
						break;
					}
				}
				if (survivorController5 != null)
				{
					StageScript.Instance.Monster.transform.position = survivorController5.transform.position - survivorController5.transform.forward * 1.2f * 0.9f;
				}
			}
			else if (this.lastInput.EndsWith("noise"))
			{
				this.Noise();
			}
			else if (this.lastInput.EndsWith("nototems"))
			{
				foreach (Totem totem in StageScript.Instance.Totems)
				{
					totem.gameObject.SetActive(false);
				}
				foreach (TotemSpawn totemSpawn in StageScript.Instance.TotemSpawnPreviews)
				{
					totemSpawn.gameObject.SetActive(false);
				}
			}
			else if (this.lastInput.EndsWith("battery"))
			{
				SurvivorController survivorController7 = StageScript.Instance.LocalCharacter as SurvivorController;
				survivorController7.Data.BatteryLife.MaxOut();
				survivorController7.Data.FlashlightBattery.SetValue(100000f);
			}
			else if (this.lastInput.EndsWith("lowbat"))
			{
				SurvivorController survivorController8 = StageScript.Instance.LocalCharacter as SurvivorController;
				survivorController8.Data.BatteryLife.Progress = 0.15f;
				survivorController8.Data.FlashlightBattery.SetValue(100000f);
			}
			else if (this.lastInput.EndsWith("front"))
			{
				if (StageScript.Instance.LocalCharacter.IsSurvivor)
				{
					SurvivorController survivorController9 = StageScript.Instance.LocalCharacter as SurvivorController;
					StageScript.Instance.Monster.transform.position = survivorController9.transform.position + survivorController9.transform.forward * 18f + new Vector3(0f, 1.5f, 0f);
				}
				else
				{
					SurvivorController survivorController10 = StageScript.Instance.Survivors[0];
					StageScript.Instance.Monster.transform.position = survivorController10.transform.position - survivorController10.transform.forward * 18f + new Vector3(0f, 1.5f, 0f);
				}
			}
			else if (this.lastInput.EndsWith("reunite"))
			{
				EntityController localCharacter = StageScript.Instance.LocalCharacter;
				foreach (SurvivorController survivorController11 in StageScript.Instance.Survivors)
				{
					if (!(survivorController11 == localCharacter))
					{
						Vector2 vector = UnityEngine.Random.insideUnitCircle * 2.5f;
						survivorController11.transform.position = localCharacter.transform.position + localCharacter.transform.forward * 7.5f + new Vector3(0f, 1.5f, 0f) + new Vector3(vector.x, 0f, vector.y);
					}
				}
			}
			else if (this.lastInput.EndsWith("speed"))
			{
				((SurvivorController)StageScript.Instance.LocalCharacter).Data.Speed.SetValue(5f);
			}
			else if (this.lastInput.EndsWith("slow"))
			{
				((SurvivorController)StageScript.Instance.LocalCharacter).Data.Speed.SetValue(1f);
			}
			else if (this.lastInput.EndsWith("killbot"))
			{
				SurvivorController survivorController12 = null;
				foreach (SurvivorController survivorController13 in StageScript.Instance.Survivors)
				{
					if (survivorController13.Movement.IsBot && survivorController13.Data.IsAlive)
					{
						survivorController12 = survivorController13;
						break;
					}
				}
				if (survivorController12 != null)
				{
					survivorController12.Data.Die();
				}
			}
			else if (this.lastInput.EndsWith("allclear"))
			{
				RenderSettings.ambientLight = Color.white;
				RenderSettings.ambientMode = AmbientMode.Flat;
				RenderSettings.fogDensity = 0f;
			}
			else if (this.lastInput.EndsWith("music"))
			{
				this.Music();
			}
		}
	}

	private void Ravpic()
	{
		Camera componentInChildren = GameObject.Find("UI Root").GetComponentInChildren<Camera>();
		if (componentInChildren != null)
		{
			componentInChildren.enabled = !componentInChildren.enabled;
		}
	}

	private void Outline()
	{
		GameObject gameObject = StageScript.Instance.LocalCharacterMovement.Camera.gameObject;
		HighlightingBlitter component = gameObject.GetComponent<HighlightingBlitter>();
		if (component != null)
		{
			component.enabled = !component.enabled;
		}
		HighlightingRenderer componentInChildren = gameObject.GetComponentInChildren<HighlightingRenderer>();
		if (componentInChildren != null)
		{
			componentInChildren.enabled = !componentInChildren.enabled;
		}
	}

	private void StopTapes()
	{
		foreach (GoalInstance goalInstance in StageScript.Instance.Goals)
		{
			goalInstance.gameObject.SetActive(false);
		}
	}

	private void Noise()
	{
		Camera.main.GetComponent<CameraNoiseEffect>().enabled = !Camera.main.GetComponent<CameraNoiseEffect>().enabled;
	}

	private void Music()
	{
		if (JukeboxScript.Instance != null)
		{
			JukeboxScript.Instance.SetMixerGroup(JukeboxScript.GetMixerGroup("Jukebox"));
		}
	}

	private string lastInput = string.Empty;
}
