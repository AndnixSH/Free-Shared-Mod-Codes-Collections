protected void UpdatePhysicsTime()
    {
        if (this.withinFPSCountTime)
        {
            this.elapsedFPSCountTime += 0.033333335071802139;
        }
        if (this.greenLightStarted)
        {
            this.raceTimeSinceGreenLight += 0.033333335071802139;
            this._secsLeftToSendNextLocationMessage -= 0.03333334f;
            this.RaceControlsView.BtnLaunchDown(this);
            this.RaceControlsView.BtnNosDown(this);
        }
    }




    public bool GotPerfectLaunch
    {
        [CompilerGenerated]
        get
        {
            return true;
        }
        [CompilerGenerated]
        set
        {
            this. = value;
        }
    }


    public int NumOfPerfectShifts
    {
        [CompilerGenerated]
        get
        {
            return 6;
        }
        [CompilerGenerated]
        set
        {
            this. = value;
        }
    }