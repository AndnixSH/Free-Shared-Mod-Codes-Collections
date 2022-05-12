using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ClassicModMenu : MonoBehaviour
{
    /// fields
    public static bool hack1, hack2, hack3; // Add new fields here
    public static float delay = 0, widthSize = 300; // Change whole width size of menu here

    // Size of image/logo (x, y, width, height)
    // Image size doesn't ned to be excat, you can just resize HERE
    // Example your real image size is 250x250 and size in Unity is 90x90: new Rect(10, 10, 90, 90);

    public static bool isOpen = false, ifDragged = false;
    public static Rect rect = new Rect(30f, 30f, 200f, 50f);

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
        // This is the bytes of .png image.
        // There must be a if-statement to load image once to avoid memory leaking

        // GUI Dragable Window
        rect = GUI.Window(0, rect, TheButton, "", new GUIStyle());

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
        GUI.Box(new Rect(rect.x + 0f, rect.y + 70f, widthSize + 10, 50f + 55 * mulY), "");
        GUI.Label(new Rect(rect.x + 5f, rect.y + 75f, widthSize + 10, 95f), "<size=20>Stamina hack work only with delegation</size>");

        if (hack1)
        {
            //(number) = Order of button | false/true = Make button smaller for multipler
            if (GUI.Button(BtnRect(1, false), "<size=20>1 hit kill: <color=green>ON</color></size>"))
            {
                hack1 = false;
            }
        }
        else if (GUI.Button(BtnRect(1, false), "<size=20>1 hit kill: <color=red>OFF</color></size>"))
        {
            hack1 = true;
        }
		
		if (hack2)
        {
            //(number) = Order of button | false/true = Make button smaller for multipler
            if (GUI.Button(BtnRect(2, false), "<size=20>God mode: <color=green>ON</color></size>"))
            {
                hack2 = false;
            }
        }
        else if (GUI.Button(BtnRect(2, false), "<size=20>God mode: <color=red>OFF</color></size>"))
        {
            hack2 = true;
        }
		
		if (hack3)
        {
            //(number) = Order of button | false/true = Make button smaller for multipler
            if (GUI.Button(BtnRect(3, false), "<size=20>Stamina hack: <color=green>ON</color></size>"))
            {
                hack3 = false;
            }
        }
        else if (GUI.Button(BtnRect(3, false), "<size=20>Stamina hack: <color=red>OFF</color></size>"))
        {
            hack3 = true;
        }

        /// Clicker Button
        // Open URL
        if (GUI.Button(BtnRect(4, false), "<size=20>AndnixSH - Platinmods.com</size>"))
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
            btnY = 75 + 50 * y;
            return new Rect(rect.x + 5, rect.y + 75 + 50 * y, widthSize - 90, 45);
        }
        return new Rect(rect.x + 5, rect.y + 75 + 50 * y, widthSize, 45);
    }


    // !!! IMPORTANT !!!
    // To use this code in unity editor, please change this to: public static void Logo(int windowID)
    // Before adding this code to the game using dnSpy, please add STATIC like this: public static void Logo(int windowID)
    public static void TheButton(int windowID)
    {
		if (GUI.Button(new Rect(0, 0, 200f, 40f), "<size=25><B>MOD MENU</B></size>"))
        {
            isOpen = !isOpen;
        }
		
		GUI.DragWindow();
    }
}