//Game: Brave Soul Heroes Free Idle RPG games 2020
//Version: v1.1.5
//APK: https://apkpure.com/brave-soul-heroes-free-idle-rpg-games-2020/com.generagames.brave.soul.heroes.idle.fantasy.rpg

using System;
using System.Collections;
using System.Collections.Generic;
using System.Text;
using UnityEngine;

public class ModMenu : MonoBehaviour
{
    /// fields
    public static GUIStyle BgStyle, OnStyle, OffStyle, LabelStyle, BtnStyle;
    public static GUIStyle BtnStyle1, BtnStyle2, BtnStyle3;
    public static bool hack1, hack2, hack3, hack4; // Add new fields here
    public static float delay = 0, widthSize = 300; // Change whole width size of menu here

    // Size of image/logo (x, y, width, height)
    // Image size doesn't ned to be excat, you can just resize HERE
    // Example your real image size is 250x250 and size in Unity is 90x90: new Rect(10, 10, 90, 90);

    public static bool isOpen = false, ifDragged = false;
    public static Rect rect = new Rect(40f, 40f, 100f, 100f);

    // Texture
    public static Texture2D Image = null, ontexture, onpresstexture, offtexture, offpresstexture, backtexture, btntexture, btnpresstexture;
    public static Texture2D NewTexture2D { get { return new Texture2D(1, 1); } }

    // Damage multiplier 
    public static int dmgMulti = 1;

    // Remember Y position
    public static int btnY, mulY;

    // Must be static if you create this as new class in dnSpy.
    // Find active classes like UIRoot, UIdrawcall, Soundmanager or something similar
    // and add:
    // public void OnGUI()
    // {
    //   	MyClassNameOfModMenu.OnGUI();
    // }
    // !!! IMPORTANT !!!
    // To use this code in unity editor, please change this to: public void OnGUI()
    // Before adding this code to the game using dnSpy, please add STATIC like this: public static void OnGUI()
    public static void OnGUI()
    {
		if (hack1)
        {
			sleep += Time.deltaTime;
			if (sleep >= 1f)
			{
				sleep = 0f;
				Combat combat = UnityEngine.Object.FindObjectOfType<Combat>();
				if (combat != null)
				{
					combat.KillAllEnemies();
				}
			}
		}
        // This is the bytes of .png image.
        // There must be a if-statement to load image once to avoid memory leaking
        if (Image == null)
        {
            // No need Start(); if you are testing it on Unity Editor
            Start();
        }

        // GUI Dragable Window
        rect = GUI.Window(0, rect, new GUI.WindowFunction(Logo), "", new GUIStyle());

        // I created additional class (MyMenu) of GUI stuff to avoid high CPU usage
        // and lagging on low-end devices
        // Never make your whole GUI codes in OnGUI()
        if (isOpen)
        {
            // if ShowHide true, call MyMenu();
            ModMenuGUI();
        }
    }

    // !!! IMPORTANT !!!
    // To use this code in unity editor, please change this to: public void ModMenuGUI()
    // Before adding this code to the game using dnSpy, please add STATIC like this: public static void ModMenuGUI()
    public static void ModMenuGUI()
    {
        /// Credit
        // (x, y, width, height)
        GUI.Box(new Rect(rect.x + 50f, rect.y + 70f, widthSize + 10, 50f + 45 * mulY), "", BgStyle);
        GUI.Label(new Rect(rect.x + 55f, rect.y + 75f, widthSize + 10, 95f), "Nonce", LabelStyle);

       
        // Off/On Buttons
        // How to hack in game function:
        // public int getDamage
        // {
        //       if (MyClassNameOfModMenu.toggle1)
        //       {
        //              return 999999;
        //       }
        //       return this.get_dmg;
        // }
		if (hack1)
        {
            //(number) = Order of button | false/true = Make button smaller for multipler
            if (GUI.Button(BtnRect(1, false), "Auto kill: ON", OnStyle))
            {
                hack1 = false;
            }
        }
        else if (GUI.Button(BtnRect(1, false), "Auto kill: OFF", OffStyle))
        {
            hack1 = true;
        }

		
		if (GUI.Button(BtnRect(2, false), "Kill All Enemies", BtnStyle))
        {
            Combat combat = UnityEngine.Object.FindObjectOfType<Combat>();
			if (combat != null)
			{
				combat.KillAllEnemies();
			}
        }

        /// Clicker Button
        // Open URL
        if (GUI.Button(BtnRect(3, false), "Request update", BtnStyle))
        {
            Application.OpenURL("https://platinmods.com");
        }
    }

