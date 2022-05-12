using A;
using System;
using System.Runtime.CompilerServices;

public class PlaySong_RequirePremium : Common_Back<PlaySong_RequirePremium>
{
    public Btn BtnBuy;
    public Btn BtnShop;
    [CompilerGenerated]
    private static Lbl.GetText c08fe855b4c02fd4c727a9ea28f38a1ca;
    [CompilerGenerated]
    private static Lbl.GetText c1ce592135371948ec3c8f698cb09a483;
    private Song c29df49907877de440240adc2b4b21da7;
    [CompilerGenerated]
    private static Lbl.GetText c73ae2378544bd2d8e513b1f4e8f3b38b;
    [CompilerGenerated]
    private static Lbl.GetText c81193aa65fc97f84386cf99073fed074;
    [CompilerGenerated]
    private static Lbl.GetText c97629f23073677692295ce76aea0d41c;
    [CompilerGenerated]
    private static Lbl.GetText ca94b848db1a3d378fe7b61d2bd6aaaf3;
    [CompilerGenerated]
    private static Lbl.GetText ce31b5faf9a61d6000272aaf2d1472ded;
    [CompilerGenerated]
    private static Lbl.GetText cf206ec275150451ba064513906a44697;
    public Lbl LblBuyInfo;
    public Lbl LblCoinsCount;
    public Lbl LblCost;
    public Lbl LblShopInfo;
    public Lbl LblSongArtist;
    public Lbl LblSongTitle;
    public Lbl LblSubtitle;
    public Lbl LblTitle;
    public Lbl LblTotal;

    [CompilerGenerated]
    private static string c0881b82407d67be10ed19a8b69dc797a()
    {
        string text = Localize.GetText("COINS_COUNT");
        UserAccountMgr local1 = SubSystem<UserAccountMgr>.cfd689ba95cb05e1458adf8457ab37a54;
        uint num1 = local1.c08aab0b717c28869add34ab89fae61a5;
        string newValue = num1.ToString();
        return text.Replace("{1}", newValue);
    }

    [CompilerGenerated]
    private string c2939d478ffde8d3388f9ad7f73b0cf57()
    {
        return this.c306a6109d5c0cfc3e7ac69de79023d32;
    }

    [CompilerGenerated]
    private static string c395d9350e4a64cb4289d2d20ca271bbe()
    {
        return Localize.GetText("BUY_SONG_TITLE");
    }

    private void c396b2cb8e50d2a36fe984f811d71fd9b(Btn c2d8a6ba3ff04c35af5dbc5bb5c615b52)
    {
        float? nullable;
        AudioMgr local1 = SubSystem<AudioMgr>.cfd689ba95cb05e1458adf8457ab37a54;
        c5499aa51b250adfeebe746167715ef8c.cd3d9f33d3ef09712052d53fc1f167e5f(ref nullable);
        bool flag1 = local1.SFX.Yes.Play(nullable);
        StateMachine machine1 = base.caa7e398bd72d0a62a8fa9c93edbb74fa;
        PlaySong_ShowMarketplace stateInstance = State<PlaySong_ShowMarketplace>.cfd689ba95cb05e1458adf8457ab37a54;
        StateBase base1 = machine1.GotoState(stateInstance);
    }

    [CompilerGenerated]
    private string c435a2cdfa1d38583d1cc1c478a1aa4e9()
    {
        string text = Localize.GetText("COINS_COUNT");
        string newValue = this.c91ccfc3aa09d6818c9d8a4f523716d6e.ToString();
        return text.Replace("{1}", newValue);
    }

    [CompilerGenerated]
    private static string c5aec49661365f97deb8dd47dfdd30ff3()
    {
        return Localize.GetText("TOTAL_COINS");
    }

    [CompilerGenerated]
    private static string c62028644c106b943b66a63f9e8ff8ca0()
    {
        return Localize.GetText("BUY_SHOP_BTN");
    }

    [CompilerGenerated]
    private string c7a6da1369248c5888b04b477f361c985()
    {
        return this.cc9b6be7323af523742f0dba5545fcac3;
    }

