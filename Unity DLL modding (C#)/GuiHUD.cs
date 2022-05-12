using DialogUtilities;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Diagnostics;
using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;
using UnityEngine;

[AddComponentMenu("Gui/Hud/Hud")]
public sealed class GuiHUD : GuiView
{
    public bool hack1;
    public bool hack2;
    public bool hack3;
    public bool hack4;
    public bool hack5;
    public bool hack6;
    public bool hack7;
    private HudActions hudActions;
    private HudBlueprint hudBlueprint;
    private HudControls hudControls;
    private HudCrosshair hudCrosshair;
    private HudEnemyHealth hudEnemyHealth;
    private HudGadgets hudGadgets;
    private HudHealth hudHealth;
    private HudIntel hudIntel;
    private HudMessages hudMessages;
    private HudMoveControl hudMoveControl;
    private HudMultiplayer hudMultiplayer;
    private HudNavigation hudNavigation;
    private HudObjectives hudObjectives;
    private HudRadar hudRadar;
    private HudRewardMessages hudRewardMessages;
    private HudSpecialHealth hudSpecialHealth;
    private HudStars hudStars;
    private HudStaticWeapon hudStaticWeapon;
    private HudTutorial hudTutorial;
    private HudWeaponSelector hudWeaponSelector;
    public static string[] IdDirections = new string[] { "Horizontal", "Vertical" };
    public static GuiHUD Instance;
    private float Last400msUpdate;
    public const string LOOK_DIRECTION_HORIZONTAL = "Horizontal";
    public const string LOOK_DIRECTION_VERTICAL = "Vertical";
    private IHudComponent[] m_HudComponents;
    private float[] m_Last100msUpdate;
    private int m_ObjectiveStringId;
    private bool m_OrigPosInitialised;
    private ComponentPlayer m_Player;
    private bool m_PlayingCutscene;
    private int m_StatusStringId;
    public bool OpenClose;
    private bool s_VirtualJoystickEnabled = true;

    private void CheckNewGamepad()
    {
        if (GuiNewGamepadNotify.CanShow())
        {
            GuiNewGamepadNotify.ShowNotify(GuiFrontendIngame.Show<GuiViewPopupYesNo>(), true);
        }
    }

    public void CurrentWeaponOrControlModeChanged()
    {
        this.hudActions.CurrentWeaponOrControlModeChanged();
    }

    public void DisableNavigationArrow(bool disable, HudNavigation.ShowLayer layer)
    {
        this.hudNavigation.ShowGui(!disable, layer);
    }

    private void EnableActionControls(bool on)
    {
        this.hudMoveControl.Enable(HudComponent.EnableLayer.Controls, on);
        this.hudActions.Enable(HudComponent.EnableLayer.Controls, on);
        this.hudControls.Enable(HudComponent.EnableLayer.Controls, on);
    }

    public static ImageInfo GetItemImage(SettingsID itemID)
    {
        if (itemID.IsWeapon())
        {
            return GameSettings.Weapons.Get(itemID).ImageInfo;
        }
        if (itemID.IsGadget())
        {
            return GameSettings.Gadgets.Get(itemID).ImageInfo;
        }
        if ((itemID != null) && itemID.Value.FastStartsWith("Fund."))
        {
            return GameSettings.Funds.Get(itemID).ImageInfo;
        }
        return null;
    }

    public void GuidedProjectileActivated(bool on)
    {
        this.hudActions.Enable(HudComponent.EnableLayer.GuidedProjectile, !on);
        this.hudRadar.Enable(HudComponent.EnableLayer.GuidedProjectile, !on);
        this.hudGadgets.Enable(HudComponent.EnableLayer.GuidedProjectile, !on);
        this.hudHealth.Enable(HudComponent.EnableLayer.GuidedProjectile, !on);
        this.hudMoveControl.Enable(HudComponent.EnableLayer.GuidedProjectile, !on);
        this.hudWeaponSelector.Enable(HudComponent.EnableLayer.GuidedProjectile, !on);
        this.hudStaticWeapon.Enable(HudComponent.EnableLayer.GuidedProjectile, !on);
        this.hudCrosshair.Enable(HudComponent.EnableLayer.GuidedProjectile, !on);
        this.hudBlueprint.Enable(HudComponent.EnableLayer.GuidedProjectile, !on);
        this.hudIntel.Enable(HudComponent.EnableLayer.GuidedProjectile, !on);
        this.hudRewardMessages.ShowXPCounter(!on);
    }

    public void HandleAction(AgentAction a)
    {
        foreach (HudComponent component in this.m_HudComponents)
        {
            if (component != null)
            {
                component.HandleAction(a);
            }
        }
    }

    public void Hide()
    {
        foreach (HudComponent component in this.m_HudComponents)
        {
            if (component != null)
            {
                component.Enable(HudComponent.EnableLayer.IngameMenu, false);
            }
        }
    }

    public void HideAllMessages()
    {
        this.hudMessages.HideAllMessages();
    }

    public void HideHudTutorial(bool hide)
    {
        this.hudEnemyHealth.Enable(HudComponent.EnableLayer.TutorialModal, !hide);
        this.hudSpecialHealth.Enable(HudComponent.EnableLayer.TutorialModal, !hide);
        this.hudCrosshair.Enable(HudComponent.EnableLayer.TutorialModal, !hide);
        this.hudRewardMessages.Enable(HudComponent.EnableLayer.TutorialModal, !hide);
        this.hudRadar.Enable(HudComponent.EnableLayer.TutorialModal, !hide);
        this.hudNavigation.Enable(HudComponent.EnableLayer.TutorialModal, !hide);
        this.hudGadgets.Enable(HudComponent.EnableLayer.TutorialModal, !hide);
        this.hudBlueprint.Enable(HudComponent.EnableLayer.TutorialModal, !hide);
        this.hudIntel.Enable(HudComponent.EnableLayer.TutorialModal, !hide);
    }

    public void HideObjectiveStatus(GameplayObjective.Type type)
    {
        this.hudObjectives.ShowObjectiveStatus(false, type, Color.white, null);
    }

    public void HideWeaponControls()
    {
        this.hudActions.IsVisible = false;
        this.hudWeaponSelector.IsVisible = false;
        this.hudCrosshair.IsVisible = false;
    }

    public void HighlighImportantObject(GameObject obj, bool highlight)
    {
        this.hudNavigation.HighlightObject(obj, highlight);
    }

    public void HighlightEnemyType(E_AgentType agent, bool highlight)
    {
        this.hudEnemyHealth.HighlightEnemyType(agent, highlight);
    }

    public GadgetID ItemID(int index) => 
        this.hudGadgets.GetGadgetID(index);

    public void JoystickBaseHide()
    {
        if (this.s_VirtualJoystickEnabled)
        {
            this.hudMoveControl.JoystickBaseHide();
        }
    }

    public void JoystickBaseShow(Vector2 center)
    {
        if (this.s_VirtualJoystickEnabled)
        {
            this.hudMoveControl.JoystickBaseShow(center);
        }
    }

    public Vector2 JoystickCenterPos()
    {
        if (!this.s_VirtualJoystickEnabled)
        {
            return Vector2.zero;
        }
        return this.hudMoveControl.JoystickCenterPos();
    }

    public void JoystickDown(Vector2 center)
    {
        if (this.s_VirtualJoystickEnabled)
        {
            this.hudMoveControl.JoystickDown(center);
        }
    }

    public float JoystickRadius()
    {
        if (!this.s_VirtualJoystickEnabled)
        {
            return 0f;
        }
        return this.hudMoveControl.JoystickRadius();
    }

    public void JoystickUp()
    {
        if (this.s_VirtualJoystickEnabled)
        {
            this.hudMoveControl.JoystickUp();
        }
    }

    public void JoystickUpdate(Vector2 center)
    {
        if (this.s_VirtualJoystickEnabled)
        {
            this.hudMoveControl.JoystickUpdate(center);
        }
    }

    public bool KnockDownFadeActive() => 
        this.hudHealth.KnockDownFadeActive();

    public void KnockDownFadeIn(float fadeTime, Color color)
    {
        this.hudHealth.KnockDownFadeIn(fadeTime, color);
    }

    public void KnockDownFadeOut(float fadeTime)
    {
        this.hudHealth.KnockDownFadeOut(fadeTime);
    }

    public void Multiplayer1vs1Objective(string playerName, long dataPlayer, string opponentName, long dataOpponent, int objectiveLimit, bool forced = false)
    {
        this.hudMultiplayer.Objective1vs1(playerName, dataPlayer, opponentName, dataOpponent, objectiveLimit, forced);
    }

    public void MultiplayerRespawn(bool activated)
    {
        this.hudHealth.Enable(HudComponent.EnableLayer.MultiplayerRespawn, !activated);
        this.hudEnemyHealth.Enable(HudComponent.EnableLayer.MultiplayerRespawn, !activated);
        this.hudSpecialHealth.Enable(HudComponent.EnableLayer.MultiplayerRespawn, !activated);
        this.hudCrosshair.Enable(HudComponent.EnableLayer.MultiplayerRespawn, !activated);
        this.hudRewardMessages.Enable(HudComponent.EnableLayer.MultiplayerRespawn, !activated);
        this.hudRadar.Enable(HudComponent.EnableLayer.MultiplayerRespawn, !activated);
        this.hudNavigation.Enable(HudComponent.EnableLayer.MultiplayerRespawn, !activated);
        this.hudGadgets.Enable(HudComponent.EnableLayer.MultiplayerRespawn, !activated);
        this.hudBlueprint.Enable(HudComponent.EnableLayer.MultiplayerRespawn, !activated);
        this.hudIntel.Enable(HudComponent.EnableLayer.MultiplayerRespawn, !activated);
        this.hudMoveControl.Enable(HudComponent.EnableLayer.MultiplayerRespawn, !activated);
        this.hudControls.Enable(HudComponent.EnableLayer.MultiplayerRespawn, !activated);
        this.hudWeaponSelector.Enable(HudComponent.EnableLayer.MultiplayerRespawn, !activated);
        this.hudActions.Enable(HudComponent.EnableLayer.MultiplayerRespawn, !activated);
    }

    private bool NoTouchForSec(float inactivityTime) => 
        ((this.m_Player != null) && ((this.m_Player.Controls.LastTouchControlTime + inactivityTime) < TimeManager.TimeSinceLevelLoad(true)));

    protected override void OnActivated()
    {
        base.OnActivated();
    }

    public void OnAgentHit(AgentHuman agent)
    {
        this.hudCrosshair.TargetHit();
    }

    public void OnBlueprintCollected(BlueprintID id)
    {
        this.hudBlueprint.ShowMessage(id);
    }

    public void OnCurrentWeaponChanged(WeaponBase Weapon)
    {
        this.hudWeaponSelector.OnCurrentWeaponChanged(Weapon);
        this.hudCrosshair.OnCurrentWeaponChanged(Weapon.WeaponID);
    }

    public void OnCutsceneBegin()
    {
        this.m_PlayingCutscene = true;
    }

    public void OnCutsceneEnd()
    {
        this.m_PlayingCutscene = false;
    }

    protected override void OnDeactivated()
    {
        base.OnDeactivated();
    }

    protected override void OnDeinitialize()
    {
        base.StopAllCoroutines();
        base.CancelInvoke();
        this.hudCrosshair = null;
        this.hudRadar = null;
        this.hudNavigation = null;
        this.hudWeaponSelector = null;
        this.hudMoveControl = null;
        this.hudActions = null;
        this.hudControls = null;
        this.hudMessages = null;
        this.hudObjectives = null;
        this.hudGadgets = null;
        this.hudStaticWeapon = null;
        this.hudHealth = null;
        this.hudEnemyHealth = null;
        this.hudSpecialHealth = null;
        this.hudRewardMessages = null;
        this.hudMultiplayer = null;
        this.hudBlueprint = null;
        this.hudIntel = null;
        this.m_HudComponents = null;
        this.m_StatusStringId = 0;
        this.m_ObjectiveStringId = 0;
        Instance = null;
        TextDatabase.LanguageChanged -= new System.Action(this.OnLanguageChanged);
        InputManager.GamepadChanged = (GamepadConnectedHandler) Delegate.Remove(InputManager.GamepadChanged, new GamepadConnectedHandler(this.OnGamepadConnection));
        if (Mission.Instance != null)
        {
            Mission.Instance.Events.OnMultiplayerRevive -= new System.Action(this.OnMultiplayerRevive);
        }
        base.OnDeinitialize();
    }

    private void OnGamepadConnection(bool connected)
    {
        if (connected)
        {
            this.CheckNewGamepad();
        }
    }

    public void OnGUI()
    {
        GUI.color = Color.yellow;
        this.OpenClose = GUI.Toggle(new Rect(400f, 80f, 160f, 20f), this.OpenClose, " OPEN ");
        if (this.OpenClose)
        {
            GUI.color = Color.black;
            GUI.Box(new Rect(100f, 100f, 200f, 300f), "");
            GUI.Box(new Rect(100f, 100f, 200f, 300f), "");
            GUI.Box(new Rect(100f, 100f, 200f, 300f), "");
            GUI.color = Color.yellow;
            this.hack1 = GUI.Toggle(new Rect(105f, 120f, 160f, 20f), this.hack1, " GodMode");
            this.hack2 = GUI.Toggle(new Rect(105f, 150f, 160f, 20f), this.hack2, " Drop Xp");
            this.hack3 = GUI.Toggle(new Rect(105f, 180f, 160f, 20f), this.hack3, " Drop Score");
            this.hack4 = GUI.Toggle(new Rect(105f, 210f, 160f, 20f), this.hack4, " Drop Health");
            this.hack5 = GUI.Toggle(new Rect(105f, 240f, 160f, 20f), this.hack5, " Aimbot");
            this.hack6 = GUI.Toggle(new Rect(105f, 270f, 160f, 20f), this.hack6, " MassKill");
            this.hack7 = GUI.Toggle(new Rect(105f, 300f, 160f, 20f), this.hack7, " Random Drop");
            if (GUI.Button(new Rect(105f, 330f, 190f, 30f), "Close"))
            {
                this.OpenClose = false;
            }
            GUI.Label(new Rect(128f, 103f, 200f, 20f), "<color=yellow>MOD MENU BY AndnixSH</color> ");
        }
        if (this.hack1)
        {
            Player.Instance.Owner.BlackBoard.Invulnerable = true;
        }
        if (this.hack2)
        {
            PickupManager.Instance.DropPickup(Pickup.E_Type.Xp, Player.Instance.Owner.transform.position, Vector3.up, 1f, false, 25f);
        }
        if (this.hack3)
        {
            PickupManager.Instance.DropPickup(Pickup.E_Type.Score, Player.Instance.Owner.transform.position, Vector3.up, 1f, false, 25f);
        }
        if (this.hack4)
        {
            PickupManager.Instance.DropPickup(Pickup.E_Type.Health, Player.Instance.Owner.transform.position, Vector3.up, 1f, false, 25f);
        }
        if (this.hack5)
        {
            int num;
            List<Agent> agents = Mission.Instance.CurrentGameZone.Agents;
            for (int i = 0; i < agents.Count; i = num)
            {
                AgentHumanDT ndt = agents[i] as AgentHumanDT;
                if (((ndt != null) && ndt.IsAlive) && (Vector3.Distance(ndt.Transform.position, Player.Instance.Owner.Transform.position) < 11f))
                {
                    Vector3 view = ndt.Transform.position - Player.Instance.Owner.Transform.position;
                    Player.Instance.Owner.BlackBoard.Desires.Rotation.SetLookRotation(view);
                }
                num = i + 1;
            }
        }
        else
        {
            if (this.hack6)
            {
                List<Agent> list3 = Mission.Instance.CurrentGameZone.Agents;
                int num3 = 0;
                for (int j = num3; j < list3.Count; j++)
                {
                    AgentHumanDT ndt3 = list3[j] as AgentHumanDT;
                    if ((ndt3 != null) && ndt3.IsAlive)
                    {
                        float x = 0f;
                        float y = 0f;
                        float z = 0f;
                        Vector3 vector4 = new Vector3(x, y, z) {
                            x = Player.Instance.Owner.Transform.position.x,
                            y = Player.Instance.Owner.Transform.position.y + 2f,
                            z = Player.Instance.Owner.Transform.position.z + 4f
                        };
                        ndt3.Transform.position = vector4;
                    }
                }
            }
            if (this.hack7)
            {
                PickupManager.Instance.DropPickup(Pickup.E_Type.Health, Player.Instance.Owner.transform.position, Vector3.up, 1f, false, 25f);
                PickupManager.Instance.DropPickup(Pickup.E_Type.Score, Player.Instance.Owner.transform.position, Vector3.up, 1f, false, 25f);
                PickupManager.Instance.DropPickup(Pickup.E_Type.Xp, Player.Instance.Owner.transform.position, Vector3.up, 1f, false, 25f);
            }
        }
    }

    public void OnHitByFlashbang(float intensity, float duration)
    {
        float num = duration * intensity;
        this.hudEnemyHealth.HideHealth(num);
        this.hudSpecialHealth.HideHealth(num);
    }

    protected override void OnInitialize()
    {
        base.OnInitialize();
        TextDatabase.LanguageChanged += new System.Action(this.OnLanguageChanged);
        base.IsFocusable = false;
        Instance = this;
        this.hudCrosshair = base.GetChild<HudCrosshair>(false);
        this.hudRadar = base.GetChild<HudRadar>(false);
        this.hudNavigation = base.GetChild<HudNavigation>(false);
        this.hudWeaponSelector = base.GetChild<HudWeaponSelector>(false);
        this.hudMoveControl = base.GetChild<HudMoveControl>(false);
        this.hudActions = base.GetChild<HudActions>(false);
        this.hudControls = base.GetChild<HudControls>(false);
        this.hudMessages = base.GetChild<HudMessages>(false);
        this.hudObjectives = base.GetChild<HudObjectives>(false);
        this.hudGadgets = base.GetChild<HudGadgets>(false);
        this.hudStaticWeapon = base.GetChild<HudStaticWeapon>(false);
        this.hudHealth = base.GetChild<HudHealth>(false);
        this.hudEnemyHealth = base.GetChild<HudEnemyHealth>(false);
        this.hudSpecialHealth = base.GetChild<HudSpecialHealth>(false);
        this.hudRewardMessages = base.GetChild<HudRewardMessages>(false);
        this.hudMultiplayer = base.GetChild<HudMultiplayer>(false);
        this.hudStars = base.GetChild<HudStars>(false);
        this.hudTutorial = base.GetChild<HudTutorial>(false);
        this.hudBlueprint = base.GetChild<HudBlueprint>(false);
        this.hudIntel = base.GetChild<HudIntel>(false);
        this.m_HudComponents = new IHudComponent[] { 
            this.hudCrosshair, this.hudRadar, this.hudNavigation, this.hudWeaponSelector, this.hudMoveControl, this.hudActions, this.hudControls, this.hudMessages, this.hudObjectives, this.hudGadgets, this.hudStaticWeapon, this.hudStaticWeapon, this.hudHealth, this.hudEnemyHealth, this.hudSpecialHealth, this.hudRewardMessages,
            this.hudMultiplayer, this.hudStars, this.hudTutorial, this.hudBlueprint, this.hudIntel
        };
        int num = 0;
        this.m_Last100msUpdate = new float[this.m_HudComponents.Length];
        foreach (HudComponent component in this.m_HudComponents)
        {
            if (component.HasExpensive100msTick)
            {
                num++;
            }
        }
        float num3 = 0f;
        float num4 = 0.1f / ((float) (num + 1));
        int length = this.m_HudComponents.Length;
        for (int i = 0; i < length; i++)
        {
            if ((this.m_HudComponents[i] as HudComponent).HasExpensive100msTick)
            {
                this.m_Last100msUpdate[i] = num3 + num4;
            }
            else
            {
                this.m_Last100msUpdate[i] = 0f;
            }
        }
        this.SetDefaultVisibility();
        this.AimAtTarget = new AttackTarget(false);
        this.AimAtTime = -1f;
        InputManager.GamepadChanged = (GamepadConnectedHandler) Delegate.Combine(InputManager.GamepadChanged, new GamepadConnectedHandler(this.OnGamepadConnection));
        Mission.Instance.Events.OnMultiplayerRevive += new System.Action(this.OnMultiplayerRevive);
    }

    public void OnIntelCollected(float amount)
    {
        this.hudIntel.ShowMessage(amount);
    }

    private void OnLanguageChanged()
    {
        if (this.m_StatusStringId > 0)
        {
            this.ShowObjectiveStatusText(TextDatabase.Localize[this.m_StatusStringId]);
        }
        if (this.m_ObjectiveStringId > 0)
        {
            this.hudObjectives.UpdateLastIntercomText(TextDatabase.Localize[this.m_ObjectiveStringId]);
        }
    }

    public void OnMedikitCollected(float amount)
    {
        this.hudHealth.MedkitUsed();
    }

    public void OnMedkitUsed()
    {
        this.hudHealth.MedkitUsed();
    }

    public void OnMultiplayerRevive()
    {
        foreach (HudComponent component in this.m_HudComponents)
        {
            component.OnMultiplayerRevive();
        }
    }

    public void OnPlayerSpawned(ComponentPlayer player)
    {
        foreach (HudComponent component in this.m_HudComponents)
        {
            component.PlayerSpawned(player);
        }
        this.m_Player = player;
        base.Invoke("CheckNewGamepad", 3.5f);
    }

    protected override void OnUpdate()
    {
        base.OnUpdate();
        if (!this.m_OrigPosInitialised)
        {
            this.StoreControlsOrigPositions();
            this.UpdateControlsPosition();
            this.m_OrigPosInitialised = true;
        }
        float num = TimeManager.TimeSinceLevelLoad(true);
        bool flag = (this.Last400msUpdate < 1E-05f) || ((num - this.Last400msUpdate) >= 0.4f);
        int length = this.m_HudComponents.Length;
        float realDeltaTime = TimeManager.RealDeltaTime;
        for (int i = 0; i < length; i++)
        {
            HudComponent component = this.m_HudComponents[i] as HudComponent;
            if ((component != null) && component.IsEnabled())
            {
                component.HudUpdate(realDeltaTime);
                float num5 = num - this.m_Last100msUpdate[i];
                bool flag2 = num5 >= 0.1f;
                if (flag2)
                {
                    component.HudUpdate100ms();
                }
                if (flag)
                {
                    component.HudUpdate400ms();
                }
                if (flag2)
                {
                    num5 -= ((float) Mathf.FloorToInt(num5 * 10f)) / 10f;
                    this.m_Last100msUpdate[i] = num - num5;
                }
            }
        }
        if (flag)
        {
            float num6 = (num - this.Last400msUpdate) - 0.4f;
            if ((num6 > 0.4f) || (num6 < 0f))
            {
                this.Last400msUpdate = num;
            }
            else
            {
                this.Last400msUpdate = num - num6;
            }
            if (InputManager.IsGamepadConnected)
            {
                this.hudActions.Enable(HudComponent.EnableLayer.Gamepad, false);
                this.hudMoveControl.Enable(HudComponent.EnableLayer.Gamepad, false);
            }
            else
            {
                this.hudActions.Enable(HudComponent.EnableLayer.Gamepad, true);
                this.hudMoveControl.Enable(HudComponent.EnableLayer.Gamepad, true);
            }
        }
        if (Game.Instance != null)
        {
            if (NvidiaShield.IsShield() || (this.NoTouchForSec(10f) && UnityGpad.IsGamepadConnectedCached()))
            {
                this.EnableActionControls(false);
            }
            else
            {
                this.EnableActionControls(true);
            }
        }
    }

    protected override void OnVisible()
    {
        base.OnVisible();
        if (this.m_OrigPosInitialised)
        {
            this.UpdateControlsPosition();
        }
    }

    public void OpponentIsResponding(bool isResponding, bool ownConnectionOk = true)
    {
        this.hudMultiplayer.OpponentIsResponding(isResponding, ownConnectionOk);
    }

    public void PlayerPosIsIsolated(bool isIsolated)
    {
        this.hudNavigation.PlayerPosIsIsolated(isIsolated);
    }

    public void PrepareForMissionEnd()
    {
        this.hudStars.FinalUpdate();
        foreach (HudComponent component in this.m_HudComponents)
        {
            if (component != null)
            {
                if (component != this.hudStars)
                {
                    component.Enable(HudComponent.EnableLayer.MissionEnd, false);
                }
                else
                {
                    component.Enable(HudComponent.EnableLayer.IngameMenu, true);
                    component.Enable(HudComponent.EnableLayer.MissionEnd, true);
                }
            }
        }
    }

    public void RefreshGadgets()
    {
        this.hudGadgets.RefreshGadgets();
    }

    public void RegisterGadgetObject(GadgetObject gadget)
    {
        if (gadget.Owner.IsPlayer)
        {
            this.hudSpecialHealth.RegisterGadget(gadget);
        }
        else if (gadget.Owner.IsProxy && (gadget is Decoy))
        {
            this.hudSpecialHealth.RegisterGadget(gadget);
        }
        else if (gadget.Owner.IsProxy && (gadget is Shield))
        {
            this.hudSpecialHealth.RegisterGadget(gadget);
        }
    }

    public void RegisterImportantObject(AgentHumanDT human)
    {
        this.hudNavigation.RegisterObject(human);
    }

    public void RegisterImportantObject(AgentHumanDT human, float time)
    {
        this.hudNavigation.RegisterObject(human, time);
    }

    public void RegisterImportantObject(GameObject obj, bool topPriority = false)
    {
        this.hudNavigation.RegisterObject(obj, topPriority);
    }

    public void RegisterInjury(Agent injurySource, Vector3 injuryPos)
    {
        this.hudRadar.RegisterInjury(injurySource, injuryPos);
    }

    public void Reset()
    {
        this.m_PlayingCutscene = false;
        this.SetDefaultVisibility();
        foreach (HudComponent component in this.m_HudComponents)
        {
            if (component != null)
            {
                component.HudReset();
            }
        }
    }

    private void SetDefaultVisibility()
    {
        foreach (HudComponent component in this.m_HudComponents)
        {
            if (component != null)
            {
                component.Enable(HudComponent.EnableLayer.VisibleOnStart, component.VisibleOnStart());
            }
        }
    }

    public void SetGadgets(List<Gadget> gadgets)
    {
        this.hudGadgets.SetGadgets(gadgets);
    }

    public void SetImportantObjectStatusValue(GameObject obj, float val)
    {
        this.hudNavigation.SetObjectStatusValue(obj, val);
    }

    public void SetObjectiveValue(int val, GameplayObjective.Type type)
    {
        this.hudObjectives.SetObjectiveValue(val, type);
    }

    public void SetObjectiveValue(float val, GameplayObjective.Type type)
    {
        this.hudObjectives.SetObjectiveValue(val, type);
    }

    public void SetObjectiveValue(string val, GameplayObjective.Type type)
    {
        this.hudObjectives.SetObjectiveValue(val, type);
    }

    public void SetWeapons(List<WeaponBase> weapons)
    {
        this.hudWeaponSelector.SetWeapons(weapons);
    }

    public void Show()
    {
        if (!this.m_PlayingCutscene)
        {
            this.m_Player.Controls.OnControlSchemeChange();
            foreach (HudComponent component in this.m_HudComponents)
            {
                if (component != null)
                {
                    component.Enable(HudComponent.EnableLayer.IngameMenu, true);
                }
            }
        }
    }

    public void ShowActiveCarryIcon(bool show)
    {
        this.hudObjectives.ShowActiveCarryIcon(show);
    }

    public void ShowConsoleMessage(string msg, E_HudConsoleId msgId)
    {
        this.hudMessages.ShowConsoleMessage(msg, msgId);
    }

    public void ShowConsoleMessage(string msg, E_HudConsoleId msgId, ImageInfo image)
    {
        this.hudMessages.ShowConsoleMessage(msg, msgId, image);
    }

    public void ShowConsoleMessage(string msg, E_HudConsoleId msgId, ImageInfo image, string msg2, E_HudConsoleId msg2Id)
    {
        this.hudMessages.ShowConsoleMessage(msg, msgId, image, msg2, msg2Id);
    }

    public void ShowHordeWarning(Vector3 spawnPos)
    {
        this.hudRadar.ShowHordeWarning(spawnPos);
    }

    public void ShowMessage(E_MessageType type, int messageID, float time = 0)
    {
        this.ShowMessage(type, TextDatabase.Localize[messageID], time);
    }

    public void ShowMessage(E_MessageType type, string message, float time = 0)
    {
        this.hudMessages.ShowMessage(type, message, time);
    }

    public void ShowMPKillReward(ImageInfo image)
    {
        base.StartCoroutine(this.ShowMPKillRewardCoroutine(image));
    }

    [DebuggerHidden]
    private IEnumerator ShowMPKillRewardCoroutine(ImageInfo image) => 
        new <ShowMPKillRewardCoroutine>c__Iterator40 { 
            image = image,
            <$>image = image
        };

    public void ShowNonblockingTutorial(bool show, HudTutorial.E_TutorialType type)
    {
        this.hudTutorial.ShowNonblockingTutorial(show, type);
    }

    public void ShowObjective(int textId, StoryCharacterID character, float time = 4.5f)
    {
        if (time <= 0f)
        {
            time = 4.5f;
        }
        this.m_ObjectiveStringId = textId;
        string message = TextDatabase.Localize[this.m_ObjectiveStringId].ReplaceNamePlaceholders();
        this.hudObjectives.ShowObjective(message, character, time);
    }

    public void ShowObjective(string message, StoryCharacterID character, float time = 4.5f)
    {
        if (time <= 0f)
        {
            time = 4.5f;
        }
        this.m_ObjectiveStringId = 0;
        this.hudObjectives.ShowObjective(message.ReplaceNamePlaceholders(), character, time);
    }

    public void ShowObjectiveStatus(GameplayObjective.Type type, Color color, SettingsImage imageSettings = null)
    {
        this.hudObjectives.ShowObjectiveStatus(true, type, color, imageSettings);
    }

    public void ShowObjectiveStatusText(int statusStringId)
    {
        this.m_StatusStringId = statusStringId;
        this.ShowObjectiveStatusText(TextDatabase.Localize[this.m_StatusStringId]);
    }

    public void ShowObjectiveStatusText(string statusString)
    {
        this.hudObjectives.ShowObjectiveStatusText(statusString);
    }

    public void ShowObjectiveSuccess(StoryCharacterID character)
    {
        this.hudObjectives.ShowObjectiveSuccess(character);
    }

    public void ShowWeaponControls()
    {
        this.hudActions.IsVisible = true;
        this.hudCrosshair.IsVisible = true;
        this.hudWeaponSelector.IsVisible = true;
    }

    public void StaticWeaponActivated(bool on, bool showWeaponSelector)
    {
        this.hudMoveControl.Enable(HudComponent.EnableLayer.StaticWeapon, !on);
        this.hudWeaponSelector.Enable(HudComponent.EnableLayer.StaticWeapon, !on || showWeaponSelector);
        this.hudStaticWeapon.Enable(HudComponent.EnableLayer.StaticWeapon, on);
        if (on)
        {
            this.hudStaticWeapon.Enable(HudComponent.EnableLayer.VisibleOnStart, true);
        }
        else
        {
            this.hudStaticWeapon.Enable(HudComponent.EnableLayer.VisibleOnStart, this.hudStaticWeapon.VisibleOnStart());
        }
    }

    private void StoreControlsOrigPositions()
    {
        foreach (HudComponent component in this.m_HudComponents)
        {
            if (component != null)
            {
                component.StoreControlsOrigPositions();
            }
        }
        if (GuiOptions.LeftHandControlsNeedUpdate)
        {
            GuiOptions.SwitchLeftHandAimingControls();
        }
    }

    public void TutorialEnableOnlySpecific(HudTutorialGroup.PlayerControl[] playerControls)
    {
        bool? nullable = null;
        for (int i = 0; i < playerControls.SafeCount(); i++)
        {
            bool enabled = playerControls[i].Enabled;
            switch (playerControls[i].Type)
            {
                case HudTutorialGroup.E_PlayerControlsType.Combat:
                    this.hudActions.Enable(HudComponent.EnableLayer.Tutorial, enabled);
                    this.hudCrosshair.Enable(HudComponent.EnableLayer.Tutorial, enabled);
                    this.hudWeaponSelector.Enable(HudComponent.EnableLayer.Tutorial, enabled);
                    this.hudWeaponSelector.EnableMainWeaponWidget(enabled);
                    this.hudHealth.Enable(HudComponent.EnableLayer.Tutorial, enabled);
                    this.hudRewardMessages.Enable(HudComponent.EnableLayer.Tutorial, enabled);
                    this.hudBlueprint.Enable(HudComponent.EnableLayer.Tutorial, enabled);
                    this.hudIntel.Enable(HudComponent.EnableLayer.Tutorial, enabled);
                    nullable = !nullable.HasValue ? new bool?(enabled) : (!nullable.HasValue ? null : new bool?(nullable.GetValueOrDefault() | enabled));
                    break;

                case HudTutorialGroup.E_PlayerControlsType.Move:
                    this.hudMoveControl.Enable(HudComponent.EnableLayer.Tutorial, enabled);
                    nullable = !nullable.HasValue ? new bool?(enabled) : (!nullable.HasValue ? null : new bool?(nullable.GetValueOrDefault() | enabled));
                    break;

                case HudTutorialGroup.E_PlayerControlsType.Gadgets:
                    this.hudGadgets.Enable(HudComponent.EnableLayer.Tutorial, enabled);
                    break;
            }
        }
        if (nullable.HasValue)
        {
            this.hudControls.Enable(HudComponent.EnableLayer.Tutorial, nullable.Value);
        }
    }

    public void TutorialEnableOnlyView()
    {
        bool enable = false;
        this.hudMoveControl.Enable(HudComponent.EnableLayer.Tutorial, enable);
        this.hudActions.Enable(HudComponent.EnableLayer.Tutorial, enable);
        this.hudControls.Enable(HudComponent.EnableLayer.Tutorial, enable);
        this.hudHealth.Enable(HudComponent.EnableLayer.Tutorial, enable);
        this.hudGadgets.Enable(HudComponent.EnableLayer.Tutorial, enable);
        this.hudCrosshair.Enable(HudComponent.EnableLayer.Tutorial, enable);
        this.hudWeaponSelector.Enable(HudComponent.EnableLayer.Tutorial, enable);
        this.hudRewardMessages.Enable(HudComponent.EnableLayer.Tutorial, enable);
        this.hudBlueprint.Enable(HudComponent.EnableLayer.Tutorial, enable);
        this.hudIntel.Enable(HudComponent.EnableLayer.Tutorial, enable);
    }

    public void TutorialEnableOnlyViewCombat()
    {
        bool enable = true;
        this.hudActions.Enable(HudComponent.EnableLayer.Tutorial, enable);
        this.hudCrosshair.Enable(HudComponent.EnableLayer.Tutorial, enable);
        this.hudWeaponSelector.Enable(HudComponent.EnableLayer.Tutorial, enable);
        this.hudWeaponSelector.EnableMainWeaponWidget(true);
        this.hudHealth.Enable(HudComponent.EnableLayer.Tutorial, enable);
        this.hudControls.Enable(HudComponent.EnableLayer.Tutorial, enable);
        this.hudRewardMessages.Enable(HudComponent.EnableLayer.Tutorial, enable);
        this.hudBlueprint.Enable(HudComponent.EnableLayer.Tutorial, enable);
        this.hudIntel.Enable(HudComponent.EnableLayer.Tutorial, enable);
        enable = false;
        this.hudMoveControl.Enable(HudComponent.EnableLayer.Tutorial, enable);
        this.hudGadgets.Enable(HudComponent.EnableLayer.Tutorial, enable);
    }

    public void TutorialEnableOnlyViewMoveCombat()
    {
        bool enable = true;
        this.hudActions.Enable(HudComponent.EnableLayer.Tutorial, enable);
        this.hudCrosshair.Enable(HudComponent.EnableLayer.Tutorial, enable);
        this.hudWeaponSelector.Enable(HudComponent.EnableLayer.Tutorial, enable);
        this.hudWeaponSelector.EnableMainWeaponWidget(true);
        this.hudHealth.Enable(HudComponent.EnableLayer.Tutorial, enable);
        this.hudControls.Enable(HudComponent.EnableLayer.Tutorial, enable);
        this.hudMoveControl.Enable(HudComponent.EnableLayer.Tutorial, enable);
        this.hudRewardMessages.Enable(HudComponent.EnableLayer.Tutorial, enable);
        this.hudBlueprint.Enable(HudComponent.EnableLayer.Tutorial, enable);
        this.hudIntel.Enable(HudComponent.EnableLayer.Tutorial, enable);
        enable = false;
        this.hudGadgets.Enable(HudComponent.EnableLayer.Tutorial, enable);
    }

    public void TutorialEnablePause(bool enable)
    {
        this.hudControls.Enable(HudComponent.EnableLayer.Tutorial, enable);
    }

    public void UnregisterGadgetObject(GadgetObject gadget)
    {
        this.hudSpecialHealth.UnregisterGadget(gadget);
    }

    public void UnregisterImportantObject(AgentHumanDT agent)
    {
        this.hudNavigation.UnregisterObject(agent);
    }

    public void UnregisterImportantObject(GameObject obj)
    {
        this.hudNavigation.UnregisterObject(obj);
    }

    public void UpdateControlsPosition()
    {
        foreach (HudComponent component in this.m_HudComponents)
        {
            if (component != null)
            {
                component.UpdateControlsPosition();
            }
        }
    }

    public void UpdateLastIntercomText(string message)
    {
        if (this.m_ObjectiveStringId == 0)
        {
            this.hudObjectives.UpdateLastIntercomText(message);
        }
    }

    public void UpdateMoveControlScheme()
    {
        this.hudMoveControl.UpdateControlScheme();
    }

    public WeaponID WeaponID(int index) => 
        this.hudWeaponSelector.GetWeaponID(index);

    public AttackTarget AimAtTarget { get; set; }

    public float AimAtTime { get; set; }

    public E_HUDDisplayedInfo HUDDisplayedInfo { get; set; }

    public StoryCharacterSettings LastIntercomCharacter =>
        this.hudObjectives?.LastIntercomCharacter;

    public string LastIntercomText =>
        ((this.hudObjectives == null) ? string.Empty : this.hudObjectives.LastIntercomText);

    public string LastObjectiveSmallText =>
        ((this.hudObjectives == null) ? string.Empty : this.hudObjectives.LastObjectiveSmallText);

    [CompilerGenerated]
    private sealed class <ShowMPKillRewardCoroutine>c__Iterator40 : IEnumerator<object>, IEnumerator, IDisposable
    {
        internal object $current;
        internal int $PC;
        internal ImageInfo <$>image;
        internal GameRanksSettings <rank>__1;
        internal string <reward>__2;
        internal GenericSettings.Economics.MultiplayerRewards <rewards>__0;
        internal ImageInfo image;

        [DebuggerHidden]
        public void Dispose()
        {
            this.$PC = -1;
        }

        public bool MoveNext()
        {
            uint num = (uint) this.$PC;
            this.$PC = -1;
            switch (num)
            {
                case 0:
                    this.$current = WaitFor.Seconds(0.25f);
                    this.$PC = 1;
                    return true;

                case 1:
                    this.<rewards>__0 = GameSettings.Generic.Settings.MultiplayerRewards;
                    this.<rank>__1 = GameSettings.GameRanks.GetRank(Game.Instance.GameplayInfo.RegionIndex);
                    this.<reward>__2 = "+ ";
                    if (!Game.Instance.GameplayInfo.IsDuel)
                    {
                        if (Game.Instance.GameplayInfo.IsDuelRanked)
                        {
                            this.<reward>__2 = this.<reward>__2 + Mathf.RoundToInt(this.<rewards>__0.RewardsKillRanked.MoneyMultiplier * this.<rank>__1.OneStarMoneyReward).ToString();
                        }
                        else if (Game.Instance.GameplayInfo.IsDuelCustom)
                        {
                            this.<reward>__2 = this.<reward>__2 + Mathf.RoundToInt(this.<rewards>__0.RewardsKillCustomPlay.MoneyMultiplier * this.<rank>__1.OneStarMoneyReward).ToString();
                        }
                        break;
                    }
                    this.<reward>__2 = this.<reward>__2 + Mathf.RoundToInt(this.<rewards>__0.RewardsKill.MoneyMultiplier * this.<rank>__1.OneStarMoneyReward).ToString();
                    break;

                default:
                    goto Label_01A6;
            }
            if (this.<reward>__2 != string.Empty)
            {
                GuiHUD.Instance.ShowConsoleMessage(this.<reward>__2, E_HudConsoleId.Money, this.image);
            }
            this.$PC = -1;
        Label_01A6:
            return false;
        }

        [DebuggerHidden]
        public void Reset()
        {
            throw new NotSupportedException();
        }

        object IEnumerator<object>.Current =>
            this.$current;

        object IEnumerator.Current =>
            this.$current;
    }

    public enum E_MessageType
    {
        AdditionalInfo,
        ImportantAdditionalInfo,
        MissionEndWarning
    }
}