    /// Rect for buttons
    // It automatically auto position buttons. There is no need to change it
    public static Rect BtnRect(int y, bool multiplyBtn)
    {
        mulY = y;
        if (multiplyBtn)
        {
            btnY = 75 + 45 * y;
            return new Rect(rect.x + 55, rect.y + 75 + 45 * y, widthSize - 90, 40);
        }
        return new Rect(rect.x + 55, rect.y + 75 + 45 * y, widthSize, 40);
    }

    /// Load GUIStyle
    public static void Start()
    {
        if (BgStyle == null)
        {
            BgStyle = new GUIStyle();
            BgStyle.normal.background = BackTexture;
            BgStyle.onNormal.background = BackTexture;
            BgStyle.active.background = BackTexture;
            BgStyle.onActive.background = BackTexture;
            BgStyle.normal.textColor = Color.white;
            BgStyle.onNormal.textColor = Color.white;
            BgStyle.active.textColor = Color.white;
            BgStyle.onActive.textColor = Color.white;
            BgStyle.fontSize = 18;
            BgStyle.fontStyle = FontStyle.Normal;
            BgStyle.alignment = TextAnchor.UpperCenter;
        }

        if (LabelStyle == null)
        {
            LabelStyle = new GUIStyle();
            LabelStyle.normal.textColor = Color.white;
            LabelStyle.onNormal.textColor = Color.white;
            LabelStyle.active.textColor = Color.white;
            LabelStyle.onActive.textColor = Color.white;
            LabelStyle.fontSize = 18;
            LabelStyle.fontStyle = FontStyle.Normal;
            LabelStyle.alignment = TextAnchor.UpperCenter;
        }

        if (OffStyle == null)
        {
            OffStyle = new GUIStyle();
            OffStyle.normal.background = OffTexture;
            OffStyle.onNormal.background = OffTexture;
            OffStyle.active.background = OffPressTexture;
            OffStyle.onActive.background = OffPressTexture;
            OffStyle.normal.textColor = Color.white;
            OffStyle.onNormal.textColor = Color.white;
            OffStyle.active.textColor = Color.white;
            OffStyle.onActive.textColor = Color.white;
            OffStyle.fontSize = 18;
            OffStyle.fontStyle = FontStyle.Normal;
            OffStyle.alignment = TextAnchor.MiddleCenter;
        }

        if (OnStyle == null)
        {
            OnStyle = new GUIStyle();
            OnStyle.normal.background = OnTexture;
            OnStyle.onNormal.background = OnTexture;
            OnStyle.active.background = OnPressTexture;
            OnStyle.onActive.background = OnPressTexture;
            OnStyle.normal.textColor = Color.white;
            OnStyle.onNormal.textColor = Color.white;
            OnStyle.active.textColor = Color.white;
            OnStyle.onActive.textColor = Color.white;
            OnStyle.fontSize = 18;
            OnStyle.fontStyle = FontStyle.Normal;
            OnStyle.alignment = TextAnchor.MiddleCenter;
        }

        if (BtnStyle == null)
        {
            BtnStyle = new GUIStyle();
            BtnStyle.normal.background = BtnTexture;
            BtnStyle.onNormal.background = BtnTexture;
            BtnStyle.active.background = BtnPressTexture;
            BtnStyle.onActive.background = BtnPressTexture;
            BtnStyle.normal.textColor = Color.white;
            BtnStyle.onNormal.textColor = Color.white;
            BtnStyle.active.textColor = Color.white;
            BtnStyle.onActive.textColor = Color.white;
            BtnStyle.fontSize = 18;
            BtnStyle.fontStyle = FontStyle.Normal;
            BtnStyle.alignment = TextAnchor.MiddleCenter;
        }
    }

    /// Textures
    // Use material colors and convert hex code to rbg https://www.materialpalette.com/colors
    public static Texture2D BtnTexture
    {
        get
        {
            if (btntexture == null)
            {
                btntexture = NewTexture2D;
                btntexture.SetPixel(0, 0, new Color32(3, 155, 229, 255));
                btntexture.Apply();
            }
            return btntexture;
        }
    }