    [CompilerGenerated]
    private static string cab7727bce9cf1b6c786fe6ea3a1b18f6()
    {
        // This item is obfuscated and can not be translated.
        UserAccountMgr local1 = SubSystem<UserAccountMgr>.cfd689ba95cb05e1458adf8457ab37a54;
        if (!local1.c38440e5da1f3ad43e02a00af3eac609b)
        {
            UserAccountMgr local2 = SubSystem<UserAccountMgr>.cfd689ba95cb05e1458adf8457ab37a54;
            string newValue = local2.c9ca6420701ab599b5e838bc335912244;
            string text2 = Localize.GetText("BUY_SONG_SUBTITLE").Replace("{66}", newValue);
            if (text2 || true)
            {
                string text3;
                return text3;
            }
        }
        return Localize.GetText("BUY_SONG_SUBTITLE_GUEST");
    }

    [CompilerGenerated]
    private static string cc00e8fecf68433b0803e84ea056a0757()
    {
        return Localize.GetText("BUY_SHOP_MSG");
    }

    [CompilerGenerated]
    private static string cc84234cbaed601c3a25467d8c5bfc086()
    {
        return Localize.GetText("BUY_FOR_BTN");
    }

    [CompilerGenerated]
    private static string cc89b598ee217930d16cc6d62419eedfe()
    {
        return Localize.GetText("BUY_SONG_MSG");
    }

    protected override void ccdc59edde614d65982d82c4b5763467b()
    {
        StateMachine machine1 = base.caa7e398bd72d0a62a8fa9c93edbb74fa;
        PlaySong_Inactive stateInstance = State<PlaySong_Inactive>.cfd689ba95cb05e1458adf8457ab37a54;
        StateBase base1 = machine1.GotoState(stateInstance);
    }

    private void cce55ab874645c60e2c713909a5c95fd0(Btn c2d8a6ba3ff04c35af5dbc5bb5c615b52)
    {
        float? nullable;
        c5499aa51b250adfeebe746167715ef8c.cd3d9f33d3ef09712052d53fc1f167e5f(ref nullable);
        bool flag2 = SubSystem<AudioMgr>.cfd689ba95cb05e1458adf8457ab37a54.SFX.Yes.Play(nullable);
        UserAccountMgr local6 = SubSystem<UserAccountMgr>.cfd689ba95cb05e1458adf8457ab37a54;
        if (!local6.c38440e5da1f3ad43e02a00af3eac609b)
        {
            UserAccountMgr local8 = SubSystem<UserAccountMgr>.cfd689ba95cb05e1458adf8457ab37a54;
            if (local8.c08aab0b717c28869add34ab89fae61a5 >= this.c91ccfc3aa09d6818c9d8a4f523716d6e)
            {
                StateBase base6 = base.caa7e398bd72d0a62a8fa9c93edbb74fa.GotoState(State<PlaySong_BuyingSong>.cfd689ba95cb05e1458adf8457ab37a54);
                return;
            }
        Label_006F:
            switch (7)
            {
                case 0:
                    goto Label_006F;
            }
            PlaySong_ShowMarketplace local9 = State<PlaySong_ShowMarketplace>.cfd689ba95cb05e1458adf8457ab37a54;
            UserAccountMgr local10 = SubSystem<UserAccountMgr>.cfd689ba95cb05e1458adf8457ab37a54;
            uint num4 = local10.c08aab0b717c28869add34ab89fae61a5;
            local9.Configure(this.c29df49907877de440240adc2b4b21da7.c91ccfc3aa09d6818c9d8a4f523716d6e - num4);
            StateBase base5 = base.caa7e398bd72d0a62a8fa9c93edbb74fa.GotoState(State<PlaySong_ShowMarketplace>.cfd689ba95cb05e1458adf8457ab37a54);
            return;
        }
    Label_002D:
        switch (7)
        {
            case 0:
                goto Label_002D;

            default:
            {
                if (1 == 0)
                {
                }
                StateMachine machine4 = base.caa7e398bd72d0a62a8fa9c93edbb74fa;
                PlaySong_RequireLogin stateInstance = State<PlaySong_RequireLogin>.cfd689ba95cb05e1458adf8457ab37a54;
                StateBase base4 = machine4.GotoState(stateInstance);
                break;
            }
        }
    }

    public void ChooseBack()
    {
        StateMachine machine1 = base.caa7e398bd72d0a62a8fa9c93edbb74fa;
        PlaySong_Inactive stateInstance = State<PlaySong_Inactive>.cfd689ba95cb05e1458adf8457ab37a54;
        StateBase base1 = machine1.GotoState(stateInstance);
    }

