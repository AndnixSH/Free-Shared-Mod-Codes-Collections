using A;
using System;
using System.Globalization;
using System.Runtime.CompilerServices;
using UnityEngine;

public class SongDetails : Common_Back<SongDetails>
{
    public Btn BtnChangeOtherUser;
    public Btn BtnEasy;
    public Btn BtnGlobalScoresPopup;
    public Btn BtnHard;
    public Btn BtnInfo;
    public Btn BtnMaster;
    public Btn BtnOptions;
    public Btn BtnPersonalScoresPopup;
    public Btn BtnStartSong;
    public Btn BtnToggleFavorite;
    public Btn BtnWild;
    [CompilerGenerated]
    private static Lbl.GetText c04fb538e81fbecf1158e2cf994e8cab2;
    [CompilerGenerated]
    private static Lbl.GetText c13439de50b1991c747321dcaaa48f08f;
    [CompilerGenerated]
    private static Lbl.GetText c1402d4b6183ef685bd8b58dc59436355;
    [CompilerGenerated]
    private static Lbl.GetText c1cde3d23e7bc1958791e14c106dfb1fc;
    [CompilerGenerated]
    private static Lbl.GetText c1d52b4f535816937c3e9b9eba2457036;
    protected Song c29df49907877de440240adc2b4b21da7;
    [CompilerGenerated]
    private static Lbl.GetText c2a177480fcbdde27a88bc832a7c21cd8;
    private bool c2c34d475b76573555dc892b3fd59b029;
    protected bool c30486859980277125885617e2f55afca;
    [CompilerGenerated]
    private static Lbl.GetText c472cb5c00ec28b8b599909ead6bd2043;
    [CompilerGenerated]
    private static Lbl.GetText c501510aa9ff3089a642eb2993a4db234;
    [CompilerGenerated]
    private static Lbl.GetText c529f697e803e4dd22d4b8be0f453868e;
    [CompilerGenerated]
    private static Lbl.GetText c5949032434cb343fe1c8012e717726ff;
    private float c5f92860e56567a3ef6a6db1212beaa56;
    protected uint c6120f1db3e3f7b949f810aad23cc9d4e;
    [CompilerGenerated]
    private static Lbl.GetText c6e290ad7c46fd463ada2e344b4a95f80;
    [CompilerGenerated]
    private static Lbl.GetText c76d38f5c148221afbf3794827fbbef6e;
    [CompilerGenerated]
    private static Lbl.GetText c99f5db4b8f90683f94983dcd387ad485;
    [CompilerGenerated]
    private static Lbl.GetText c9ccb1290d2c323a015dd3a7f6536867d;
    private HighScoreLists c9f4db67d7c159f8be2b70e651817a9e6;
    [CompilerGenerated]
    private static Lbl.GetText ca00bd36cc3f75cb72fbf321592ea0a3a;
    private OtherUserState ccae0f7648d277a25aa781811de4feac6;
    [CompilerGenerated]
    private static Lbl.GetText ced1bf379c5d38913d66b6542fc9ed0b0;
    [CompilerGenerated]
    private static Lbl.GetText ced2628dd0571e7f9235ece1d58215b71;
    public Lbl LblChords;
    public Lbl LblFollows;
    public Lbl LblHolds;
    public Lbl LblOtherUserName;
    public Lbl LblOtherUserScore;
    public Lbl LblOtherUserTitle;
    public Lbl LblPersonalBest;
    public Lbl LblPersonalRank;
    public Lbl LblPersonalScore;
    public Lbl LblSongArtist;
    public Lbl LblSongSubTitle;
    public Lbl LblSongTitle;
    public Lbl LblTaps;
    public Lbl LblWindowTitle;
    public DifficultyChangedEvent OnDifficultyChanged;
    public float RotateScoreTime = 5f;
    public StateMachine SubSM;

    protected override void c0086ee34c91fadf2bdb029e8e6ce9ecf()
    {
        base.c0086ee34c91fadf2bdb029e8e6ce9ecf();
        UserAccountMgr local2 = SubSystem<UserAccountMgr>.cfd689ba95cb05e1458adf8457ab37a54;
        if (local2.c38440e5da1f3ad43e02a00af3eac609b)
        {
            return;
        }
    Label_0019:
        switch (2)
        {
            case 0:
                goto Label_0019;

            default:
                if (1 == 0)
                {
                }
                this.c5f92860e56567a3ef6a6db1212beaa56 -= Time.deltaTime;
                if (this.c2c34d475b76573555dc892b3fd59b029)
                {
                    return;
                }
                break;
        }
    Label_0046:
        switch (6)
        {
            case 0:
                goto Label_0046;

            default:
                if (this.c5f92860e56567a3ef6a6db1212beaa56 >= 0f)
                {
                    return;
                }
                break;
        }
    Label_005D:
        switch (6)
        {
            case 0:
                goto Label_005D;

            default:
                this.c5f92860e56567a3ef6a6db1212beaa56 = this.RotateScoreTime;
                switch (this.ccae0f7648d277a25aa781811de4feac6)
                {
                    case OtherUserState.GlobalRival:
                        this.ccae0f7648d277a25aa781811de4feac6 = OtherUserState.FriendRival;
                        break;

                    case OtherUserState.FriendRival:
                        this.ccae0f7648d277a25aa781811de4feac6 = OtherUserState.FriendLeader;
                        break;

                    case OtherUserState.FriendLeader:
                        this.ccae0f7648d277a25aa781811de4feac6 = OtherUserState.GlobalRival;
                        break;
                }
                break;
        }
    }

    [CompilerGenerated]
    private static string c02db822ae9cb9d42ca3f4017a892e6ab()
    {
        return Localize.GetText("START");
    }

    private Country.Code c17edbc21d50746e148ced6c347c7ac62()
    {
        Chart chart;
        UserAccountMgr local3 = SubSystem<UserAccountMgr>.cfd689ba95cb05e1458adf8457ab37a54;
        if (local3.c38440e5da1f3ad43e02a00af3eac609b)
        {
            goto Label_009C;
        }
    Label_0013:
        switch (7)
        {
            case 0:
                goto Label_0013;

            default:
            {
                if (1 == 0)
                {
                }
                ConnectionMgr local4 = SubSystem<ConnectionMgr>.cfd689ba95cb05e1458adf8457ab37a54;
                if (!local4.c95fda7dd8d79315770ddc1ba031825ef)
                {
                    goto Label_009C;
                }
                break;
            }
        }
    Label_0036:
        switch (6)
        {
            case 0:
                goto Label_0036;

            default:
                if (!c797f98945fa1137ccf124ed256a6cca3.ceeb5be9cc96dff470c7b191db9930716(this.c29df49907877de440240adc2b4b21da7, c4e2d2055e31b0e0d929410973f6d8238.c56715cb40fd0662990dfc29403dcba40))
                {
                    goto Label_009C;
                }
                break;
        }
    Label_0054:
        switch (5)
        {
            case 0:
                goto Label_0054;

            default:
                chart = this.c29df49907877de440240adc2b4b21da7.GetChart(this.c3cf76d63e0cfc5958da95e8de03ec093);
                if (!c797f98945fa1137ccf124ed256a6cca3.ceeb5be9cc96dff470c7b191db9930716(chart, c4e2d2055e31b0e0d929410973f6d8238.c56715cb40fd0662990dfc29403dcba40))
                {
                    goto Label_009C;
                }
                break;
        }
    Label_007F:
        switch (6)
        {
            case 0:
                goto Label_007F;

            default:
                if (chart.c5cded0f526a2e5623fa2fa9df9d0047f)
                {
                    return Country.Code.WD;
                }
                return chart.c7e2b4d589bd7ed9757aa901c2b840904;
        }
    Label_009C:
        return Country.Code.WD;
    }

    private string c1f9171562be4565c213f45caedef1398()
    {
        Chart chart;
        UserAccountMgr local2 = SubSystem<UserAccountMgr>.cfd689ba95cb05e1458adf8457ab37a54;
        if (local2.c38440e5da1f3ad43e02a00af3eac609b)
        {
            goto Label_00BA;
        }
    Label_0013:
        switch (1)
        {
            case 0:
                goto Label_0013;

            default:
            {
                if (1 == 0)
                {
                }
                bool flag5 = SubSystem<ConnectionMgr>.cfd689ba95cb05e1458adf8457ab37a54.c95fda7dd8d79315770ddc1ba031825ef;
                if (!flag5 || !c797f98945fa1137ccf124ed256a6cca3.ceeb5be9cc96dff470c7b191db9930716(this.c29df49907877de440240adc2b4b21da7, c4e2d2055e31b0e0d929410973f6d8238.c56715cb40fd0662990dfc29403dcba40))
                {
                    goto Label_00BA;
                }
                break;
            }
        }
    Label_0049:
        switch (1)
        {
            case 0:
                goto Label_0049;

            default:
                chart = this.c29df49907877de440240adc2b4b21da7.GetChart(this.c3cf76d63e0cfc5958da95e8de03ec093);
                if (!c797f98945fa1137ccf124ed256a6cca3.ceeb5be9cc96dff470c7b191db9930716(chart, c4e2d2055e31b0e0d929410973f6d8238.c56715cb40fd0662990dfc29403dcba40))
                {
                    goto Label_00BA;
                }
                break;
        }
    Label_0076:
        switch (7)
        {
            case 0:
                goto Label_0076;

            default:
                if (!chart.c5cded0f526a2e5623fa2fa9df9d0047f)
                {
                    return chart.cc3b943c40d88bf89009628764c24c44d.ToString("#,0", CultureInfo.InvariantCulture);
                }
                break;
        }
    Label_0088:
        switch (2)
        {
            case 0:
                goto Label_0088;

            default:
                return Localize.GetText("LOADING_SCORE");
        }
    Label_00BA:
        return Localize.GetText("--");
    }

    private string c20f8b0e2518537314acb217b25534693()
    {
        // This item is obfuscated and can not be translated.
        if (cdaf113d73ff5e883bc2b75cec2061538.ceeb5be9cc96dff470c7b191db9930716(this.c29df49907877de440240adc2b4b21da7))
        {
            if (this.c29df49907877de440240adc2b4b21da7.cb45dd0acdad6b97e99aebaabfa4e1c97 || true)
            {
            }
        }
        return string.Empty;
    }

    protected void c210c6dda70655359e82568b9db854d11(Song.Difficulty c9c19eb765e14b1cf29c86122f4838968)
    {
        AudioMgr local15;
        float? nullable6;
        UserAccountMgr local9 = SubSystem<UserAccountMgr>.cfd689ba95cb05e1458adf8457ab37a54;
        if (local9.c879392436d11f1a5e69045c698e24a05 == c9c19eb765e14b1cf29c86122f4838968)
        {
            return;
        }
    Label_0014:
        switch (3)
        {
            case 0:
                goto Label_0014;

            default:
            {
                float? nullable;
                if (1 == 0)
                {
                }
                UserAccountMgr local10 = SubSystem<UserAccountMgr>.cfd689ba95cb05e1458adf8457ab37a54;
                local10.c879392436d11f1a5e69045c698e24a05 = c9c19eb765e14b1cf29c86122f4838968;
                AudioMgr local11 = SubSystem<AudioMgr>.cfd689ba95cb05e1458adf8457ab37a54;
                c5499aa51b250adfeebe746167715ef8c.cd3d9f33d3ef09712052d53fc1f167e5f(ref nullable);
                bool flag8 = local11.SFX.ChangeDifficulty.Play(nullable);
                switch (c9c19eb765e14b1cf29c86122f4838968)
                {
                    case Song.Difficulty.Easy:
                    {
                        float? nullable2;
                        AudioMgr local12 = SubSystem<AudioMgr>.cfd689ba95cb05e1458adf8457ab37a54;
                        c5499aa51b250adfeebe746167715ef8c.cd3d9f33d3ef09712052d53fc1f167e5f(ref nullable2);
                        bool flag9 = local12.Announcer.DifficulyEasy.Play(nullable2);
                        goto Label_00FF;
                    }
                    case Song.Difficulty.Hard:
                    {
                        float? nullable3;
                        c5499aa51b250adfeebe746167715ef8c.cd3d9f33d3ef09712052d53fc1f167e5f(ref nullable3);
                        bool flag10 = SubSystem<AudioMgr>.cfd689ba95cb05e1458adf8457ab37a54.Announcer.DifficulyHard.Play(nullable3);
                        goto Label_00FF;
                    }
                    case Song.Difficulty.Master:
                    {
                        float? nullable4;
                        AudioMgr local13 = SubSystem<AudioMgr>.cfd689ba95cb05e1458adf8457ab37a54;
                        c5499aa51b250adfeebe746167715ef8c.cd3d9f33d3ef09712052d53fc1f167e5f(ref nullable4);
                        bool flag11 = local13.Announcer.DifficulyMaster.Play(nullable4);
                        goto Label_00FF;
                    }
                    case Song.Difficulty.Wild:
                    {
                        float? nullable5;
                        AudioMgr local14 = SubSystem<AudioMgr>.cfd689ba95cb05e1458adf8457ab37a54;
                        c5499aa51b250adfeebe746167715ef8c.cd3d9f33d3ef09712052d53fc1f167e5f(ref nullable5);
                        bool flag12 = local14.Announcer.DifficulyWild.Play(nullable5);
                        goto Label_00FF;
                    }
                }
                break;
            }
        }
    Label_00FF:
        local15 = SubSystem<AudioMgr>.cfd689ba95cb05e1458adf8457ab37a54;
        c5499aa51b250adfeebe746167715ef8c.cd3d9f33d3ef09712052d53fc1f167e5f(ref nullable6);
        bool flag13 = local15.SFX.StatsChange.Play(nullable6);
        Chart chart = this.c29df49907877de440240adc2b4b21da7.GetChart(c9c19eb765e14b1cf29c86122f4838968);
        SubSystem<HighScoreMgr>.cfd689ba95cb05e1458adf8457ab37a54.SetupHighScores(chart);
        if (!chart.c5cded0f526a2e5623fa2fa9df9d0047f)
        {
            chart.RefreshScoreInfo();
        }
        if (this.OnDifficultyChanged == null)
        {
            return;
        }
    Label_0154:
        switch (1)
        {
            case 0:
                goto Label_0154;

            default:
                this.OnDifficultyChanged(c9c19eb765e14b1cf29c86122f4838968);
                break;
        }
    }

