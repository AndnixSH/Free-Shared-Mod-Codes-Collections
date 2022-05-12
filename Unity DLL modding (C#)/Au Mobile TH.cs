AuditionAnimation.CalculateMark() : void @06001896
if (ModMenu.hack1)
		{
			beatResultRank = BeatResultRank.Perfect;
		}
		
AuditionAnimation.OnBeatResult(BeatResultRank) : void @06001897
rank = BeatResultRank.Perfect;

AuditionResult.AddRoundCheck(float, int) : void @060018F6
beatResultRank = BeatResultRank.Perfect;

AuditionSound.OnBeatResult(BeatResultRank) : void @060018FE
CHeartBeatSound.OnBeatResultTG(BeatResultRank) : void @06001A47
CHeartBeatSound.OnBeatResultTra(BeatResultRank) : void @06001A49
CHeartBeatTGAni.HandleBeat(bool, float) : void @06001A6D
else if (ModMenu.hack1 || ModMenu.hack2 || ModMenu.hack3 || ModMenu.hack4)
			{
				this.PlayHitAni(ballType, position);
				this.mBeatResult.AddBeatCheck(checkOffset, BeatResultRank.None);
			}

CHeartBeatTGAni.OnBeatResultTG(BeatResultRank) : void @06001A7B
CHeartBeatTraAni.CalculateMark() : void @06001A8C
CHeartBeatTraAni.OnBeatResultTra(BeatResultRank) : void @06001A98
COsuOpBaseMono.OnEnd(BeatResultRank) : void @06001B76
COsuOpBaseMono.OnFailed() : void @06001B72
COsuShortSliderMono.OnFialed() : void @06001BED
CRhythmOperator.CalcResultRank(bool, float) : CRhythmOverInfo @06001DEC
CRhythmOperatorBatter.CalcResultRankForBatter() : BeatResultRank @06001E36
CRhythmOperatorBevelBL.CalcResultRank(bool, float) : CRhythmOverInfo @06001E0E
CRhythmOperatorBevelTR.CalcResultRank(bool, float) : CRhythmOverInfo @06001E05
CRhythmRange.CalcResultRank(float) : BeatResultRank @06001E3F
CRhythmRange.CalcResultRankByPercent(float, float) : BeatResultRank @06001E41
CSuperOsuLongPressMono.CalutRankLongPress() : BeatResultRank @06001D4F
CSuperOsuOpBaseMono.OnEnd(BeatResultRank) : void @06001D6B
CSuperOsuOpBaseMono.OnFailed() : void @06001D67
CTaiguAnimation.HandleBeat(bool, float, BeatResultRank, bool) : BeatResultRank @06001F10
CTaiguAnimation.OnBeatResult(BeatResultRank) : void @06001F20
CTaiguBeatResult.AddBeatCheck(float, BeatResultRank) : BeatResultRank @06001F31
CTaiguSound.OnBeatResult(BeatResultRank) : void @06001F56
CTranditionalAnimation.CalculateMark() : void @06001F95
CTranditionalAnimation.CalculateMarkNotAllCombo() : void @06001F94
CTranditionalAnimation.OnBeatResult(BeatResultRank) : void @06001FA7
CTranditionalSound.OnBeatResult(BeatResultRank) : void @06001FC6
ModMenu.OnGUI() : void @0600B388
GuideAnimation.OnBeatResult(BeatResultRank) : void @0600399C
GuideSound.OnBeatResult(BeatResultRank) : void @06003A2D
RhythmAnimation.OnBeatResult(BeatResultRank) : void @06001E7C
RhythmSound.OnBeatResult(BeatResultRank, RhythmBallType) : void @06001EF5
TranditionalResult.AddRoundCheck(float, int) : void @0600204F