    public void ChooseGetCoins()
    {
        StateMachine machine1 = base.caa7e398bd72d0a62a8fa9c93edbb74fa;
        PlaySong_ShowMarketplace stateInstance = State<PlaySong_ShowMarketplace>.cfd689ba95cb05e1458adf8457ab37a54;
        StateBase base1 = machine1.GotoState(stateInstance);
    }

    public override void EnterState(StateBase priorState)
    {
        float? nullable;
        GameplayMgr local1 = SubSystem<GameplayMgr>.cfd689ba95cb05e1458adf8457ab37a54;
        Song song1 = local1.c65b4a583e7f6cd5e76b8b4d6a7b85b50;
        this.c29df49907877de440240adc2b4b21da7 = song1;
        base.EnterState(priorState);
        c5499aa51b250adfeebe746167715ef8c.cd3d9f33d3ef09712052d53fc1f167e5f(ref nullable);
        SubSystem<AudioMgr>.cfd689ba95cb05e1458adf8457ab37a54.Announcer.PromptBuyPremiumContent.Play(nullable);
        AnalyticsMgr local2 = SubSystem<AnalyticsMgr>.cfd689ba95cb05e1458adf8457ab37a54;
        EventHitBuilder builder1 = new EventHitBuilder().SetEventCategory("PlaySong").SetEventAction("RequirePremium");
        string eventLabel = this.c29df49907877de440240adc2b4b21da7.cd7680e8b14c2ac494b7e6a836f3febd7;
        EventHitBuilder builder2 = builder1.SetEventLabel(eventLabel);
        UserAccountMgr local3 = SubSystem<UserAccountMgr>.cfd689ba95cb05e1458adf8457ab37a54;
        EventHitBuilder builder = builder2.SetEventValue((long) local3.c08aab0b717c28869add34ab89fae61a5).SetCustomDimension(1, SubSystem<UserAccountMgr>.cfd689ba95cb05e1458adf8457ab37a54.c13a6f98599e34f034dd091dabbe0afec.ToString());
        local2.LogEvent(builder);
    }

    public override void ExitState(StateBase nextState)
    {
        this.c29df49907877de440240adc2b4b21da7 = c16fcbeeb0c0956370873ca784b1513c6.c56715cb40fd0662990dfc29403dcba40;
        base.ExitState(nextState);
    }

