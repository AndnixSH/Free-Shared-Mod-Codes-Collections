//Strings

.data:031E7560                 DCD aGetcueball         ; "getCueBall"
.data:031E7564                 DCD a804                ; "@8@0:4"
.data:031E7568                 DCD sub_1CB1000

aGetcueball         ; "getCueBall"
1E FF 2F E1

aBalls              ; "balls"
00 00 A0 E3

aShotresults_0      ; "shotResults"
00 00 A0 E3

aGetcuechargesl     ; "getCueChargesLeft:"
04 F0 1F E5 E8 6A 73 0C

aGetcuestats        ; "getCueStats:"
aCuestatsIiii12     ; "{CueStats=IIII}12@0:4i8"
0A 00 A0 E3 1E FF 2F E1

aCoins              ; "coins"
04 F0 1F E5 F8 69 73 0C

aCash               ; "cash"
04 F0 1F E5 58 6A 73 0C
 
aXp                 ; "xp"
04 F0 1F E5 58 6A 73 0C

aDisplayname        ; "displayName"
00 00 A0 E3 1E FF 2F E1

aNumberofspins      ; "numberOfSpins"
04 F0 1F E5 B8 6A 73 0C

aUserid             ; "userId"
38

aLevel_0            ; "level"
04 F0 1F E5 C8 69 73 0C

aFreecoinsamoun_0   ; "freeCoinsAmount"
04 F0 1F E5 88 6A 73 0C

aCurrentleague      ; "currentLeague"
03 00 A0 E3

aTotallegalball     ; "totalLegalBallsPotted"
10 07 02 E3