    private void c22a096bd5c7bcc3517faf3f4aa134012(Btn c2d8a6ba3ff04c35af5dbc5bb5c615b52)
    {
        float? nullable;
        AudioMgr local1 = SubSystem<AudioMgr>.cfd689ba95cb05e1458adf8457ab37a54;
        c5499aa51b250adfeebe746167715ef8c.cd3d9f33d3ef09712052d53fc1f167e5f(ref nullable);
        bool flag1 = local1.SFX.GenericOptionChange.Play(nullable);
        switch (this.ccae0f7648d277a25aa781811de4feac6)
        {
            case OtherUserState.GlobalRival:
                this.ccae0f7648d277a25aa781811de4feac6 = OtherUserState.FriendRival;
                break;

            case OtherUserState.FriendRival:
                this.ccae0f7648d277a25aa781811de4feac6 = OtherUserState.FriendLeader;
                break;

            case OtherUserState.FriendLeader:
                this.ccae0f7648d277a25aa781811de4feac6 = OtherUserState.GlobalRival;
                break;

            default:
                this.ccae0f7648d277a25aa781811de4feac6 = OtherUserState.GlobalRival;
                break;
        }
        this.c2c34d475b76573555dc892b3fd59b029 = true;
    }

    protected void c24431da7cea45b3fc639d37f085416d0(Btn c22a1f5bd482f816f9cae749cc6e80989)
    {
        StateBase currentState = this.SubSM.GetCurrentState();
        SongDetails_Base local2 = State<SongDetails_Base>.cfd689ba95cb05e1458adf8457ab37a54;
        if (!cb262a2a9a14022fae7834ef43c24b3bf.ceeb5be9cc96dff470c7b191db9930716(currentState, local2))
        {
            return;
        }
    Label_001D:
        switch (4)
        {
            case 0:
                goto Label_001D;

            default:
                if (1 == 0)
                {
                }
                this.SubSM.GotoState(State<SongDetails_Options>.cfd689ba95cb05e1458adf8457ab37a54);
                break;
        }
    }

    [CompilerGenerated]
    private static string c26d48293c84ac79088f3c0a317b850a1()
    {
        return Localize.GetText("DIFFICULTY_HARD");
    }

    [CompilerGenerated]
    private static string c321fd908e36da4417905b5abcebe1b4b()
    {
        return Localize.GetText("FAVORITE");
    }

    private string c33d251a65e09ef5e00cc6b49449b3030()
    {
        switch (this.ccae0f7648d277a25aa781811de4feac6)
        {
            case OtherUserState.GlobalRival:
                return this.cf4b20a8795275cb0f51597dee6629d6d();

            case OtherUserState.FriendRival:
                return this.c8573db56dd11f94ae53f4fabc1e1538e();

            case OtherUserState.FriendLeader:
                return this.c1f9171562be4565c213f45caedef1398();
        }
        return string.Empty;
    }

    private string c345504c1bef3e41770fc94baa1261f00()
    {
        // This item is obfuscated and can not be translated.
        Chart chart;
        if (SubSystem<UserAccountMgr>.cfd689ba95cb05e1458adf8457ab37a54.c38440e5da1f3ad43e02a00af3eac609b)
        {
            goto Label_00B7;
        }
        ConnectionMgr local1 = SubSystem<ConnectionMgr>.cfd689ba95cb05e1458adf8457ab37a54;
        if (!local1.c95fda7dd8d79315770ddc1ba031825ef)
        {
            goto Label_00B7;
        }
    Label_0022:
        switch (5)
        {
            case 0:
                goto Label_0022;

            default:
                if (1 != 0)
                {
                    goto Label_0035;
                }
                if (!c797f98945fa1137ccf124ed256a6cca3.ceeb5be9cc96dff470c7b191db9930716(this.c29df49907877de440240adc2b4b21da7, c4e2d2055e31b0e0d929410973f6d8238.c56715cb40fd0662990dfc29403dcba40))
                {
                    goto Label_00B7;
                }
                break;
        }
    Label_0047:
        switch (6)
        {
            case 0:
                goto Label_0047;

            default:
            {
                Song.Difficulty difficulty = this.c3cf76d63e0cfc5958da95e8de03ec093;
                chart = this.c29df49907877de440240adc2b4b21da7.GetChart(difficulty);
                if (!c797f98945fa1137ccf124ed256a6cca3.ceeb5be9cc96dff470c7b191db9930716(chart, c4e2d2055e31b0e0d929410973f6d8238.c56715cb40fd0662990dfc29403dcba40))
                {
                    goto Label_00B7;
                }
                break;
            }
        }
    Label_0074:
        switch (3)
        {
            case 0:
                goto Label_0074;

            default:
                if (!chart.c5cded0f526a2e5623fa2fa9df9d0047f)
                {
                    if (chart.cc3817361b28696877e7e523fcf56472e != 0)
                    {
                        return StringHelper.Ordinal((int) chart.cc3817361b28696877e7e523fcf56472e);
                    }
                    goto Label_00B7;
                }
                break;
        }
    Label_0088:
        switch (2)
        {
            case 0:
                goto Label_0088;

            default:
                return Localize.GetText("LOADING_SCORE");
        }
    Label_00B7:
        if (!SubSystem<ConnectionMgr>.cfd689ba95cb05e1458adf8457ab37a54.c95fda7dd8d79315770ddc1ba031825ef)
        {
            goto Label_00E7;
        }
    Label_00C5:
        switch (7)
        {
            case 0:
                goto Label_00C5;

            default:
            {
                string text = Localize.GetText("--");
                if (text || true)
                {
                }
                break;
            }
        }
    Label_00E7:
        return Localize.GetText("RANKING_OFFLINE_MODE");
    }

    protected void c35f6038dade2715e8566037ca0271d18(Btn c22a1f5bd482f816f9cae749cc6e80989)
    {
        this.c210c6dda70655359e82568b9db854d11(Song.Difficulty.Hard);
    }

    [CompilerGenerated]
    private static string c36b146919e541259c0dd197f5185aec5()
    {
        return Localize.GetText("TAPS");
    }

    [CompilerGenerated]
    private static string c3ef2a1407c2020c040b5476004934929()
    {
        return Localize.GetText("OPTIONS_BTN");
    }

    [CompilerGenerated]
    private static string c418ec5aef7ad820a769cf8a132f97685()
    {
        return Localize.GetText("HOLDS");
    }

    [CompilerGenerated]
    private static string c579e75fe0e59de590608b389a1df3261()
    {
        return Localize.GetText("RANKINGS_LBL");
    }

    protected void c5ee111e5bbb9f03ea316e111e0f30de6(Btn c22a1f5bd482f816f9cae749cc6e80989)
    {
        AudioMgr local8;
        float? nullable;
        StateBase currentState = this.SubSM.GetCurrentState();
        SongDetails_Base local5 = State<SongDetails_Base>.cfd689ba95cb05e1458adf8457ab37a54;
        if (!cb262a2a9a14022fae7834ef43c24b3bf.ceeb5be9cc96dff470c7b191db9930716(currentState, local5))
        {
            goto Label_0055;
        }
    Label_001B:
        switch (1)
        {
            case 0:
                goto Label_001B;

            default:
            {
                if (1 == 0)
                {
                }
                ConnectionMgr local6 = SubSystem<ConnectionMgr>.cfd689ba95cb05e1458adf8457ab37a54;
                if (local6.c475d643b55e53dc764ecd2c238d8fc8d)
                {
                    SongDetails_SongGlobalRankings stateInstance = State<SongDetails_SongGlobalRankings>.cfd689ba95cb05e1458adf8457ab37a54;
                    StateBase base4 = this.SubSM.GotoState(stateInstance);
                    return;
                }
                break;
            }
        }
    Label_0055:
        local8 = SubSystem<AudioMgr>.cfd689ba95cb05e1458adf8457ab37a54;
        c5499aa51b250adfeebe746167715ef8c.cd3d9f33d3ef09712052d53fc1f167e5f(ref nullable);
        bool flag4 = local8.SFX.Error.Play(nullable);
    }

    protected void c649d8045667e5392a5ee3e2e1add01ba(Btn c22a1f5bd482f816f9cae749cc6e80989)
    {
        StateBase currentState = this.SubSM.GetCurrentState();
        SongDetails_Base local1 = State<SongDetails_Base>.cfd689ba95cb05e1458adf8457ab37a54;
        if (cb262a2a9a14022fae7834ef43c24b3bf.ceeb5be9cc96dff470c7b191db9930716(currentState, local1))
        {
            float? nullable;
            AudioMgr local2 = SubSystem<AudioMgr>.cfd689ba95cb05e1458adf8457ab37a54;
            c5499aa51b250adfeebe746167715ef8c.cd3d9f33d3ef09712052d53fc1f167e5f(ref nullable);
            local2.SFX.Yes.Play(nullable);
            Song.Difficulty difficulty = this.c3cf76d63e0cfc5958da95e8de03ec093;
            Chart bestScoreMode = this.c29df49907877de440240adc2b4b21da7.GetChart(difficulty);
            State<Results>.cfd689ba95cb05e1458adf8457ab37a54.Configure(bestScoreMode);
            StateMachine machine1 = base.caa7e398bd72d0a62a8fa9c93edbb74fa;
            Results stateInstance = State<Results>.cfd689ba95cb05e1458adf8457ab37a54;
            machine1.GotoState(stateInstance);
        }
    }

    [CompilerGenerated]
    private static string c653db1541f44af9189b859e555d084d9()
    {
        return Localize.GetText("CHORDS");
    }

    private Country.Code c75806b45b414244c683b27fccf81ae09()
    {
        Chart chart;
        ConnectionMgr local2 = SubSystem<ConnectionMgr>.cfd689ba95cb05e1458adf8457ab37a54;
        if (!local2.c95fda7dd8d79315770ddc1ba031825ef || !c797f98945fa1137ccf124ed256a6cca3.ceeb5be9cc96dff470c7b191db9930716(this.c29df49907877de440240adc2b4b21da7, c4e2d2055e31b0e0d929410973f6d8238.c56715cb40fd0662990dfc29403dcba40))
        {
            goto Label_0081;
        }
    Label_0024:
        switch (7)
        {
            case 0:
                goto Label_0024;

            default:
            {
                if (1 == 0)
                {
                }
                Song.Difficulty difficulty = this.c3cf76d63e0cfc5958da95e8de03ec093;
                chart = this.c29df49907877de440240adc2b4b21da7.GetChart(difficulty);
                if (!c797f98945fa1137ccf124ed256a6cca3.ceeb5be9cc96dff470c7b191db9930716(chart, c4e2d2055e31b0e0d929410973f6d8238.c56715cb40fd0662990dfc29403dcba40))
                {
                    goto Label_0081;
                }
                break;
            }
        }
    Label_005A:
        switch (3)
        {
            case 0:
                goto Label_005A;

            default:
                if (!chart.c5cded0f526a2e5623fa2fa9df9d0047f)
                {
                    return chart.cf925fd71969d269f2ab389c44784abc8;
                }
                break;
        }
    Label_006E:
        switch (5)
        {
            case 0:
                goto Label_006E;

            default:
                return Country.Code.WD;
        }
    Label_0081:
        return Country.Code.WD;
    }