    public override void Init(StateMachine sm)
    {
        PlaySong_RequirePremium expressionStack_20_0;
        PlaySong_RequirePremium expressionStack_F_0;
        PlaySong_RequirePremium expressionStack_5B_0;
        PlaySong_RequirePremium expressionStack_37_0;
        PlaySong_RequirePremium expressionStack_BB_0;
        PlaySong_RequirePremium expressionStack_A0_0;
        PlaySong_RequirePremium expressionStack_115_0;
        PlaySong_RequirePremium expressionStack_FA_0;
        PlaySong_RequirePremium expressionStack_4A_0;
        PlaySong_RequirePremium expressionStack_147_0;
        PlaySong_RequirePremium expressionStack_12C_0;
        PlaySong_RequirePremium expressionStack_18A_0;
        PlaySong_RequirePremium expressionStack_16F_0;
        PlaySong_RequirePremium expressionStack_1BC_0;
        PlaySong_RequirePremium expressionStack_1A1_0;
        PlaySong_RequirePremium expressionStack_1EE_0;
        PlaySong_RequirePremium expressionStack_1D3_0;
        base.Init(sm);
        if (c81193aa65fc97f84386cf99073fed074 != null)
        {
            expressionStack_20_0 = this;
            goto Label_0020;
        }
        else
        {
            expressionStack_F_0 = this;
        }
        c81193aa65fc97f84386cf99073fed074 = new Lbl.GetText(PlaySong_RequirePremium.c395d9350e4a64cb4289d2d20ca271bbe);
        expressionStack_20_0 = expressionStack_F_0;
    Label_0020:
        expressionStack_20_0.LblTitle = new Lbl(c81193aa65fc97f84386cf99073fed074);
        if (c73ae2378544bd2d8e513b1f4e8f3b38b != null)
        {
            expressionStack_5B_0 = this;
            goto Label_005B;
        }
        else
        {
            expressionStack_37_0 = this;
        }
    Label_0037:
        switch (1)
        {
            case 0:
                goto Label_0037;

            default:
            {
                PlaySong_RequirePremium expressionStack_44_0;
                PlaySong_RequirePremium expressionStack_41_0 = expressionStack_37_0;
                if (1 != 0)
                {
                    expressionStack_4A_0 = expressionStack_41_0;
                    break;
                }
                else
                {
                    expressionStack_44_0 = expressionStack_41_0;
                }
                expressionStack_4A_0 = expressionStack_44_0;
                break;
            }
        }
        c73ae2378544bd2d8e513b1f4e8f3b38b = new Lbl.GetText(PlaySong_RequirePremium.cab7727bce9cf1b6c786fe6ea3a1b18f6);
        expressionStack_5B_0 = expressionStack_4A_0;
    Label_005B:
        expressionStack_5B_0.LblSubtitle = new Lbl(c73ae2378544bd2d8e513b1f4e8f3b38b);
        this.LblSongTitle = new Lbl(new Lbl.GetText(this.c2939d478ffde8d3388f9ad7f73b0cf57));
        this.LblSongArtist = new Lbl(new Lbl.GetText(this.c7a6da1369248c5888b04b477f361c985));
        if (c1ce592135371948ec3c8f698cb09a483 != null)
        {
            expressionStack_BB_0 = this;
            goto Label_00BB;
        }
        else
        {
            expressionStack_A0_0 = this;
        }
    Label_00A0:
        switch (2)
        {
            case 0:
                goto Label_00A0;

            default:
            {
                PlaySong_RequirePremium expressionStack_AA_0 = expressionStack_A0_0;
                c1ce592135371948ec3c8f698cb09a483 = new Lbl.GetText(PlaySong_RequirePremium.cc84234cbaed601c3a25467d8c5bfc086);
                expressionStack_BB_0 = expressionStack_AA_0;
                break;
            }
        }
    Label_00BB:
        expressionStack_BB_0.BtnBuy = new Btn(new Lbl(c1ce592135371948ec3c8f698cb09a483), new Btn.BtnPressEvent(this.cce55ab874645c60e2c713909a5c95fd0));
        this.LblCost = new Lbl(new Lbl.GetText(this.c435a2cdfa1d38583d1cc1c478a1aa4e9));
        if (cf206ec275150451ba064513906a44697 != null)
        {
            expressionStack_115_0 = this;
            goto Label_0115;
        }
        else
        {
            expressionStack_FA_0 = this;
        }
    Label_00FA:
        switch (7)
        {
            case 0:
                goto Label_00FA;

            default:
            {
                PlaySong_RequirePremium expressionStack_104_0 = expressionStack_FA_0;
                cf206ec275150451ba064513906a44697 = new Lbl.GetText(PlaySong_RequirePremium.cc89b598ee217930d16cc6d62419eedfe);
                expressionStack_115_0 = expressionStack_104_0;
                break;
            }
        }
    Label_0115:
        expressionStack_115_0.LblBuyInfo = new Lbl(cf206ec275150451ba064513906a44697);
        if (c97629f23073677692295ce76aea0d41c != null)
        {
            expressionStack_147_0 = this;
            goto Label_0147;
        }
        else
        {
            expressionStack_12C_0 = this;
        }
    Label_012C:
        switch (2)
        {
            case 0:
                goto Label_012C;

            default:
            {
                PlaySong_RequirePremium expressionStack_136_0 = expressionStack_12C_0;
                c97629f23073677692295ce76aea0d41c = new Lbl.GetText(PlaySong_RequirePremium.c62028644c106b943b66a63f9e8ff8ca0);
                expressionStack_147_0 = expressionStack_136_0;
                break;
            }
        }
    Label_0147:
        expressionStack_147_0.BtnShop = new Btn(new Lbl(c97629f23073677692295ce76aea0d41c), new Btn.BtnPressEvent(this.c396b2cb8e50d2a36fe984f811d71fd9b));
        if (c08fe855b4c02fd4c727a9ea28f38a1ca != null)
        {
            expressionStack_18A_0 = this;
            goto Label_018A;
        }
        else
        {
            expressionStack_16F_0 = this;
        }
    Label_016F:
        switch (4)
        {
            case 0:
                goto Label_016F;

            default:
            {
                PlaySong_RequirePremium expressionStack_179_0 = expressionStack_16F_0;
                c08fe855b4c02fd4c727a9ea28f38a1ca = new Lbl.GetText(PlaySong_RequirePremium.cc00e8fecf68433b0803e84ea056a0757);
                expressionStack_18A_0 = expressionStack_179_0;
                break;
            }
        }
    Label_018A:
        expressionStack_18A_0.LblShopInfo = new Lbl(c08fe855b4c02fd4c727a9ea28f38a1ca);
        if (ce31b5faf9a61d6000272aaf2d1472ded != null)
        {
            expressionStack_1BC_0 = this;
            goto Label_01BC;
        }
        else
        {
            expressionStack_1A1_0 = this;
        }
    Label_01A1:
        switch (1)
        {
            case 0:
                goto Label_01A1;

            default:
            {
                PlaySong_RequirePremium expressionStack_1AB_0 = expressionStack_1A1_0;
                ce31b5faf9a61d6000272aaf2d1472ded = new Lbl.GetText(PlaySong_RequirePremium.c5aec49661365f97deb8dd47dfdd30ff3);
                expressionStack_1BC_0 = expressionStack_1AB_0;
                break;
            }
        }
    Label_01BC:
        expressionStack_1BC_0.LblTotal = new Lbl(ce31b5faf9a61d6000272aaf2d1472ded);
        if (ca94b848db1a3d378fe7b61d2bd6aaaf3 != null)
        {
            expressionStack_1EE_0 = this;
            goto Label_01EE;
        }
        else
        {
            expressionStack_1D3_0 = this;
        }
    Label_01D3:
        switch (5)
        {
            case 0:
                goto Label_01D3;

            default:
            {
                PlaySong_RequirePremium expressionStack_1DD_0 = expressionStack_1D3_0;
                ca94b848db1a3d378fe7b61d2bd6aaaf3 = new Lbl.GetText(PlaySong_RequirePremium.c0881b82407d67be10ed19a8b69dc797a);
                expressionStack_1EE_0 = expressionStack_1DD_0;
                break;
            }
        }
    Label_01EE:
        expressionStack_1EE_0.LblCoinsCount = new Lbl(ca94b848db1a3d378fe7b61d2bd6aaaf3);
    }

