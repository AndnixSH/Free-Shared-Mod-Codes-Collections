    public bool IsInstalling()
    {
        return false;
    }

    public virtual string Type
    {
        get
        {
            return "kit";
        }
    }

    public double RemainingInstallTime()
    {
        return -1.0;
    }