    protected void c7e36fce613aa42c48bb3dc8a30b4c85d(Btn c22a1f5bd482f816f9cae749cc6e80989)
    {
        this.c210c6dda70655359e82568b9db854d11(Song.Difficulty.Easy);
    }

    private string c8573db56dd11f94ae53f4fabc1e1538e()
    {
        Chart chart;
        UserAccountMgr local3 = SubSystem<UserAccountMgr>.cfd689ba95cb05e1458adf8457ab37a54;
        if (local3.c38440e5da1f3ad43e02a00af3eac609b)
        {
            goto Label_00C2;
        }
        ConnectionMgr local4 = SubSystem<ConnectionMgr>.cfd689ba95cb05e1458adf8457ab37a54;
        if (!local4.c95fda7dd8d79315770ddc1ba031825ef)
        {
            goto Label_00C2;
        }
    Label_0024:
        switch (1)
        {
            case 0:
                goto Label_0024;

            default:
                if (1 == 0)
                {
                }
                if (!c797f98945fa1137ccf124ed256a6cca3.ceeb5be9cc96dff470c7b191db9930716(this.c29df49907877de440240adc2b4b21da7, c4e2d2055e31b0e0d929410973f6d8238.c56715cb40fd0662990dfc29403dcba40))
                {
                    goto Label_00C2;
                }
                break;
        }
    Label_004B:
        switch (3)
        {
            case 0:
                goto Label_004B;

            default:
            {
                Song.Difficulty difficulty = this.c3cf76d63e0cfc5958da95e8de03ec093;
                chart = this.c29df49907877de440240adc2b4b21da7.GetChart(difficulty);
                if (!c797f98945fa1137ccf124ed256a6cca3.ceeb5be9cc96dff470c7b191db9930716(chart, c4e2d2055e31b0e0d929410973f6d8238.c56715cb40fd0662990dfc29403dcba40))
                {
                    goto Label_00C2;
                }
                break;
            }
        }
    Label_007A:
        switch (2)
        {
            case 0:
                goto Label_007A;

            default:
                if (!chart.c5cded0f526a2e5623fa2fa9df9d0047f)
                {
                    CultureInfo invariantCulture = CultureInfo.InvariantCulture;
                    return chart.c834423f9c80f2d70a8b0283db7c5da44.ToString("#,0", invariantCulture);
                }
                break;
        }
    Label_008E:
        switch (1)
        {
            case 0:
                goto Label_008E;

            default:
                return Localize.GetText("LOADING_SCORE");
        }
    Label_00C2:
        return Localize.GetText("--");
    }

    protected void c86c2b371cd0a75deb7d458feae88e77f(Btn c22a1f5bd482f816f9cae749cc6e80989)
    {
        this.c210c6dda70655359e82568b9db854d11(Song.Difficulty.Wild);
    }

    private Country.Code c8857a2d04a1e4102fb7ac18b7be28280()
    {
        UserAccountMgr local3 = SubSystem<UserAccountMgr>.cfd689ba95cb05e1458adf8457ab37a54;
        if (local3.c38440e5da1f3ad43e02a00af3eac609b)
        {
            goto Label_008E;
        }
    Label_0011:
        switch (7)
        {
            case 0:
                goto Label_0011;

            default:
            {
                if (1 == 0)
                {
                }
                ConnectionMgr local4 = SubSystem<ConnectionMgr>.cfd689ba95cb05e1458adf8457ab37a54;
                if (!local4.c95fda7dd8d79315770ddc1ba031825ef)
                {
                    goto Label_008E;
                }
                break;
            }
        }
    Label_0032:
        switch (1)
        {
            case 0:
                goto Label_0032;

            default:
                if (!c797f98945fa1137ccf124ed256a6cca3.ceeb5be9cc96dff470c7b191db9930716(this.c29df49907877de440240adc2b4b21da7, c4e2d2055e31b0e0d929410973f6d8238.c56715cb40fd0662990dfc29403dcba40))
                {
                    goto Label_008E;
                }
                break;
        }
    Label_004E:
        switch (2)
        {
            case 0:
                goto Label_004E;

            default:
            {
                Song.Difficulty difficulty = this.c3cf76d63e0cfc5958da95e8de03ec093;
                Chart chart = this.c29df49907877de440240adc2b4b21da7.GetChart(difficulty);
                if (c797f98945fa1137ccf124ed256a6cca3.ceeb5be9cc96dff470c7b191db9930716(chart, c4e2d2055e31b0e0d929410973f6d8238.c56715cb40fd0662990dfc29403dcba40))
                {
                    if (chart.c5cded0f526a2e5623fa2fa9df9d0047f)
                    {
                        return Country.Code.WD;
                    }
                    return chart.c9e40682c4fca756d62095e35870610c8;
                }
                break;
            }
        }
    Label_008E:
        return Country.Code.WD;
    }

    [CompilerGenerated]
    private static string c96cb28e1b08afbe4bcbd2fc213f7d2ea()
    {
        return Localize.GetText("FOLLOWS");
    }

    protected void c9a0565c3ca8c0515cf53c67fc1135ab6(Btn c22a1f5bd482f816f9cae749cc6e80989)
    {
        this.c210c6dda70655359e82568b9db854d11(Song.Difficulty.Master);
    }

    [CompilerGenerated]
    private static string ca5caef6e9ccdcc84e772573308abd108()
    {
        return Localize.GetText("INFO");
    }

    private string ca9ebd30beefc40c99a9394d8989b3595()
    {
        // This item is obfuscated and can not be translated.
        ConnectionMgr local2;
        Chart chart;
        UserAccountMgr local1 = SubSystem<UserAccountMgr>.cfd689ba95cb05e1458adf8457ab37a54;
        if (local1.c38440e5da1f3ad43e02a00af3eac609b)
        {
            goto Label_00BD;
        }
    Label_0013:
        switch (6)
        {
            case 0:
                goto Label_0013;

            default:
                if (1 != 0)
                {
                    goto Label_0026;
                }
                if (!SubSystem<ConnectionMgr>.cfd689ba95cb05e1458adf8457ab37a54.c95fda7dd8d79315770ddc1ba031825ef || !c797f98945fa1137ccf124ed256a6cca3.ceeb5be9cc96dff470c7b191db9930716(this.c29df49907877de440240adc2b4b21da7, c4e2d2055e31b0e0d929410973f6d8238.c56715cb40fd0662990dfc29403dcba40))
                {
                    goto Label_00BD;
                }
                break;
        }
    Label_004B:
        switch (3)
        {
            case 0:
                goto Label_004B;

            default:
            {
                Song.Difficulty difficulty = this.c3cf76d63e0cfc5958da95e8de03ec093;
                chart = this.c29df49907877de440240adc2b4b21da7.GetChart(difficulty);
                if (!c797f98945fa1137ccf124ed256a6cca3.ceeb5be9cc96dff470c7b191db9930716(chart, c4e2d2055e31b0e0d929410973f6d8238.c56715cb40fd0662990dfc29403dcba40))
                {
                    goto Label_00BD;
                }
                break;
            }
        }
    Label_0078:
        switch (5)
        {
            case 0:
                goto Label_0078;

            default:
                if (!chart.c5cded0f526a2e5623fa2fa9df9d0047f)
                {
                    string text2 = chart.c1d8d541ac737a87143c2519ac8ac9c7b;
                    if (!string.IsNullOrEmpty(text2))
                    {
                        return chart.c1d8d541ac737a87143c2519ac8ac9c7b;
                    }
                    goto Label_00BD;
                }
                break;
        }
    Label_008C:
        switch (1)
        {
            case 0:
                goto Label_008C;

            default:
                return Localize.GetText("LOADING_SCORE");
        }
    Label_00BD:
        local2 = SubSystem<ConnectionMgr>.cfd689ba95cb05e1458adf8457ab37a54;
        if (local2.c95fda7dd8d79315770ddc1ba031825ef)
        {
            string text = Localize.GetText("NO_RIVAL");
            if (text || true)
            {
                string text5;
                return text5;
            }
        }
        return Localize.GetText("RIVAL_OFFLINE_MODE");
    }

    private string caee397a765db698fcc266f40ec6a3f4b()
    {
        // This item is obfuscated and can not be translated.
        UserAccountMgr local1 = SubSystem<UserAccountMgr>.cfd689ba95cb05e1458adf8457ab37a54;
        if (local1.c38440e5da1f3ad43e02a00af3eac609b)
        {
            goto Label_00B9;
        }
    Label_0013:
        switch (6)
        {
            case 0:
                goto Label_0013;

            default:
                if (1 != 0)
                {
                    goto Label_0026;
                }
                if (!SubSystem<ConnectionMgr>.cfd689ba95cb05e1458adf8457ab37a54.c95fda7dd8d79315770ddc1ba031825ef)
                {
                    goto Label_00B9;
                }
                break;
        }
    Label_0037:
        switch (1)
        {
            case 0:
                goto Label_0037;

            default:
            {
                if (!c797f98945fa1137ccf124ed256a6cca3.ceeb5be9cc96dff470c7b191db9930716(this.c29df49907877de440240adc2b4b21da7, c4e2d2055e31b0e0d929410973f6d8238.c56715cb40fd0662990dfc29403dcba40))
                {
                    goto Label_00B9;
                }
                Song.Difficulty difficulty = this.c3cf76d63e0cfc5958da95e8de03ec093;
                Chart chart = this.c29df49907877de440240adc2b4b21da7.GetChart(difficulty);
                if (!c797f98945fa1137ccf124ed256a6cca3.ceeb5be9cc96dff470c7b191db9930716(chart, c4e2d2055e31b0e0d929410973f6d8238.c56715cb40fd0662990dfc29403dcba40))
                {
                    goto Label_00B9;
                }
                if (!chart.c5cded0f526a2e5623fa2fa9df9d0047f)
                {
                    if (string.IsNullOrEmpty(chart.cd4d8d0889e79c0aca5dba98cd50faf41))
                    {
                        goto Label_00B9;
                    }
                Label_00A6:
                    switch (2)
                    {
                        case 0:
                            goto Label_00A6;
                    }
                    return chart.cd4d8d0889e79c0aca5dba98cd50faf41;
                }
                break;
            }
        }
    Label_0082:
        switch (7)
        {
            case 0:
                goto Label_0082;

            default:
                return Localize.GetText("LOADING_SCORE");
        }
    Label_00B9:
        if (!SubSystem<ConnectionMgr>.cfd689ba95cb05e1458adf8457ab37a54.c95fda7dd8d79315770ddc1ba031825ef)
        {
            goto Label_00DF;
        }
    Label_00C7:
        switch (1)
        {
            case 0:
                goto Label_00C7;

            default:
            {
                string text = Localize.GetText("NO_RIVAL");
                if (text || true)
                {
                    string text4;
                    return text4;
                }
                break;
            }
        }
    Label_00DF:
        return Localize.GetText("RIVAL_OFFLINE_MODE");
    }

    [CompilerGenerated]
    private static string cb2e4ec8755a2752cbee0a19e77af7f32()
    {
        return Localize.GetText("PERSONAL_BEST_LBL");
    }

    private string cb55ec445b322286b4c99fe8fb64e0224()
    {
        // This item is obfuscated and can not be translated.
        if (!cdaf113d73ff5e883bc2b75cec2061538.ceeb5be9cc96dff470c7b191db9930716(this.c29df49907877de440240adc2b4b21da7))
        {
            goto Label_0036;
        }
    Label_000F:
        switch (2)
        {
            case 0:
                goto Label_000F;

            default:
                if (1 != 0)
                {
                    goto Label_0022;
                }
                if (this.c29df49907877de440240adc2b4b21da7.c306a6109d5c0cfc3e7ac69de79023d32 || true)
                {
                }
                break;
        }
    Label_0036:
        return string.Empty;
    }

    [CompilerGenerated]
    private static string cb7b65a7f6bf8d790dd0dfc860237c2d6()
    {
        return Localize.GetText("DIFFICULTY_WILD");
    }

    protected void cbdd0d14f5764c9e5f4b30ce4bea12573(Btn c22a1f5bd482f816f9cae749cc6e80989)
    {
        StateBase currentState = this.SubSM.GetCurrentState();
        SongDetails_Base local1 = State<SongDetails_Base>.cfd689ba95cb05e1458adf8457ab37a54;
        if (cb262a2a9a14022fae7834ef43c24b3bf.ceeb5be9cc96dff470c7b191db9930716(currentState, local1))
        {
            SongDetails_Info stateInstance = State<SongDetails_Info>.cfd689ba95cb05e1458adf8457ab37a54;
            StateBase base2 = this.SubSM.GotoState(stateInstance);
        }
    }