    public bool IsPlayable(Song.Difficulty difficulty)
    {
        if (!c797f98945fa1137ccf124ed256a6cca3.ceeb5be9cc96dff470c7b191db9930716(this.c29df49907877de440240adc2b4b21da7, c4e2d2055e31b0e0d929410973f6d8238.c56715cb40fd0662990dfc29403dcba40) || !c797f98945fa1137ccf124ed256a6cca3.ceeb5be9cc96dff470c7b191db9930716(this.c29df49907877de440240adc2b4b21da7.GetChart(difficulty), c4e2d2055e31b0e0d929410973f6d8238.c56715cb40fd0662990dfc29403dcba40))
        {
            return false;
        }
    Label_002E:
        switch (7)
        {
            case 0:
                goto Label_002E;
        }
        if (1 == 0)
        {
        }
        Chart chart = this.c29df49907877de440240adc2b4b21da7.GetChart(difficulty);
        return chart.c0b1b8c3c211f7e5aef6658bc73532491;
    }

    public bool c0dd97914db111d55494f89c89b2e49af
    {
        get
        {
            int expressionStack_85_0;
            if (this.c907b98ddb5fe35119587bb1fa6f11e22 == Song.ContentType.Free)
            {
                goto Label_0081;
            }
        Label_000D:
            switch (3)
            {
                case 0:
                    goto Label_000D;

                default:
                    if (1 == 0)
                    {
                    }
                    if (!c797f98945fa1137ccf124ed256a6cca3.ceeb5be9cc96dff470c7b191db9930716(this.c29df49907877de440240adc2b4b21da7, c4e2d2055e31b0e0d929410973f6d8238.c56715cb40fd0662990dfc29403dcba40))
                    {
                        goto Label_0084;
                    }
                    break;
            }
        Label_0032:
            switch (2)
            {
                case 0:
                    goto Label_0032;

                default:
                {
                    string text3 = this.c29df49907877de440240adc2b4b21da7.c0d79e2e86e6687dfe56d762ef6dbb267;
                    if (string.IsNullOrEmpty(text3))
                    {
                        goto Label_0084;
                    }
                    break;
                }
            }
        Label_0052:
            switch (4)
            {
                case 0:
                    goto Label_0052;

                default:
                {
                    string text4 = this.c29df49907877de440240adc2b4b21da7.c0d79e2e86e6687dfe56d762ef6dbb267;
                    if (!c6d367ad363cb96e357846b0dadc70d58.ceeb5be9cc96dff470c7b191db9930716(text4, "invalid"))
                    {
                        goto Label_0084;
                    }
                    break;
                }
            }
        Label_0077:
            switch (7)
            {
                case 0:
                    goto Label_0077;
            }
        Label_0081:
            expressionStack_85_0 = 1;
            goto Label_0085;
        Label_0084:
            expressionStack_85_0 = 0;
        Label_0085:
            return (bool) expressionStack_85_0;
        }
    }

