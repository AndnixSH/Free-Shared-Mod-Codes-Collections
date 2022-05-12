    private void RemoveEnergy(int energy)
    {
        if (this.m_playerData.PlayerProgress.Energy >= this.GetMaxAmountOfEnergy())
        {
            this.m_playerData.PlayerProgress.EnergyLostTimeStamp = this.m_serverTime.Now.ToString();
        }
        this.m_playerData.PlayerProgress.Energy = Mathf.Max(0, this.m_playerData.PlayerProgress.Energy + energy);
    }


    public PurchaseStatus RequestGemWithdrawal(int amount, InventoryChangeType type)
    {
        PurchaseStatus failed = PurchaseStatus.Failed;
        if (this.m_playerData.Wallet.Gems >= amount)
        {
            Wallet wallet = this.m_playerData.Wallet;
            wallet.Gems += amount;
            EventManager.Instance.Send<InventoryChangeEventArgs>(new InventoryChangeEventArgs(-amount, type));
            failed = PurchaseStatus.Success;
            this.SaveToLocalStorage();
        }
        return failed;
    }


    public bool AtFullEnergy
    {
        get
        {
            return true;
        }
    }