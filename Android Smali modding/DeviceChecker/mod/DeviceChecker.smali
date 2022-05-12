.class public final Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker;
.super Ljava/lang/Object;
.source "DeviceChecker.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# static fields
.field private static final ANDY_FILES:[Ljava/lang/String;

.field private static final DEVICE_IDS:[Ljava/lang/String;

.field private static final GENY_FILES:[Ljava/lang/String;

.field private static final IMSI_IDS:[Ljava/lang/String;

.field private static final IP:Ljava/lang/String; = "10.0.2.15"

.field private static final LOG_TAG:Ljava/lang/String; = "BlueLIB"

.field private static final MIN_PROPERTIES_THRESHOLD:I = 0x5

.field private static final NOX_FILES:[Ljava/lang/String;

.field private static final PHONE_NUMBERS:[Ljava/lang/String;

.field private static final PIPES:[Ljava/lang/String;

.field private static final PROPERTIES:[Llib/bluegames/com/clubaudition/devicechecker/Property;

.field private static final QEMU_DRIVERS:[Ljava/lang/String;

.field private static final X86_FILES:[Ljava/lang/String;

.field private static instance:Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker;

.field private static mEmulatorDetector:Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private isCheckPackage:Z

.field private isDebug:Z

.field private isTelephony:Z

.field private final mContext:Landroid/content/Context;

.field private mListPackageName:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mObjectName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    return-void
.end method

.method private OnCallBackForUnityMsg(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "pMethod"    # Ljava/lang/String;
    .param p2, "pMsg"    # Ljava/lang/String;

    .prologue
    .line 490
    iget-object v0, p0, Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker;->mObjectName:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    return-void
.end method

.method static synthetic access$000(Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker;)Z
    .locals 1
    .param p0, "x0"    # Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker;

    .prologue
    .line 48
    invoke-direct {p0}, Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker;->detect()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker;->OnCallBackForUnityMsg(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker;)Z
    .locals 1
    .param p0, "x0"    # Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker;

    .prologue
    .line 48
    invoke-direct {p0}, Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker;->checkRoot()Z

    move-result v0

    return v0
.end method

.method private checkAdvanced()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private checkBasic()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private checkDeviceId()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private checkFiles([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private checkImsi()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private checkIp()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private checkOperatorNameAndroid()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private checkPackageName()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private checkPhoneNumber()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private checkQEmuDrivers()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private checkQEmuProps()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private checkRoot()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private checkTelephony()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private detect()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static getDeviceInfo()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public static getInstance()Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker;
    .locals 1

    .prologue
    .line 135
    sget-object v0, Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker;->instance:Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker;

    if-nez v0, :cond_0

    new-instance v0, Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker;

    invoke-direct {v0}, Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker;->instance:Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker;

    goto :goto_0
.end method

.method private getProp(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method private isSupportTelePhony()Z
    .locals 4

    .prologue
    .line 466
    iget-object v2, p0, Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 467
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    const-string v2, "android.hardware.telephony"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 468
    .local v0, "isSupport":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Supported TelePhony: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker;->log(Ljava/lang/String;)V

    .line 469
    return v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 473
    iget-boolean v0, p0, Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker;->isDebug:Z

    if-eqz v0, :cond_0

    .line 474
    const-string v0, "BlueLIB"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    :cond_0
    return-void
.end method


# virtual methods
.method public CheckRooting(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public CheckRunningApp(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public DetectDevice(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public GetRunningApp()Ljava/lang/String;
    .locals 0

    return-void
.end method

.method public Init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "pDebug"    # Ljava/lang/String;
    .param p2, "pCheckTelephone"    # Ljava/lang/String;
    .param p3, "pCheckPackage"    # Ljava/lang/String;
    .param p4, "pCallObj"    # Ljava/lang/String;

    .prologue
    .line 146
    iput-object p4, p0, Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker;->mObjectName:Ljava/lang/String;

    .line 147
    const-string v0, "y"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker;->isDebug:Z

    .line 148
    const-string v0, "y"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker;->isTelephony:Z

    .line 149
    const-string v0, "y"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker;->isCheckPackage:Z

    .line 150
    return-void
.end method

.method public getPackageNameList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 153
    iget-object v0, p0, Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker;->mListPackageName:Ljava/util/List;

    return-object v0
.end method