    public bool c262b6c1703f95dd84952ef049a850ead
    {
        get
        {
            if (!c797f98945fa1137ccf124ed256a6cca3.ceeb5be9cc96dff470c7b191db9930716(this.c29df49907877de440240adc2b4b21da7, c4e2d2055e31b0e0d929410973f6d8238.c56715cb40fd0662990dfc29403dcba40))
            {
                goto Label_007B;
            }
        Label_0014:
            switch (2)
            {
                case 0:
                    goto Label_0014;

                default:
                {
                    if (1 == 0)
                    {
                    }
                    Song.Difficulty difficulty = SubSystem<UserAccountMgr>.cfd689ba95cb05e1458adf8457ab37a54.c879392436d11f1a5e69045c698e24a05;
                    Chart chart = this.c29df49907877de440240adc2b4b21da7.GetChart(difficulty);
                    if (!c797f98945fa1137ccf124ed256a6cca3.ceeb5be9cc96dff470c7b191db9930716(chart, c4e2d2055e31b0e0d929410973f6d8238.c56715cb40fd0662990dfc29403dcba40))
                    {
                        goto Label_007B;
                    }
                    break;
                }
            }
        Label_004E:
            switch (7)
            {
                case 0:
                    goto Label_004E;

                default:
                {
                    UserAccountMgr local2 = SubSystem<UserAccountMgr>.cfd689ba95cb05e1458adf8457ab37a54;
                    Song.Difficulty difficulty4 = local2.c879392436d11f1a5e69045c698e24a05;
                    Chart chart4 = this.c29df49907877de440240adc2b4b21da7.GetChart(difficulty4);
                    return chart4.c0b1b8c3c211f7e5aef6658bc73532491;
                }
            }
        Label_007B:
            return false;
        }
    }

    public string c306a6109d5c0cfc3e7ac69de79023d32
    {
        get
        {
            // This item is obfuscated and can not be translated.
            if (c797f98945fa1137ccf124ed256a6cca3.ceeb5be9cc96dff470c7b191db9930716(this.c29df49907877de440240adc2b4b21da7, c4e2d2055e31b0e0d929410973f6d8238.c56715cb40fd0662990dfc29403dcba40))
            {
                if (this.c29df49907877de440240adc2b4b21da7.c306a6109d5c0cfc3e7ac69de79023d32 || true)
                {
                }
            }
            return string.Empty;
        }
    }

    public Song.Difficulty c3cf76d63e0cfc5958da95e8de03ec093
    {
        get
        {
            UserAccountMgr local1 = SubSystem<UserAccountMgr>.cfd689ba95cb05e1458adf8457ab37a54;
            return local1.c879392436d11f1a5e69045c698e24a05;
        }
    }

    public uint c450ac0a4853566f4612f40e6a2c27c6a
    {
        get
        {
            Chart chart1;
            if (c797f98945fa1137ccf124ed256a6cca3.ceeb5be9cc96dff470c7b191db9930716(this.c29df49907877de440240adc2b4b21da7, c4e2d2055e31b0e0d929410973f6d8238.c56715cb40fd0662990dfc29403dcba40))
            {
                chart1 = this.c29df49907877de440240adc2b4b21da7.ca53e34ad3211284cab3ef3aa1ae93115;
            }
            return (!c797f98945fa1137ccf124ed256a6cca3.ceeb5be9cc96dff470c7b191db9930716(chart1, c4e2d2055e31b0e0d929410973f6d8238.c56715cb40fd0662990dfc29403dcba40) ? 0 : this.c29df49907877de440240adc2b4b21da7.ca53e34ad3211284cab3ef3aa1ae93115.cba741c42bb687d6d744b894aa3884fcb);
        }
    }

    public Song c49d5c71e905374add8b9069833fd607d
    {
        get
        {
            return this.c29df49907877de440240adc2b4b21da7;
        }
    }

