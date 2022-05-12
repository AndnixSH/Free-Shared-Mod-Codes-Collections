LOOK AT 3000f!


    public void AdjustRideheight(int newRideheight)
    {
        float num = (((float) newRideheight) / 3000f) - (((float) this.car.rideheight) / 3000f);
        if (num != 0f)
        {
            base.gameObject.transform.position = new Vector3(base.gameObject.transform.position.x, base.gameObject.transform.position.y - num, base.gameObject.transform.position.z);
            this.body_pivot_FL.transform.position = new Vector3(this.body_pivot_FL.transform.position.x, this.body_pivot_FL.transform.position.y + num, this.body_pivot_FL.transform.position.z);
            this.body_pivot_FR.transform.position = new Vector3(this.body_pivot_FR.transform.position.x, this.body_pivot_FR.transform.position.y + num, this.body_pivot_FR.transform.position.z);
            this.body_pivot_RL.transform.position = new Vector3(this.body_pivot_RL.transform.position.x, this.body_pivot_RL.transform.position.y + num, this.body_pivot_RL.transform.position.z);
            this.body_pivot_RR.transform.position = new Vector3(this.body_pivot_RR.transform.position.x, this.body_pivot_RR.transform.position.y + num, this.body_pivot_RR.transform.position.z);
        }
        this.car.rideheight = newRideheight;
        this.PositionGroundEffects();
    }