    [CompilerGenerated]
    private static string cc68f282f987f92cfcbd8887f71f65271()
    {
        return Localize.GetText("DIFFICULTY_MASTER");
    }

    [CompilerGenerated]
    private static string ccb796226eae7decd5a813910d24d1bac()
    {
        return Localize.GetText("DIFFICULTY_EASY");
    }

    protected override void ccdc59edde614d65982d82c4b5763467b()
    {
        float? nullable;
        AudioMgr local1 = SubSystem<AudioMgr>.cfd689ba95cb05e1458adf8457ab37a54;
        c5499aa51b250adfeebe746167715ef8c.cd3d9f33d3ef09712052d53fc1f167e5f(ref nullable);
        bool flag1 = local1.SFX.Back.Play(nullable);
        StateMachine machine1 = base.caa7e398bd72d0a62a8fa9c93edbb74fa;
        SongSelect stateInstance = State<SongSelect>.cfd689ba95cb05e1458adf8457ab37a54;
        StateBase base1 = machine1.GotoState(stateInstance);
    }

    [CompilerGenerated]
    private static string cd216835ed6da03e2842ddc2bf84d15a5()
    {
        return "Leaderboard";
    }

    private string cd84d899b47c736bafc5468d72c15ec0c()
    {
        if (c797f98945fa1137ccf124ed256a6cca3.ceeb5be9cc96dff470c7b191db9930716(this.c29df49907877de440240adc2b4b21da7, c4e2d2055e31b0e0d929410973f6d8238.c56715cb40fd0662990dfc29403dcba40))
        {
            Song.Difficulty difficulty = this.c3cf76d63e0cfc5958da95e8de03ec093;
            Chart chart = this.c29df49907877de440240adc2b4b21da7.GetChart(difficulty);
            if (c797f98945fa1137ccf124ed256a6cca3.ceeb5be9cc96dff470c7b191db9930716(chart, c4e2d2055e31b0e0d929410973f6d8238.c56715cb40fd0662990dfc29403dcba40))
            {
                CultureInfo invariantCulture = CultureInfo.InvariantCulture;
                return chart.c49041bf013f05379123bd26b3d97f8a3.ToString("#,0", invariantCulture);
            }
        }
        return Localize.GetText("--");
    }

    private void ce59bc8867f31d6fa7ed4a9d89f45796b()
    {
        float? nullable;
        c5499aa51b250adfeebe746167715ef8c.cd3d9f33d3ef09712052d53fc1f167e5f(ref nullable);
        SubSystem<AudioMgr>.cfd689ba95cb05e1458adf8457ab37a54.SFX.Back.Play(nullable);
        StateMachine machine1 = base.caa7e398bd72d0a62a8fa9c93edbb74fa;
        AutoUpdate stateInstance = State<AutoUpdate>.cfd689ba95cb05e1458adf8457ab37a54;
        machine1.GotoState(stateInstance);
    }

    private string ce739f8b8253a19906d4d6e4119ad94b5()
    {
        switch (this.ccae0f7648d277a25aa781811de4feac6)
        {
            case OtherUserState.GlobalRival:
                return this.caee397a765db698fcc266f40ec6a3f4b();

            case OtherUserState.FriendRival:
                return this.ca9ebd30beefc40c99a9394d8989b3595();

            case OtherUserState.FriendLeader:
                return this.ceb6208c41abf8d7081647fe0159baaa9();
        }
        return string.Empty;
    }

    private string ceb6208c41abf8d7081647fe0159baaa9()
    {
        Chart chart;
        UserAccountMgr local3 = SubSystem<UserAccountMgr>.cfd689ba95cb05e1458adf8457ab37a54;
        if (local3.c38440e5da1f3ad43e02a00af3eac609b)
        {
            goto Label_00BF;
        }
    Label_0013:
        switch (2)
        {
            case 0:
                goto Label_0013;

            default:
            {
                if (1 == 0)
                {
                }
                ConnectionMgr local4 = SubSystem<ConnectionMgr>.cfd689ba95cb05e1458adf8457ab37a54;
                if (!local4.c95fda7dd8d79315770ddc1ba031825ef || !c797f98945fa1137ccf124ed256a6cca3.ceeb5be9cc96dff470c7b191db9930716(this.c29df49907877de440240adc2b4b21da7, c4e2d2055e31b0e0d929410973f6d8238.c56715cb40fd0662990dfc29403dcba40))
                {
                    goto Label_00BF;
                }
                Song.Difficulty difficulty = this.c3cf76d63e0cfc5958da95e8de03ec093;
                chart = this.c29df49907877de440240adc2b4b21da7.GetChart(difficulty);
                if (!c797f98945fa1137ccf124ed256a6cca3.ceeb5be9cc96dff470c7b191db9930716(chart, c4e2d2055e31b0e0d929410973f6d8238.c56715cb40fd0662990dfc29403dcba40))
                {
                    goto Label_00BF;
                }
                break;
            }
        }
    Label_0070:
        switch (7)
        {
            case 0:
                goto Label_0070;

            default:
                if (!chart.c5cded0f526a2e5623fa2fa9df9d0047f)
                {
                    string text5 = chart.cdddee3857de1dae4d955be41067dac38;
                    if (string.IsNullOrEmpty(text5))
                    {
                        goto Label_00BF;
                    }
                Label_00AC:
                    switch (1)
                    {
                        case 0:
                            goto Label_00AC;
                    }
                    return chart.cdddee3857de1dae4d955be41067dac38;
                }
                break;
        }
    Label_0084:
        switch (2)
        {
            case 0:
                goto Label_0084;

            default:
                return Localize.GetText("LOADING_SCORE");
        }
    Label_00BF:
        if (SubSystem<ConnectionMgr>.cfd689ba95cb05e1458adf8457ab37a54.c95fda7dd8d79315770ddc1ba031825ef)
        {
            return Localize.GetText("NO_LEADER");
        }
        return Localize.GetText("LEADER_OFFLINE_MODE");
    }

    [CompilerGenerated]
    private static string cf3b1421d6ce3df9a21514efb8fa5a1f4()
    {
        return Localize.GetText("SONG_DETAILS_TITLE");
    }

    private string cf4b20a8795275cb0f51597dee6629d6d()
    {
        Chart chart;
        UserAccountMgr local3 = SubSystem<UserAccountMgr>.cfd689ba95cb05e1458adf8457ab37a54;
        if (local3.c38440e5da1f3ad43e02a00af3eac609b)
        {
            goto Label_00B3;
        }
        ConnectionMgr local4 = SubSystem<ConnectionMgr>.cfd689ba95cb05e1458adf8457ab37a54;
        bool flag3 = local4.c95fda7dd8d79315770ddc1ba031825ef;
        if (!flag3 || !c797f98945fa1137ccf124ed256a6cca3.ceeb5be9cc96dff470c7b191db9930716(this.c29df49907877de440240adc2b4b21da7, c4e2d2055e31b0e0d929410973f6d8238.c56715cb40fd0662990dfc29403dcba40))
        {
            goto Label_00B3;
        }
    Label_0039:
        switch (1)
        {
            case 0:
                goto Label_0039;

            default:
            {
                if (1 == 0)
                {
                }
                Song.Difficulty difficulty = this.c3cf76d63e0cfc5958da95e8de03ec093;
                chart = this.c29df49907877de440240adc2b4b21da7.GetChart(difficulty);
                if (!c797f98945fa1137ccf124ed256a6cca3.ceeb5be9cc96dff470c7b191db9930716(chart, c4e2d2055e31b0e0d929410973f6d8238.c56715cb40fd0662990dfc29403dcba40))
                {
                    goto Label_00B3;
                }
                break;
            }
        }
    Label_006F:
        switch (5)
        {
            case 0:
                goto Label_006F;

            default:
                if (!chart.c5cded0f526a2e5623fa2fa9df9d0047f)
                {
                    return chart.ce7ac09a562dacf436b3852a7a4d3823b.ToString("#,0", CultureInfo.InvariantCulture);
                }
                break;
        }
    Label_0083:
        switch (2)
        {
            case 0:
                goto Label_0083;

            default:
                return Localize.GetText("LOADING_SCORE");
        }
    Label_00B3:
        return Localize.GetText("--");
    }

    private string cf58a410c383a7499ff94409698e8587a()
    {
        // This item is obfuscated and can not be translated.
        if (cdaf113d73ff5e883bc2b75cec2061538.ceeb5be9cc96dff470c7b191db9930716(this.c29df49907877de440240adc2b4b21da7))
        {
            if (this.c29df49907877de440240adc2b4b21da7.cc9b6be7323af523742f0dba5545fcac3 || true)
            {
            }
        }
        return string.Empty;
    }

    [CompilerGenerated]
    private static string cf6f514b8df06f311750c268e9443358e()
    {
        return Localize.GetText("LOCAL");
    }

    public void ChooseToggleHighScoreList()
    {
        this.c30486859980277125885617e2f55afca = !this.c30486859980277125885617e2f55afca;
    }

    private string caad31be93b66ee5faa0a016a30781b4e()
    {
        switch (this.ccae0f7648d277a25aa781811de4feac6)
        {
            case OtherUserState.GlobalRival:
                return Localize.GetText("GLOBAL_RIVAL_LBL");

            case OtherUserState.FriendRival:
                return Localize.GetText("FRIEND_RIVAL_LBL");

            case OtherUserState.FriendLeader:
                return Localize.GetText("FRIEND_LEADER_LBL");
        }
        return string.Empty;
    }

