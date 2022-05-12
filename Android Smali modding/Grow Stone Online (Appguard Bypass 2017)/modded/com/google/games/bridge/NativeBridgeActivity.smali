.class public final Lcom/google/games/bridge/NativeBridgeActivity;
.super Landroid/app/Activity;
.source "NativeBridgeActivity.java"


# static fields
.field private static final BG_COLOR:I = 0x40ffffff

.field private static final BRIDGED_INTENT:Ljava/lang/String; = "BRIDGED_INTENT"

.field private static final GPG_RESPONSE_CODE:I = 0x475047

.field private static final TAG:Ljava/lang/String; = "NativeBridgeActivity"


# instance fields
.field private pendingResult:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-string v0, "gpg"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private native forwardActivityResult(IILandroid/content/Intent;)V
.end method

.method public static launchBridgeIntent(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 4
    .param p0, "parentActivity"    # Landroid/app/Activity;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 95
    const-string v1, "NativeBridgeActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Launching bridge activity: parent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " intent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/games/bridge/NativeBridgeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 97
    .local v0, "bridgeIntent":Landroid/content/Intent;
    const-string v1, "BRIDGED_INTENT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 98
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 99
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 77
    const v0, 0x475047

    if-ne p1, v0, :cond_0

    .line 78
    const-string v0, "NativeBridgeActivity"

    const-string v1, "Forwarding activity result to native SDK."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-direct {p0, p1, p2, p3}, Lcom/google/games/bridge/NativeBridgeActivity;->forwardActivityResult(IILandroid/content/Intent;)V

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/games/bridge/NativeBridgeActivity;->pendingResult:Z

    .line 87
    :goto_0
    invoke-virtual {p0}, Lcom/google/games/bridge/NativeBridgeActivity;->finish()V

    .line 89
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 90
    return-void

    .line 84
    :cond_0
    const-string v0, "NativeBridgeActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult for unknown request code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " calling finish()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 39
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 40
    .local v0, "v":Landroid/view/View;
    const v1, 0x40ffffff    # 7.9999995f

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 41
    invoke-virtual {p0, v0}, Lcom/google/games/bridge/NativeBridgeActivity;->setContentView(Landroid/view/View;)V

    .line 42
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 135
    iget-boolean v0, p0, Lcom/google/games/bridge/NativeBridgeActivity;->pendingResult:Z

    if-eqz v0, :cond_0

    .line 136
    const-string v0, "NativeBridgeActivity"

    const-string v1, "onDestroy called with pendingResult == true.  forwarding canceled result"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const v0, 0x475047

    const/4 v1, 0x0

    invoke-direct {p0, v0, v2, v1}, Lcom/google/games/bridge/NativeBridgeActivity;->forwardActivityResult(IILandroid/content/Intent;)V

    .line 138
    iput-boolean v2, p0, Lcom/google/games/bridge/NativeBridgeActivity;->pendingResult:Z

    .line 141
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 142
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 214
    const-string v0, "NativeBridgeActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 217
    return-void
.end method

.method protected onRestart()V
    .locals 2

    .prologue
    .line 169
    const-string v0, "NativeBridgeActivity"

    const-string v1, "onRestart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 172
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 270
    const-string v0, "NativeBridgeActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 273
    return-void
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/google/games/bridge/NativeBridgeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "BRIDGED_INTENT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 48
    .local v0, "bridgedIntent":Landroid/content/Intent;
    const v1, 0x475047

    invoke-virtual {p0, v0, v1}, Lcom/google/games/bridge/NativeBridgeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 50
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 51
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 241
    const-string v0, "NativeBridgeActivity"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 244
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    .line 66
    const v0, 0x475047

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/games/bridge/NativeBridgeActivity;->pendingResult:Z

    .line 67
    iget-boolean v0, p0, Lcom/google/games/bridge/NativeBridgeActivity;->pendingResult:Z

    if-eqz v0, :cond_1

    .line 68
    const-string v0, "NativeBridgeActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "starting GPG activity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 73
    return-void

    .line 66
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 70
    :cond_1
    const-string v0, "NativeBridgeActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "starting non-GPG activity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
