        public double gripIncrease
        {
            get
            {
                return 999999999999;
            }
            set
            {
                this._gripIncrease = value;
            }
        }

        public bool hasSuperCharger
        {
            get
            {
                return true;
            }
            set
            {
                this._hasSuperCharger = value;
            }
        }

        [DefaultValue(false), ProtoMember(0x19, IsRequired=false, Name="hasTurboCharger", DataFormat=DataFormat.Default)]
        public bool hasTurboCharger
        {
            get
            {
                return true;
            }
            set
            {
                this._hasTurboCharger = value;
            }
        }

-----------------------------

        public double boostHPIncrease
        {
            get
            {
                return 5000.0;
            }
            set
            {
                this._boostHPIncrease = value;
            }
        }
        public double gripIncrease
        {
            get
            {
                return 300.0;
            }
            set
            {
                this._gripIncrease = value;
            }
        }

        public bool hasSuperCharger
        {
            get
            {
                return true;
            }
            set
            {
                this._hasSuperCharger = value;
            }
        }

        public bool hasTurboCharger
        {
            get
            {
                return true;
            }
            set
            {
                this._hasTurboCharger = value;
            }
        }
        public double hpIncrease
        {
            get
            {
                return 5000.0;
            }
            set
            {
                this._hpIncrease = value;
            }
        }