    public override void EnterState(StateBase priorState)
    {
        bool flag22;
        float? nullable;
        this.c2c34d475b76573555dc892b3fd59b029 = false;
        this.ccae0f7648d277a25aa781811de4feac6 = OtherUserState.GlobalRival;
        this.c5f92860e56567a3ef6a6db1212beaa56 = this.RotateScoreTime;
        SubSystem<AdsMgr>.cfd689ba95cb05e1458adf8457ab37a54.TriggerAds("SongDetails.EnterState", true, false);
        c5499aa51b250adfeebe746167715ef8c.cd3d9f33d3ef09712052d53fc1f167e5f(ref nullable);
        bool flag12 = SubSystem<AudioMgr>.cfd689ba95cb05e1458adf8457ab37a54.Announcer.SongDetailsEnter.Play(nullable);
        UserAccountMgr local11 = SubSystem<UserAccountMgr>.cfd689ba95cb05e1458adf8457ab37a54;
        Delegate delegate3 = Delegate.Combine(local11.OnLogin, new UserAccountMgr.LoginChangedEvent(this.ce59bc8867f31d6fa7ed4a9d89f45796b));
        local11.OnLogin = (UserAccountMgr.LoginChangedEvent) delegate3;
        UserAccountMgr local12 = SubSystem<UserAccountMgr>.cfd689ba95cb05e1458adf8457ab37a54;
        Delegate delegate4 = Delegate.Combine(local12.OnLogout, new UserAccountMgr.LoginChangedEvent(this.ce59bc8867f31d6fa7ed4a9d89f45796b));
        local12.OnLogout = (UserAccountMgr.LoginChangedEvent) delegate4;
        SongDetails_Base stateInstance = State<SongDetails_Base>.cfd689ba95cb05e1458adf8457ab37a54;
        StateBase base2 = this.SubSM.GotoState(stateInstance);
        bool flag = false;
        UserAccountMgr local14 = SubSystem<UserAccountMgr>.cfd689ba95cb05e1458adf8457ab37a54;
        Song.Difficulty master = local14.c879392436d11f1a5e69045c698e24a05;
        Chart chart = this.c29df49907877de440240adc2b4b21da7.GetChart(master);
        if (chart.c0b1b8c3c211f7e5aef6658bc73532491)
        {
            goto Label_0106;
        }
    Label_00DC:
        switch (1)
        {
            case 0:
                goto Label_00DC;

            default:
                if (1 == 0)
                {
                }
                if (master == Song.Difficulty.Wild)
                {
                    flag = true;
                    master = Song.Difficulty.Master;
                    chart = this.c29df49907877de440240adc2b4b21da7.GetChart(master);
                }
                break;
        }
    Label_0106:
        if (chart.c0b1b8c3c211f7e5aef6658bc73532491)
        {
            goto Label_013B;
        }
    Label_0110:
        switch (5)
        {
            case 0:
                goto Label_0110;

            default:
                if (master != Song.Difficulty.Master)
                {
                    goto Label_013B;
                }
                break;
        }
    Label_011E:
        switch (1)
        {
            case 0:
                goto Label_011E;

            default:
                flag = true;
                master = Song.Difficulty.Hard;
                chart = this.c29df49907877de440240adc2b4b21da7.GetChart(master);
                break;
        }
    Label_013B:
        if (chart.c0b1b8c3c211f7e5aef6658bc73532491)
        {
            goto Label_0170;
        }
    Label_0145:
        switch (1)
        {
            case 0:
                goto Label_0145;

            default:
                if (master != Song.Difficulty.Hard)
                {
                    goto Label_0170;
                }
                break;
        }
    Label_0153:
        switch (4)
        {
            case 0:
                goto Label_0153;

            default:
                flag = true;
                master = Song.Difficulty.Easy;
                chart = this.c29df49907877de440240adc2b4b21da7.GetChart(master);
                break;
        }
    Label_0170:
        if (!flag)
        {
            goto Label_019D;
        }
    Label_0173:
        switch (7)
        {
            case 0:
                goto Label_0173;

            default:
            {
                float? nullable2;
                c5499aa51b250adfeebe746167715ef8c.cd3d9f33d3ef09712052d53fc1f167e5f(ref nullable2);
                bool flag16 = SubSystem<AudioMgr>.cfd689ba95cb05e1458adf8457ab37a54.Announcer.DifficultyLocked.Play(nullable2);
                break;
            }
        }
    Label_019D:
        this.c210c6dda70655359e82568b9db854d11(master);
        this.BtnStartSong.Enabled = true;
        this.BtnToggleFavorite.Enabled = true;
        this.BtnInfo.Enabled = true;
        this.BtnOptions.Enabled = true;
        base.BtnBack.Enabled = true;
        this.BtnPersonalScoresPopup.Enabled = true;
        this.BtnGlobalScoresPopup.Enabled = true;
        Chart chart13 = this.c29df49907877de440240adc2b4b21da7.GetChart(Song.Difficulty.Easy);
        this.BtnEasy.Enabled = chart13.ca9945b7d0ba576860c462c71c2c5daee;
        Chart chart14 = this.c29df49907877de440240adc2b4b21da7.GetChart(Song.Difficulty.Hard);
        bool flag17 = chart14.ca9945b7d0ba576860c462c71c2c5daee;
        this.BtnHard.Enabled = flag17;
        Chart chart15 = this.c29df49907877de440240adc2b4b21da7.GetChart(Song.Difficulty.Master);
        bool flag18 = chart15.ca9945b7d0ba576860c462c71c2c5daee;
        this.BtnMaster.Enabled = flag18;
        Chart chart16 = this.c29df49907877de440240adc2b4b21da7.GetChart(Song.Difficulty.Wild);
        bool flag19 = chart16.ca9945b7d0ba576860c462c71c2c5daee;
        this.BtnWild.Enabled = flag19;
        UserAccountMgr local15 = SubSystem<UserAccountMgr>.cfd689ba95cb05e1458adf8457ab37a54;
        if (local15.c38440e5da1f3ad43e02a00af3eac609b)
        {
            goto Label_02B9;
        }
    Label_0284:
        switch (2)
        {
            case 0:
                goto Label_0284;

            default:
            {
                ConnectionMgr local16 = SubSystem<ConnectionMgr>.cfd689ba95cb05e1458adf8457ab37a54;
                if (!local16.c95fda7dd8d79315770ddc1ba031825ef)
                {
                    goto Label_02B9;
                }
                break;
            }
        }
    Label_029E:
        switch (6)
        {
            case 0:
                goto Label_029E;

            default:
                if (!chart.c5cded0f526a2e5623fa2fa9df9d0047f)
                {
                    chart.RefreshScoreInfo();
                }
                break;
        }
    Label_02B9:
        flag22 = this.BtnGlobalScoresPopup.Enabled;
        this.BtnGlobalScoresPopup.Hidden = !flag22;
        SubSystem<HighScoreMgr>.cfd689ba95cb05e1458adf8457ab37a54.SetupHighScores(chart);
        SubSystem<AwardsMgr>.cfd689ba95cb05e1458adf8457ab37a54.CheckAwards(AwardCheckTriggers.OnEnterSongDetails);
        base.EnterState(priorState);
    }

    public override void ExitState(StateBase nextState)
    {
        StateBase base2;
        SubSystem<AdsMgr>.cfd689ba95cb05e1458adf8457ab37a54.DestoryAllBanners();
        UserAccountMgr local4 = SubSystem<UserAccountMgr>.cfd689ba95cb05e1458adf8457ab37a54;
        local4.OnLogin = (UserAccountMgr.LoginChangedEvent) Delegate.Remove(local4.OnLogin, new UserAccountMgr.LoginChangedEvent(this.ce59bc8867f31d6fa7ed4a9d89f45796b));
        UserAccountMgr local5 = SubSystem<UserAccountMgr>.cfd689ba95cb05e1458adf8457ab37a54;
        Delegate delegate2 = Delegate.Remove(local5.OnLogout, new UserAccountMgr.LoginChangedEvent(this.ce59bc8867f31d6fa7ed4a9d89f45796b));
        local5.OnLogout = (UserAccountMgr.LoginChangedEvent) delegate2;
        base.ExitState(nextState);
        if (!c797f98945fa1137ccf124ed256a6cca3.ceeb5be9cc96dff470c7b191db9930716(this.c29df49907877de440240adc2b4b21da7, c4e2d2055e31b0e0d929410973f6d8238.c56715cb40fd0662990dfc29403dcba40))
        {
            goto Label_0091;
        }
    Label_0073:
        switch (5)
        {
            case 0:
                goto Label_0073;

            default:
                if (1 == 0)
                {
                }
                this.c29df49907877de440240adc2b4b21da7.StopMusicPreview();
                break;
        }
    Label_0091:
        base2 = this.SubSM.GotoState(State<SongDetails_Base>.cfd689ba95cb05e1458adf8457ab37a54);
        this.BtnStartSong.Enabled = false;
        this.BtnToggleFavorite.Enabled = false;
        this.BtnInfo.Enabled = false;
        this.BtnOptions.Enabled = false;
        base.BtnBack.Enabled = false;
        this.BtnPersonalScoresPopup.Enabled = false;
        this.BtnGlobalScoresPopup.Enabled = false;
        this.BtnEasy.Enabled = false;
        this.BtnHard.Enabled = false;
        this.BtnMaster.Enabled = false;
        this.BtnWild.Enabled = false;
        SubSystem<HighScoreMgr>.cfd689ba95cb05e1458adf8457ab37a54.ClearHighScores();
    }