    public static Texture2D BtnPressTexture
    {
        get
        {
            if (btnpresstexture == null)
            {
                btnpresstexture = NewTexture2D;
                btnpresstexture.SetPixel(0, 0, new Color32(2, 119, 189, 255));
                btnpresstexture.Apply();
            }
            return btnpresstexture;
        }
    }

    public static Texture2D OnPressTexture
    {
        get
        {
            if (onpresstexture == null)
            {
                onpresstexture = NewTexture2D;
                onpresstexture.SetPixel(0, 0, new Color32(56, 142, 60, 255));
                onpresstexture.Apply();
            }
            return onpresstexture;
        }
    }

    public static Texture2D OnTexture
    {
        get
        {
            if (ontexture == null)
            {
                ontexture = NewTexture2D;
                ontexture.SetPixel(0, 0, new Color32(76, 175, 80, 255));
                ontexture.Apply();
            }
            return ontexture;
        }
    }

    public static Texture2D OffPressTexture
    {
        get
        {
            if (offpresstexture == null)
            {
                offpresstexture = NewTexture2D;
                offpresstexture.SetPixel(0, 0, new Color32(211, 47, 47, 255));
                offpresstexture.Apply();
            }
            return offpresstexture;
        }
    }

    public static Texture2D OffTexture
    {
        get
        {
            if (offtexture == null)
            {
                offtexture = NewTexture2D;
                offtexture.SetPixel(0, 0, new Color32(244, 67, 54, 255));
                offtexture.Apply();
            }
            return offtexture;
        }
    }

    public static Texture2D BackTexture
    {
        get
        {
            if (backtexture == null)
            {
                backtexture = NewTexture2D;
                //ToHtmlStringRGBA  new Color(33, 150, 243, 1)
                backtexture.SetPixel(0, 0, new Color32(42, 42, 42, 200));
                backtexture.Apply();
            }
            return backtexture;
        }
    }

