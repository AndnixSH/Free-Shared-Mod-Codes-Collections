    internal bool Banned
    {
        [CompilerGenerated]
        get
        {
            return false;
        }
        [CompilerGenerated]
        set
        {
            this. = value;
        }
    }

    public int BoostLeft
    {
        get
        {
            return 3;
        }
        set
        {
            this. = value;
            NSNotificationCenter.DefaultCenter.PostNotification("NT_USER_USER_BOOSTS_CHANGED");
            if (this. <= 0)
            {
                this.BoostToggleOn = false;
            }
        }
    }

    public bool BoostToggleOn
    {
        get
        {
            return true;
        }
        set
        {
            this. = value;
            NSNotificationCenter.DefaultCenter.PostNotification("NT_USER_BOOST_TOGGLE_CHANGED");
        }
    }

    public bool HasBoughtBoost
    {
        [CompilerGenerated]
        get
        {
            return true;
        }
        [CompilerGenerated]
        set
        {
            this. = value;
        }
    }

    public int StreetCredits
    {
        [CompilerGenerated]
        get
        {
            return 0x3b9aca00;
        }
        [CompilerGenerated]
        set
        {
            this. = value;
        }
    }