    public override void Init(StateMachine sm)
    {
        SongDetails expressionStack_20_0;
        SongDetails expressionStack_F_0;
        SongDetails expressionStack_6C_0;
        SongDetails expressionStack_48_0;
        SongDetails expressionStack_AF_0;
        SongDetails expressionStack_94_0;
        SongDetails expressionStack_E8_0;
        SongDetails expressionStack_D7_0;
        SongDetails expressionStack_5B_0;
        SongDetails expressionStack_12B_0;
        SongDetails expressionStack_110_0;
        SongDetails expressionStack_16F_0;
        SongDetails expressionStack_154_0;
        SongDetails expressionStack_1B2_0;
        SongDetails expressionStack_197_0;
        SongDetails expressionStack_1EB_0;
        SongDetails expressionStack_1DA_0;
        SongDetails expressionStack_224_0;
        SongDetails expressionStack_213_0;
        SongDetails expressionStack_267_0;
        SongDetails expressionStack_24C_0;
        SongDetails expressionStack_2AA_0;
        SongDetails expressionStack_28F_0;
        SongDetails expressionStack_321_0;
        SongDetails expressionStack_306_0;
        SongDetails expressionStack_353_0;
        SongDetails expressionStack_338_0;
        SongDetails expressionStack_385_0;
        SongDetails expressionStack_36A_0;
        SongDetails expressionStack_3AD_0;
        SongDetails expressionStack_39C_0;
        SongDetails expressionStack_424_0;
        SongDetails expressionStack_409_0;
        SongDetails expressionStack_484_0;
        SongDetails expressionStack_469_0;
        base.Init(sm);
        if (c472cb5c00ec28b8b599909ead6bd2043 != null)
        {
            expressionStack_20_0 = this;
            goto Label_0020;
        }
        else
        {
            expressionStack_F_0 = this;
        }
        c472cb5c00ec28b8b599909ead6bd2043 = new Lbl.GetText(SongDetails.ccb796226eae7decd5a813910d24d1bac);
        expressionStack_20_0 = expressionStack_F_0;
    Label_0020:
        expressionStack_20_0.BtnEasy = new Btn(new Lbl(c472cb5c00ec28b8b599909ead6bd2043), new Btn.BtnPressEvent(this.c7e36fce613aa42c48bb3dc8a30b4c85d));
        if (ced1bf379c5d38913d66b6542fc9ed0b0 != null)
        {
            expressionStack_6C_0 = this;
            goto Label_006C;
        }
        else
        {
            expressionStack_48_0 = this;
        }
    Label_0048:
        switch (5)
        {
            case 0:
                goto Label_0048;

            default:
            {
                SongDetails expressionStack_55_0;
                SongDetails expressionStack_52_0 = expressionStack_48_0;
                if (1 != 0)
                {
                    expressionStack_5B_0 = expressionStack_52_0;
                    break;
                }
                else
                {
                    expressionStack_55_0 = expressionStack_52_0;
                }
                expressionStack_5B_0 = expressionStack_55_0;
                break;
            }
        }
        ced1bf379c5d38913d66b6542fc9ed0b0 = new Lbl.GetText(SongDetails.c26d48293c84ac79088f3c0a317b850a1);
        expressionStack_6C_0 = expressionStack_5B_0;
    Label_006C:
        expressionStack_6C_0.BtnHard = new Btn(new Lbl(ced1bf379c5d38913d66b6542fc9ed0b0), new Btn.BtnPressEvent(this.c35f6038dade2715e8566037ca0271d18));
        if (c529f697e803e4dd22d4b8be0f453868e != null)
        {
            expressionStack_AF_0 = this;
            goto Label_00AF;
        }
        else
        {
            expressionStack_94_0 = this;
        }
    Label_0094:
        switch (2)
        {
            case 0:
                goto Label_0094;

            default:
            {
                SongDetails expressionStack_9E_0 = expressionStack_94_0;
                c529f697e803e4dd22d4b8be0f453868e = new Lbl.GetText(SongDetails.cc68f282f987f92cfcbd8887f71f65271);
                expressionStack_AF_0 = expressionStack_9E_0;
                break;
            }
        }
    Label_00AF:
        expressionStack_AF_0.BtnMaster = new Btn(new Lbl(c529f697e803e4dd22d4b8be0f453868e), new Btn.BtnPressEvent(this.c9a0565c3ca8c0515cf53c67fc1135ab6));
        if (ced2628dd0571e7f9235ece1d58215b71 != null)
        {
            expressionStack_E8_0 = this;
            goto Label_00E8;
        }
        else
        {
            expressionStack_D7_0 = this;
        }
        ced2628dd0571e7f9235ece1d58215b71 = new Lbl.GetText(SongDetails.cb7b65a7f6bf8d790dd0dfc860237c2d6);
        expressionStack_E8_0 = expressionStack_D7_0;
    Label_00E8:
        expressionStack_E8_0.BtnWild = new Btn(new Lbl(ced2628dd0571e7f9235ece1d58215b71), new Btn.BtnPressEvent(this.c86c2b371cd0a75deb7d458feae88e77f));
        if (c1d52b4f535816937c3e9b9eba2457036 != null)
        {
            expressionStack_12B_0 = this;
            goto Label_012B;
        }
        else
        {
            expressionStack_110_0 = this;
        }
    Label_0110:
        switch (5)
        {
            case 0:
                goto Label_0110;

            default:
            {
                SongDetails expressionStack_11A_0 = expressionStack_110_0;
                c1d52b4f535816937c3e9b9eba2457036 = new Lbl.GetText(SongDetails.c02db822ae9cb9d42ca3f4017a892e6ab);
                expressionStack_12B_0 = expressionStack_11A_0;
                break;
            }
        }
    Label_012B:
        expressionStack_12B_0.BtnStartSong = new Btn(new Lbl(c1d52b4f535816937c3e9b9eba2457036), new Btn.BtnPressEvent(this.OnStartSong));
        if (c13439de50b1991c747321dcaaa48f08f != null)
        {
            expressionStack_16F_0 = this;
            goto Label_016F;
        }
        else
        {
            expressionStack_154_0 = this;
        }
    Label_0154:
        switch (1)
        {
            case 0:
                goto Label_0154;

            default:
            {
                SongDetails expressionStack_15E_0 = expressionStack_154_0;
                c13439de50b1991c747321dcaaa48f08f = new Lbl.GetText(SongDetails.c321fd908e36da4417905b5abcebe1b4b);
                expressionStack_16F_0 = expressionStack_15E_0;
                break;
            }
        }
    Label_016F:
        expressionStack_16F_0.BtnToggleFavorite = new Btn(new Lbl(c13439de50b1991c747321dcaaa48f08f), new Btn.BtnPressEvent(this.OnToggleFavorite));
        if (c501510aa9ff3089a642eb2993a4db234 != null)
        {
            expressionStack_1B2_0 = this;
            goto Label_01B2;
        }
        else
        {
            expressionStack_197_0 = this;
        }
    Label_0197:
        switch (4)
        {
            case 0:
                goto Label_0197;

            default:
            {
                SongDetails expressionStack_1A1_0 = expressionStack_197_0;
                c501510aa9ff3089a642eb2993a4db234 = new Lbl.GetText(SongDetails.ca5caef6e9ccdcc84e772573308abd108);
                expressionStack_1B2_0 = expressionStack_1A1_0;
                break;
            }
        }
    Label_01B2:
        expressionStack_1B2_0.BtnInfo = new Btn(new Lbl(c501510aa9ff3089a642eb2993a4db234), new Btn.BtnPressEvent(this.cbdd0d14f5764c9e5f4b30ce4bea12573));
        if (c1cde3d23e7bc1958791e14c106dfb1fc != null)
        {
            expressionStack_1EB_0 = this;
            goto Label_01EB;
        }
        else
        {
            expressionStack_1DA_0 = this;
        }
        c1cde3d23e7bc1958791e14c106dfb1fc = new Lbl.GetText(SongDetails.c3ef2a1407c2020c040b5476004934929);
        expressionStack_1EB_0 = expressionStack_1DA_0;
    Label_01EB:
        expressionStack_1EB_0.BtnOptions = new Btn(new Lbl(c1cde3d23e7bc1958791e14c106dfb1fc), new Btn.BtnPressEvent(this.c24431da7cea45b3fc639d37f085416d0));
        if (ca00bd36cc3f75cb72fbf321592ea0a3a != null)
        {
            expressionStack_224_0 = this;
            goto Label_0224;
        }
        else
        {
            expressionStack_213_0 = this;
        }
        ca00bd36cc3f75cb72fbf321592ea0a3a = new Lbl.GetText(SongDetails.cf6f514b8df06f311750c268e9443358e);
        expressionStack_224_0 = expressionStack_213_0;
    Label_0224:
        expressionStack_224_0.BtnPersonalScoresPopup = new Btn(new Lbl(ca00bd36cc3f75cb72fbf321592ea0a3a), new Btn.BtnPressEvent(this.c649d8045667e5392a5ee3e2e1add01ba));
        if (c99f5db4b8f90683f94983dcd387ad485 != null)
        {
            expressionStack_267_0 = this;
            goto Label_0267;
        }
        else
        {
            expressionStack_24C_0 = this;
        }
    Label_024C:
        switch (1)
        {
            case 0:
                goto Label_024C;

            default:
            {
                SongDetails expressionStack_256_0 = expressionStack_24C_0;
                c99f5db4b8f90683f94983dcd387ad485 = new Lbl.GetText(SongDetails.c579e75fe0e59de590608b389a1df3261);
                expressionStack_267_0 = expressionStack_256_0;
                break;
            }
        }
    Label_0267:
        expressionStack_267_0.BtnGlobalScoresPopup = new Btn(new Lbl(c99f5db4b8f90683f94983dcd387ad485), new Btn.BtnPressEvent(this.c5ee111e5bbb9f03ea316e111e0f30de6));
        if (c5949032434cb343fe1c8012e717726ff != null)
        {
            expressionStack_2AA_0 = this;
            goto Label_02AA;
        }
        else
        {
            expressionStack_28F_0 = this;
        }
    Label_028F:
        switch (6)
        {
            case 0:
                goto Label_028F;

            default:
            {
                SongDetails expressionStack_299_0 = expressionStack_28F_0;
                c5949032434cb343fe1c8012e717726ff = new Lbl.GetText(SongDetails.cf3b1421d6ce3df9a21514efb8fa5a1f4);
                expressionStack_2AA_0 = expressionStack_299_0;
                break;
            }
        }
    Label_02AA:
        expressionStack_2AA_0.LblWindowTitle = new Lbl(c5949032434cb343fe1c8012e717726ff);
        this.LblSongTitle = new Lbl(new Lbl.GetText(this.cb55ec445b322286b4c99fe8fb64e0224));
        this.LblSongSubTitle = new Lbl(new Lbl.GetText(this.c20f8b0e2518537314acb217b25534693));
        this.LblSongArtist = new Lbl(new Lbl.GetText(this.cf58a410c383a7499ff94409698e8587a));
        if (c04fb538e81fbecf1158e2cf994e8cab2 != null)
        {
            expressionStack_321_0 = this;
            goto Label_0321;
        }
        else
        {
            expressionStack_306_0 = this;
        }
    Label_0306:
        switch (6)
        {
            case 0:
                goto Label_0306;

            default:
            {
                SongDetails expressionStack_310_0 = expressionStack_306_0;
                c04fb538e81fbecf1158e2cf994e8cab2 = new Lbl.GetText(SongDetails.c418ec5aef7ad820a769cf8a132f97685);
                expressionStack_321_0 = expressionStack_310_0;
                break;
            }
        }
    Label_0321:
        expressionStack_321_0.LblHolds = new Lbl(c04fb538e81fbecf1158e2cf994e8cab2);
        if (c1402d4b6183ef685bd8b58dc59436355 != null)
        {
            expressionStack_353_0 = this;
            goto Label_0353;
        }
        else
        {
            expressionStack_338_0 = this;
        }
    Label_0338:
        switch (1)
        {
            case 0:
                goto Label_0338;

            default:
            {
                SongDetails expressionStack_342_0 = expressionStack_338_0;
                c1402d4b6183ef685bd8b58dc59436355 = new Lbl.GetText(SongDetails.c653db1541f44af9189b859e555d084d9);
                expressionStack_353_0 = expressionStack_342_0;
                break;
            }
        }
    Label_0353:
        expressionStack_353_0.LblChords = new Lbl(c1402d4b6183ef685bd8b58dc59436355);
        if (c2a177480fcbdde27a88bc832a7c21cd8 != null)
        {
            expressionStack_385_0 = this;
            goto Label_0385;
        }
        else
        {
            expressionStack_36A_0 = this;
        }
    Label_036A:
        switch (7)
        {
            case 0:
                goto Label_036A;

            default:
            {
                SongDetails expressionStack_374_0 = expressionStack_36A_0;
                c2a177480fcbdde27a88bc832a7c21cd8 = new Lbl.GetText(SongDetails.c96cb28e1b08afbe4bcbd2fc213f7d2ea);
                expressionStack_385_0 = expressionStack_374_0;
                break;
            }
        }
    Label_0385:
        expressionStack_385_0.LblFollows = new Lbl(c2a177480fcbdde27a88bc832a7c21cd8);
        if (c76d38f5c148221afbf3794827fbbef6e != null)
        {
            expressionStack_3AD_0 = this;
            goto Label_03AD;
        }
        else
        {
            expressionStack_39C_0 = this;
        }
        c76d38f5c148221afbf3794827fbbef6e = new Lbl.GetText(SongDetails.c36b146919e541259c0dd197f5185aec5);
        expressionStack_3AD_0 = expressionStack_39C_0;
    Label_03AD:
        expressionStack_3AD_0.LblTaps = new Lbl(c76d38f5c148221afbf3794827fbbef6e);
        this.LblOtherUserTitle = new Lbl(new Lbl.GetText(this.caad31be93b66ee5faa0a016a30781b4e));
        this.LblOtherUserName = new Lbl(new Lbl.GetText(this.ce739f8b8253a19906d4d6e4119ad94b5));
        this.LblOtherUserScore = new Lbl(new Lbl.GetText(this.c33d251a65e09ef5e00cc6b49449b3030));
        if (c6e290ad7c46fd463ada2e344b4a95f80 != null)
        {
            expressionStack_424_0 = this;
            goto Label_0424;
        }
        else
        {
            expressionStack_409_0 = this;
        }
    Label_0409:
        switch (3)
        {
            case 0:
                goto Label_0409;

            default:
            {
                SongDetails expressionStack_413_0 = expressionStack_409_0;
                c6e290ad7c46fd463ada2e344b4a95f80 = new Lbl.GetText(SongDetails.cb2e4ec8755a2752cbee0a19e77af7f32);
                expressionStack_424_0 = expressionStack_413_0;
                break;
            }
        }
    Label_0424:
        expressionStack_424_0.LblPersonalBest = new Lbl(c6e290ad7c46fd463ada2e344b4a95f80);
        this.LblPersonalScore = new Lbl(new Lbl.GetText(this.cd84d899b47c736bafc5468d72c15ec0c));
        this.LblPersonalRank = new Lbl(new Lbl.GetText(this.c345504c1bef3e41770fc94baa1261f00));
        if (c9ccb1290d2c323a015dd3a7f6536867d != null)
        {
            expressionStack_484_0 = this;
            goto Label_0484;
        }
        else
        {
            expressionStack_469_0 = this;
        }
    Label_0469:
        switch (5)
        {
            case 0:
                goto Label_0469;

            default:
            {
                SongDetails expressionStack_473_0 = expressionStack_469_0;
                c9ccb1290d2c323a015dd3a7f6536867d = new Lbl.GetText(SongDetails.cd216835ed6da03e2842ddc2bf84d15a5);
                expressionStack_484_0 = expressionStack_473_0;
                break;
            }
        }
    Label_0484:
        expressionStack_484_0.BtnChangeOtherUser = new Btn(new Lbl(c9ccb1290d2c323a015dd3a7f6536867d), new Btn.BtnPressEvent(this.c22a096bd5c7bcc3517faf3f4aa134012));
    }

    public bool IsLoadingScores()
    {
        UserAccountMgr local2 = SubSystem<UserAccountMgr>.cfd689ba95cb05e1458adf8457ab37a54;
        if (local2.c38440e5da1f3ad43e02a00af3eac609b)
        {
            goto Label_0079;
        }
    Label_0010:
        switch (3)
        {
            case 0:
                goto Label_0010;

            default:
                if (1 == 0)
                {
                }
                if (!SubSystem<ConnectionMgr>.cfd689ba95cb05e1458adf8457ab37a54.c95fda7dd8d79315770ddc1ba031825ef)
                {
                    goto Label_0079;
                }
                break;
        }
    Label_002F:
        switch (7)
        {
            case 0:
                goto Label_002F;

            default:
                if (c797f98945fa1137ccf124ed256a6cca3.ceeb5be9cc96dff470c7b191db9930716(this.c29df49907877de440240adc2b4b21da7, c4e2d2055e31b0e0d929410973f6d8238.c56715cb40fd0662990dfc29403dcba40))
                {
                    Song.Difficulty difficulty = this.c3cf76d63e0cfc5958da95e8de03ec093;
                    Chart chart = this.c29df49907877de440240adc2b4b21da7.GetChart(difficulty);
                    if (c797f98945fa1137ccf124ed256a6cca3.ceeb5be9cc96dff470c7b191db9930716(chart, c4e2d2055e31b0e0d929410973f6d8238.c56715cb40fd0662990dfc29403dcba40))
                    {
                        return chart.c5cded0f526a2e5623fa2fa9df9d0047f;
                    }
                }
                break;
        }
    Label_0079:
        return false;
    }

    public bool IsPlayable(Song.Difficulty difficulty)
    {
        if (!c797f98945fa1137ccf124ed256a6cca3.ceeb5be9cc96dff470c7b191db9930716(this.c29df49907877de440240adc2b4b21da7, c4e2d2055e31b0e0d929410973f6d8238.c56715cb40fd0662990dfc29403dcba40))
        {
            goto Label_0059;
        }
    Label_0014:
        switch (7)
        {
            case 0:
                goto Label_0014;

            default:
            {
                if (1 == 0)
                {
                }
                Chart chart = this.c29df49907877de440240adc2b4b21da7.GetChart(difficulty);
                if (c797f98945fa1137ccf124ed256a6cca3.ceeb5be9cc96dff470c7b191db9930716(chart, c4e2d2055e31b0e0d929410973f6d8238.c56715cb40fd0662990dfc29403dcba40))
                {
                    Chart chart4 = this.c29df49907877de440240adc2b4b21da7.GetChart(difficulty);
                    return chart4.c0b1b8c3c211f7e5aef6658bc73532491;
                }
                break;
            }
        }
    Label_0059:
        return false;
    }

