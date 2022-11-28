.class public Ljp/f4samurai/bridge/CheatHandler;
.super Ljava/lang/Object;
.source "CheatHandler.java"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mIsUnauthorizedUser:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 27
    iput-boolean v0, p0, Ljp/f4samurai/bridge/CheatHandler;->mIsUnauthorizedUser:Z

    .line 31
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Ljp/f4samurai/bridge/CheatHandler;->mActivity:Landroid/app/Activity;

    const-string p1, "product"

    const-string v0, "product"

    .line 33
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const-string p1, "release"

    const-string v1, "release"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 34
    invoke-direct {p0}, Ljp/f4samurai/bridge/CheatHandler;->fromGooglePlay()Z

    move-result p1

    if-nez p1, :cond_0

    .line 35
    new-instance p1, Ljp/f4samurai/bridge/CheatHandler$1;

    invoke-direct {p1, p0}, Ljp/f4samurai/bridge/CheatHandler$1;-><init>(Ljp/f4samurai/bridge/CheatHandler;)V

    const-string v0, "Only applications downloaded from the Google Play Store can be used."

    .line 41
    invoke-direct {p0, v0, p1}, Ljp/f4samurai/bridge/CheatHandler;->showDialog(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void

    .line 45
    :cond_0
    iput-boolean v0, p0, Ljp/f4samurai/bridge/CheatHandler;->mIsUnauthorizedUser:Z

    goto :goto_0

    .line 47
    :cond_1
    iput-boolean v0, p0, Ljp/f4samurai/bridge/CheatHandler;->mIsUnauthorizedUser:Z

    :goto_0
    return-void
.end method

.method static synthetic access$000(Ljp/f4samurai/bridge/CheatHandler;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljp/f4samurai/bridge/CheatHandler;->closeApplication()V

    return-void
.end method

.method static synthetic access$100(Ljp/f4samurai/bridge/CheatHandler;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljp/f4samurai/bridge/CheatHandler;->checkDevice()V

    return-void
.end method

.method static synthetic access$200(Ljp/f4samurai/bridge/CheatHandler;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Ljp/f4samurai/bridge/CheatHandler;->showDialog(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method static synthetic access$300(Ljp/f4samurai/bridge/CheatHandler;Ljava/lang/String;)Z
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Ljp/f4samurai/bridge/CheatHandler;->hasIntegrity(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$402(Ljp/f4samurai/bridge/CheatHandler;Z)Z
    .locals 0

    .line 23
    iput-boolean p1, p0, Ljp/f4samurai/bridge/CheatHandler;->mIsUnauthorizedUser:Z

    return p1
.end method

.method private checkDevice()V
    .locals 3

    const/16 v0, 0x14

    .line 65
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    .line 67
    iget-object v1, p0, Ljp/f4samurai/bridge/CheatHandler;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/google/android/gms/safetynet/SafetyNet;->getClient(Landroid/app/Activity;)Lcom/google/android/gms/safetynet/SafetyNetClient;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/safetynet/SafetyNetClient;->attest([BLjava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    iget-object v1, p0, Ljp/f4samurai/bridge/CheatHandler;->mActivity:Landroid/app/Activity;

    new-instance v2, Ljp/f4samurai/bridge/CheatHandler$3;

    invoke-direct {v2, p0}, Ljp/f4samurai/bridge/CheatHandler$3;-><init>(Ljp/f4samurai/bridge/CheatHandler;)V

    .line 68
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    iget-object v1, p0, Ljp/f4samurai/bridge/CheatHandler;->mActivity:Landroid/app/Activity;

    new-instance v2, Ljp/f4samurai/bridge/CheatHandler$2;

    invoke-direct {v2, p0}, Ljp/f4samurai/bridge/CheatHandler$2;-><init>(Ljp/f4samurai/bridge/CheatHandler;)V

    .line 87
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void

    nop

    :array_0
    .array-data 1
        0x7t
        0x9t
        0x9t
        0x1t
        0x8t
        0x1t
        0x0t
        0x7t
        0x1t
        0x4t
        0x0t
        0x8t
        0x4t
        0x9t
        0x9t
        0x0t
        0x2t
        0x4t
        0x7t
        0x1t
    .end array-data
.end method

.method private closeApplication()V
    .locals 3

    .line 133
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    .line 134
    iget-object v0, p0, Ljp/f4samurai/bridge/CheatHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finishAndRemoveTask()V

    .line 135
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    goto :goto_0

    .line 137
    :cond_0
    iget-object v0, p0, Ljp/f4samurai/bridge/CheatHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 138
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    :goto_0
    return-void
.end method

.method private fromGooglePlay()Z
    .locals 2

    .line 56
    iget-object v0, p0, Ljp/f4samurai/bridge/CheatHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Ljp/f4samurai/bridge/CheatHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "com.android.vending"

    .line 58
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private hasIntegrity(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "\\."

    .line 114
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 115
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x1

    aget-object p1, p1, v1

    const/4 v2, 0x0

    invoke-static {p1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    .line 118
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "basicIntegrity"

    .line 121
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    return v1

    :cond_0
    return v2

    :catch_0
    move-exception p1

    .line 127
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    return v1
.end method

.method private showDialog(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2

    .line 143
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Ljp/f4samurai/bridge/CheatHandler;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 144
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string p1, "OK"

    .line 145
    invoke-virtual {v0, p1, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 p1, 0x0

    .line 146
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 147
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 148
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public isUnauthorizedUser()Z
    .locals 1

    .line 52
    iget-boolean v0, p0, Ljp/f4samurai/bridge/CheatHandler;->mIsUnauthorizedUser:Z

    return v0
.end method
