.class public Lcom/netmarble/battlesbgb/UnityActivity;
.super Lcom/unity3d/player/UnityPlayerActivity;
.source "UnityActivity.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field static IMMERSIVEMODE_DELAY:I = 0x0

.field private static PERMISSIONS_EVERUPLAY:[Ljava/lang/String; = null

.field private static PERMISSIONS_GOOGLE:[Ljava/lang/String; = null

.field private static final PERMISSIONS_REQUEST_EVERYPLAY:I = 0x3

.field private static final PERMISSIONS_REQUEST_GOOGLE:I = 0x1

.field private static final PERMISSIONS_REQUEST_RETRYGOOGLE:I = 0x2

.field private static REJECT_PERMISSION:[Ljava/lang/String; = null

.field private static final WeChat_APP_ID:Ljava/lang/String; = "wx32f6da3975b26514"

.field static WhatsAppPackageName:Ljava/lang/String;

.field static facebookAppID:Ljava/lang/String;

.field static growMobileAppKey:Ljava/lang/String;

.field static growMobileAppSecret:Ljava/lang/String;

.field private static handleNumRegID:I

.field static mExtraType:Ljava/lang/String;

.field static mIntentUrlExtraInfo:Ljava/lang/String;

.field private static mWeixinAPI:Lcom/tencent/mm/sdk/openapi/IWXAPI;

.field static mat_advertiser_ID:Ljava/lang/String;

.field static mat_conversion_Key:Ljava/lang/String;

.field public static regId:Ljava/lang/String;


# instance fields
.field SenderId:Ljava/lang/String;

.field private StartNmssSaText:Ljava/lang/String;

.field private _deviceName:Ljava/lang/String;

.field private _strCancel:Ljava/lang/String;

.field private _strOK:Ljava/lang/String;

.field clipboard:Landroid/text/ClipboardManager;

.field detectCB:Lnmss/app/NmssSa$DetectCallBack;

.field private mRestoreImmersiveModeHandler:Landroid/os/Handler;

.field mobileAppTracker:Lcom/mobileapptracker/MobileAppTracker;

.field private onRejectPermission:Z

.field private permissionType:I

.field private requestPermissionDenied:Ljava/lang/String;

.field private requestPermissionNotice:Ljava/lang/String;

.field private requestPermissionRationale:Ljava/lang/String;

.field private requestPermissionToastMsg:Ljava/lang/String;

.field private restoreImmersiveModeRunnable:Ljava/lang/Runnable;

.field session:Lnet/netmarble/Session;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 82
    const-string v0, "KoE1NHX179dna0T"

    sput-object v0, Lcom/netmarble/battlesbgb/UnityActivity;->growMobileAppKey:Ljava/lang/String;

    .line 83
    const-string v0, "X3dY9mUCCcUbJ6O"

    sput-object v0, Lcom/netmarble/battlesbgb/UnityActivity;->growMobileAppSecret:Ljava/lang/String;

    .line 84
    const-string v0, "414212485426679"

    sput-object v0, Lcom/netmarble/battlesbgb/UnityActivity;->facebookAppID:Ljava/lang/String;

    .line 85
    const-string v0, "175038"

    sput-object v0, Lcom/netmarble/battlesbgb/UnityActivity;->mat_advertiser_ID:Ljava/lang/String;

    .line 86
    const-string v0, "8fb464cc8e7ab83b455c3c3830e7ab41"

    sput-object v0, Lcom/netmarble/battlesbgb/UnityActivity;->mat_conversion_Key:Ljava/lang/String;

    .line 87
    const-string v0, ""

    sput-object v0, Lcom/netmarble/battlesbgb/UnityActivity;->regId:Ljava/lang/String;

    .line 90
    const-string v0, ""

    sput-object v0, Lcom/netmarble/battlesbgb/UnityActivity;->WhatsAppPackageName:Ljava/lang/String;

    .line 91
    const-string v0, ""

    sput-object v0, Lcom/netmarble/battlesbgb/UnityActivity;->mIntentUrlExtraInfo:Ljava/lang/String;

    .line 92
    const-string v0, ""

    sput-object v0, Lcom/netmarble/battlesbgb/UnityActivity;->mExtraType:Ljava/lang/String;

    .line 99
    const/16 v0, 0x64

    sput v0, Lcom/netmarble/battlesbgb/UnityActivity;->IMMERSIVEMODE_DELAY:I

    .line 864
    sput v2, Lcom/netmarble/battlesbgb/UnityActivity;->handleNumRegID:I

    .line 1017
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "android.permission.GET_ACCOUNTS"

    aput-object v1, v0, v2

    sput-object v0, Lcom/netmarble/battlesbgb/UnityActivity;->PERMISSIONS_GOOGLE:[Ljava/lang/String;

    .line 1019
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v1, v0, v2

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v1, v0, v3

    sput-object v0, Lcom/netmarble/battlesbgb/UnityActivity;->PERMISSIONS_EVERUPLAY:[Ljava/lang/String;

    .line 1020
    const/4 v0, 0x0

    sput-object v0, Lcom/netmarble/battlesbgb/UnityActivity;->REJECT_PERMISSION:[Ljava/lang/String;

    .line 1023
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 69
    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayerActivity;-><init>()V

    .line 71
    iput-object v0, p0, Lcom/netmarble/battlesbgb/UnityActivity;->session:Lnet/netmarble/Session;

    .line 73
    iput-object v0, p0, Lcom/netmarble/battlesbgb/UnityActivity;->clipboard:Landroid/text/ClipboardManager;

    .line 74
    iput-object v0, p0, Lcom/netmarble/battlesbgb/UnityActivity;->mobileAppTracker:Lcom/mobileapptracker/MobileAppTracker;

    .line 76
    const-string v0, ""

    iput-object v0, p0, Lcom/netmarble/battlesbgb/UnityActivity;->_deviceName:Ljava/lang/String;

    .line 88
    const-string v0, "992576715568"

    iput-object v0, p0, Lcom/netmarble/battlesbgb/UnityActivity;->SenderId:Ljava/lang/String;

    .line 100
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/netmarble/battlesbgb/UnityActivity;->mRestoreImmersiveModeHandler:Landroid/os/Handler;

    .line 101
    new-instance v0, Lcom/netmarble/battlesbgb/UnityActivity$1;

    invoke-direct {v0, p0}, Lcom/netmarble/battlesbgb/UnityActivity$1;-><init>(Lcom/netmarble/battlesbgb/UnityActivity;)V

    iput-object v0, p0, Lcom/netmarble/battlesbgb/UnityActivity;->restoreImmersiveModeRunnable:Ljava/lang/Runnable;

    .line 904
    new-instance v0, Lcom/netmarble/battlesbgb/UnityActivity$2;

    invoke-direct {v0, p0}, Lcom/netmarble/battlesbgb/UnityActivity$2;-><init>(Lcom/netmarble/battlesbgb/UnityActivity;)V

    iput-object v0, p0, Lcom/netmarble/battlesbgb/UnityActivity;->detectCB:Lnmss/app/NmssSa$DetectCallBack;

    .line 933
    const-string v0, ""

    iput-object v0, p0, Lcom/netmarble/battlesbgb/UnityActivity;->StartNmssSaText:Ljava/lang/String;

    .line 1002
    const-string v0, ""

    iput-object v0, p0, Lcom/netmarble/battlesbgb/UnityActivity;->requestPermissionNotice:Ljava/lang/String;

    .line 1006
    const-string v0, ""

    iput-object v0, p0, Lcom/netmarble/battlesbgb/UnityActivity;->requestPermissionRationale:Ljava/lang/String;

    .line 1010
    const-string v0, ""

    iput-object v0, p0, Lcom/netmarble/battlesbgb/UnityActivity;->requestPermissionDenied:Ljava/lang/String;

    .line 1012
    const-string v0, ""

    iput-object v0, p0, Lcom/netmarble/battlesbgb/UnityActivity;->requestPermissionToastMsg:Ljava/lang/String;

    .line 1014
    const-string v0, ""

    iput-object v0, p0, Lcom/netmarble/battlesbgb/UnityActivity;->_strOK:Ljava/lang/String;

    .line 1015
    const-string v0, ""

    iput-object v0, p0, Lcom/netmarble/battlesbgb/UnityActivity;->_strCancel:Ljava/lang/String;

    .line 69
    return-void
.end method

.method static AddIntValueStatic(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "intValue"    # I

    .prologue
    .line 173
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 174
    .local v0, "stringbuffer":Ljava/lang/StringBuffer;
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 175
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 176
    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 178
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static AddStringValueStatic(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "stringValue"    # Ljava/lang/String;

    .prologue
    .line 183
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 184
    .local v0, "stringbuffer":Ljava/lang/StringBuffer;
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 185
    if-eqz p1, :cond_1

    .line 187
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 189
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 190
    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 191
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 192
    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 204
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 196
    :cond_0
    const-string v1, "0$$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 201
    :cond_1
    const-string v1, "0$$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method private CreateAppSignValue(Ljava/lang/String;I)V
    .locals 3
    .param p1, "strToken"    # Ljava/lang/String;
    .param p2, "handleNum"    # I

    .prologue
    .line 797
    const-string v0, ""

    .line 798
    .local v0, "str":Ljava/lang/String;
    invoke-virtual {p0, v0, p2}, Lcom/netmarble/battlesbgb/UnityActivity;->AddIntValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 799
    const/4 v1, 0x0

    .line 800
    .local v1, "strCertValue":Ljava/lang/String;
    invoke-static {}, Lnmss/app/NmssSa;->getInstObj()Lnmss/app/NmssSa;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 802
    invoke-static {}, Lnmss/app/NmssSa;->getInstObj()Lnmss/app/NmssSa;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnmss/app/NmssSa;->getCertValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 805
    :cond_0
    if-eqz v1, :cond_1

    .line 807
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/netmarble/battlesbgb/UnityActivity;->AddIntValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 808
    invoke-virtual {p0, v0, v1}, Lcom/netmarble/battlesbgb/UnityActivity;->AddStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 816
    :goto_0
    const-string v2, "unityactivity_securitymodulation_callback"

    invoke-static {v2, v0}, Lcom/netmarble/battlesbgb/UnityActivity;->UnityTransmission(Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    return-void

    .line 812
    :cond_1
    const/4 v2, -0x1

    invoke-virtual {p0, v0, v2}, Lcom/netmarble/battlesbgb/UnityActivity;->AddIntValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 813
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/netmarble/battlesbgb/UnityActivity;->AddStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private DetectAppModulation()V
    .locals 2

    return-void
.end method

.method public static UnitySendRegistrationId()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 979
    const-string v0, ""

    .line 980
    .local v0, "str":Ljava/lang/String;
    sget v1, Lcom/netmarble/battlesbgb/UnityActivity;->handleNumRegID:I

    invoke-static {v0, v1}, Lcom/netmarble/battlesbgb/UnityActivity;->AddIntValueStatic(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 981
    sget-object v1, Lcom/netmarble/battlesbgb/UnityActivity;->regId:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 983
    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/netmarble/battlesbgb/UnityActivity;->AddIntValueStatic(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 984
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netmarble/battlesbgb/UnityActivity;->AddStringValueStatic(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 994
    :goto_0
    const-string v1, "unityactivity_getregistrationid_callback"

    invoke-static {v1, v0}, Lcom/netmarble/battlesbgb/UnityActivity;->UnityTransmission(Ljava/lang/String;Ljava/lang/String;)V

    .line 996
    sput v3, Lcom/netmarble/battlesbgb/UnityActivity;->handleNumRegID:I

    .line 997
    return-void

    .line 988
    :cond_0
    invoke-static {v0, v3}, Lcom/netmarble/battlesbgb/UnityActivity;->AddIntValueStatic(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 989
    sget-object v1, Lcom/netmarble/battlesbgb/UnityActivity;->regId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netmarble/battlesbgb/UnityActivity;->AddStringValueStatic(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static UnityTransmission(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "method"    # Ljava/lang/String;
    .param p1, "params"    # Ljava/lang/String;

    .prologue
    .line 762
    const-string v0, "NMMainController"

    invoke-static {v0, p0, p1}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    return-void
.end method

.method static synthetic access$0(Lcom/netmarble/battlesbgb/UnityActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/netmarble/battlesbgb/UnityActivity;->mRestoreImmersiveModeHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1(Lcom/netmarble/battlesbgb/UnityActivity;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/netmarble/battlesbgb/UnityActivity;->restoreImmersiveModeRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2(Lcom/netmarble/battlesbgb/UnityActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 933
    iget-object v0, p0, Lcom/netmarble/battlesbgb/UnityActivity;->StartNmssSaText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/netmarble/battlesbgb/UnityActivity;)V
    .locals 0

    .prologue
    .line 1298
    invoke-direct {p0}, Lcom/netmarble/battlesbgb/UnityActivity;->waringRejectPermission_google()V

    return-void
.end method

.method static synthetic access$4(Lcom/netmarble/battlesbgb/UnityActivity;)V
    .locals 0

    .prologue
    .line 1358
    invoke-direct {p0}, Lcom/netmarble/battlesbgb/UnityActivity;->waringRejectPermission_everyplay()V

    return-void
.end method

.method static synthetic access$5(Lcom/netmarble/battlesbgb/UnityActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1002
    iget-object v0, p0, Lcom/netmarble/battlesbgb/UnityActivity;->requestPermissionNotice:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6(Lcom/netmarble/battlesbgb/UnityActivity;)V
    .locals 0

    .prologue
    .line 1329
    invoke-direct {p0}, Lcom/netmarble/battlesbgb/UnityActivity;->noticePermission_everyPlay()V

    return-void
.end method

.method static synthetic access$7(Lcom/netmarble/battlesbgb/UnityActivity;)V
    .locals 0

    .prologue
    .line 1288
    invoke-direct {p0}, Lcom/netmarble/battlesbgb/UnityActivity;->requestPermission_everyplay()V

    return-void
.end method

.method private applicationSetting()V
    .locals 3

    .prologue
    .line 1282
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/netmarble/battlesbgb/UnityActivity;->onRejectPermission:Z

    .line 1283
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1284
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "package:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/netmarble/battlesbgb/UnityActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1285
    invoke-virtual {p0, v0}, Lcom/netmarble/battlesbgb/UnityActivity;->startActivity(Landroid/content/Intent;)V

    .line 1286
    return-void
.end method

.method private buildTransaction(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 1679
    if-nez p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private noticePermission_everyPlay()V
    .locals 4

    .prologue
    .line 1331
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1332
    .local v0, "alert":Landroid/app/AlertDialog$Builder;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/netmarble/battlesbgb/UnityActivity;->_strOK:Ljava/lang/String;

    new-instance v3, Lcom/netmarble/battlesbgb/UnityActivity$14;

    invoke-direct {v3, p0}, Lcom/netmarble/battlesbgb/UnityActivity$14;-><init>(Lcom/netmarble/battlesbgb/UnityActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1342
    new-instance v2, Lcom/netmarble/battlesbgb/UnityActivity$15;

    invoke-direct {v2, p0}, Lcom/netmarble/battlesbgb/UnityActivity$15;-><init>(Lcom/netmarble/battlesbgb/UnityActivity;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 1353
    iget-object v1, p0, Lcom/netmarble/battlesbgb/UnityActivity;->requestPermissionNotice:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1354
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1355
    return-void
.end method

.method private requestPermission_everyplay()V
    .locals 3

    .prologue
    const/4 v1, 0x3

    .line 1291
    iput v1, p0, Lcom/netmarble/battlesbgb/UnityActivity;->permissionType:I

    .line 1292
    sget-object v0, Lcom/netmarble/battlesbgb/UnityActivity;->REJECT_PERMISSION:[Ljava/lang/String;

    invoke-static {p0, v0, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 1294
    invoke-virtual {p0}, Lcom/netmarble/battlesbgb/UnityActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/netmarble/battlesbgb/UnityActivity;->requestPermissionToastMsg:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1295
    return-void
.end method

.method private waringRejectPermission_everyplay()V
    .locals 4

    .prologue
    .line 1360
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1361
    .local v0, "alert":Landroid/app/AlertDialog$Builder;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/netmarble/battlesbgb/UnityActivity;->_strOK:Ljava/lang/String;

    new-instance v3, Lcom/netmarble/battlesbgb/UnityActivity$16;

    invoke-direct {v3, p0}, Lcom/netmarble/battlesbgb/UnityActivity$16;-><init>(Lcom/netmarble/battlesbgb/UnityActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1372
    new-instance v2, Lcom/netmarble/battlesbgb/UnityActivity$17;

    invoke-direct {v2, p0}, Lcom/netmarble/battlesbgb/UnityActivity$17;-><init>(Lcom/netmarble/battlesbgb/UnityActivity;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 1384
    iget-object v1, p0, Lcom/netmarble/battlesbgb/UnityActivity;->requestPermissionDenied:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1385
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1386
    return-void
.end method

.method private waringRejectPermission_google()V
    .locals 4

    .prologue
    .line 1300
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1301
    .local v0, "alert":Landroid/app/AlertDialog$Builder;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/netmarble/battlesbgb/UnityActivity;->_strOK:Ljava/lang/String;

    new-instance v3, Lcom/netmarble/battlesbgb/UnityActivity$12;

    invoke-direct {v3, p0}, Lcom/netmarble/battlesbgb/UnityActivity$12;-><init>(Lcom/netmarble/battlesbgb/UnityActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1312
    new-instance v2, Lcom/netmarble/battlesbgb/UnityActivity$13;

    invoke-direct {v2, p0}, Lcom/netmarble/battlesbgb/UnityActivity$13;-><init>(Lcom/netmarble/battlesbgb/UnityActivity;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 1324
    iget-object v1, p0, Lcom/netmarble/battlesbgb/UnityActivity;->requestPermissionDenied:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1325
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1326
    return-void
.end method


# virtual methods
.method AddBoolValue(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "boolValue"    # Z

    .prologue
    .line 239
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 240
    .local v0, "stringbuffer":Ljava/lang/StringBuffer;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 241
    if-eqz p2, :cond_0

    const-string v1, "true"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 242
    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 244
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 241
    :cond_0
    const-string v1, "false"

    goto :goto_0
.end method

.method AddDoubleValue(Ljava/lang/String;D)Ljava/lang/String;
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "doubleValue"    # D

    .prologue
    .line 229
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 230
    .local v0, "stringbuffer":Ljava/lang/StringBuffer;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 231
    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    .line 232
    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 234
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method AddIntValue(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "intValue"    # I

    .prologue
    .line 209
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 210
    .local v0, "stringbuffer":Ljava/lang/StringBuffer;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 211
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 212
    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 214
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method AddLLongValue(Ljava/lang/String;J)Ljava/lang/String;
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "llongValue"    # J

    .prologue
    .line 219
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 220
    .local v0, "stringbuffer":Ljava/lang/StringBuffer;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 221
    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 222
    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 224
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method AddResultValue(Ljava/lang/String;Lnet/netmarble/Result;)Ljava/lang/String;
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "result"    # Lnet/netmarble/Result;

    .prologue
    .line 275
    if-nez p2, :cond_0

    .line 277
    new-instance p2, Lnet/netmarble/Result;

    .end local p2    # "result":Lnet/netmarble/Result;
    const v1, 0x10001

    const-string v2, "Unknown"

    invoke-direct {p2, v1, v2}, Lnet/netmarble/Result;-><init>(ILjava/lang/String;)V

    .line 280
    .restart local p2    # "result":Lnet/netmarble/Result;
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 281
    .local v0, "stringbuffer":Ljava/lang/StringBuffer;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 283
    invoke-virtual {p2}, Lnet/netmarble/Result;->getDomain()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 285
    invoke-virtual {p2}, Lnet/netmarble/Result;->getDomain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 286
    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 287
    invoke-virtual {p2}, Lnet/netmarble/Result;->getDomain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 288
    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 295
    :goto_0
    invoke-virtual {p2}, Lnet/netmarble/Result;->getCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 296
    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 298
    invoke-virtual {p2}, Lnet/netmarble/Result;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 300
    invoke-virtual {p2}, Lnet/netmarble/Result;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 301
    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 302
    invoke-virtual {p2}, Lnet/netmarble/Result;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 303
    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 310
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 292
    :cond_1
    const-string v1, "0$$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 307
    :cond_2
    const-string v1, "0$$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method AddStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "stringValue"    # Ljava/lang/String;

    .prologue
    .line 249
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 250
    .local v0, "stringbuffer":Ljava/lang/StringBuffer;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 251
    if-eqz p2, :cond_1

    .line 253
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 255
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 256
    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 257
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 258
    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 270
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 262
    :cond_0
    const-string v1, "0$$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 267
    :cond_1
    const-string v1, "0$$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public ApkSecurityCheck(Ljava/lang/String;)V
    .locals 2
    
    return-void
.end method

.method public ClipBoardSet(Ljava/lang/String;I)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "handleNum"    # I

    .prologue
    .line 856
    const-string v0, ""

    .line 857
    .local v0, "str":Ljava/lang/String;
    invoke-virtual {p0, v0, p2}, Lcom/netmarble/battlesbgb/UnityActivity;->AddIntValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 858
    iget-object v1, p0, Lcom/netmarble/battlesbgb/UnityActivity;->clipboard:Landroid/text/ClipboardManager;

    invoke-virtual {v1, p1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 859
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/netmarble/battlesbgb/UnityActivity;->AddIntValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 861
    const-string v1, "unityactivity_paste_board_callback"

    invoke-static {v1, v0}, Lcom/netmarble/battlesbgb/UnityActivity;->UnityTransmission(Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    return-void
.end method

.method public FirstAutoSignIn(ZI)V
    .locals 2
    .param p1, "bOnOff"    # Z
    .param p2, "handleNum"    # I

    .prologue
    .line 767
    const-string v0, ""

    .line 768
    .local v0, "str":Ljava/lang/String;
    invoke-virtual {p0, v0, p2}, Lcom/netmarble/battlesbgb/UnityActivity;->AddIntValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 770
    invoke-static {}, Lnet/netmarble/impl/GooglePlusImpl;->getInstance()Lnet/netmarble/impl/GooglePlusImpl;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 773
    invoke-static {}, Lnet/netmarble/impl/GooglePlusImpl;->getInstance()Lnet/netmarble/impl/GooglePlusImpl;

    move-result-object v1

    iput-boolean p1, v1, Lnet/netmarble/impl/GooglePlusImpl;->isFirstAutoSignIn:Z

    .line 774
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/netmarble/battlesbgb/UnityActivity;->AddBoolValue(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 782
    :goto_0
    const-string v1, "unityactivity_FirstAutoSignIn_callback"

    invoke-static {v1, v0}, Lcom/netmarble/battlesbgb/UnityActivity;->UnityTransmission(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    return-void

    .line 779
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/netmarble/battlesbgb/UnityActivity;->AddBoolValue(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public GetIntentExtraInfo(I)V
    .locals 3
    .param p1, "handleNum"    # I

    .prologue
    .line 1772
    const-string v0, ""

    .line 1773
    .local v0, "str":Ljava/lang/String;
    invoke-virtual {p0, v0, p1}, Lcom/netmarble/battlesbgb/UnityActivity;->AddIntValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1774
    sget-object v1, Lcom/netmarble/battlesbgb/UnityActivity;->mIntentUrlExtraInfo:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1776
    sget-object v1, Lcom/netmarble/battlesbgb/UnityActivity;->mExtraType:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/netmarble/battlesbgb/UnityActivity;->AddStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1777
    sget-object v1, Lcom/netmarble/battlesbgb/UnityActivity;->mIntentUrlExtraInfo:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/netmarble/battlesbgb/UnityActivity;->AddStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1778
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/netmarble/battlesbgb/UnityActivity;->AddBoolValue(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 1779
    const-string v1, "unityactivity_GetIntentExtraInfo_callback"

    invoke-static {v1, v0}, Lcom/netmarble/battlesbgb/UnityActivity;->UnityTransmission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1789
    :goto_0
    const-string v1, ""

    sput-object v1, Lcom/netmarble/battlesbgb/UnityActivity;->mExtraType:Ljava/lang/String;

    .line 1790
    const-string v1, ""

    sput-object v1, Lcom/netmarble/battlesbgb/UnityActivity;->mIntentUrlExtraInfo:Ljava/lang/String;

    .line 1791
    return-void

    .line 1783
    :cond_0
    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/netmarble/battlesbgb/UnityActivity;->AddStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1784
    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/netmarble/battlesbgb/UnityActivity;->AddStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1785
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/netmarble/battlesbgb/UnityActivity;->AddBoolValue(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 1786
    const-string v1, "unityactivity_GetIntentExtraInfo_callback"

    invoke-static {v1, v0}, Lcom/netmarble/battlesbgb/UnityActivity;->UnityTransmission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public GetNetworkNativeState()V
    .locals 8

    .prologue
    .line 1417
    const-string v4, ""

    .line 1421
    .local v4, "str":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/netmarble/battlesbgb/UnityActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 1423
    .local v1, "manager":Landroid/net/ConnectivityManager;
    if-nez v1, :cond_1

    .line 1451
    .end local v1    # "manager":Landroid/net/ConnectivityManager;
    :cond_0
    :goto_0
    return-void

    .line 1426
    .restart local v1    # "manager":Landroid/net/ConnectivityManager;
    :cond_1
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .local v3, "ni":Landroid/net/NetworkInfo;
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v2

    .line 1428
    .local v2, "netname":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 1432
    const-string v5, "MOBILE"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "mobile"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1434
    :cond_2
    const-string v5, "lte"

    invoke-virtual {p0, v4, v5}, Lcom/netmarble/battlesbgb/UnityActivity;->AddStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1445
    :goto_1
    const-string v5, "unityactivity_GetNetworkNativeState_callback"

    invoke-static {v5, v4}, Lcom/netmarble/battlesbgb/UnityActivity;->UnityTransmission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1447
    .end local v1    # "manager":Landroid/net/ConnectivityManager;
    .end local v2    # "netname":Ljava/lang/String;
    .end local v3    # "ni":Landroid/net/NetworkInfo;
    :catch_0
    move-exception v0

    .line 1449
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "unity"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "GetNetworkNativeStaten Exception e : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1436
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "manager":Landroid/net/ConnectivityManager;
    .restart local v2    # "netname":Ljava/lang/String;
    .restart local v3    # "ni":Landroid/net/NetworkInfo;
    :cond_3
    :try_start_1
    const-string v5, "WIFI"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "wifi"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1438
    :cond_4
    const-string v5, "wifi"

    invoke-virtual {p0, v4, v5}, Lcom/netmarble/battlesbgb/UnityActivity;->AddStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1439
    goto :goto_1

    .line 1442
    :cond_5
    const-string v5, ""

    invoke-virtual {p0, v4, v5}, Lcom/netmarble/battlesbgb/UnityActivity;->AddStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    goto :goto_1
.end method

.method public GetRegistrationId(I)V
    .locals 6
    .param p1, "handleNum"    # I

    .prologue
    .line 869
    :try_start_0
    sput p1, Lcom/netmarble/battlesbgb/UnityActivity;->handleNumRegID:I

    .line 870
    invoke-virtual {p0}, Lcom/netmarble/battlesbgb/UnityActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gcm/GCMRegistrar;->checkDevice(Landroid/content/Context;)V

    .line 871
    invoke-virtual {p0}, Lcom/netmarble/battlesbgb/UnityActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gcm/GCMRegistrar;->checkManifest(Landroid/content/Context;)V

    .line 873
    invoke-virtual {p0}, Lcom/netmarble/battlesbgb/UnityActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gcm/GCMRegistrar;->getRegistrationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/netmarble/battlesbgb/UnityActivity;->regId:Ljava/lang/String;

    .line 875
    sget-object v3, Lcom/netmarble/battlesbgb/UnityActivity;->regId:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 877
    const/4 v0, 0x0

    .line 880
    .local v0, "counter":I
    :cond_0
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/netmarble/battlesbgb/UnityActivity;->SenderId:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {p0, v3}, Lcom/google/android/gcm/GCMRegistrar;->register(Landroid/content/Context;[Ljava/lang/String;)V

    .line 881
    invoke-virtual {p0}, Lcom/netmarble/battlesbgb/UnityActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gcm/GCMRegistrar;->getRegistrationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 882
    .local v2, "sregId":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    .line 883
    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 884
    :cond_1
    const-string v3, "unity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "RegistrationId3 : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/netmarble/battlesbgb/UnityActivity;->regId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    .end local v0    # "counter":I
    .end local v2    # "sregId":Ljava/lang/String;
    :goto_0
    return-void

    .line 893
    :cond_2
    invoke-static {}, Lcom/netmarble/battlesbgb/UnityActivity;->UnitySendRegistrationId()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 896
    :catch_0
    move-exception v1

    .line 898
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "unity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "GCMRegistrar Exception : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public GoogleAchievement(Ljava/lang/String;)V
    .locals 4
    .param p1, "achievementID"    # Ljava/lang/String;

    .prologue
    .line 665
    invoke-static {}, Lnet/netmarble/GooglePlus;->getGoogleAPIClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    if-nez v1, :cond_1

    .line 667
    const-string v1, "unity"

    const-string v2, "GoogleLeaderboardSubmitScore Google is getGoogleAPIClient is Not Connect"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    :cond_0
    :goto_0
    return-void

    .line 671
    :cond_1
    invoke-static {}, Lnet/netmarble/GooglePlus;->getGoogleAPIClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v1

    if-nez v1, :cond_2

    .line 673
    const-string v1, "unity"

    const-string v2, "GoogleAchievement getGoogleAPIClient is Not Connected"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 679
    :cond_2
    if-eqz p1, :cond_0

    .line 681
    :try_start_0
    const-string v1, "unity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "GoogleAchievement achievementID : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    sget-object v1, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    invoke-static {}, Lnet/netmarble/GooglePlus;->getGoogleAPIClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lcom/google/android/gms/games/achievement/Achievements;->unlock(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 685
    :catch_0
    move-exception v0

    .line 687
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v1, "unity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "GoogleAchievement SecurityException : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public GoogleAchievementCheck()V
    .locals 5

    .prologue
    .line 730
    invoke-static {}, Lnet/netmarble/GooglePlus;->getGoogleAPIClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v2

    if-nez v2, :cond_0

    .line 732
    const-string v2, "unity"

    const-string v3, "GoogleLeaderboardSubmitScore Google is getGoogleAPIClient is Not Connect"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    :goto_0
    return-void

    .line 736
    :cond_0
    invoke-static {}, Lnet/netmarble/GooglePlus;->getGoogleAPIClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v2

    if-nez v2, :cond_1

    .line 738
    const-string v2, "unity"

    const-string v3, "Google is Not Connect Google is Not Connect"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 744
    :cond_1
    :try_start_0
    sget-object v2, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    invoke-static {}, Lnet/netmarble/GooglePlus;->getGoogleAPIClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/gms/games/achievement/Achievements;->getAchievementsIntent(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/netmarble/battlesbgb/UnityActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 746
    :catch_0
    move-exception v0

    .line 748
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v2, "unity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "GoogleLeaderboardCheck SecurityException : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    const-string v1, ""

    .line 751
    .local v1, "str":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/netmarble/battlesbgb/UnityActivity;->AddIntValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 752
    const-string v2, "unityactivity_googlelogout_callback"

    invoke-static {v2, v1}, Lcom/netmarble/battlesbgb/UnityActivity;->UnityTransmission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public GoogleIncrementAchievement(Ljava/lang/String;I)V
    .locals 4
    .param p1, "achievementID"    # Ljava/lang/String;
    .param p2, "score"    # I

    .prologue
    .line 695
    invoke-static {}, Lnet/netmarble/GooglePlus;->getGoogleAPIClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    if-nez v1, :cond_0

    .line 697
    const-string v1, "unity"

    const-string v2, "GoogleLeaderboardSubmitScore Google is getGoogleAPIClient is Not Connect"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    :goto_0
    return-void

    .line 701
    :cond_0
    invoke-static {}, Lnet/netmarble/GooglePlus;->getGoogleAPIClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 703
    const-string v1, "unity"

    const-string v2, "GoogleIncrementAchievement Google is Not Connect Google is Not Connect"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 710
    :cond_1
    if-gtz p2, :cond_2

    .line 712
    const-string v1, "unity"

    const-string v2, "GoogleIncrementAchievement count 0"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 718
    :cond_2
    :try_start_0
    sget-object v1, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    invoke-static {}, Lnet/netmarble/GooglePlus;->getGoogleAPIClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v2

    invoke-interface {v1, v2, p1, p2}, Lcom/google/android/gms/games/achievement/Achievements;->increment(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 720
    :catch_0
    move-exception v0

    .line 722
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v1, "unity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "GoogleIncrementAchievement SecurityException : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public GoogleLeaderboardAllCheck()V
    .locals 5

    .prologue
    .line 635
    invoke-static {}, Lnet/netmarble/GooglePlus;->getGoogleAPIClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v2

    if-nez v2, :cond_0

    .line 637
    const-string v2, "unity"

    const-string v3, "GoogleLeaderboardSubmitScore Google is getGoogleAPIClient is Not Connect"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    :goto_0
    return-void

    .line 641
    :cond_0
    invoke-static {}, Lnet/netmarble/GooglePlus;->getGoogleAPIClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v2

    if-nez v2, :cond_1

    .line 643
    const-string v2, "unity"

    const-string v3, "Google is Not Connect Google is Not Connect"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 649
    :cond_1
    :try_start_0
    sget-object v2, Lcom/google/android/gms/games/Games;->Leaderboards:Lcom/google/android/gms/games/leaderboard/Leaderboards;

    invoke-static {}, Lnet/netmarble/GooglePlus;->getGoogleAPIClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/gms/games/leaderboard/Leaderboards;->getAllLeaderboardsIntent(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/netmarble/battlesbgb/UnityActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 651
    :catch_0
    move-exception v0

    .line 653
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v2, "unity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "GoogleLeaderboardCheck SecurityException : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    const-string v1, ""

    .line 656
    .local v1, "str":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/netmarble/battlesbgb/UnityActivity;->AddIntValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 657
    const-string v2, "unityactivity_googlelogout_callback"

    invoke-static {v2, v1}, Lcom/netmarble/battlesbgb/UnityActivity;->UnityTransmission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public GoogleLeaderboardCheck()V
    .locals 4

    .prologue
    .line 608
    invoke-static {}, Lnet/netmarble/GooglePlus;->getGoogleAPIClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    if-nez v1, :cond_0

    .line 610
    const-string v1, "unity"

    const-string v2, "GoogleLeaderboardSubmitScore Google is getGoogleAPIClient is Not Connect"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    :goto_0
    return-void

    .line 614
    :cond_0
    invoke-static {}, Lnet/netmarble/GooglePlus;->getGoogleAPIClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 616
    const-string v1, "unity"

    const-string v2, "GoogleLeaderboardSubmitScore Google is Not Connect Google is Not Connect"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 622
    :cond_1
    :try_start_0
    sget-object v1, Lcom/google/android/gms/games/Games;->Leaderboards:Lcom/google/android/gms/games/leaderboard/Leaderboards;

    invoke-static {}, Lnet/netmarble/GooglePlus;->getGoogleAPIClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v2

    .line 623
    const-string v3, "LeaderBoardID"

    .line 622
    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/games/leaderboard/Leaderboards;->getLeaderboardIntent(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 623
    const/4 v2, 0x1

    .line 622
    invoke-virtual {p0, v1, v2}, Lcom/netmarble/battlesbgb/UnityActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 625
    :catch_0
    move-exception v0

    .line 627
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v1, "unity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "GoogleLeaderboardCheck SecurityException : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public GoogleLeaderboardSubmitScore(Ljava/lang/String;I)V
    .locals 6
    .param p1, "leaderBoardID"    # Ljava/lang/String;
    .param p2, "score"    # I

    .prologue
    .line 573
    invoke-static {}, Lnet/netmarble/GooglePlus;->getGoogleAPIClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    if-nez v1, :cond_0

    .line 575
    const-string v1, "unity"

    const-string v2, "GoogleLeaderboardSubmitScore Google is getGoogleAPIClient is Not Connect"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    :goto_0
    return-void

    .line 579
    :cond_0
    invoke-static {}, Lnet/netmarble/GooglePlus;->getGoogleAPIClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 581
    const-string v1, "unity"

    const-string v2, "GoogleLeaderboardSubmitScore Google is Not Connect Google is Not Connect"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 588
    :cond_1
    if-gtz p2, :cond_2

    .line 590
    const-string v1, "unity"

    const-string v2, "GoogleLeaderboardSubmitScore count 0"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 596
    :cond_2
    :try_start_0
    sget-object v1, Lcom/google/android/gms/games/Games;->Leaderboards:Lcom/google/android/gms/games/leaderboard/Leaderboards;

    invoke-static {}, Lnet/netmarble/GooglePlus;->getGoogleAPIClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v2

    int-to-long v4, p2

    invoke-interface {v1, v2, p1, v4, v5}, Lcom/google/android/gms/games/leaderboard/Leaderboards;->submitScore(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 598
    :catch_0
    move-exception v0

    .line 600
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v1, "unity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "GoogleLeaderboardSubmitScore SecurityException : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method HideSystemUI()V
    .locals 6

    .prologue
    const/16 v5, 0x13

    const/16 v4, 0xe

    .line 315
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 316
    .local v1, "intVersion":I
    invoke-virtual {p0}, Lcom/netmarble/battlesbgb/UnityActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 317
    .local v0, "decoView":Landroid/view/View;
    const/4 v2, 0x0

    .line 320
    .local v2, "option":I
    const/16 v3, 0xb

    if-lt v1, v3, :cond_1

    if-ge v1, v4, :cond_1

    .line 321
    invoke-virtual {p0}, Lcom/netmarble/battlesbgb/UnityActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v2

    .line 322
    or-int/lit8 v2, v2, 0x1

    .line 324
    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 343
    :cond_0
    :goto_0
    return-void

    .line 326
    :cond_1
    if-lt v1, v4, :cond_2

    if-ge v1, v5, :cond_2

    .line 328
    invoke-virtual {p0}, Lcom/netmarble/battlesbgb/UnityActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v2

    .line 329
    or-int/lit8 v2, v2, 0x5

    .line 331
    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 333
    :cond_2
    if-lt v1, v5, :cond_0

    .line 334
    invoke-virtual {p0}, Lcom/netmarble/battlesbgb/UnityActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    .line 335
    const/16 v4, 0x170e

    .line 334
    invoke-virtual {v3, v4}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0
.end method

.method public NmssSaDetectApplicationQuit()V
    .locals 2

   
    return-void
.end method

.method public SendKakaoLink(Ljava/lang/String;I)V
    .locals 6
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "handleNum"    # I

    .prologue
    .line 1613
    const-string v3, ""

    .line 1614
    .local v3, "str":Ljava/lang/String;
    invoke-virtual {p0, v3, p2}, Lcom/netmarble/battlesbgb/UnityActivity;->AddIntValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 1615
    const/4 v5, 0x4

    invoke-virtual {p0, v3, v5}, Lcom/netmarble/battlesbgb/UnityActivity;->AddIntValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 1619
    :try_start_0
    invoke-static {p0}, Lcom/kakao/kakaolink/KakaoLink;->getKakaoLink(Landroid/content/Context;)Lcom/kakao/kakaolink/KakaoLink;

    move-result-object v1

    .line 1620
    .local v1, "kakaoLink":Lcom/kakao/kakaolink/KakaoLink;
    invoke-virtual {v1}, Lcom/kakao/kakaolink/KakaoLink;->createKakaoTalkLinkMessageBuilder()Lcom/kakao/kakaolink/KakaoTalkLinkMessageBuilder;

    move-result-object v2

    .line 1621
    .local v2, "kakaoTalkLinkMessageBuilder":Lcom/kakao/kakaolink/KakaoTalkLinkMessageBuilder;
    move-object v4, p1

    .line 1623
    .local v4, "text":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1625
    const-string v4, "HELLO WORLD"

    .line 1628
    :cond_0
    invoke-virtual {v2, v4}, Lcom/kakao/kakaolink/KakaoTalkLinkMessageBuilder;->addText(Ljava/lang/String;)Lcom/kakao/kakaolink/KakaoTalkLinkMessageBuilder;

    .line 1629
    invoke-virtual {v1, v2, p0}, Lcom/kakao/kakaolink/KakaoLink;->sendMessage(Lcom/kakao/kakaolink/KakaoTalkLinkMessageBuilder;Landroid/content/Context;)V

    .line 1631
    const/4 v5, 0x1

    invoke-virtual {p0, v3, v5}, Lcom/netmarble/battlesbgb/UnityActivity;->AddBoolValue(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 1632
    const-string v5, "unityactivity_SendPostMessageToSocial_callback"

    invoke-static {v5, v3}, Lcom/netmarble/battlesbgb/UnityActivity;->UnityTransmission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/kakao/util/KakaoParameterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1642
    .end local v1    # "kakaoLink":Lcom/kakao/kakaolink/KakaoLink;
    .end local v2    # "kakaoTalkLinkMessageBuilder":Lcom/kakao/kakaolink/KakaoTalkLinkMessageBuilder;
    .end local v4    # "text":Ljava/lang/String;
    :goto_0
    return-void

    .line 1634
    :catch_0
    move-exception v0

    .line 1637
    .local v0, "e":Lcom/kakao/util/KakaoParameterException;
    invoke-virtual {v0}, Lcom/kakao/util/KakaoParameterException;->printStackTrace()V

    .line 1639
    const/4 v5, 0x0

    invoke-virtual {p0, v3, v5}, Lcom/netmarble/battlesbgb/UnityActivity;->AddBoolValue(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 1640
    const-string v5, "unityactivity_SendPostMessageToSocial_callback"

    invoke-static {v5, v3}, Lcom/netmarble/battlesbgb/UnityActivity;->UnityTransmission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public SendPostMessageToSocial(ILjava/lang/String;I)V
    .locals 12
    .param p1, "type"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "handleNum"    # I

    .prologue
    const/4 v11, 0x1

    .line 1538
    const/4 v6, 0x0

    .line 1539
    .local v6, "post_type_whatsapp":I
    const/4 v4, 0x1

    .line 1540
    .local v4, "post_type_twitter":I
    const/4 v5, 0x2

    .line 1541
    .local v5, "post_type_wechat":I
    const/4 v3, 0x3

    .line 1542
    .local v3, "post_type_line":I
    const/4 v2, 0x4

    .line 1544
    .local v2, "post_type_kakao":I
    const-string v9, ""

    .line 1545
    .local v9, "url":Ljava/lang/String;
    const-string v8, ""

    .line 1546
    .local v8, "str":Ljava/lang/String;
    invoke-virtual {p0, v8, p3}, Lcom/netmarble/battlesbgb/UnityActivity;->AddIntValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    .line 1548
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1550
    const-string p2, "HELLO WORLD"

    .line 1553
    :cond_0
    if-ne p1, v6, :cond_1

    .line 1555
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 1556
    .local v7, "sendIntent":Landroid/content/Intent;
    const-string v10, "android.intent.action.SEND"

    invoke-virtual {v7, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1557
    const-string v10, "text/plain"

    invoke-virtual {v7, v10}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1558
    sget-object v10, Lcom/netmarble/battlesbgb/UnityActivity;->WhatsAppPackageName:Ljava/lang/String;

    invoke-virtual {v7, v10}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1559
    const-string v10, "android.intent.extra.TEXT"

    invoke-virtual {v7, v10, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1560
    const-string v10, "Share with"

    invoke-static {v7, v10}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/netmarble/battlesbgb/UnityActivity;->startActivity(Landroid/content/Intent;)V

    .line 1562
    invoke-virtual {p0, v8, p1}, Lcom/netmarble/battlesbgb/UnityActivity;->AddIntValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    .line 1563
    invoke-virtual {p0, v8, v11}, Lcom/netmarble/battlesbgb/UnityActivity;->AddBoolValue(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    .line 1564
    const-string v10, "unityactivity_SendPostMessageToSocial_callback"

    invoke-static {v10, v8}, Lcom/netmarble/battlesbgb/UnityActivity;->UnityTransmission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1608
    .end local v7    # "sendIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 1568
    :cond_1
    if-ne p1, v4, :cond_4

    .line 1570
    const-string v9, "twitter://post?text="

    .line 1587
    :cond_2
    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1589
    const-string p2, "Test Message"

    .line 1594
    :cond_3
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v10, "android.intent.action.VIEW"

    invoke-direct {v1, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1595
    .local v1, "i":Landroid/content/Intent;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1596
    invoke-virtual {p0, v1}, Lcom/netmarble/battlesbgb/UnityActivity;->startActivity(Landroid/content/Intent;)V

    .line 1598
    invoke-virtual {p0, v8, p1}, Lcom/netmarble/battlesbgb/UnityActivity;->AddIntValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    .line 1599
    const/4 v10, 0x1

    invoke-virtual {p0, v8, v10}, Lcom/netmarble/battlesbgb/UnityActivity;->AddBoolValue(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    .line 1600
    const-string v10, "unityactivity_SendPostMessageToSocial_callback"

    invoke-static {v10, v8}, Lcom/netmarble/battlesbgb/UnityActivity;->UnityTransmission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1602
    .end local v1    # "i":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 1604
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v8, p1}, Lcom/netmarble/battlesbgb/UnityActivity;->AddIntValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    .line 1605
    const/4 v10, 0x0

    invoke-virtual {p0, v8, v10}, Lcom/netmarble/battlesbgb/UnityActivity;->AddBoolValue(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    .line 1606
    const-string v10, "unityactivity_SendPostMessageToSocial_callback"

    invoke-static {v10, v8}, Lcom/netmarble/battlesbgb/UnityActivity;->UnityTransmission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1572
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    if-ne p1, v5, :cond_5

    .line 1574
    invoke-virtual {p0, p2, p3}, Lcom/netmarble/battlesbgb/UnityActivity;->SendWeChatMessage(Ljava/lang/String;I)V

    goto :goto_0

    .line 1577
    :cond_5
    if-ne p1, v3, :cond_6

    .line 1579
    const-string v9, "line://msg/text/"

    .line 1580
    goto :goto_1

    .line 1581
    :cond_6
    if-ne p1, v2, :cond_2

    .line 1583
    invoke-virtual {p0, p2, p3}, Lcom/netmarble/battlesbgb/UnityActivity;->SendKakaoLink(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public SendWeChatMessage(Ljava/lang/String;I)V
    .locals 5
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "handleNum"    # I

    .prologue
    .line 1647
    const-string v2, ""

    .line 1648
    .local v2, "str":Ljava/lang/String;
    invoke-virtual {p0, v2, p2}, Lcom/netmarble/battlesbgb/UnityActivity;->AddIntValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 1649
    const/4 v4, 0x2

    invoke-virtual {p0, v2, v4}, Lcom/netmarble/battlesbgb/UnityActivity;->AddIntValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 1652
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1654
    const-string p1, "HELLO WORLD"

    .line 1657
    :cond_0
    new-instance v3, Lcom/tencent/mm/sdk/openapi/WXTextObject;

    invoke-direct {v3}, Lcom/tencent/mm/sdk/openapi/WXTextObject;-><init>()V

    .line 1658
    .local v3, "textObj":Lcom/tencent/mm/sdk/openapi/WXTextObject;
    iput-object p1, v3, Lcom/tencent/mm/sdk/openapi/WXTextObject;->text:Ljava/lang/String;

    .line 1660
    new-instance v0, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;

    invoke-direct {v0}, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;-><init>()V

    .line 1661
    .local v0, "msg":Lcom/tencent/mm/sdk/openapi/WXMediaMessage;
    iput-object v3, v0, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;->mediaObject:Lcom/tencent/mm/sdk/openapi/WXMediaMessage$IMediaObject;

    .line 1664
    iput-object p1, v0, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;->description:Ljava/lang/String;

    .line 1666
    new-instance v1, Lcom/tencent/mm/sdk/openapi/SendMessageToWX$Req;

    invoke-direct {v1}, Lcom/tencent/mm/sdk/openapi/SendMessageToWX$Req;-><init>()V

    .line 1667
    .local v1, "req":Lcom/tencent/mm/sdk/openapi/SendMessageToWX$Req;
    const-string v4, "text"

    invoke-direct {p0, v4}, Lcom/netmarble/battlesbgb/UnityActivity;->buildTransaction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/tencent/mm/sdk/openapi/SendMessageToWX$Req;->transaction:Ljava/lang/String;

    .line 1668
    iput-object v0, v1, Lcom/tencent/mm/sdk/openapi/SendMessageToWX$Req;->message:Lcom/tencent/mm/sdk/openapi/WXMediaMessage;

    .line 1669
    const/4 v4, 0x0

    iput v4, v1, Lcom/tencent/mm/sdk/openapi/SendMessageToWX$Req;->scene:I

    .line 1671
    sget-object v4, Lcom/netmarble/battlesbgb/UnityActivity;->mWeixinAPI:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v4, v1}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/sdk/openapi/BaseReq;)Z

    .line 1673
    const/4 v4, 0x1

    invoke-virtual {p0, v2, v4}, Lcom/netmarble/battlesbgb/UnityActivity;->AddBoolValue(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 1674
    const-string v4, "unityactivity_SendPostMessageToSocial_callback"

    invoke-static {v4, v2}, Lcom/netmarble/battlesbgb/UnityActivity;->UnityTransmission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1675
    return-void
.end method

.method protected SetRunParameter(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1685
    const-string v4, ""

    sput-object v4, Lcom/netmarble/battlesbgb/UnityActivity;->mExtraType:Ljava/lang/String;

    .line 1686
    const-string v4, ""

    sput-object v4, Lcom/netmarble/battlesbgb/UnityActivity;->mIntentUrlExtraInfo:Ljava/lang/String;

    .line 1688
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 1689
    .local v3, "uri":Landroid/net/Uri;
    if-nez v3, :cond_1

    .line 1768
    :cond_0
    :goto_0
    return-void

    .line 1694
    :cond_1
    const-string v4, "ExtraType"

    invoke-virtual {v3, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1695
    .local v1, "strExtraType":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v4, ""

    if-eq v1, v4, :cond_0

    .line 1702
    :try_start_0
    const-string v4, "UTF-8"

    invoke-static {v1, v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1710
    const-string v4, " "

    const-string v5, "+"

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1711
    const-string v4, "?"

    const-string v5, "="

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1712
    const-string v4, "/"

    const-string v5, ""

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1714
    if-eqz v1, :cond_0

    const-string v4, ""

    if-eq v1, v4, :cond_0

    .line 1719
    sput-object v1, Lcom/netmarble/battlesbgb/UnityActivity;->mExtraType:Ljava/lang/String;

    .line 1723
    const-string v2, ""

    .line 1724
    .local v2, "strRunRaram":Ljava/lang/String;
    const-string v4, "ROOMINFO"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1726
    const-string v4, "RoomInfo"

    invoke-virtual {v3, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1741
    :cond_2
    :goto_1
    if-eqz v2, :cond_0

    const-string v4, ""

    if-eq v2, v4, :cond_0

    .line 1749
    :try_start_1
    const-string v4, "UTF-8"

    invoke-static {v2, v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 1757
    const-string v4, " "

    const-string v5, "+"

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 1758
    const-string v4, "?"

    const-string v5, "="

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 1760
    if-eqz v2, :cond_0

    const-string v4, ""

    if-eq v2, v4, :cond_0

    .line 1765
    sput-object v2, Lcom/netmarble/battlesbgb/UnityActivity;->mIntentUrlExtraInfo:Ljava/lang/String;

    goto :goto_0

    .line 1704
    .end local v2    # "strRunRaram":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1706
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 1728
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v2    # "strRunRaram":Ljava/lang/String;
    :cond_3
    const-string v4, "CLANINFO"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1730
    const-string v4, "ClanRoomInfo"

    invoke-virtual {v3, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1731
    goto :goto_1

    .line 1732
    :cond_4
    const-string v4, "FRIENDINVITE"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1734
    const-string v4, "FriendInvite"

    invoke-virtual {v3, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1735
    goto :goto_1

    .line 1736
    :cond_5
    const-string v4, "CLANINVITE"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1738
    const-string v4, "ClanInvite"

    invoke-virtual {v3, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 1751
    :catch_1
    move-exception v0

    .line 1753
    .restart local v0    # "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public StartNmssSa(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 937
    iput-object p1, p0, Lcom/netmarble/battlesbgb/UnityActivity;->StartNmssSaText:Ljava/lang/String;

    .line 940
    invoke-static {}, Lnet/netmarble/Session;->getInstance()Lnet/netmarble/Session;

    move-result-object v1

    iput-object v1, p0, Lcom/netmarble/battlesbgb/UnityActivity;->session:Lnet/netmarble/Session;

    .line 944
    const-string v1, "test"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 946
    new-instance v1, Lcom/netmarble/battlesbgb/UnityActivity$4;

    invoke-direct {v1, p0}, Lcom/netmarble/battlesbgb/UnityActivity$4;-><init>(Lcom/netmarble/battlesbgb/UnityActivity;)V

    invoke-virtual {p0, v1}, Lcom/netmarble/battlesbgb/UnityActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 972
    :goto_0
    const-string v0, ""

    .line 973
    .local v0, "str":Ljava/lang/String;
    iget-object v1, p0, Lcom/netmarble/battlesbgb/UnityActivity;->_deviceName:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/netmarble/battlesbgb/UnityActivity;->AddStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 974
    const-string v1, "unityactivity_set_device_name_callback"

    invoke-static {v1, v0}, Lcom/netmarble/battlesbgb/UnityActivity;->UnityTransmission(Ljava/lang/String;Ljava/lang/String;)V

    .line 975
    return-void

    .line 959
    .end local v0    # "str":Ljava/lang/String;
    :cond_0
    new-instance v1, Lcom/netmarble/battlesbgb/UnityActivity$5;

    invoke-direct {v1, p0}, Lcom/netmarble/battlesbgb/UnityActivity$5;-><init>(Lcom/netmarble/battlesbgb/UnityActivity;)V

    invoke-virtual {p0, v1}, Lcom/netmarble/battlesbgb/UnityActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public aOS_getAvailableInternalMemorySize()V
    .locals 11

    .prologue
    .line 1391
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v6

    .line 1392
    .local v6, "path":Ljava/io/File;
    new-instance v7, Landroid/os/StatFs;

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1394
    .local v7, "stat":Landroid/os/StatFs;
    const-wide/16 v4, 0x0

    .line 1395
    .local v4, "blockSize":J
    const-wide/16 v0, 0x0

    .line 1397
    .local v0, "availableBlocks":J
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x12

    if-lt v9, v10, :cond_0

    .line 1399
    invoke-virtual {v7}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v4

    .line 1400
    invoke-virtual {v7}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v0

    .line 1408
    :goto_0
    mul-long v2, v0, v4

    .line 1410
    .local v2, "availableMemorySize":J
    const-string v8, ""

    .line 1411
    .local v8, "str":Ljava/lang/String;
    invoke-virtual {p0, v8, v2, v3}, Lcom/netmarble/battlesbgb/UnityActivity;->AddLLongValue(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v8

    .line 1412
    const-string v9, "unityactivity_set_available_memorysize_callback"

    invoke-static {v9, v8}, Lcom/netmarble/battlesbgb/UnityActivity;->UnityTransmission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1413
    return-void

    .line 1404
    .end local v2    # "availableMemorySize":J
    .end local v8    # "str":Ljava/lang/String;
    :cond_0
    invoke-virtual {v7}, Landroid/os/StatFs;->getBlockSize()I

    move-result v9

    int-to-long v4, v9

    .line 1405
    invoke-virtual {v7}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v9

    int-to-long v0, v9

    goto :goto_0
.end method

.method public getIsInstalledSocial(II)V
    .locals 8
    .param p1, "type"    # I
    .param p2, "handleNum"    # I

    .prologue
    .line 1457
    const/4 v4, 0x0

    .line 1458
    .local v4, "post_type_whatsapp":I
    const/4 v2, 0x1

    .line 1459
    .local v2, "post_type_twitter":I
    const/4 v3, 0x2

    .line 1460
    .local v3, "post_type_wechat":I
    const/4 v1, 0x3

    .line 1461
    .local v1, "post_type_line":I
    const/4 v0, 0x4

    .line 1463
    .local v0, "post_type_kakao":I
    const/4 v5, 0x0

    .line 1464
    .local v5, "result":Z
    if-ne p1, v4, :cond_2

    .line 1466
    const-string v7, "net.whatsapp.WhatsApp"

    invoke-virtual {p0, v7}, Lcom/netmarble/battlesbgb/UnityActivity;->isInstalled(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1469
    const-string v7, "net.whatsapp.WhatsApp"

    sput-object v7, Lcom/netmarble/battlesbgb/UnityActivity;->WhatsAppPackageName:Ljava/lang/String;

    .line 1470
    const/4 v5, 0x1

    .line 1472
    :cond_0
    const-string v7, "com.whatsapp"

    invoke-virtual {p0, v7}, Lcom/netmarble/battlesbgb/UnityActivity;->isInstalled(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1475
    const-string v7, "com.whatsapp"

    sput-object v7, Lcom/netmarble/battlesbgb/UnityActivity;->WhatsAppPackageName:Ljava/lang/String;

    .line 1476
    const/4 v5, 0x1

    .line 1512
    :cond_1
    :goto_0
    const-string v6, ""

    .line 1513
    .local v6, "str":Ljava/lang/String;
    invoke-virtual {p0, v6, p2}, Lcom/netmarble/battlesbgb/UnityActivity;->AddIntValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 1514
    invoke-virtual {p0, v6, v5}, Lcom/netmarble/battlesbgb/UnityActivity;->AddBoolValue(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    .line 1515
    invoke-virtual {p0, v6, p1}, Lcom/netmarble/battlesbgb/UnityActivity;->AddIntValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 1516
    const-string v7, "unityactivity_GetIsInstalledSocial_callback"

    invoke-static {v7, v6}, Lcom/netmarble/battlesbgb/UnityActivity;->UnityTransmission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1517
    return-void

    .line 1479
    .end local v6    # "str":Ljava/lang/String;
    :cond_2
    if-ne p1, v2, :cond_3

    .line 1481
    const-string v7, "com.twitter.android"

    invoke-virtual {p0, v7}, Lcom/netmarble/battlesbgb/UnityActivity;->isInstalled(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1484
    const/4 v5, 0x1

    .line 1486
    goto :goto_0

    .line 1487
    :cond_3
    if-ne p1, v3, :cond_4

    .line 1489
    const-string v7, "com.tencent.mm"

    invoke-virtual {p0, v7}, Lcom/netmarble/battlesbgb/UnityActivity;->isInstalled(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1492
    const/4 v5, 0x1

    .line 1494
    goto :goto_0

    .line 1495
    :cond_4
    if-ne p1, v1, :cond_5

    .line 1497
    const-string v7, "jp.naver.line.android"

    invoke-virtual {p0, v7}, Lcom/netmarble/battlesbgb/UnityActivity;->isInstalled(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1500
    const/4 v5, 0x1

    .line 1502
    goto :goto_0

    .line 1503
    :cond_5
    if-ne p1, v0, :cond_1

    .line 1505
    const-string v7, "com.kakao.talk"

    invoke-virtual {p0, v7}, Lcom/netmarble/battlesbgb/UnityActivity;->isInstalled(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1508
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public isInstalled(Ljava/lang/String;)Z
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 1522
    invoke-virtual {p0}, Lcom/netmarble/battlesbgb/UnityActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1526
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1531
    :goto_0
    return v2

    .line 1529
    :catch_0
    move-exception v0

    .line 1531
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 370
    invoke-super {p0, p1, p2, p3}, Lcom/unity3d/player/UnityPlayerActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 373
    iget-object v1, p0, Lcom/netmarble/battlesbgb/UnityActivity;->session:Lnet/netmarble/Session;

    if-eqz v1, :cond_0

    .line 375
    iget-object v1, p0, Lcom/netmarble/battlesbgb/UnityActivity;->session:Lnet/netmarble/Session;

    invoke-virtual {v1, p1, p2, p3}, Lnet/netmarble/Session;->onActivityResult(IILandroid/content/Intent;)V

    .line 378
    :cond_0
    const/16 v1, 0x2711

    if-ne p2, v1, :cond_2

    .line 380
    invoke-static {}, Lnet/netmarble/GooglePlus;->getGoogleAPIClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 383
    invoke-static {}, Lnet/netmarble/GooglePlus;->getGoogleAPIClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    .line 390
    :cond_1
    const-string v0, ""

    .line 391
    .local v0, "str":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/netmarble/battlesbgb/UnityActivity;->AddIntValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 392
    const-string v1, "unityactivity_googlelogout_callback"

    invoke-static {v1, v0}, Lcom/netmarble/battlesbgb/UnityActivity;->UnityTransmission(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    .end local v0    # "str":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 558
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 560
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    .line 561
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/netmarble/battlesbgb/UnityActivity;->setRequestedOrientation(I)V

    .line 566
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/unity3d/player/UnityPlayerActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 568
    const-string v0, "unity"

    const-string v1, "onConfigurationChanged onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    return-void

    .line 563
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/netmarble/battlesbgb/UnityActivity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v3, 0x400

    .line 110
    invoke-super {p0, p1}, Lcom/unity3d/player/UnityPlayerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 112
    invoke-virtual {p0}, Lcom/netmarble/battlesbgb/UnityActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 115
    invoke-virtual {p0}, Lcom/netmarble/battlesbgb/UnityActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 116
    const v2, 0x680080

    .line 115
    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 123
    :try_start_0
    invoke-virtual {p0}, Lcom/netmarble/battlesbgb/UnityActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gcm/GCMRegistrar;->checkDevice(Landroid/content/Context;)V

    .line 124
    invoke-virtual {p0}, Lcom/netmarble/battlesbgb/UnityActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gcm/GCMRegistrar;->checkManifest(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :goto_0
    invoke-virtual {p0}, Lcom/netmarble/battlesbgb/UnityActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/netmarble/battlesbgb/UnityActivity;->growMobileAppKey:Ljava/lang/String;

    sget-object v3, Lcom/netmarble/battlesbgb/UnityActivity;->growMobileAppSecret:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lgrowmobile/GrowMobileSDK;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0}, Lcom/netmarble/battlesbgb/UnityActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/netmarble/battlesbgb/UnityActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 142
    invoke-virtual {p0}, Lcom/netmarble/battlesbgb/UnityActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 143
    sget-object v2, Lcom/netmarble/battlesbgb/UnityActivity;->mat_advertiser_ID:Ljava/lang/String;

    .line 144
    sget-object v3, Lcom/netmarble/battlesbgb/UnityActivity;->mat_conversion_Key:Ljava/lang/String;

    .line 142
    invoke-static {v1, v2, v3}, Lcom/mobileapptracker/MobileAppTracker;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/mobileapptracker/MobileAppTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/netmarble/battlesbgb/UnityActivity;->mobileAppTracker:Lcom/mobileapptracker/MobileAppTracker;

    .line 146
    const-string v1, "clipboard"

    invoke-virtual {p0, v1}, Lcom/netmarble/battlesbgb/UnityActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/ClipboardManager;

    iput-object v1, p0, Lcom/netmarble/battlesbgb/UnityActivity;->clipboard:Landroid/text/ClipboardManager;

    .line 148
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/netmarble/battlesbgb/UnityActivity;->onRejectPermission:Z

    .line 150
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 151
    invoke-virtual {p0}, Lcom/netmarble/battlesbgb/UnityActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 152
    new-instance v2, Lcom/netmarble/battlesbgb/UnityActivity$3;

    invoke-direct {v2, p0}, Lcom/netmarble/battlesbgb/UnityActivity$3;-><init>(Lcom/netmarble/battlesbgb/UnityActivity;)V

    .line 151
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 164
    :cond_0
    const-string v1, "wx32f6da3975b26514"

    invoke-static {p0, v1}, Lcom/tencent/mm/sdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mm/sdk/openapi/IWXAPI;

    move-result-object v1

    sput-object v1, Lcom/netmarble/battlesbgb/UnityActivity;->mWeixinAPI:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    .line 165
    sget-object v1, Lcom/netmarble/battlesbgb/UnityActivity;->mWeixinAPI:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    const-string v2, "wx32f6da3975b26514"

    invoke-interface {v1, v2}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->registerApp(Ljava/lang/String;)Z

    .line 168
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v1, p0, Lcom/netmarble/battlesbgb/UnityActivity;->_deviceName:Ljava/lang/String;

    .line 169
    return-void

    .line 126
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "unity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "GCMRegistrar Exception : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    .line 536
    invoke-super {p0}, Lcom/unity3d/player/UnityPlayerActivity;->onDestroy()V

    .line 538
    iget-object v1, p0, Lcom/netmarble/battlesbgb/UnityActivity;->session:Lnet/netmarble/Session;

    if-eqz v1, :cond_0

    .line 540
    iget-object v1, p0, Lcom/netmarble/battlesbgb/UnityActivity;->session:Lnet/netmarble/Session;

    invoke-virtual {v1}, Lnet/netmarble/Session;->onDestroy()V

    .line 545
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/netmarble/battlesbgb/UnityActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gcm/GCMRegistrar;->onDestroy(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 552
    :goto_0
    const-string v1, "unity"

    const-string v2, "onDestroy onDestroy onDestroy onDestroy"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    return-void

    .line 547
    :catch_0
    move-exception v0

    .line 549
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "unity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "GCMRegistrar Exception : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 831
    invoke-super {p0, p1}, Lcom/unity3d/player/UnityPlayerActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 833
    invoke-virtual {p0, p1}, Lcom/netmarble/battlesbgb/UnityActivity;->SetRunParameter(Landroid/content/Intent;)V

    .line 835
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 837
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 839
    const-string v4, "extras"

    invoke-virtual {v0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 842
    .local v2, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 852
    .end local v2    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_1
    return-void

    .line 842
    .restart local v2    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 844
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 845
    .local v3, "value":Ljava/lang/Object;
    const-string v5, "extras"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "key : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", value : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 850
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3    # "value":Ljava/lang/Object;
    :cond_1
    const-string v4, "extras"

    const-string v5, "extras is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 505
    invoke-super {p0}, Lcom/unity3d/player/UnityPlayerActivity;->onPause()V

    .line 507
    iget-object v0, p0, Lcom/netmarble/battlesbgb/UnityActivity;->session:Lnet/netmarble/Session;

    if-eqz v0, :cond_0

    .line 509
    iget-object v0, p0, Lcom/netmarble/battlesbgb/UnityActivity;->session:Lnet/netmarble/Session;

    invoke-virtual {v0}, Lnet/netmarble/Session;->onPause()V

    .line 513
    :cond_0

    const-string v0, "unity"

    const-string v1, "onPause onPause onPause onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 8
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 1032
    if-eq v6, p1, :cond_0

    if-ne v7, p1, :cond_3

    .line 1035
    :cond_0
    array-length v5, p3

    if-lez v5, :cond_2

    const/4 v5, 0x0

    aget v5, p3, v5

    if-nez v5, :cond_2

    .line 1039
    const-string v4, ""

    .line 1040
    .local v4, "str":Ljava/lang/String;
    const-string v5, "YES"

    invoke-virtual {p0, v4, v5}, Lcom/netmarble/battlesbgb/UnityActivity;->AddStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1041
    const-string v5, "unityactivity_set_google_permission_callback"

    invoke-static {v5, v4}, Lcom/netmarble/battlesbgb/UnityActivity;->UnityTransmission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1042
    if-ne v7, p1, :cond_1

    .line 1043
    const-string v5, "unityactivity_proc_google_permission_callback"

    invoke-static {v5, v4}, Lcom/netmarble/battlesbgb/UnityActivity;->UnityTransmission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1121
    .end local v4    # "str":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 1049
    :cond_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1050
    .local v1, "alert_confirm":Landroid/app/AlertDialog$Builder;
    iget-object v5, p0, Lcom/netmarble/battlesbgb/UnityActivity;->requestPermissionRationale:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/netmarble/battlesbgb/UnityActivity;->_strOK:Ljava/lang/String;

    .line 1051
    new-instance v7, Lcom/netmarble/battlesbgb/UnityActivity$6;

    invoke-direct {v7, p0}, Lcom/netmarble/battlesbgb/UnityActivity$6;-><init>(Lcom/netmarble/battlesbgb/UnityActivity;)V

    .line 1050
    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 1059
    new-instance v6, Lcom/netmarble/battlesbgb/UnityActivity$7;

    invoke-direct {v6, p0}, Lcom/netmarble/battlesbgb/UnityActivity$7;-><init>(Lcom/netmarble/battlesbgb/UnityActivity;)V

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 1069
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1070
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 1073
    .end local v0    # "alert":Landroid/app/AlertDialog;
    .end local v1    # "alert_confirm":Landroid/app/AlertDialog$Builder;
    :cond_3
    const/4 v5, 0x3

    if-ne v5, p1, :cond_1

    .line 1075
    const/4 v3, 0x0

    .line 1078
    .local v3, "onGranted":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v5, p3

    if-lt v2, v5, :cond_4

    .line 1084
    if-eqz v3, :cond_6

    .line 1088
    const-string v4, ""

    .line 1089
    .restart local v4    # "str":Ljava/lang/String;
    const-string v5, "YES"

    invoke-virtual {p0, v4, v5}, Lcom/netmarble/battlesbgb/UnityActivity;->AddStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1090
    const-string v5, "unityactivity_set_everyplay_permission_callback"

    invoke-static {v5, v4}, Lcom/netmarble/battlesbgb/UnityActivity;->UnityTransmission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1091
    const-string v5, "unityactivity_proc_everyplay_permission_outgame_callback"

    invoke-static {v5, v4}, Lcom/netmarble/battlesbgb/UnityActivity;->UnityTransmission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1080
    .end local v4    # "str":Ljava/lang/String;
    :cond_4
    const/4 v3, 0x0

    .line 1081
    aget v5, p3, v2

    if-nez v5, :cond_5

    const/4 v3, 0x1

    .line 1078
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1097
    :cond_6
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1098
    .restart local v1    # "alert_confirm":Landroid/app/AlertDialog$Builder;
    iget-object v5, p0, Lcom/netmarble/battlesbgb/UnityActivity;->requestPermissionRationale:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/netmarble/battlesbgb/UnityActivity;->_strOK:Ljava/lang/String;

    .line 1099
    new-instance v7, Lcom/netmarble/battlesbgb/UnityActivity$8;

    invoke-direct {v7, p0}, Lcom/netmarble/battlesbgb/UnityActivity$8;-><init>(Lcom/netmarble/battlesbgb/UnityActivity;)V

    .line 1098
    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 1107
    new-instance v6, Lcom/netmarble/battlesbgb/UnityActivity$9;

    invoke-direct {v6, p0}, Lcom/netmarble/battlesbgb/UnityActivity$9;-><init>(Lcom/netmarble/battlesbgb/UnityActivity;)V

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 1117
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1118
    .restart local v0    # "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 468
    invoke-super {p0, p1}, Lcom/unity3d/player/UnityPlayerActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 471
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 482
    invoke-super {p0}, Lcom/unity3d/player/UnityPlayerActivity;->onResume()V

    .line 484
    iget-object v0, p0, Lcom/netmarble/battlesbgb/UnityActivity;->session:Lnet/netmarble/Session;

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, p0, Lcom/netmarble/battlesbgb/UnityActivity;->session:Lnet/netmarble/Session;

    invoke-virtual {v0}, Lnet/netmarble/Session;->onResume()V

    .line 490
    :cond_0
    
    sget-object v0, Lcom/netmarble/battlesbgb/UnityActivity;->facebookAppID:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/facebook/AppEventsLogger;->activateApp(Landroid/content/Context;Ljava/lang/String;)V

    .line 497
    iget-object v0, p0, Lcom/netmarble/battlesbgb/UnityActivity;->mobileAppTracker:Lcom/mobileapptracker/MobileAppTracker;

    invoke-virtual {v0, p0}, Lcom/mobileapptracker/MobileAppTracker;->setReferralSources(Landroid/app/Activity;)V

    .line 498
    iget-object v0, p0, Lcom/netmarble/battlesbgb/UnityActivity;->mobileAppTracker:Lcom/mobileapptracker/MobileAppTracker;

    invoke-virtual {v0}, Lcom/mobileapptracker/MobileAppTracker;->measureSession()V

    .line 500
    const-string v0, "unity"

    const-string v1, "onResume onResume onResume onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 475
    invoke-super {p0, p1}, Lcom/unity3d/player/UnityPlayerActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 478
    return-void
.end method

.method protected onStart()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 399
    invoke-virtual {p0}, Lcom/netmarble/battlesbgb/UnityActivity;->getRequestedOrientation()I

    move-result v3

    if-eq v3, v6, :cond_0

    .line 401
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-lt v3, v4, :cond_2

    .line 402
    const/4 v3, 0x6

    invoke-virtual {p0, v3}, Lcom/netmarble/battlesbgb/UnityActivity;->setRequestedOrientation(I)V

    .line 407
    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/unity3d/player/UnityPlayerActivity;->onStart()V

    .line 409
    iget-boolean v3, p0, Lcom/netmarble/battlesbgb/UnityActivity;->onRejectPermission:Z

    if-eqz v3, :cond_1

    .line 411
    new-array v1, v6, [I

    .line 413
    .local v1, "rateChek":[I
    iput-boolean v5, p0, Lcom/netmarble/battlesbgb/UnityActivity;->onRejectPermission:Z

    .line 414
    iget v3, p0, Lcom/netmarble/battlesbgb/UnityActivity;->permissionType:I

    if-ne v3, v7, :cond_4

    .line 416
    sget-object v3, Lcom/netmarble/battlesbgb/UnityActivity;->PERMISSIONS_GOOGLE:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-static {p0, v3}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_3

    .line 418
    invoke-direct {p0}, Lcom/netmarble/battlesbgb/UnityActivity;->waringRejectPermission_google()V

    .line 463
    .end local v1    # "rateChek":[I
    :cond_1
    :goto_1
    invoke-static {}, Lgrowmobile/GrowMobileSDK;->reportOpen()V

    .line 464
    return-void

    .line 404
    :cond_2
    invoke-virtual {p0, v5}, Lcom/netmarble/battlesbgb/UnityActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 422
    .restart local v1    # "rateChek":[I
    :cond_3
    const-string v2, ""

    .line 423
    .local v2, "str":Ljava/lang/String;
    const-string v3, "YES"

    invoke-virtual {p0, v2, v3}, Lcom/netmarble/battlesbgb/UnityActivity;->AddStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 424
    const-string v3, "unityactivity_set_google_permission_callback"

    invoke-static {v3, v2}, Lcom/netmarble/battlesbgb/UnityActivity;->UnityTransmission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 427
    .end local v2    # "str":Ljava/lang/String;
    :cond_4
    iget v3, p0, Lcom/netmarble/battlesbgb/UnityActivity;->permissionType:I

    if-ne v3, v6, :cond_6

    .line 429
    sget-object v3, Lcom/netmarble/battlesbgb/UnityActivity;->PERMISSIONS_GOOGLE:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-static {p0, v3}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_5

    .line 431
    invoke-direct {p0}, Lcom/netmarble/battlesbgb/UnityActivity;->waringRejectPermission_google()V

    goto :goto_1

    .line 435
    :cond_5
    const-string v2, ""

    .line 436
    .restart local v2    # "str":Ljava/lang/String;
    const-string v3, "YES"

    invoke-virtual {p0, v2, v3}, Lcom/netmarble/battlesbgb/UnityActivity;->AddStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 437
    const-string v3, "unityactivity_set_google_permission_callback"

    invoke-static {v3, v2}, Lcom/netmarble/battlesbgb/UnityActivity;->UnityTransmission(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    const-string v3, "unityactivity_proc_google_permission_callback"

    invoke-static {v3, v2}, Lcom/netmarble/battlesbgb/UnityActivity;->UnityTransmission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 442
    .end local v2    # "str":Ljava/lang/String;
    :cond_6
    iget v3, p0, Lcom/netmarble/battlesbgb/UnityActivity;->permissionType:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 444
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-lt v0, v6, :cond_8

    .line 449
    aget v3, v1, v5

    if-nez v3, :cond_7

    aget v3, v1, v7

    if-eqz v3, :cond_1

    .line 452
    :cond_7
    invoke-direct {p0}, Lcom/netmarble/battlesbgb/UnityActivity;->waringRejectPermission_everyplay()V

    goto :goto_1

    .line 446
    :cond_8
    sget-object v3, Lcom/netmarble/battlesbgb/UnityActivity;->PERMISSIONS_EVERUPLAY:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {p0, v3}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v0

    .line 444
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 523
    invoke-super {p0}, Lcom/unity3d/player/UnityPlayerActivity;->onStop()V

    .line 525
    iget-object v0, p0, Lcom/netmarble/battlesbgb/UnityActivity;->session:Lnet/netmarble/Session;

    if-eqz v0, :cond_0

    .line 527
    iget-object v0, p0, Lcom/netmarble/battlesbgb/UnityActivity;->session:Lnet/netmarble/Session;

    invoke-virtual {v0}, Lnet/netmarble/Session;->onStop()V

    .line 530
    :cond_0
    const-string v0, "unity"

    const-string v1, "onStop onStop onStop onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4
    .param p1, "hasFocus"    # Z

    .prologue
    .line 349
    if-eqz p1, :cond_0

    .line 350
    iget-object v0, p0, Lcom/netmarble/battlesbgb/UnityActivity;->mRestoreImmersiveModeHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netmarble/battlesbgb/UnityActivity;->restoreImmersiveModeRunnable:Ljava/lang/Runnable;

    sget v2, Lcom/netmarble/battlesbgb/UnityActivity;->IMMERSIVEMODE_DELAY:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 353
    :cond_0
    invoke-virtual {p0}, Lcom/netmarble/battlesbgb/UnityActivity;->getRequestedOrientation()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 355
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_2

    .line 356
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/netmarble/battlesbgb/UnityActivity;->setRequestedOrientation(I)V

    .line 361
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/unity3d/player/UnityPlayerActivity;->onWindowFocusChanged(Z)V

    .line 364
    return-void

    .line 358
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/netmarble/battlesbgb/UnityActivity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method public requestEveryPlayPermissions_ingame(Ljava/lang/String;)V
    .locals 5
    .param p1, "strNotice"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x2

    .line 1187
    new-array v1, v4, [I

    .line 1189
    .local v1, "rateChek":[I
    iput-object p1, p0, Lcom/netmarble/battlesbgb/UnityActivity;->requestPermissionNotice:Ljava/lang/String;

    .line 1191
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v4, :cond_1

    .line 1197
    const/4 v3, 0x0

    aget v3, v1, v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    aget v3, v1, v3

    if-eqz v3, :cond_2

    .line 1200
    :cond_0
    new-instance v3, Lcom/netmarble/battlesbgb/UnityActivity$10;

    invoke-direct {v3, p0}, Lcom/netmarble/battlesbgb/UnityActivity$10;-><init>(Lcom/netmarble/battlesbgb/UnityActivity;)V

    invoke-virtual {p0, v3}, Lcom/netmarble/battlesbgb/UnityActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1216
    :goto_1
    return-void

    .line 1193
    :cond_1
    sget-object v3, Lcom/netmarble/battlesbgb/UnityActivity;->PERMISSIONS_EVERUPLAY:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {p0, v3}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v0

    .line 1191
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1212
    :cond_2
    const-string v2, ""

    .line 1213
    .local v2, "str":Ljava/lang/String;
    const-string v3, "YES"

    invoke-virtual {p0, v2, v3}, Lcom/netmarble/battlesbgb/UnityActivity;->AddStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1214
    const-string v3, "unityactivity_proc_everyplay_permission_ingame_callback"

    invoke-static {v3, v2}, Lcom/netmarble/battlesbgb/UnityActivity;->UnityTransmission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public requestEveryPlayPermissions_outgame(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "strNotice"    # Ljava/lang/String;
    .param p2, "strRationale"    # Ljava/lang/String;
    .param p3, "strDenied"    # Ljava/lang/String;
    .param p4, "strOK"    # Ljava/lang/String;
    .param p5, "strCancel"    # Ljava/lang/String;
    .param p6, "strToastMsg"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x2

    .line 1220
    new-array v2, v8, [I

    .line 1221
    .local v2, "rateChek":[I
    const/4 v3, 0x0

    .line 1222
    .local v3, "rejectCount":I
    const/4 v1, 0x0

    .line 1224
    .local v1, "idx":I
    iput-object p2, p0, Lcom/netmarble/battlesbgb/UnityActivity;->requestPermissionRationale:Ljava/lang/String;

    .line 1225
    iput-object p3, p0, Lcom/netmarble/battlesbgb/UnityActivity;->requestPermissionDenied:Ljava/lang/String;

    .line 1226
    iput-object p1, p0, Lcom/netmarble/battlesbgb/UnityActivity;->requestPermissionNotice:Ljava/lang/String;

    .line 1227
    iput-object p6, p0, Lcom/netmarble/battlesbgb/UnityActivity;->requestPermissionToastMsg:Ljava/lang/String;

    .line 1228
    iput-object p4, p0, Lcom/netmarble/battlesbgb/UnityActivity;->_strOK:Ljava/lang/String;

    .line 1229
    iput-object p5, p0, Lcom/netmarble/battlesbgb/UnityActivity;->_strCancel:Ljava/lang/String;

    .line 1232
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v8, :cond_1

    .line 1240
    const-string v5, "Permissions"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Reject Count : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1242
    new-array v5, v3, [Ljava/lang/String;

    sput-object v5, Lcom/netmarble/battlesbgb/UnityActivity;->REJECT_PERMISSION:[Ljava/lang/String;

    .line 1244
    const/4 v0, 0x0

    :goto_1
    if-lt v0, v8, :cond_3

    .line 1259
    const/4 v5, 0x0

    aget v5, v2, v5

    if-nez v5, :cond_0

    const/4 v5, 0x1

    aget v5, v2, v5

    if-eqz v5, :cond_5

    .line 1261
    :cond_0
    new-instance v5, Lcom/netmarble/battlesbgb/UnityActivity$11;

    invoke-direct {v5, p0}, Lcom/netmarble/battlesbgb/UnityActivity$11;-><init>(Lcom/netmarble/battlesbgb/UnityActivity;)V

    invoke-virtual {p0, v5}, Lcom/netmarble/battlesbgb/UnityActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1276
    :goto_2
    return-void

    .line 1234
    :cond_1
    sget-object v5, Lcom/netmarble/battlesbgb/UnityActivity;->PERMISSIONS_EVERUPLAY:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-static {p0, v5}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    aput v5, v2, v0

    .line 1235
    aget v5, v2, v0

    if-eqz v5, :cond_2

    add-int/lit8 v3, v3, 0x1

    .line 1237
    :cond_2
    const-string v5, "Permissions"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Permission State ["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v2, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1232
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1246
    :cond_3
    aget v5, v2, v0

    if-eqz v5, :cond_4

    .line 1248
    if-ge v1, v3, :cond_4

    .line 1250
    sget-object v5, Lcom/netmarble/battlesbgb/UnityActivity;->REJECT_PERMISSION:[Ljava/lang/String;

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6}, Ljava/lang/String;-><init>()V

    aput-object v6, v5, v1

    .line 1251
    sget-object v5, Lcom/netmarble/battlesbgb/UnityActivity;->REJECT_PERMISSION:[Ljava/lang/String;

    sget-object v6, Lcom/netmarble/battlesbgb/UnityActivity;->PERMISSIONS_EVERUPLAY:[Ljava/lang/String;

    aget-object v6, v6, v0

    aput-object v6, v5, v1

    .line 1252
    const-string v5, "Permissions"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Reject Permission ["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/netmarble/battlesbgb/UnityActivity;->REJECT_PERMISSION:[Ljava/lang/String;

    aget-object v7, v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    add-int/lit8 v1, v1, 0x1

    .line 1244
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 1272
    :cond_5
    const-string v4, ""

    .line 1273
    .local v4, "str":Ljava/lang/String;
    const-string v5, "YES"

    invoke-virtual {p0, v4, v5}, Lcom/netmarble/battlesbgb/UnityActivity;->AddStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1274
    const-string v5, "unityactivity_set_everyplay_permission_callback"

    invoke-static {v5, v4}, Lcom/netmarble/battlesbgb/UnityActivity;->UnityTransmission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public requestGooglelPermissions_frist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "strRationale"    # Ljava/lang/String;
    .param p2, "strDenied"    # Ljava/lang/String;
    .param p3, "strOK"    # Ljava/lang/String;
    .param p4, "strCancel"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1129
    iput-object p1, p0, Lcom/netmarble/battlesbgb/UnityActivity;->requestPermissionRationale:Ljava/lang/String;

    .line 1130
    iput-object p2, p0, Lcom/netmarble/battlesbgb/UnityActivity;->requestPermissionDenied:Ljava/lang/String;

    .line 1132
    iput-object p3, p0, Lcom/netmarble/battlesbgb/UnityActivity;->_strOK:Ljava/lang/String;

    .line 1133
    iput-object p4, p0, Lcom/netmarble/battlesbgb/UnityActivity;->_strCancel:Ljava/lang/String;

    .line 1137
    sget-object v3, Lcom/netmarble/battlesbgb/UnityActivity;->PERMISSIONS_GOOGLE:[Ljava/lang/String;

    aget-object v3, v3, v4

    invoke-static {p0, v3}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 1139
    .local v0, "rateChek":I
    if-eqz v0, :cond_1

    .line 1143
    sget-object v3, Lcom/netmarble/battlesbgb/UnityActivity;->PERMISSIONS_GOOGLE:[Ljava/lang/String;

    aget-object v3, v3, v4

    invoke-static {p0, v3}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v1

    .line 1146
    .local v1, "rateShouldShow":Z
    if-nez v1, :cond_0

    .line 1149
    iput v5, p0, Lcom/netmarble/battlesbgb/UnityActivity;->permissionType:I

    .line 1150
    sget-object v3, Lcom/netmarble/battlesbgb/UnityActivity;->PERMISSIONS_GOOGLE:[Ljava/lang/String;

    invoke-static {p0, v3, v5}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 1160
    .end local v1    # "rateShouldShow":Z
    :cond_0
    :goto_0
    return-void

    .line 1155
    :cond_1
    const-string v2, ""

    .line 1156
    .local v2, "str":Ljava/lang/String;
    const-string v3, "YES"

    invoke-virtual {p0, v2, v3}, Lcom/netmarble/battlesbgb/UnityActivity;->AddStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1157
    const-string v3, "unityactivity_set_google_permission_callback"

    invoke-static {v3, v2}, Lcom/netmarble/battlesbgb/UnityActivity;->UnityTransmission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public requestGooglelPermissions_retryt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "strRationale"    # Ljava/lang/String;
    .param p2, "strDenied"    # Ljava/lang/String;
    .param p3, "strOK"    # Ljava/lang/String;
    .param p4, "strCancel"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x2

    .line 1166
    iput-object p1, p0, Lcom/netmarble/battlesbgb/UnityActivity;->requestPermissionRationale:Ljava/lang/String;

    .line 1167
    iput-object p2, p0, Lcom/netmarble/battlesbgb/UnityActivity;->requestPermissionDenied:Ljava/lang/String;

    .line 1169
    iput-object p3, p0, Lcom/netmarble/battlesbgb/UnityActivity;->_strOK:Ljava/lang/String;

    .line 1170
    iput-object p4, p0, Lcom/netmarble/battlesbgb/UnityActivity;->_strCancel:Ljava/lang/String;

    .line 1174
    sget-object v1, Lcom/netmarble/battlesbgb/UnityActivity;->PERMISSIONS_GOOGLE:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {p0, v1}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 1176
    .local v0, "rateChek":I
    if-eqz v0, :cond_0

    .line 1179
    iput v3, p0, Lcom/netmarble/battlesbgb/UnityActivity;->permissionType:I

    .line 1180
    sget-object v1, Lcom/netmarble/battlesbgb/UnityActivity;->PERMISSIONS_GOOGLE:[Ljava/lang/String;

    invoke-static {p0, v1, v3}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 1182
    :cond_0
    return-void
.end method