    public virtual void OnStartSong(Btn pressed)
    {
        float? nullable;
        GameplayMgr local1 = SubSystem<GameplayMgr>.cfd689ba95cb05e1458adf8457ab37a54;
        Chart chart = this.c29df49907877de440240adc2b4b21da7.GetChart(SubSystem<UserAccountMgr>.cfd689ba95cb05e1458adf8457ab37a54.c879392436d11f1a5e69045c698e24a05);
        local1.Configure(chart);
        GameplayMgr local2 = SubSystem<GameplayMgr>.cfd689ba95cb05e1458adf8457ab37a54;
        local2.TestPlay = false;
        AudioMgr local3 = SubSystem<AudioMgr>.cfd689ba95cb05e1458adf8457ab37a54;
        c5499aa51b250adfeebe746167715ef8c.cd3d9f33d3ef09712052d53fc1f167e5f(ref nullable);
        bool flag1 = local3.SFX.PlaySong.Play(nullable);
        AnalyticsMgr local4 = SubSystem<AnalyticsMgr>.cfd689ba95cb05e1458adf8457ab37a54;
        string eventAction = this.c29df49907877de440240adc2b4b21da7.cd7680e8b14c2ac494b7e6a836f3febd7;
        UserAccountMgr local5 = SubSystem<UserAccountMgr>.cfd689ba95cb05e1458adf8457ab37a54;
        Song.Difficulty difficulty1 = local5.c879392436d11f1a5e69045c698e24a05;
        if (!this.c29df49907877de440240adc2b4b21da7.c2635aebbcb86981f151a5e658149d10a)
        {
            goto Label_00A5;
        }
    Label_008F:
        switch (5)
        {
            case 0:
                goto Label_008F;
        }
    Label_00A5:;
        local4.LogEvent("RequestPlay", eventAction, difficulty1.ToString(), (1 != 0) ? ((long) 0) : ((long) 1));
        StateMachine machine1 = base.caa7e398bd72d0a62a8fa9c93edbb74fa;
        PlaySong stateInstance = State<PlaySong>.cfd689ba95cb05e1458adf8457ab37a54;
        StateBase base1 = machine1.GotoState(stateInstance);
    }

