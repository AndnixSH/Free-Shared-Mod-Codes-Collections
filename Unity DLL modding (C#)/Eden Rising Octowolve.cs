//Octowolve https://github.com/Octowolve

using System;
using Assets._TheWall.Scripts.CoreGame;
using Assets._TheWall.Scripts.CoreGame.Sys;
using Assets._TheWall.Scripts.Entity;
using Assets._TheWall.Scripts.Monster;
using Assets._TheWall.Scripts.Player.Camera;
using Assets._TheWall.Scripts.SaveLoad;
using Assets._TheWall.Scripts.UI.Contexts.Debug;
using Assets._TheWall.Scripts.Utils;
using TheWall.Shared.Enums;
using UnityEngine;

namespace EdenRisingModMenu
{
    public class ModMenu : MonoBehaviour
    {
        public static void Menu()
        {
            if (GUI.Button(new Rect(670f, 20f, 130f, 30f), string.Format("Mod Menu is {0}", ModMenu.showMenu ? "ON" : "OFF"), ModMenu.BtnStyle))
            {
                ModMenu.showMenu = !ModMenu.showMenu;
            }
            if (ModMenu.showMenu)
            {
                Cursor.lockState = CursorLockMode.None;
                Cursor.visible = true;
                ModMenu.windowRect0 = GUI.Window(0, ModMenu.windowRect0, new GUI.WindowFunction(ModMenu.WindowFunction), "Modz");
                return;
            }
            if (ModMenu.esp)
            {
                Collider[] array = Physics.OverlapSphere(UnitySingletonBehavior<GameState>.Instance.PlayerManager.transform.position, 100f, LayerUtils.MonsterLayerMask);
                for (int i = 0; i < array.Length; i++)
                {
                    VisualActorMonster componentInParent = array[i].GetComponentInParent<VisualActorMonster>();
                    if (!(componentInParent == null))
                    {
                        RemoteEntityMonster remoteEntityMonster = componentInParent.GetEntity() as RemoteEntityMonster;
                        if (remoteEntityMonster != null && !remoteEntityMonster.IsDead)
                        {
                            Vector3 position = remoteEntityMonster.Position;
                            Vector3 vector = Camera.main.WorldToScreenPoint(position);
                            if (vector.z > 0f && ModMenu.IsInScreen(position))
                            {
                                Vector3 v2 = GUIUtility.ScreenToGUIPoint(vector);
                                v2.y = (float)Screen.height - v2.y;
                                ModMenu.RenderLines(new Vector2((float)(Screen.width / 2), (float)Screen.height), v2, Color.cyan);
                                GUI.Label(new Rect(vector.x, (float)Screen.height - vector.y, 120f, 120f), string.Concat(new object[]
                                {
                                    remoteEntityMonster.DisplayName,
                                    "\nCurrent Health: ",
                                    remoteEntityMonster.Health.ToString(),
                                    "\nMax Health: ",
                                    remoteEntityMonster.HealthMax.ToString(),
                                    "\nID:",
                                    remoteEntityMonster.Id.ToString()
                                }), new GUIStyle
                                {
                                    fontSize = 13,
                                    fontStyle = FontStyle.Bold,
                                    normal =
                                    {
                                        textColor = Color.red
                                    }
                                });
                            }
                        }
                    }
                }
            }
        }

        public static Texture2D BtnTexture
        {
            get
            {
                if (ModMenu.btntexture == null)
                {
                    ModMenu.btntexture = ModMenu.NewTexture2D;
                    ModMenu.btntexture.SetPixel(0, 0, new Color32(3, 155, 229, byte.MaxValue));
                    ModMenu.btntexture.Apply();
                }
                return ModMenu.btntexture;
            }
        }

        public static Texture2D NewTexture2D
        {
            get
            {
                return new Texture2D(1, 1);
            }
        }

        public static void Start()
        {
            if (ModMenu.BtnStyle == null)
            {
                ModMenu.BtnStyle = new GUIStyle();
                ModMenu.BtnStyle.normal.background = ModMenu.BtnTexture;
                ModMenu.BtnStyle.onNormal.background = ModMenu.BtnTexture;
                ModMenu.BtnStyle.active.background = ModMenu.BtnTexture;
                ModMenu.BtnStyle.onActive.background = ModMenu.BtnTexture;
                ModMenu.BtnStyle.normal.textColor = Color.white;
                ModMenu.BtnStyle.onNormal.textColor = Color.white;
                ModMenu.BtnStyle.active.textColor = Color.grey;
                ModMenu.BtnStyle.onActive.textColor = Color.grey;
                ModMenu.BtnStyle.fontSize = 12;
                ModMenu.BtnStyle.fontStyle = FontStyle.Normal;
                ModMenu.BtnStyle.alignment = TextAnchor.MiddleCenter;
            }
        }

        public static void Update()
        {
            //Doesnt recognize the F5 input. dunno why
            if (Input.GetKeyDown(KeyCode.F5))
            {
                ModMenu.showMenu = !ModMenu.showMenu;
            }
            if (ModMenu.tele2view && Input.GetKey(KeyCode.E))
            {
                RaycastHit raycastHit;
                if (!Physics.Raycast(UnitySingletonBehavior<GameState>.Instance.CameraPositionWithPlayerOffset, PlayerCameraInterface.Forward, out raycastHit))
                {
                    return;
                }
                UnitySingletonBehavior<GameState>.Instance.PlayerActor.transform.position = raycastHit.point;
            }
        }

        private static void WindowFunction(int windowID)
        {
            if (windowID == 0)
            {
                GUILayout.BeginArea(new Rect(5f, 15f, 290f, 400f));
                ModMenu.scrollViewVector0 = GUILayout.BeginScrollView(ModMenu.scrollViewVector0, new GUILayoutOption[]
                {
                    GUILayout.Width(280f),
                    GUILayout.Height(380f)
                });
                GUILayout.Label(string.Format("Current Actor Name: {0}", UnitySingletonBehavior<GameState>.Instance.PlayerActor.name), new GUILayoutOption[0]);
                GUILayout.Label(string.Format("Type your new Name here:", Array.Empty<object>()), new GUILayoutOption[0]);
                ModMenu.nameString = GUILayout.TextField(ModMenu.nameString, Array.Empty<GUILayoutOption>());
                if (GUILayout.Button(string.Format("Change Name", Array.Empty<object>()), new GUILayoutOption[0]))
                {
                    if (string.IsNullOrEmpty(ModMenu.nameString))
                    {
                        UnitySingletonBehavior<GameState>.Instance.PlayerManager.UpdatePlayerName("Octowolve wuz here");
                    }
                    else
                    {
                        UnitySingletonBehavior<GameState>.Instance.PlayerManager.UpdatePlayerName(ModMenu.nameString);
                    }
                }
                if (GUILayout.Button(string.Format("ESP {0}", ModMenu.esp ? "On" : "Off"), new GUILayoutOption[0]))
                {
                    ModMenu.esp = !ModMenu.esp;
                }
                if (GUILayout.Button(string.Format("10000 currency", Array.Empty<object>()), new GUILayoutOption[0]))
                {
                    UnitySingletonBehavior<AccountSaveSystem>.Instance.CurrencyAmount = 10000;
                }
                if (GUILayout.Button(string.Format("Freemode Cam", Array.Empty<object>()), new GUILayoutOption[0]))
                {
                    PlayerCameraInterface.FreeCameraMovementController.ToggleActivation();
                    if (PlayerCameraInterface.FreeCameraMovementController.IsActive)
                    {
                        UnitySingletonBehavior<VisualActorSystem>.Instance.SetRenderOrigin(PlayerCameraInterface.FreeCameraMovementController.transform);
                        PlayerCameraInterface.Disable();
                        UnitySingletonBehavior<GameState>.Instance.ThirdPersonController.DisableInput();
                    }
                    else
                    {
                        UnitySingletonBehavior<VisualActorSystem>.Instance.SetRenderOrigin(UnitySingletonBehavior<GameState>.Instance.PlayerActor.transform);
                        PlayerCameraInterface.Enable();
                        UnitySingletonBehavior<GameState>.Instance.ThirdPersonController.EnableInput();
                    }
                }
                if (GUILayout.Button(string.Format("Tele2View {0}", ModMenu.tele2view ? "On (Now Press E)" : "Off"), new GUILayoutOption[0]))
                {
                    ModMenu.tele2view = !ModMenu.tele2view;
                }
                GUILayout.EndScrollView();
                GUILayout.EndArea();
            }
            GUI.DragWindow(new Rect(0f, 0f, 10000f, 20f));
        }

        public static Material GetLineMaterial()
        {
            if (ModMenu.material == null)
            {
                //For everyone wondering how I knew which ints I had to set. take a look at this https://docs.unity3d.com/ScriptReference/GL.html
                ModMenu.material = new Material(Shader.Find("Hidden/Internal-Colored"));
                ModMenu.material.hideFlags = HideFlags.HideAndDontSave;
                ModMenu.material.SetInt("_SrcBlend", 5);
                ModMenu.material.SetInt("_DstBlend", 10);
                ModMenu.material.SetInt("_Cull", 0);
                ModMenu.material.SetInt("_ZWrite", 0);
            }
            return ModMenu.material;
        }

        public static bool IsInScreen(Vector3 pos)
        {
            if (Camera.main != null)
            {
                Vector3 vector = Camera.main.transform.InverseTransformPoint(pos);
                Vector3 vector2 = Camera.main.WorldToScreenPoint(pos);
                if (vector2.x > 0f && vector2.x < (float)Screen.width && vector2.y > 0f && vector2.y < (float)Screen.height && vector.z > 0f)
                {
                    return true;
                }
            }
            return false;
        }

        private static void RenderLines(Vector2 pointA, Vector2 pointB, Color color)
        {
            if (ModMenu.GetLineMaterial() != null)
            {
                ModMenu.GetLineMaterial().SetPass(0);
                GL.Begin(1);
                GL.Color(color);
                GL.Vertex3(pointA.x, pointA.y, 0f);
                GL.Vertex3(pointB.x, pointB.y, 0f);
                GL.End();
            }
        }

        private static bool showMenu;

        public static Texture2D btntexture;

        public static GUIStyle BtnStyle;

        private static Rect windowRect0 = new Rect(20f, 170f, 300f, 400f);

        private static Vector2 scrollViewVector0;

        private static string nameString;

        public static Material material;

        private static bool esp;

        private static bool tele2view;
    }
}