    public uint c7869a7b5a6069e9f276ab5b79be3434d
    {
        get
        {
            // This item is obfuscated and can not be translated.
            if (!c797f98945fa1137ccf124ed256a6cca3.ceeb5be9cc96dff470c7b191db9930716(this.c29df49907877de440240adc2b4b21da7, c4e2d2055e31b0e0d929410973f6d8238.c56715cb40fd0662990dfc29403dcba40))
            {
                goto Label_0063;
            }
        Label_0014:
            switch (2)
            {
                case 0:
                    goto Label_0014;

                default:
                {
                    if (1 != 0)
                    {
                        goto Label_0027;
                    }
                    Chart chart1 = this.c29df49907877de440240adc2b4b21da7.caadd33ced3f1ed2904db2c3cbc285746;
                    if (!c797f98945fa1137ccf124ed256a6cca3.ceeb5be9cc96dff470c7b191db9930716(chart1, c4e2d2055e31b0e0d929410973f6d8238.c56715cb40fd0662990dfc29403dcba40))
                    {
                        goto Label_0063;
                    }
                    break;
                }
            }
        Label_0042:
            switch (4)
            {
                case 0:
                    goto Label_0042;

                default:
                {
                    Chart chart2 = this.c29df49907877de440240adc2b4b21da7.caadd33ced3f1ed2904db2c3cbc285746;
                    if (chart2.cba741c42bb687d6d744b894aa3884fcb || true)
                    {
                    }
                    break;
                }
            }
        Label_0063:
            return 0;
        }
    }

    public Song.ContentType c907b98ddb5fe35119587bb1fa6f11e22
    {
        get
        {
            // This item is obfuscated and can not be translated.
            if (!c797f98945fa1137ccf124ed256a6cca3.ceeb5be9cc96dff470c7b191db9930716(this.c29df49907877de440240adc2b4b21da7, c4e2d2055e31b0e0d929410973f6d8238.c56715cb40fd0662990dfc29403dcba40))
            {
                goto Label_0035;
            }
        Label_0012:
            switch (6)
            {
                case 0:
                    goto Label_0012;

                default:
                    if (1 != 0)
                    {
                        goto Label_0025;
                    }
                    if (this.c29df49907877de440240adc2b4b21da7.c907b98ddb5fe35119587bb1fa6f11e22 || ((Song.ContentType) true))
                    {
                    }
                    break;
            }
        Label_0035:
            return Song.ContentType.Free;
        }
    }

    public uint c91ccfc3aa09d6818c9d8a4f523716d6e
    {
        get
        {
            // This item is obfuscated and can not be translated.
            uint num1;
            if (!c797f98945fa1137ccf124ed256a6cca3.ceeb5be9cc96dff470c7b191db9930716(this.c29df49907877de440240adc2b4b21da7, c4e2d2055e31b0e0d929410973f6d8238.c56715cb40fd0662990dfc29403dcba40))
            {
                goto Label_0069;
            }
        Label_0014:
            switch (2)
            {
                case 0:
                    goto Label_0014;

                default:
                    if (1 != 0)
                    {
                        goto Label_0027;
                    }
                    if (this.c0dd97914db111d55494f89c89b2e49af)
                    {
                        goto Label_0069;
                    }
                    if (this.c907b98ddb5fe35119587bb1fa6f11e22 == Song.ContentType.Premium)
                    {
                        goto Label_0059;
                    }
                    break;
            }
        Label_003C:
            switch (5)
            {
                case 0:
                    goto Label_003C;

                default:
                    if (this.c907b98ddb5fe35119587bb1fa6f11e22 != Song.ContentType.SubscriptionEarlyAccessPremium)
                    {
                        goto Label_0069;
                    }
                    break;
            }
        Label_004F:
            switch (1)
            {
                case 0:
                    goto Label_004F;
            }
        Label_0059:
            num1 = this.c29df49907877de440240adc2b4b21da7.c91ccfc3aa09d6818c9d8a4f523716d6e;
            if (num1 || true)
            {
            }
        Label_0069:
            return 0;
        }
    }