    // !!! IMPORTANT !!!
    // To use this code in unity editor, please change this to: public static void Logo(int windowID)
    // Before adding this code to the game using dnSpy, please add STATIC like this: public static void Logo(int windowID)
    public static void Logo(int windowID)
    {
        //This is the bytes of .png image.
        //There must be a if-statement to load image once to avoid memory leaking
        if (Image == null)
        {
            //To add your own image, open image file in HxD, select all, Edit -> Copy as -> C#
            //and paste it here
            //I think you can do it better but bytes are the good way to prevent image being stolen
            //easly because decompilers fail to display bytes than 10000
            //Use https://compresspng.com/ to make file size smaller

            /* D:\Pictures\Adobe Photoshop\Unity\mod menu-min.png (28-01-2019 19:12:21)
    StartOffset(h): 00000000, EndOffset(h): 0000051A, Length(h): 0000051B */

            byte[] rawData = {
    0x89, 0x50, 0x4E, 0x47, 0x0D, 0x0A, 0x1A, 0x0A, 0x00, 0x00, 0x00, 0x0D,
    0x49, 0x48, 0x44, 0x52, 0x00, 0x00, 0x00, 0x64, 0x00, 0x00, 0x00, 0x64,
    0x08, 0x03, 0x00, 0x00, 0x00, 0x47, 0x3C, 0x65, 0x66, 0x00, 0x00, 0x00,
    0x04, 0x67, 0x41, 0x4D, 0x41, 0x00, 0x00, 0xB1, 0x8F, 0x0B, 0xFC, 0x61,
    0x05, 0x00, 0x00, 0x00, 0x01, 0x73, 0x52, 0x47, 0x42, 0x00, 0xAE, 0xCE,
    0x1C, 0xE9, 0x00, 0x00, 0x00, 0x93, 0x50, 0x4C, 0x54, 0x45, 0x47, 0x70,
    0x4C, 0x19, 0x19, 0x19, 0x19, 0x19, 0x19, 0x19, 0x19, 0x19, 0x19, 0x19,
    0x19, 0x19, 0x19, 0x19, 0x19, 0x19, 0x19, 0x19, 0x19, 0x19, 0x19, 0x19,
    0x19, 0x19, 0x19, 0x19, 0x19, 0x19, 0x19, 0x19, 0x19, 0x19, 0x19, 0x19,
    0x19, 0x19, 0x19, 0x19, 0x19, 0x19, 0x19, 0x19, 0x19, 0x19, 0x19, 0x19,
    0x19, 0x19, 0x19, 0x19, 0x19, 0x19, 0x19, 0x19, 0x19, 0x19, 0x19, 0x19,
    0x19, 0x19, 0x19, 0x19, 0x19, 0x19, 0x19, 0x19, 0x19, 0x19, 0x19, 0x19,
    0x19, 0x19, 0x19, 0x19, 0x19, 0x19, 0x19, 0x19, 0x19, 0x19, 0x19, 0x19,
    0x19, 0x19, 0x19, 0x19, 0x19, 0x19, 0x19, 0x19, 0x19, 0x19, 0x19, 0x19,
    0x19, 0x19, 0x19, 0x19, 0xFF, 0xFF, 0xFF, 0xDF, 0xDF, 0xDF, 0x37, 0x37,
    0x37, 0xF4, 0xF4, 0xF4, 0xAE, 0xAE, 0xAE, 0xD3, 0xD3, 0xD3, 0xC7, 0xC7,
    0xC7, 0xBA, 0xBA, 0xBA, 0x62, 0x62, 0x62, 0xA0, 0xA0, 0xA0, 0xEA, 0xEA,
    0xEA, 0x83, 0x83, 0x83, 0x92, 0x92, 0x92, 0x4E, 0x4E, 0x4E, 0x73, 0x73,
    0x73, 0x7B, 0xC5, 0xDE, 0x32, 0x00, 0x00, 0x00, 0x20, 0x74, 0x52, 0x4E,
    0x53, 0x00, 0x09, 0x62, 0xC3, 0x85, 0x11, 0xF4, 0xED, 0x05, 0xD1, 0x37,
    0x79, 0xA2, 0x01, 0xDB, 0x5D, 0xFC, 0xCA, 0x24, 0x56, 0x29, 0xB7, 0x1A,
    0xAB, 0x80, 0x6E, 0x8C, 0xA7, 0x8E, 0xDD, 0xDC, 0x30, 0x17, 0xD1, 0x3D,
    0x1D, 0x00, 0x00, 0x03, 0xFA, 0x49, 0x44, 0x41, 0x54, 0x68, 0xDE, 0xCD,
    0x9A, 0x59, 0x97, 0xA2, 0x30, 0x10, 0x85, 0x23, 0x08, 0xB8, 0xB5, 0x4B,
    0x6F, 0x6A, 0x6F, 0x73, 0x6E, 0xB1, 0x0B, 0x68, 0xFF, 0xFF, 0x5F, 0x37,
    0x0F, 0x09, 0x0A, 0x5A, 0x01, 0x59, 0x64, 0xE6, 0x3E, 0x59, 0x72, 0x8E,
    0x9F, 0x49, 0x2A, 0xE1, 0x26, 0x29, 0x21, 0xFE, 0x27, 0x59, 0xB3, 0xD5,
    0x78, 0xBB, 0x59, 0x3A, 0x36, 0x6C, 0xE7, 0x7B, 0x6A, 0x6E, 0xC7, 0xAB,
    0x99, 0xD5, 0x2B, 0xE0, 0xDD, 0x58, 0x2C, 0xC1, 0x68, 0xB9, 0x30, 0xDE,
    0xFB, 0x21, 0x3C, 0xCF, 0x37, 0xA8, 0xD0, 0x66, 0xFE, 0xDC, 0x95, 0x30,
    0x32, 0x4C, 0xD4, 0xCA, 0x34, 0x46, 0x5D, 0x10, 0x73, 0x07, 0xF7, 0x68,
    0xED, 0xCC, 0xDB, 0x62, 0xAC, 0x9D, 0x83, 0x35, 0xEE, 0x94, 0xB3, 0x6B,
    0x93, 0x06, 0x4F, 0x86, 0x83, 0x46, 0x72, 0x8C, 0xA7, 0xA6, 0x8C, 0x3F,
    0x26, 0x1A, 0xCB, 0xFC, 0xD3, 0x08, 0x31, 0xF9, 0x58, 0xA3, 0x85, 0xD6,
    0x1F, 0x93, 0xFB, 0x19, 0xAF, 0x53, 0xB4, 0xD4, 0xF4, 0xF5, 0x5E, 0xC6,
    0x8B, 0x8D, 0xD6, 0xB2, 0x5F, 0xEE, 0x1B, 0xF1, 0x31, 0x3A, 0x69, 0x7C,
    0xC7, 0xF8, 0x4F, 0x3E, 0xD1, 0x51, 0x9F, 0xB5, 0x03, 0x33, 0x7A, 0x43,
    0x67, 0xBD, 0xD5, 0xCC, 0xCC, 0x91, 0xD9, 0x9D, 0x81, 0xB5, 0x59, 0x49,
    0x99, 0xF4, 0xD0, 0x0E, 0x00, 0x78, 0xAB, 0xE8, 0xB1, 0xA7, 0x05, 0x7A,
    0xD2, 0x42, 0x3F, 0xFA, 0x63, 0xF4, 0xA6, 0xB1, 0x76, 0x7E, 0xA0, 0x47,
    0x69, 0xE6, 0xCB, 0xAB, 0xDD, 0x27, 0xC4, 0x66, 0xE7, 0xFE, 0x64, 0x8A,
    0x5E, 0x35, 0xE5, 0x06, 0xFF, 0x03, 0x3D, 0xEB, 0xEB, 0x96, 0x31, 0x5B,
    0xF7, 0x0D, 0x59, 0xCF, 0x1E, 0xDD, 0x59, 0x6C, 0x87, 0xED, 0xBB, 0xFE,
    0xA2, 0xEF, 0xDF, 0x7E, 0xB7, 0xBF, 0x7A, 0x9F, 0xDF, 0xBE, 0x6B, 0x5D,
    0xDF, 0x2B, 0x86, 0x27, 0xDF, 0x6D, 0x0C, 0x71, 0xAC, 0xBA, 0x69, 0xE8,
    0x52, 0x5C, 0x0C, 0x23, 0x6A, 0x0E, 0x29, 0x4F, 0x49, 0xCB, 0xE6, 0x20,
    0x74, 0xB8, 0x44, 0x19, 0xB5, 0x81, 0xD8, 0xC5, 0xA6, 0xEC, 0xC0, 0x41,
    0x8A, 0x1D, 0xE4, 0xFA, 0x6D, 0x20, 0xD8, 0x15, 0x16, 0x78, 0x87, 0x85,
    0xC4, 0x74, 0xCC, 0x83, 0x84, 0x92, 0x1C, 0x72, 0x0C, 0x89, 0x28, 0xBC,
    0x3C, 0x09, 0x89, 0x28, 0x3E, 0x68, 0x20, 0xCE, 0x65, 0xD1, 0x5F, 0x81,
    0x85, 0x78, 0x69, 0xAA, 0x3E, 0x7B, 0xA9, 0xEB, 0x29, 0x48, 0x48, 0x14,
    0x04, 0x81, 0x4F, 0xA1, 0x7C, 0x90, 0x87, 0x19, 0x0F, 0x81, 0x71, 0x86,
    0x98, 0x1A, 0xC8, 0x91, 0x02, 0xF9, 0x39, 0xA0, 0x4C, 0x41, 0x42, 0x95,
    0x0E, 0xB1, 0xA4, 0x5C, 0x42, 0x0D, 0xC4, 0x3C, 0xFB, 0x76, 0x68, 0x20,
    0x70, 0xFD, 0x93, 0x4C, 0xDF, 0x08, 0x12, 0x92, 0xA9, 0x16, 0x00, 0x11,
    0x65, 0xC5, 0x30, 0x24, 0x1E, 0x82, 0xDC, 0xF3, 0xCF, 0xB5, 0x90, 0x03,
    0x45, 0x00, 0x10, 0xF9, 0x27, 0x05, 0x89, 0xE8, 0x57, 0x3D, 0x3E, 0x50,
    0x08, 0x84, 0x85, 0x50, 0x03, 0x99, 0x2B, 0xC8, 0x54, 0x0B, 0x41, 0x4C,
    0xBF, 0x40, 0x46, 0x01, 0x14, 0x24, 0xF5, 0x4B, 0xE9, 0x74, 0x15, 0xB2,
    0x6B, 0x8B, 0xDA, 0x47, 0x41, 0x0F, 0xF1, 0x7C, 0x17, 0x70, 0x53, 0xE4,
    0x90, 0xC2, 0x4F, 0xB9, 0xFE, 0x4D, 0xC8, 0x4A, 0xEE, 0xC5, 0x8C, 0x0A,
    0x08, 0x12, 0x4A, 0x12, 0x3A, 0xA2, 0x7D, 0x4B, 0x54, 0x7E, 0x2D, 0xAA,
    0x20, 0x70, 0xD3, 0xD4, 0xC5, 0x19, 0x12, 0x97, 0xC7, 0x24, 0xAA, 0x1F,
    0x13, 0x2C, 0x84, 0x10, 0x42, 0x2C, 0x2B, 0x21, 0x99, 0x5A, 0x5D, 0xDA,
    0x66, 0x17, 0x96, 0x42, 0x08, 0x61, 0xA1, 0x12, 0x82, 0x48, 0xCE, 0x04,
    0x35, 0x4F, 0xE2, 0x86, 0xF3, 0x04, 0x80, 0x25, 0x84, 0x98, 0xD5, 0x40,
    0xF2, 0x49, 0xCF, 0xCE, 0xF8, 0x73, 0x98, 0x68, 0x07, 0x1E, 0x33, 0xDD,
    0x9A, 0xA2, 0x87, 0xB0, 0x6B, 0x57, 0x74, 0xD0, 0x67, 0x17, 0x56, 0xFD,
    0x3A, 0x3A, 0xBD, 0xCF, 0xDB, 0x3E, 0x1A, 0xB2, 0x15, 0x42, 0x6C, 0x1E,
    0x0D, 0xD9, 0xE8, 0x33, 0xB8, 0x3F, 0x2D, 0x85, 0x10, 0xCE, 0xA3, 0x21,
    0x8E, 0x10, 0xC2, 0x7E, 0x34, 0xC4, 0x16, 0x42, 0xE0, 0xE1, 0x1A, 0x0A,
    0x32, 0x48, 0x77, 0x0D, 0x32, 0xF0, 0x0F, 0x4F, 0xE1, 0x9F, 0xA1, 0x26,
    0xE3, 0xB6, 0x9B, 0xD1, 0xBE, 0x6F, 0x59, 0x19, 0x77, 0x33, 0xDA, 0xF7,
    0x2D, 0x90, 0xAB, 0x6E, 0x46, 0xBB, 0x5E, 0x2B, 0xE6, 0xA5, 0xD5, 0xD0,
    0x68, 0xD7, 0x6B, 0xC6, 0xBC, 0x7E, 0x75, 0x46, 0xFB, 0x14, 0x10, 0x91,
    0x9B, 0xE4, 0x9D, 0xE8, 0x9D, 0xE2, 0x42, 0x7C, 0x7E, 0xC3, 0x79, 0xB7,
    0xFF, 0xC9, 0x62, 0x8C, 0x84, 0xC6, 0x68, 0x1F, 0x89, 0xA2, 0x20, 0x70,
    0x29, 0xF4, 0x24, 0xE4, 0x48, 0x7E, 0x10, 0x04, 0x24, 0x2D, 0x66, 0x15,
    0x64, 0xC9, 0x59, 0x22, 0xDE, 0x68, 0xFF, 0x92, 0xEB, 0x49, 0x56, 0x28,
    0x21, 0x7E, 0xAC, 0xDE, 0xF1, 0x49, 0x0D, 0x64, 0xC1, 0x99, 0x3B, 0xD6,
    0x68, 0xC3, 0x4D, 0xBD, 0xBC, 0x03, 0xB3, 0x62, 0xCE, 0x1D, 0x24, 0xB4,
    0x02, 0x62, 0x70, 0x36, 0x95, 0x35, 0xDA, 0x87, 0xBC, 0x6D, 0x80, 0x1F,
    0xCA, 0xEE, 0x52, 0xA1, 0x34, 0x91, 0x15, 0x90, 0x77, 0xCE, 0x70, 0xB3,
    0x46, 0xFB, 0x48, 0x61, 0xA0, 0x94, 0xA6, 0x00, 0xA2, 0x73, 0x9A, 0xCB,
    0x9F, 0xD7, 0x43, 0xA6, 0xEC, 0xD6, 0x81, 0x35, 0xDA, 0x09, 0x5D, 0xE4,
    0x37, 0x82, 0xCC, 0xD9, 0x4D, 0x10, 0x6B, 0xB4, 0x8F, 0x94, 0xA0, 0xBC,
    0x0E, 0xDC, 0x0B, 0x79, 0x66, 0xB7, 0x73, 0xAC, 0xD1, 0x3E, 0xA9, 0x54,
    0xD5, 0x41, 0x42, 0x3A, 0xC9, 0xF0, 0xF7, 0x0A, 0x62, 0xF2, 0x1B, 0x53,
    0xD6, 0x68, 0xC3, 0x3D, 0xFB, 0x77, 0x16, 0x12, 0xE4, 0x2D, 0x8D, 0xAF,
    0x20, 0x06, 0xBF, 0xC5, 0xE6, 0x8D, 0xF6, 0xC9, 0xF7, 0x33, 0xF9, 0x75,
    0xE8, 0x31, 0x90, 0x03, 0xA5, 0x27, 0x99, 0xE0, 0xE5, 0x45, 0xBB, 0xB0,
    0xC5, 0x2E, 0x1D, 0x16, 0x68, 0x3C, 0x70, 0xE6, 0x93, 0x1B, 0x04, 0x31,
    0xC9, 0x35, 0xFA, 0x1A, 0x82, 0x44, 0x2D, 0x08, 0x49, 0x19, 0x32, 0xD6,
    0x1C, 0x7B, 0xE8, 0x8C, 0x36, 0x82, 0x94, 0x88, 0xE2, 0x8C, 0xED, 0x2E,
    0x20, 0x0B, 0x89, 0x28, 0xCC, 0x50, 0x82, 0x94, 0x8E, 0x3D, 0x1E, 0xE5,
    0xBA, 0xC7, 0x75, 0x47, 0x51, 0x7D, 0x58, 0x08, 0xAB, 0xE7, 0x43, 0x35,
    0x4E, 0xFB, 0x7F, 0x71, 0x3C, 0x38, 0xC8, 0x41, 0xA7, 0x10, 0x5F, 0x03,
    0x1C, 0xD9, 0x0E, 0x73, 0xF8, 0x3C, 0xC8, 0x31, 0xFA, 0x30, 0x17, 0x02,
    0xC3, 0x5C, 0x6D, 0x0C, 0x73, 0x49, 0x33, 0xC8, 0x75, 0x93, 0xE8, 0xE7,
    0xE2, 0x0C, 0xE6, 0xE8, 0xDF, 0x5F, 0x01, 0x0E, 0x73, 0x99, 0x39, 0xCC,
    0xB5, 0xEC, 0x30, 0x17, 0xCC, 0x03, 0x5D, 0x95, 0x0B, 0x31, 0xFA, 0x6A,
    0x77, 0xE9, 0xFF, 0xD5, 0xAC, 0x1E, 0x63, 0xD6, 0xA2, 0x31, 0xD3, 0x59,
    0xD3, 0x22, 0x89, 0xC9, 0xBE, 0x69, 0x21, 0xC6, 0x7E, 0x22, 0x9A, 0xCB,
    0xDA, 0x35, 0xC0, 0xB4, 0x2B, 0x29, 0x69, 0x52, 0x1C, 0x83, 0xF6, 0xC5,
    0x31, 0x03, 0x95, 0xF9, 0xA8, 0x82, 0xA5, 0xCA, 0x1C, 0x98, 0x76, 0x2F,
    0x58, 0x3A, 0x97, 0x5E, 0x7D, 0x73, 0x80, 0xEF, 0xDE, 0x4A, 0xAF, 0x4A,
    0x45, 0x64, 0x3F, 0x8E, 0x0D, 0xD8, 0xCE, 0xCF, 0xA6, 0xFF, 0x22, 0xB2,
    0xAE, 0xFA, 0x0B, 0xCD, 0xF3, 0xD2, 0x04, 0x07, 0x0B, 0xD0, 0xAD, 0x00,
    0x00, 0x00, 0x00, 0x49, 0x45, 0x4E, 0x44, 0xAE, 0x42, 0x60, 0x82
};

            Image = new Texture2D(1, 1);
            Image.LoadImage(rawData);
        }
        GUI.DrawTexture(new Rect(0f, 0f, 90f, 90f), Image);

        if (Event.current.type == EventType.MouseDrag)
        {
            // Menu will not appear if dragging menu more than 0.3 sec.
            // This is to solve tapping sensitive issue.
            delay += Time.deltaTime;
            if (delay > 0.3f)
            {
                ifDragged = true;
            }
        }
        else if (Event.current.type == EventType.MouseUp)
        {
            delay = 0;
            if (!ifDragged)
                isOpen = !isOpen;
            ifDragged = false;
        }

        //Create draggable window
        GUI.DragWindow();
    }
}

