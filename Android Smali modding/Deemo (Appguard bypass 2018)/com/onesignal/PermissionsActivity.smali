.class public Lcom/onesignal/PermissionsActivity;
.super Landroid/app/Activity;
.source "PermissionsActivity.java"


# static fields
.field private static final REQUEST_LOCATION:I = 0x2

.field private static activityAvailableListener:Lcom/onesignal/ActivityLifecycleHandler$ActivityAvailableListener;

.field static answered:Z

.field static waiting:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private requestPermission()V
    .locals 3

    const/4 v1, 0x1

    sget-boolean v0, Lcom/onesignal/PermissionsActivity;->waiting:Z

    if-nez v0, :cond_0

    sput-boolean v1, Lcom/onesignal/PermissionsActivity;->waiting:Z

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/onesignal/LocationGMS;->requestPermission:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Lcom/onesignal/AndroidSupportV4Compat$ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method static startPrompt()V
    .locals 1

    sget-boolean v0, Lcom/onesignal/PermissionsActivity;->waiting:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/onesignal/PermissionsActivity;->answered:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/onesignal/PermissionsActivity$1;

    invoke-direct {v0}, Lcom/onesignal/PermissionsActivity$1;-><init>()V

    sput-object v0, Lcom/onesignal/PermissionsActivity;->activityAvailableListener:Lcom/onesignal/ActivityLifecycleHandler$ActivityAvailableListener;

    sget-object v0, Lcom/onesignal/PermissionsActivity;->activityAvailableListener:Lcom/onesignal/ActivityLifecycleHandler$ActivityAvailableListener;

    invoke-static {v0}, Lcom/onesignal/ActivityLifecycleHandler;->setActivityAvailableListener(Lcom/onesignal/ActivityLifecycleHandler$ActivityAvailableListener;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/onesignal/PermissionsActivity;->requestPermission()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v1, 0x0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/onesignal/PermissionsActivity;->answered:Z

    sput-boolean v1, Lcom/onesignal/PermissionsActivity;->waiting:Z

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    array-length v0, p3

    if-lez v0, :cond_1

    aget v0, p3, v1

    if-nez v0, :cond_1

    invoke-static {}, Lcom/onesignal/LocationGMS;->startGetLocation()V

    :cond_0
    :goto_0
    sget-object v0, Lcom/onesignal/PermissionsActivity;->activityAvailableListener:Lcom/onesignal/ActivityLifecycleHandler$ActivityAvailableListener;

    invoke-static {v0}, Lcom/onesignal/ActivityLifecycleHandler;->removeActivityAvailableListener(Lcom/onesignal/ActivityLifecycleHandler$ActivityAvailableListener;)V

    invoke-virtual {p0}, Lcom/onesignal/PermissionsActivity;->finish()V

    return-void

    :cond_1
    invoke-static {}, Lcom/onesignal/LocationGMS;->fireFailedComplete()V

    goto :goto_0
.end method