    public uint cae1b190ae656377acfed349ecd801bc3
    {
        get
        {
            // This item is obfuscated and can not be translated.
            if (!c797f98945fa1137ccf124ed256a6cca3.ceeb5be9cc96dff470c7b191db9930716(this.c29df49907877de440240adc2b4b21da7, c4e2d2055e31b0e0d929410973f6d8238.c56715cb40fd0662990dfc29403dcba40))
            {
                goto Label_0063;
            }
        Label_0014:
            switch (2)
            {
                case 0:
                    goto Label_0014;

                default:
                {
                    if (1 != 0)
                    {
                        goto Label_0027;
                    }
                    Chart chart1 = this.c29df49907877de440240adc2b4b21da7.c332511f8c285b0d03bd9745c342f1acf;
                    if (!c797f98945fa1137ccf124ed256a6cca3.ceeb5be9cc96dff470c7b191db9930716(chart1, c4e2d2055e31b0e0d929410973f6d8238.c56715cb40fd0662990dfc29403dcba40))
                    {
                        goto Label_0063;
                    }
                    break;
                }
            }
        Label_0042:
            switch (4)
            {
                case 0:
                    goto Label_0042;

                default:
                {
                    Chart chart2 = this.c29df49907877de440240adc2b4b21da7.c332511f8c285b0d03bd9745c342f1acf;
                    if (chart2.cba741c42bb687d6d744b894aa3884fcb || true)
                    {
                    }
                    break;
                }
            }
        Label_0063:
            return 0;
        }
    }

    public string cb45dd0acdad6b97e99aebaabfa4e1c97
    {
        get
        {
            // This item is obfuscated and can not be translated.
            if (!c797f98945fa1137ccf124ed256a6cca3.ceeb5be9cc96dff470c7b191db9930716(this.c29df49907877de440240adc2b4b21da7, c4e2d2055e31b0e0d929410973f6d8238.c56715cb40fd0662990dfc29403dcba40))
            {
                goto Label_003B;
            }
        Label_0014:
            switch (2)
            {
                case 0:
                    goto Label_0014;

                default:
                    if (1 != 0)
                    {
                        goto Label_0027;
                    }
                    if (this.c29df49907877de440240adc2b4b21da7.cb45dd0acdad6b97e99aebaabfa4e1c97 || true)
                    {
                    }
                    break;
            }
        Label_003B:
            return string.Empty;
        }
    }

    public string cc9b6be7323af523742f0dba5545fcac3
    {
        get
        {
            // This item is obfuscated and can not be translated.
            if (!c797f98945fa1137ccf124ed256a6cca3.ceeb5be9cc96dff470c7b191db9930716(this.c29df49907877de440240adc2b4b21da7, c4e2d2055e31b0e0d929410973f6d8238.c56715cb40fd0662990dfc29403dcba40))
            {
                goto Label_003B;
            }
        Label_0014:
            switch (5)
            {
                case 0:
                    goto Label_0014;

                default:
                    if (1 != 0)
                    {
                        goto Label_0027;
                    }
                    if (this.c29df49907877de440240adc2b4b21da7.cc9b6be7323af523742f0dba5545fcac3 || true)
                    {
                    }
                    break;
            }
        Label_003B:
            return string.Empty;
        }
    }

    public uint cd7ded43a2358475420fa26e11c3b0b23
    {
        get
        {
            // This item is obfuscated and can not be translated.
            if (!c797f98945fa1137ccf124ed256a6cca3.ceeb5be9cc96dff470c7b191db9930716(this.c29df49907877de440240adc2b4b21da7, c4e2d2055e31b0e0d929410973f6d8238.c56715cb40fd0662990dfc29403dcba40))
            {
                goto Label_0063;
            }
        Label_0014:
            switch (4)
            {
                case 0:
                    goto Label_0014;

                default:
                {
                    if (1 != 0)
                    {
                        goto Label_0027;
                    }
                    Chart chart1 = this.c29df49907877de440240adc2b4b21da7.caedfd179262ad3c604b55a81a84b9a9b;
                    if (!c797f98945fa1137ccf124ed256a6cca3.ceeb5be9cc96dff470c7b191db9930716(chart1, c4e2d2055e31b0e0d929410973f6d8238.c56715cb40fd0662990dfc29403dcba40))
                    {
                        goto Label_0063;
                    }
                    break;
                }
            }
        Label_0042:
            switch (6)
            {
                case 0:
                    goto Label_0042;

                default:
                {
                    Chart chart2 = this.c29df49907877de440240adc2b4b21da7.caedfd179262ad3c604b55a81a84b9a9b;
                    if (chart2.cba741c42bb687d6d744b894aa3884fcb || true)
                    {
                    }
                    break;
                }
            }
        Label_0063:
            return 0;
        }
    }
}

