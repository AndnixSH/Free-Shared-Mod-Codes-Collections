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
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 51
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "15555215554"

    aput-object v1, v0, v3

    const-string v1, "15555215556"

    aput-object v1, v0, v4

    const-string v1, "15555215558"

    aput-object v1, v0, v5

    const-string v1, "15555215560"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "15555215562"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "15555215564"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "15555215566"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "15555215568"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "15555215570"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "15555215572"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "15555215574"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "15555215576"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "15555215578"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "15555215580"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "15555215582"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "15555215584"

    aput-object v2, v0, v1

    sput-object v0, Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker;->PHONE_NUMBERS:[Ljava/lang/String;

    .line 57
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "000000000000000"

    aput-object v1, v0, v3

    const-string v1, "e21833235b6eef10"

    aput-object v1, v0, v4

    const-string v1, "012345678912345"

    aput-object v1, v0, v5

    sput-object v0, Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker;->DEVICE_IDS:[Ljava/lang/String;

    .line 63
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "310260000000000"

    aput-object v1, v0, v3

    sput-object v0, Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker;->IMSI_IDS:[Ljava/lang/String;

    .line 67
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "/dev/socket/genyd"

    aput-object v1, v0, v3

    const-string v1, "/dev/socket/baseband_genyd"

    aput-object v1, v0, v4

    sput-object v0, Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker;->GENY_FILES:[Ljava/lang/String;

    .line 72
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "goldfish"

    aput-object v1, v0, v3

    sput-object v0, Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker;->QEMU_DRIVERS:[Ljava/lang/String;

    .line 74
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "/dev/socket/qemud"

    aput-object v1, v0, v3

    const-string v1, "/dev/qemu_pipe"

    aput-object v1, v0, v4

    sput-object v0, Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker;->PIPES:[Ljava/lang/String;

    .line 79
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ueventd.android_x86.rc"

    aput-object v1, v0, v3

    const-string v1, "x86.prop"

    aput-object v1, v0, v4

    const-string v1, "ueventd.ttVM_x86.rc"

    aput-object v1, v0, v5

    const-string v1, "init.ttVM_x86.rc"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "fstab.ttVM_x86"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "fstab.vbox86"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "init.vbox86.rc"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "ueventd.vbox86.rc"

    aput-object v2, v0, v1

    sput-object v0, Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker;->X86_FILES:[Ljava/lang/String;

    .line 90
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "fstab.andy"

    aput-object v1, v0, v3

    const-string v1, "ueventd.andy.rc"

    aput-object v1, v0, v4

    sput-object v0, Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker;->ANDY_FILES:[Ljava/lang/String;

    .line 95
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "fstab.nox"

    aput-object v1, v0, v3

    const-string v1, "init.nox.rc"

    aput-object v1, v0, v4

    const-string v1, "ueventd.nox.rc"

    aput-object v1, v0, v5

    sput-object v0, Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker;->NOX_FILES:[Ljava/lang/String;

    .line 101
    const/16 v0, 0xf

    new-array v0, v0, [Llib/bluegames/com/clubaudition/devicechecker/Property;

    new-instance v1, Llib/bluegames/com/clubaudition/devicechecker/Property;

    const-string v2, "init.svc.qemud"

    invoke-direct {v1, v2, v6}, Llib/bluegames/com/clubaudition/devicechecker/Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v3

    new-instance v1, Llib/bluegames/com/clubaudition/devicechecker/Property;

    const-string v2, "init.svc.qemu-props"

    invoke-direct {v1, v2, v6}, Llib/bluegames/com/clubaudition/devicechecker/Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v4

    new-instance v1, Llib/bluegames/com/clubaudition/devicechecker/Property;

    const-string v2, "qemu.hw.mainkeys"

    invoke-direct {v1, v2, v6}, Llib/bluegames/com/clubaudition/devicechecker/Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v5

    new-instance v1, Llib/bluegames/com/clubaudition/devicechecker/Property;

    const-string v2, "qemu.sf.fake_camera"

    invoke-direct {v1, v2, v6}, Llib/bluegames/com/clubaudition/devicechecker/Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v7

    const/4 v1, 0x4

    new-instance v2, Llib/bluegames/com/clubaudition/devicechecker/Property;

    const-string v3, "qemu.sf.lcd_density"

    invoke-direct {v2, v3, v6}, Llib/bluegames/com/clubaudition/devicechecker/Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Llib/bluegames/com/clubaudition/devicechecker/Property;

    const-string v3, "ro.bootloader"

    const-string v4, "unknown"

    invoke-direct {v2, v3, v4}, Llib/bluegames/com/clubaudition/devicechecker/Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Llib/bluegames/com/clubaudition/devicechecker/Property;

    const-string v3, "ro.bootmode"

    const-string v4, "unknown"

    invoke-direct {v2, v3, v4}, Llib/bluegames/com/clubaudition/devicechecker/Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Llib/bluegames/com/clubaudition/devicechecker/Property;

    const-string v3, "ro.hardware"

    const-string v4, "goldfish"

    invoke-direct {v2, v3, v4}, Llib/bluegames/com/clubaudition/devicechecker/Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Llib/bluegames/com/clubaudition/devicechecker/Property;

    const-string v3, "ro.kernel.android.qemud"

    invoke-direct {v2, v3, v6}, Llib/bluegames/com/clubaudition/devicechecker/Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Llib/bluegames/com/clubaudition/devicechecker/Property;

    const-string v3, "ro.kernel.qemu.gles"

    invoke-direct {v2, v3, v6}, Llib/bluegames/com/clubaudition/devicechecker/Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Llib/bluegames/com/clubaudition/devicechecker/Property;

    const-string v3, "ro.kernel.qemu"

    const-string v4, "1"

    invoke-direct {v2, v3, v4}, Llib/bluegames/com/clubaudition/devicechecker/Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Llib/bluegames/com/clubaudition/devicechecker/Property;

    const-string v3, "ro.product.device"

    const-string v4, "generic"

    invoke-direct {v2, v3, v4}, Llib/bluegames/com/clubaudition/devicechecker/Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Llib/bluegames/com/clubaudition/devicechecker/Property;

    const-string v3, "ro.product.model"

    const-string v4, "sdk"

    invoke-direct {v2, v3, v4}, Llib/bluegames/com/clubaudition/devicechecker/Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Llib/bluegames/com/clubaudition/devicechecker/Property;

    const-string v3, "ro.product.name"

    const-string v4, "sdk"

    invoke-direct {v2, v3, v4}, Llib/bluegames/com/clubaudition/devicechecker/Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Llib/bluegames/com/clubaudition/devicechecker/Property;

    const-string v3, "ro.serialno"

    invoke-direct {v2, v3, v6}, Llib/bluegames/com/clubaudition/devicechecker/Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    sput-object v0, Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker;->PROPERTIES:[Llib/bluegames/com/clubaudition/devicechecker/Property;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-boolean v0, p0, Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker;->isDebug:Z

    .line 126
    iput-boolean v0, p0, Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker;->isTelephony:Z

    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker;->isCheckPackage:Z

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker;->mListPackageName:Ljava/util/List;

    .line 139
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker;->mContext:Landroid/content/Context;

    .line 140
    iget-object v0, p0, Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker;->mListPackageName:Ljava/util/List;

    const-string v1, "com.google.android.launcher.layouts.genymotion"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    iget-object v0, p0, Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker;->mListPackageName:Ljava/util/List;

    const-string v1, "com.bluestacks"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    iget-object v0, p0, Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker;->mListPackageName:Ljava/util/List;

    const-string v1, "com.bignox.app"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
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
    .locals 3

    .prologue
    .line 249
    invoke-direct {p0}, Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker;->checkTelephony()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker;->GENY_FILES:[Ljava/lang/String;

    const-string v2, "Geny"

    .line 250
    invoke-direct {p0, v1, v2}, Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker;->checkFiles([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker;->ANDY_FILES:[Ljava/lang/String;

    const-string v2, "Andy"

    .line 251
    invoke-direct {p0, v1, v2}, Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker;->checkFiles([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker;->NOX_FILES:[Ljava/lang/String;

    const-string v2, "Nox"

    .line 252
    invoke-direct {p0, v1, v2}, Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker;->checkFiles([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 253
    invoke-direct {p0}, Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker;->checkQEmuDrivers()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker;->PIPES:[Ljava/lang/String;

    const-string v2, "Pipes"

    .line 254
    invoke-direct {p0, v1, v2}, Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker;->checkFiles([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 255
    invoke-direct {p0}, Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker;->checkIp()Z

    move-result v1

    if-nez v1, :cond_0

    .line 256
    invoke-direct {p0}, Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker;->checkQEmuProps()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker;->X86_FILES:[Ljava/lang/String;

    const-string v2, "X86"

    invoke-direct {p0, v1, v2}, Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker;->checkFiles([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 257
    .local v0, "result":Z
    :goto_0
    return v0

    .line 256
    .end local v0    # "result":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkBasic()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 218
    sget-object v4, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v5, "generic"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v5, "google_sdk"

    .line 219
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 220
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "droid4x"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v5, "Emulator"

    .line 221
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v5, "Android SDK built for x86"

    .line 222
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v5, "Genymotion"

    .line 223
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string v5, "goldfish"

    .line 224
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string v5, "vbox86"

    .line 225
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v5, "sdk"

    .line 226
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v5, "google_sdk"

    .line 227
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v5, "sdk_x86"

    .line 228
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v5, "vbox86p"

    .line 229
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Landroid/os/Build;->BOARD:Ljava/lang/String;

    .line 230
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "nox"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Landroid/os/Build;->BOOTLOADER:Ljava/lang/String;

    .line 231
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "nox"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    .line 232
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "nox"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 233
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "nox"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    .line 234
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "nox"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    move v1, v2

    .line 236
    .local v1, "result":Z
    :goto_0
    if-eqz v1, :cond_3

    .line 245
    :cond_1
    :goto_1
    return v2

    .end local v1    # "result":Z
    :cond_2
    move v1, v3

    .line 234
    goto :goto_0

    .line 237
    .restart local v1    # "result":Z
    :cond_3
    sget-object v4, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v5, "generic"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v4, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v5, "generic"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v4, v2

    :goto_2
    or-int/2addr v1, v4

    .line 238
    if-nez v1, :cond_1

    .line 239
    const-string v4, "google_sdk"

    sget-object v5, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v1, v4

    .line 240
    if-nez v1, :cond_1

    .line 242
    iget-object v4, p0, Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker;->mContext:Landroid/content/Context;

    iget-object v5, p0, Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker;->mContext:Landroid/content/Context;

    const-string v5, "vibrator"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 243
    .local v0, "mVib":Landroid/os/Vibrator;
    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v4

    if-nez v4, :cond_5

    :goto_3
    or-int/2addr v1, v2

    .line 244
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Support Vibrator : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker;->log(Ljava/lang/String;)V

    move v2, v1

    .line 245
    goto :goto_1

    .end local v0    # "mVib":Landroid/os/Vibrator;
    :cond_4
    move v4, v3

    .line 237
    goto :goto_2

    .restart local v0    # "mVib":Landroid/os/Vibrator;
    :cond_5
    move v2, v3

    .line 243
    goto :goto_3
.end method

.method private checkDeviceId()Z
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 306
    sget-object v4, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    const-string v5, "android.permission.READ_PHONE_STATE"

    invoke-static {v4, v5}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    .line 307
    iget-object v4, p0, Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker;->mContext:Landroid/content/Context;

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 309
    .local v2, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 311
    .local v0, "deviceId":Ljava/lang/String;
    sget-object v5, Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker;->DEVICE_IDS:[Ljava/lang/String;

    array-length v6, v5

    move v4, v3

    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v1, v5, v4

    .line 312
    .local v1, "known_deviceId":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 313
    const-string v3, "Check device id is detected"

    invoke-direct {p0, v3}, Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker;->log(Ljava/lang/String;)V

    .line 314
    const/4 v3, 0x1

    .line 319
    .end local v0    # "deviceId":Ljava/lang/String;
    .end local v1    # "known_deviceId":Ljava/lang/String;
    .end local v2    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_0
    return v3

    .line 311
    .restart local v0    # "deviceId":Ljava/lang/String;
    .restart local v1    # "known_deviceId":Ljava/lang/String;
    .restart local v2    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private checkFiles([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "targets"    # [Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 373
    array-length v4, p1

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, p1, v3

    .line 374
    .local v0, "pipe":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 375
    .local v1, "qemu_file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 376
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Check "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is detected"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker;->log(Ljava/lang/String;)V

    .line 377
    const/4 v2, 0x1

    .line 380
    .end local v0    # "pipe":Ljava/lang/String;
    .end local v1    # "qemu_file":Ljava/io/File;
    :cond_0
    return v2

    .line 373
    .restart local v0    # "pipe":Ljava/lang/String;
    .restart local v1    # "qemu_file":Ljava/io/File;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private checkImsi()Z
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 323
    sget-object v4, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    const-string v5, "android.permission.READ_PHONE_STATE"

    invoke-static {v4, v5}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    .line 324
    iget-object v4, p0, Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker;->mContext:Landroid/content/Context;

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 325
    .local v2, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 327
    .local v0, "imsi":Ljava/lang/String;
    sget-object v5, Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker;->IMSI_IDS:[Ljava/lang/String;

    array-length v6, v5

    move v4, v3

    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v1, v5, v4

    .line 328
    .local v1, "known_imsi":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 329
    const-string v3, "Check imsi is detected"

    invoke-direct {p0, v3}, Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker;->log(Ljava/lang/String;)V

    .line 330
    const/4 v3, 0x1

    .line 334
    .end local v0    # "imsi":Ljava/lang/String;
    .end local v1    # "known_imsi":Ljava/lang/String;
    .end local v2    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_0
    return v3

    .line 327
    .restart local v0    # "imsi":Ljava/lang/String;
    .restart local v1    # "known_imsi":Ljava/lang/String;
    .restart local v2    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private checkIp()Z
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v10, 0x0

    .line 406
    const/4 v4, 0x0

    .line 407
    .local v4, "ipDetected":Z
    iget-object v11, p0, Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker;->mContext:Landroid/content/Context;

    const-string v12, "android.permission.INTERNET"

    invoke-static {v11, v12}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_1

    .line 409
    new-array v0, v13, [Ljava/lang/String;

    const-string v11, "/system/bin/netcfg"

    aput-object v11, v0, v10

    .line 410
    .local v0, "args":[Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 412
    .local v9, "stringBuilder":Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v2, Ljava/lang/ProcessBuilder;

    invoke-direct {v2, v0}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 413
    .local v2, "builder":Ljava/lang/ProcessBuilder;
    new-instance v11, Ljava/io/File;

    const-string v12, "/system/bin/"

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v11}, Ljava/lang/ProcessBuilder;->directory(Ljava/io/File;)Ljava/lang/ProcessBuilder;

    .line 414
    const/4 v11, 0x1

    invoke-virtual {v2, v11}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    .line 415
    invoke-virtual {v2}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v7

    .line 416
    .local v7, "process":Ljava/lang/Process;
    invoke-virtual {v7}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 417
    .local v3, "in":Ljava/io/InputStream;
    const/16 v11, 0x400

    new-array v8, v11, [B

    .line 418
    .local v8, "re":[B
    :goto_0
    invoke-virtual {v3, v8}, Ljava/io/InputStream;->read([B)I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_2

    .line 419
    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v8}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 423
    .end local v2    # "builder":Ljava/lang/ProcessBuilder;
    .end local v3    # "in":Ljava/io/InputStream;
    .end local v7    # "process":Ljava/lang/Process;
    .end local v8    # "re":[B
    :catch_0
    move-exception v11

    .line 427
    :goto_1
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 428
    .local v6, "netData":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "netcfg data -> "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker;->log(Ljava/lang/String;)V

    .line 430
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 431
    const-string v11, "\n"

    invoke-virtual {v6, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 434
    .local v1, "array":[Ljava/lang/String;
    array-length v11, v1

    :goto_2
    if-ge v10, v11, :cond_1

    aget-object v5, v1, v10

    .line 435
    .local v5, "lan":Ljava/lang/String;
    const-string v12, "wlan0"

    invoke-virtual {v5, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    const-string v12, "tunl0"

    invoke-virtual {v5, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    const-string v12, "eth0"

    invoke-virtual {v5, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_3

    :cond_0
    const-string v12, "10.0.2.15"

    .line 436
    invoke-virtual {v5, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 437
    const/4 v4, 0x1

    .line 438
    const-string v10, "Check IP is detected"

    invoke-direct {p0, v10}, Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker;->log(Ljava/lang/String;)V

    .line 445
    .end local v0    # "args":[Ljava/lang/String;
    .end local v1    # "array":[Ljava/lang/String;
    .end local v5    # "lan":Ljava/lang/String;
    .end local v6    # "netData":Ljava/lang/String;
    .end local v9    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_1
    return v4

    .line 421
    .restart local v0    # "args":[Ljava/lang/String;
    .restart local v2    # "builder":Ljava/lang/ProcessBuilder;
    .restart local v3    # "in":Ljava/io/InputStream;
    .restart local v7    # "process":Ljava/lang/Process;
    .restart local v8    # "re":[B
    .restart local v9    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_2
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 434
    .end local v2    # "builder":Ljava/lang/ProcessBuilder;
    .end local v3    # "in":Ljava/io/InputStream;
    .end local v7    # "process":Ljava/lang/Process;
    .end local v8    # "re":[B
    .restart local v1    # "array":[Ljava/lang/String;
    .restart local v5    # "lan":Ljava/lang/String;
    .restart local v6    # "netData":Ljava/lang/String;
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2
.end method

.method private checkOperatorNameAndroid()Z
    .locals 3

    .prologue
    .line 338
    iget-object v1, p0, Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    .line 339
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    .line 340
    .local v0, "operatorName":Ljava/lang/String;
    const-string v1, "android"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 341
    const-string v1, "Check operator name android is detected"

    invoke-direct {p0, v1}, Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker;->log(Ljava/lang/String;)V

    .line 342
    const/4 v1, 0x1

    .line 344
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private checkPackageName()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 261
    iget-boolean v5, p0, Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker;->isCheckPackage:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker;->mListPackageName:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 274
    :cond_0
    :goto_0
    return v4

    .line 264
    :cond_1
    iget-object v5, p0, Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 265
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    iget-object v5, p0, Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker;->mListPackageName:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 266
    .local v1, "pkgName":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 267
    .local v3, "tryIntent":Landroid/content/Intent;
    if-eqz v3, :cond_2

    .line 268
    const/high16 v6, 0x10000

    invoke-virtual {v0, v3, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 269
    .local v2, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 270
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private checkPhoneNumber()Z
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 289
    sget-object v4, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    const-string v5, "android.permission.READ_PHONE_STATE"

    invoke-static {v4, v5}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    .line 290
    iget-object v4, p0, Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker;->mContext:Landroid/content/Context;

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 292
    .local v2, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    .line 294
    .local v1, "phoneNumber":Ljava/lang/String;
    sget-object v5, Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker;->PHONE_NUMBERS:[Ljava/lang/String;

    array-length v6, v5

    move v4, v3

    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v0, v5, v4

    .line 295
    .local v0, "number":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 296
    const-string v3, " check phone number is detected"

    invoke-direct {p0, v3}, Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker;->log(Ljava/lang/String;)V

    .line 297
    const/4 v3, 0x1

    .line 302
    .end local v0    # "number":Ljava/lang/String;
    .end local v1    # "phoneNumber":Ljava/lang/String;
    .end local v2    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_0
    return v3

    .line 294
    .restart local v0    # "number":Ljava/lang/String;
    .restart local v1    # "phoneNumber":Ljava/lang/String;
    .restart local v2    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private checkQEmuDrivers()Z
    .locals 15

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 348
    const/4 v8, 0x2

    new-array v10, v8, [Ljava/io/File;

    new-instance v8, Ljava/io/File;

    const-string v9, "/proc/tty/drivers"

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v8, v10, v7

    new-instance v8, Ljava/io/File;

    const-string v9, "/proc/cpuinfo"

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v8, v10, v6

    array-length v11, v10

    move v9, v7

    :goto_0
    if-ge v9, v11, :cond_2

    aget-object v2, v10, v9

    .line 349
    .local v2, "drivers_file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 350
    const/16 v8, 0x400

    new-array v0, v8, [B

    .line 352
    .local v0, "data":[B
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 353
    .local v4, "is":Ljava/io/InputStream;
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    .line 354
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    .end local v4    # "is":Ljava/io/InputStream;
    :goto_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 360
    .local v1, "driver_data":Ljava/lang/String;
    sget-object v12, Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker;->QEMU_DRIVERS:[Ljava/lang/String;

    array-length v13, v12

    move v8, v7

    :goto_2
    if-ge v8, v13, :cond_1

    aget-object v5, v12, v8

    .line 361
    .local v5, "known_qemu_driver":Ljava/lang/String;
    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 362
    const-string v7, "Check QEmuDrivers is detected"

    invoke-direct {p0, v7}, Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker;->log(Ljava/lang/String;)V

    .line 369
    .end local v0    # "data":[B
    .end local v1    # "driver_data":Ljava/lang/String;
    .end local v2    # "drivers_file":Ljava/io/File;
    .end local v5    # "known_qemu_driver":Ljava/lang/String;
    :goto_3
    return v6

    .line 355
    .restart local v0    # "data":[B
    .restart local v2    # "drivers_file":Ljava/io/File;
    :catch_0
    move-exception v3

    .line 356
    .local v3, "exception":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 360
    .end local v3    # "exception":Ljava/lang/Exception;
    .restart local v1    # "driver_data":Ljava/lang/String;
    .restart local v5    # "known_qemu_driver":Ljava/lang/String;
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 348
    .end local v0    # "data":[B
    .end local v1    # "driver_data":Ljava/lang/String;
    .end local v5    # "known_qemu_driver":Ljava/lang/String;
    :cond_1
    add-int/lit8 v8, v9, 0x1

    move v9, v8

    goto :goto_0

    .end local v2    # "drivers_file":Ljava/io/File;
    :cond_2
    move v6, v7

    .line 369
    goto :goto_3
.end method

.method private checkQEmuProps()Z
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 384
    const/4 v0, 0x0

    .line 386
    .local v0, "found_props":I
    sget-object v5, Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker;->PROPERTIES:[Llib/bluegames/com/clubaudition/devicechecker/Property;

    array-length v6, v5

    move v4, v3

    :goto_0
    if-ge v4, v6, :cond_2

    aget-object v1, v5, v4

    .line 387
    .local v1, "property":Llib/bluegames/com/clubaudition/devicechecker/Property;
    iget-object v7, p0, Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker;->mContext:Landroid/content/Context;

    iget-object v8, v1, Llib/bluegames/com/clubaudition/devicechecker/Property;->name:Ljava/lang/String;

    invoke-direct {p0, v7, v8}, Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker;->getProp(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 388
    .local v2, "property_value":Ljava/lang/String;
    iget-object v7, v1, Llib/bluegames/com/clubaudition/devicechecker/Property;->seek_value:Ljava/lang/String;

    if-nez v7, :cond_0

    if-eqz v2, :cond_0

    .line 389
    add-int/lit8 v0, v0, 0x1

    .line 391
    :cond_0
    iget-object v7, v1, Llib/bluegames/com/clubaudition/devicechecker/Property;->seek_value:Ljava/lang/String;

    if-eqz v7, :cond_1

    iget-object v7, v1, Llib/bluegames/com/clubaudition/devicechecker/Property;->seek_value:Ljava/lang/String;

    .line 392
    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 393
    add-int/lit8 v0, v0, 0x1

    .line 386
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 398
    .end local v1    # "property":Llib/bluegames/com/clubaudition/devicechecker/Property;
    .end local v2    # "property_value":Ljava/lang/String;
    :cond_2
    const/4 v4, 0x5

    if-lt v0, v4, :cond_3

    .line 399
    const-string v3, "Check QEmuProps is detected"

    invoke-direct {p0, v3}, Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker;->log(Ljava/lang/String;)V

    .line 400
    const/4 v3, 0x1

    .line 402
    :cond_3
    return v3
.end method

.method private checkRoot()Z
    .locals 3

    .prologue
    .line 508
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "su"

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 514
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 509
    :catch_0
    move-exception v0

    .line 511
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private checkTelephony()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 278
    iget-object v1, p0, Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker;->isTelephony:Z

    if-eqz v1, :cond_1

    .line 279
    invoke-direct {p0}, Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker;->isSupportTelePhony()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 280
    invoke-direct {p0}, Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker;->checkPhoneNumber()Z

    move-result v1

    if-nez v1, :cond_0

    .line 281
    invoke-direct {p0}, Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker;->checkDeviceId()Z

    move-result v1

    if-nez v1, :cond_0

    .line 282
    invoke-direct {p0}, Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker;->checkImsi()Z

    move-result v1

    if-nez v1, :cond_0

    .line 283
    invoke-direct {p0}, Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker;->checkOperatorNameAndroid()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 285
    :cond_1
    return v0
.end method

.method private detect()Z
    .locals 3

    .prologue
    .line 192
    const/4 v0, 0x0

    .line 194
    .local v0, "result":Z
    invoke-static {}, Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker;->getDeviceInfo()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker;->log(Ljava/lang/String;)V

    .line 197
    if-nez v0, :cond_0

    .line 198
    invoke-direct {p0}, Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker;->checkBasic()Z

    move-result v0

    .line 199
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Check basic "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker;->log(Ljava/lang/String;)V

    .line 203
    :cond_0
    if-nez v0, :cond_1

    .line 204
    invoke-direct {p0}, Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker;->checkAdvanced()Z

    move-result v0

    .line 205
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Check Advanced "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker;->log(Ljava/lang/String;)V

    .line 209
    :cond_1
    if-nez v0, :cond_2

    .line 210
    invoke-direct {p0}, Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker;->checkPackageName()Z

    move-result v0

    .line 211
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Check Package Name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker;->log(Ljava/lang/String;)V

    .line 214
    :cond_2
    return v0
.end method

.method public static getDeviceInfo()Ljava/lang/String;
    .locals 2

    .prologue
    .line 479
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Build.PRODUCT: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nBuild.MANUFACTURER: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nBuild.BRAND: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nBuild.DEVICE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nBuild.MODEL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nBuild.HARDWARE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nBuild.FINGERPRINT: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

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
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "property"    # Ljava/lang/String;

    .prologue
    .line 450
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 451
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    const-string v4, "android.os.SystemProperties"

    invoke-virtual {v0, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 453
    .local v3, "systemProperties":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "get"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 455
    .local v1, "get":Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    new-array v2, v4, [Ljava/lang/Object;

    .line 456
    .local v2, "params":[Ljava/lang/Object;
    const/4 v4, 0x0

    aput-object p2, v2, v4

    .line 458
    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 462
    .end local v0    # "classLoader":Ljava/lang/ClassLoader;
    .end local v1    # "get":Ljava/lang/reflect/Method;
    .end local v2    # "params":[Ljava/lang/Object;
    .end local v3    # "systemProperties":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-object v4

    .line 459
    :catch_0
    move-exception v4

    .line 462
    const/4 v4, 0x0

    goto :goto_0
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
    .locals 2
    .param p1, "pCallBackMethod"    # Ljava/lang/String;

    .prologue
    .line 494
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 495
    .local v0, "nowActivity":Landroid/app/Activity;
    new-instance v1, Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker$2;

    invoke-direct {v1, p0, p1}, Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker$2;-><init>(Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 504
    return-void
.end method

.method public CheckRunningApp(Ljava/lang/String;)V
    .locals 2
    .param p1, "pCallBackMethod"    # Ljava/lang/String;

    .prologue
    .line 518
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 519
    .local v0, "nowActivity":Landroid/app/Activity;
    new-instance v1, Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker$3;

    invoke-direct {v1, p0, p1}, Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker$3;-><init>(Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 528
    return-void
.end method

.method public DetectDevice(Ljava/lang/String;)V
    .locals 2
    .param p1, "pCallBackMethod"    # Ljava/lang/String;

    .prologue
    .line 157
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 158
    .local v0, "nowActivity":Landroid/app/Activity;
    new-instance v1, Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker$1;

    invoke-direct {v1, p0, p1}, Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker$1;-><init>(Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 166
    return-void
.end method

.method public GetRunningApp()Ljava/lang/String;
    .locals 11

    .prologue
    .line 531
    const/4 v0, 0x2

    .line 532
    .local v0, "PROCESS_STATE_TOP":I
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, ""

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 533
    .local v6, "stringBuilder":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 535
    .local v4, "field":Ljava/lang/reflect/Field;
    :try_start_0
    const-class v7, Landroid/app/ActivityManager$RunningAppProcessInfo;

    const-string v8, "processState"

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 538
    :goto_0
    iget-object v7, p0, Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker;->mContext:Landroid/content/Context;

    const-string v8, "activity"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 539
    .local v1, "am":Landroid/app/ActivityManager;
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    .line 540
    .local v3, "appList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 542
    .local v2, "app":Landroid/app/ActivityManager$RunningAppProcessInfo;
    new-instance v8, Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "|"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 544
    .end local v2    # "app":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_0
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 545
    .local v5, "result":Ljava/lang/String;
    return-object v5

    .line 536
    .end local v1    # "am":Landroid/app/ActivityManager;
    .end local v3    # "appList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v5    # "result":Ljava/lang/String;
    :catch_0
    move-exception v7

    goto :goto_0
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