    public void OnToggleFavorite(Btn pressed)
    {
        if (!c797f98945fa1137ccf124ed256a6cca3.ceeb5be9cc96dff470c7b191db9930716(this.c29df49907877de440240adc2b4b21da7, c4e2d2055e31b0e0d929410973f6d8238.c56715cb40fd0662990dfc29403dcba40))
        {
            return;
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
                bool flag4 = this.c29df49907877de440240adc2b4b21da7.c4c01cfe82f4528625346f56ae2c62429;
                this.c29df49907877de440240adc2b4b21da7.c4c01cfe82f4528625346f56ae2c62429 = !flag4;
                break;
            }
        }
    }

    public void SetSong(Song s)
    {
        this.c29df49907877de440240adc2b4b21da7 = s;
    }

    public uint c01d2fdc8cef73ac93a0bb51f8fe4101e
    {
        get
        {
            if (!c797f98945fa1137ccf124ed256a6cca3.ceeb5be9cc96dff470c7b191db9930716(this.c29df49907877de440240adc2b4b21da7, c4e2d2055e31b0e0d929410973f6d8238.c56715cb40fd0662990dfc29403dcba40))
            {
                goto Label_0077;
            }
        Label_0012:
            switch (3)
            {
                case 0:
                    goto Label_0012;

                default:
                {
                    if (1 == 0)
                    {
                    }
                    UserAccountMgr local3 = SubSystem<UserAccountMgr>.cfd689ba95cb05e1458adf8457ab37a54;
                    Song.Difficulty difficulty = local3.c879392436d11f1a5e69045c698e24a05;
                    if (!c797f98945fa1137ccf124ed256a6cca3.ceeb5be9cc96dff470c7b191db9930716(this.c29df49907877de440240adc2b4b21da7.GetChart(difficulty), c4e2d2055e31b0e0d929410973f6d8238.c56715cb40fd0662990dfc29403dcba40))
                    {
                        goto Label_0077;
                    }
                    break;
                }
            }
        Label_004C:
            switch (1)
            {
                case 0:
                    goto Label_004C;

                default:
                {
                    UserAccountMgr local4 = SubSystem<UserAccountMgr>.cfd689ba95cb05e1458adf8457ab37a54;
                    Song.Difficulty difficulty4 = local4.c879392436d11f1a5e69045c698e24a05;
                    return this.c29df49907877de440240adc2b4b21da7.GetChart(difficulty4).c01d2fdc8cef73ac93a0bb51f8fe4101e;
                }
            }
        Label_0077:
            return 0;
        }
    }

    public ChartGrade c0d61911aae3f4a0b36461f9c182b87d9
    {
        get
        {
            UserAccountMgr local2 = SubSystem<UserAccountMgr>.cfd689ba95cb05e1458adf8457ab37a54;
            Chart chart = this.c29df49907877de440240adc2b4b21da7.GetChart(local2.c879392436d11f1a5e69045c698e24a05);
            if (!c797f98945fa1137ccf124ed256a6cca3.ceeb5be9cc96dff470c7b191db9930716(chart, c4e2d2055e31b0e0d929410973f6d8238.c56715cb40fd0662990dfc29403dcba40))
            {
                return ChartGrade.NA;
            }
        Label_0027:
            switch (7)
            {
                case 0:
                    goto Label_0027;
            }
            if (1 == 0)
            {
            }
            return chart.c59dfad57cb10a3109d9afb95e01c007e;
        }
    }

    public bool c0dd97914db111d55494f89c89b2e49af
    {
        get
        {
            int expressionStack_7E_0;
            if (this.c907b98ddb5fe35119587bb1fa6f11e22 == Song.ContentType.Free)
            {
                goto Label_007A;
            }
        Label_000A:
            switch (5)
            {
                case 0:
                    goto Label_000A;

                default:
                    if (1 == 0)
                    {
                    }
                    if (!c797f98945fa1137ccf124ed256a6cca3.ceeb5be9cc96dff470c7b191db9930716(this.c29df49907877de440240adc2b4b21da7, c4e2d2055e31b0e0d929410973f6d8238.c56715cb40fd0662990dfc29403dcba40))
                    {
                        goto Label_007D;
                    }
                    break;
            }
        Label_002F:
            switch (5)
            {
                case 0:
                    goto Label_002F;

                default:
                    if (string.IsNullOrEmpty(this.c29df49907877de440240adc2b4b21da7.c0d79e2e86e6687dfe56d762ef6dbb267))
                    {
                        goto Label_007D;
                    }
                    break;
            }
        Label_004D:
            switch (3)
            {
                case 0:
                    goto Label_004D;

                default:
                    if (!c6d367ad363cb96e357846b0dadc70d58.ceeb5be9cc96dff470c7b191db9930716(this.c29df49907877de440240adc2b4b21da7.c0d79e2e86e6687dfe56d762ef6dbb267, "invalid"))
                    {
                        goto Label_007D;
                    }
                    break;
            }
        Label_0070:
            switch (4)
            {
                case 0:
                    goto Label_0070;
            }
        Label_007A:
            expressionStack_7E_0 = 1;
            goto Label_007E;
        Label_007D:
            expressionStack_7E_0 = 0;
        Label_007E:
            return (bool) expressionStack_7E_0;
        }
    }

    public uint c1fbf352a68ea47a70261a59f41b8e5b8
    {
        get
        {
            if (!c797f98945fa1137ccf124ed256a6cca3.ceeb5be9cc96dff470c7b191db9930716(this.c29df49907877de440240adc2b4b21da7, c4e2d2055e31b0e0d929410973f6d8238.c56715cb40fd0662990dfc29403dcba40))
            {
                goto Label_006F;
            }
        Label_0012:
            switch (7)
            {
                case 0:
                    goto Label_0012;

                default:
                {
                    if (1 == 0)
                    {
                    }
                    Song.Difficulty difficulty = SubSystem<UserAccountMgr>.cfd689ba95cb05e1458adf8457ab37a54.c879392436d11f1a5e69045c698e24a05;
                    Chart chart = this.c29df49907877de440240adc2b4b21da7.GetChart(difficulty);
                    if (c797f98945fa1137ccf124ed256a6cca3.ceeb5be9cc96dff470c7b191db9930716(chart, c4e2d2055e31b0e0d929410973f6d8238.c56715cb40fd0662990dfc29403dcba40))
                    {
                        UserAccountMgr local2 = SubSystem<UserAccountMgr>.cfd689ba95cb05e1458adf8457ab37a54;
                        Song.Difficulty difficulty4 = local2.c879392436d11f1a5e69045c698e24a05;
                        Chart chart4 = this.c29df49907877de440240adc2b4b21da7.GetChart(difficulty4);
                        return chart4.c1fbf352a68ea47a70261a59f41b8e5b8;
                    }
                    break;
                }
            }
        Label_006F:
            return 0;
        }
    }

    public uint c254b4b062b6d34b5807296eea042f15d
    {
        get
        {
            if (c797f98945fa1137ccf124ed256a6cca3.ceeb5be9cc96dff470c7b191db9930716(this.c29df49907877de440240adc2b4b21da7, c4e2d2055e31b0e0d929410973f6d8238.c56715cb40fd0662990dfc29403dcba40))
            {
                Song.Difficulty difficulty = SubSystem<UserAccountMgr>.cfd689ba95cb05e1458adf8457ab37a54.c879392436d11f1a5e69045c698e24a05;
                if (c797f98945fa1137ccf124ed256a6cca3.ceeb5be9cc96dff470c7b191db9930716(this.c29df49907877de440240adc2b4b21da7.GetChart(difficulty), c4e2d2055e31b0e0d929410973f6d8238.c56715cb40fd0662990dfc29403dcba40))
                {
                    UserAccountMgr local1 = SubSystem<UserAccountMgr>.cfd689ba95cb05e1458adf8457ab37a54;
                    return this.c29df49907877de440240adc2b4b21da7.GetChart(local1.c879392436d11f1a5e69045c698e24a05).c254b4b062b6d34b5807296eea042f15d;
                }
            }
            return 0;
        }
    }

    public bool c262b6c1703f95dd84952ef049a850ead
    {
        get
        {
            if (c797f98945fa1137ccf124ed256a6cca3.ceeb5be9cc96dff470c7b191db9930716(this.c29df49907877de440240adc2b4b21da7, c4e2d2055e31b0e0d929410973f6d8238.c56715cb40fd0662990dfc29403dcba40))
            {
                UserAccountMgr local1 = SubSystem<UserAccountMgr>.cfd689ba95cb05e1458adf8457ab37a54;
                Song.Difficulty difficulty = local1.c879392436d11f1a5e69045c698e24a05;
                if (c797f98945fa1137ccf124ed256a6cca3.ceeb5be9cc96dff470c7b191db9930716(this.c29df49907877de440240adc2b4b21da7.GetChart(difficulty), c4e2d2055e31b0e0d929410973f6d8238.c56715cb40fd0662990dfc29403dcba40))
                {
                    UserAccountMgr local2 = SubSystem<UserAccountMgr>.cfd689ba95cb05e1458adf8457ab37a54;
                    Song.Difficulty difficulty2 = local2.c879392436d11f1a5e69045c698e24a05;
                    return this.c29df49907877de440240adc2b4b21da7.GetChart(difficulty2).c0b1b8c3c211f7e5aef6658bc73532491;
                }
            }
            return false;
        }
    }

    public string c306a6109d5c0cfc3e7ac69de79023d32
    {
        get
        {
            // This item is obfuscated and can not be translated.
            if (!c797f98945fa1137ccf124ed256a6cca3.ceeb5be9cc96dff470c7b191db9930716(this.c29df49907877de440240adc2b4b21da7, c4e2d2055e31b0e0d929410973f6d8238.c56715cb40fd0662990dfc29403dcba40))
            {
                goto Label_0039;
            }
        Label_0012:
            switch (7)
            {
                case 0:
                    goto Label_0012;

                default:
                    if (1 != 0)
                    {
                        goto Label_0025;
                    }
                    if (this.c29df49907877de440240adc2b4b21da7.c306a6109d5c0cfc3e7ac69de79023d32 || true)
                    {
                    }
                    break;
            }
        Label_0039:
            return string.Empty;
        }
    }

    public bool c3094640568d663d1b31a09f2f5ef2530
    {
        get
        {
            UserAccountMgr local2 = SubSystem<UserAccountMgr>.cfd689ba95cb05e1458adf8457ab37a54;
            Chart chart = this.c29df49907877de440240adc2b4b21da7.GetChart(local2.c879392436d11f1a5e69045c698e24a05);
            if (!c797f98945fa1137ccf124ed256a6cca3.ceeb5be9cc96dff470c7b191db9930716(chart, c4e2d2055e31b0e0d929410973f6d8238.c56715cb40fd0662990dfc29403dcba40))
            {
                return false;
            }
        Label_0029:
            switch (5)
            {
                case 0:
                    goto Label_0029;
            }
            if (1 == 0)
            {
            }
            uint num2 = chart.cc3817361b28696877e7e523fcf56472e;
            return (num2 > 0);
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
            // This item is obfuscated and can not be translated.
            if (!c797f98945fa1137ccf124ed256a6cca3.ceeb5be9cc96dff470c7b191db9930716(this.c29df49907877de440240adc2b4b21da7, c4e2d2055e31b0e0d929410973f6d8238.c56715cb40fd0662990dfc29403dcba40))
            {
                goto Label_0061;
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
                    Chart chart1 = this.c29df49907877de440240adc2b4b21da7.ca53e34ad3211284cab3ef3aa1ae93115;
                    if (!c797f98945fa1137ccf124ed256a6cca3.ceeb5be9cc96dff470c7b191db9930716(chart1, c4e2d2055e31b0e0d929410973f6d8238.c56715cb40fd0662990dfc29403dcba40))
                    {
                        goto Label_0061;
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
                    if (this.c29df49907877de440240adc2b4b21da7.ca53e34ad3211284cab3ef3aa1ae93115.cba741c42bb687d6d744b894aa3884fcb || true)
                    {
                    }
                    break;
            }
        Label_0061:
            return 0;
        }
    }

    public uint c48592dfcfacf3f19887c98706da7346c
    {
        get
        {
            if (!c797f98945fa1137ccf124ed256a6cca3.ceeb5be9cc96dff470c7b191db9930716(this.c29df49907877de440240adc2b4b21da7, c4e2d2055e31b0e0d929410973f6d8238.c56715cb40fd0662990dfc29403dcba40))
            {
                goto Label_007B;
            }
        Label_0014:
            switch (7)
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
            switch (2)
            {
                case 0:
                    goto Label_004E;

                default:
                {
                    UserAccountMgr local2 = SubSystem<UserAccountMgr>.cfd689ba95cb05e1458adf8457ab37a54;
                    Song.Difficulty difficulty4 = local2.c879392436d11f1a5e69045c698e24a05;
                    Chart chart4 = this.c29df49907877de440240adc2b4b21da7.GetChart(difficulty4);
                    return chart4.c48592dfcfacf3f19887c98706da7346c;
                }
            }
        Label_007B:
            return 0;
        }
    }

    public Song c49d5c71e905374add8b9069833fd607d
    {
        get
        {
            return this.c29df49907877de440240adc2b4b21da7;
        }
    }

    public bool c4d88e6f7065049e095a1cc815900e7a8
    {
        get
        {
            if (!c797f98945fa1137ccf124ed256a6cca3.ceeb5be9cc96dff470c7b191db9930716(this.c29df49907877de440240adc2b4b21da7, c4e2d2055e31b0e0d929410973f6d8238.c56715cb40fd0662990dfc29403dcba40))
            {
                goto Label_007D;
            }
        Label_0014:
            switch (1)
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
                        goto Label_007D;
                    }
                    break;
                }
            }
        Label_004C:
            switch (3)
            {
                case 0:
                    goto Label_004C;

                default:
                {
                    Song.Difficulty difficulty4 = SubSystem<UserAccountMgr>.cfd689ba95cb05e1458adf8457ab37a54.c879392436d11f1a5e69045c698e24a05;
                    Chart chart4 = this.c29df49907877de440240adc2b4b21da7.GetChart(difficulty4);
                    ChartGrade grade2 = chart4.c59dfad57cb10a3109d9afb95e01c007e;
                    return (grade2 != ChartGrade.NA);
                }
            }
        Label_007D:
            return false;
        }
    }

    public uint c7869a7b5a6069e9f276ab5b79be3434d
    {
        get
        {
            // This item is obfuscated and can not be translated.
            if (!c797f98945fa1137ccf124ed256a6cca3.ceeb5be9cc96dff470c7b191db9930716(this.c29df49907877de440240adc2b4b21da7, c4e2d2055e31b0e0d929410973f6d8238.c56715cb40fd0662990dfc29403dcba40))
            {
                goto Label_005F;
            }
        Label_0012:
            switch (4)
            {
                case 0:
                    goto Label_0012;

                default:
                    if (1 != 0)
                    {
                        goto Label_0025;
                    }
                    if (!c797f98945fa1137ccf124ed256a6cca3.ceeb5be9cc96dff470c7b191db9930716(this.c29df49907877de440240adc2b4b21da7.caadd33ced3f1ed2904db2c3cbc285746, c4e2d2055e31b0e0d929410973f6d8238.c56715cb40fd0662990dfc29403dcba40))
                    {
                        goto Label_005F;
                    }
                    break;
            }
        Label_003E:
            switch (5)
            {
                case 0:
                    goto Label_003E;

                default:
                {
                    Chart chart1 = this.c29df49907877de440240adc2b4b21da7.caadd33ced3f1ed2904db2c3cbc285746;
                    if (chart1.cba741c42bb687d6d744b894aa3884fcb || true)
                    {
                    }
                    break;
                }
            }
        Label_005F:
            return 0;
        }
    }

    public uint c8bc911152e0ccb1d76fd86b322f47b6c
    {
        get
        {
            if (!c797f98945fa1137ccf124ed256a6cca3.ceeb5be9cc96dff470c7b191db9930716(this.c29df49907877de440240adc2b4b21da7, c4e2d2055e31b0e0d929410973f6d8238.c56715cb40fd0662990dfc29403dcba40))
            {
                goto Label_0079;
            }
        Label_0014:
            switch (4)
            {
                case 0:
                    goto Label_0014;

                default:
                {
                    if (1 == 0)
                    {
                    }
                    Song.Difficulty difficulty = SubSystem<UserAccountMgr>.cfd689ba95cb05e1458adf8457ab37a54.c879392436d11f1a5e69045c698e24a05;
                    if (!c797f98945fa1137ccf124ed256a6cca3.ceeb5be9cc96dff470c7b191db9930716(this.c29df49907877de440240adc2b4b21da7.GetChart(difficulty), c4e2d2055e31b0e0d929410973f6d8238.c56715cb40fd0662990dfc29403dcba40))
                    {
                        goto Label_0079;
                    }
                    break;
                }
            }
        Label_004C:
            switch (1)
            {
                case 0:
                    goto Label_004C;

                default:
                {
                    UserAccountMgr local2 = SubSystem<UserAccountMgr>.cfd689ba95cb05e1458adf8457ab37a54;
                    Song.Difficulty difficulty4 = local2.c879392436d11f1a5e69045c698e24a05;
                    Chart chart = this.c29df49907877de440240adc2b4b21da7.GetChart(difficulty4);
                    return chart.c49041bf013f05379123bd26b3d97f8a3;
                }
            }
        Label_0079:
            return 0;
        }
    }

    public Song.ContentType c907b98ddb5fe35119587bb1fa6f11e22
    {
        get
        {
            // This item is obfuscated and can not be translated.
            if (c797f98945fa1137ccf124ed256a6cca3.ceeb5be9cc96dff470c7b191db9930716(this.c29df49907877de440240adc2b4b21da7, c4e2d2055e31b0e0d929410973f6d8238.c56715cb40fd0662990dfc29403dcba40))
            {
                if (this.c29df49907877de440240adc2b4b21da7.c907b98ddb5fe35119587bb1fa6f11e22 || ((Song.ContentType) true))
                {
                }
            }
            return Song.ContentType.Free;
        }
    }

    public uint c91ccfc3aa09d6818c9d8a4f523716d6e
    {
        get
        {
            // This item is obfuscated and can not be translated.
            if (!c797f98945fa1137ccf124ed256a6cca3.ceeb5be9cc96dff470c7b191db9930716(this.c29df49907877de440240adc2b4b21da7, c4e2d2055e31b0e0d929410973f6d8238.c56715cb40fd0662990dfc29403dcba40))
            {
                goto Label_0060;
            }
        Label_0014:
            switch (3)
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
                        goto Label_0060;
                    }
                    break;
            }
        Label_0031:
            switch (2)
            {
                case 0:
                    goto Label_0031;

                default:
                    if (this.c907b98ddb5fe35119587bb1fa6f11e22 != Song.ContentType.Premium)
                    {
                        goto Label_0060;
                    }
                    break;
            }
        Label_0046:
            switch (5)
            {
                case 0:
                    goto Label_0046;

                default:
                    if (this.c29df49907877de440240adc2b4b21da7.c91ccfc3aa09d6818c9d8a4f523716d6e || true)
                    {
                    }
                    break;
            }
        Label_0060:
            return 0;
        }
    }

    public Texture2D c9a099f09a27f54e150e6aa60b709b3d9
    {
        get
        {
            // This item is obfuscated and can not be translated.
            if (!c797f98945fa1137ccf124ed256a6cca3.ceeb5be9cc96dff470c7b191db9930716(this.c29df49907877de440240adc2b4b21da7, c4e2d2055e31b0e0d929410973f6d8238.c56715cb40fd0662990dfc29403dcba40))
            {
                goto Label_0037;
            }
        Label_0014:
            switch (4)
            {
                case 0:
                    goto Label_0014;

                default:
                    if (1 != 0)
                    {
                        goto Label_0027;
                    }
                    if (this.c29df49907877de440240adc2b4b21da7.c9a099f09a27f54e150e6aa60b709b3d9 || true)
                    {
                    }
                    break;
            }
        Label_0037:
            return null;
        }
    }

    public Country.Code cad1f30caedcda7db89f0922369cdbee0
    {
        get
        {
            switch (this.ccae0f7648d277a25aa781811de4feac6)
            {
                case OtherUserState.GlobalRival:
                    return this.c75806b45b414244c683b27fccf81ae09();

                case OtherUserState.FriendRival:
                    return this.c17edbc21d50746e148ced6c347c7ac62();

                case OtherUserState.FriendLeader:
                    return this.c8857a2d04a1e4102fb7ac18b7be28280();
            }
            return Country.Code.WD;
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
            switch (7)
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
            switch (3)
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
            switch (7)
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
            switch (3)
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

    public Material ccb564a35c691c68d9a2cdf2f6b2fdf7e
    {
        get
        {
            // This item is obfuscated and can not be translated.
            if (!c797f98945fa1137ccf124ed256a6cca3.ceeb5be9cc96dff470c7b191db9930716(this.c29df49907877de440240adc2b4b21da7, c4e2d2055e31b0e0d929410973f6d8238.c56715cb40fd0662990dfc29403dcba40))
            {
                goto Label_0035;
            }
        Label_0012:
            switch (4)
            {
                case 0:
                    goto Label_0012;

                default:
                    if (1 != 0)
                    {
                        goto Label_0025;
                    }
                    if (this.c29df49907877de440240adc2b4b21da7.ccb564a35c691c68d9a2cdf2f6b2fdf7e || true)
                    {
                    }
                    break;
            }
        Label_0035:
            return null;
        }
    }

    public uint cd7ded43a2358475420fa26e11c3b0b23
    {
        get
        {
            // This item is obfuscated and can not be translated.
            if (!c797f98945fa1137ccf124ed256a6cca3.ceeb5be9cc96dff470c7b191db9930716(this.c29df49907877de440240adc2b4b21da7, c4e2d2055e31b0e0d929410973f6d8238.c56715cb40fd0662990dfc29403dcba40))
            {
                goto Label_0061;
            }
        Label_0014:
            switch (6)
            {
                case 0:
                    goto Label_0014;

                default:
                    if (1 != 0)
                    {
                        goto Label_0027;
                    }
                    if (!c797f98945fa1137ccf124ed256a6cca3.ceeb5be9cc96dff470c7b191db9930716(this.c29df49907877de440240adc2b4b21da7.caedfd179262ad3c604b55a81a84b9a9b, c4e2d2055e31b0e0d929410973f6d8238.c56715cb40fd0662990dfc29403dcba40))
                    {
                        goto Label_0061;
                    }
                    break;
            }
        Label_0040:
            switch (1)
            {
                case 0:
                    goto Label_0040;

                default:
                {
                    Chart chart1 = this.c29df49907877de440240adc2b4b21da7.caedfd179262ad3c604b55a81a84b9a9b;
                    if (chart1.cba741c42bb687d6d744b894aa3884fcb || true)
                    {
                    }
                    break;
                }
            }
        Label_0061:
            return 0;
        }
    }

    public delegate void DifficultyChangedEvent(Song.Difficulty difficulty);

    private enum OtherUserState
    {
        GlobalRival,
        FriendRival,
        FriendLeader
    }
}

