.class public Lcom/soomla/store/billing/google/GooglePlayIabService$IabActivity;
.super Landroid/app/Activity;
.source "GooglePlayIabService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/soomla/store/billing/google/GooglePlayIabService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IabActivity"
.end annotation


# instance fields
.field firstTime:Z

.field private mInProgressDestroy:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/soomla/store/billing/google/GooglePlayIabService$IabActivity;->mInProgressDestroy:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/soomla/store/billing/google/GooglePlayIabService$IabActivity;->firstTime:Z

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const-string v0, "SOOMLA GooglePlayIabService"

    const-string v1, "onActivityResult 1"

    invoke-static {v0, v1}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/soomla/store/billing/google/GooglePlayIabService;->getInstance()Lcom/soomla/store/billing/google/GooglePlayIabService;

    move-result-object v0

    invoke-static {v0}, Lcom/soomla/store/billing/google/GooglePlayIabService;->access$300(Lcom/soomla/store/billing/google/GooglePlayIabService;)Lcom/soomla/store/billing/google/GoogleIabHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/soomla/store/billing/google/GoogleIabHelper;->handleActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SOOMLA GooglePlayIabService"

    const-string v1, "onActivityResult 2"

    invoke-static {v0, v1}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    const-string v0, "SOOMLA GooglePlayIabService"

    const-string v1, "onActivityResult 3"

    invoke-static {v0, v1}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/soomla/store/billing/google/GooglePlayIabService$IabActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    const/4 v8, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/soomla/store/billing/google/GooglePlayIabService$IabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v6, "ID#sku"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "ID#extraData"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :try_start_0
    new-instance v3, Lcom/soomla/store/billing/google/GooglePlayIabService$OnIabPurchaseFinishedListener;

    invoke-direct {v3}, Lcom/soomla/store/billing/google/GooglePlayIabService$OnIabPurchaseFinishedListener;-><init>()V

    invoke-static {}, Lcom/soomla/store/billing/google/GooglePlayIabService;->getInstance()Lcom/soomla/store/billing/google/GooglePlayIabService;

    move-result-object v6

    invoke-static {v6}, Lcom/soomla/store/billing/google/GooglePlayIabService;->access$300(Lcom/soomla/store/billing/google/GooglePlayIabService;)Lcom/soomla/store/billing/google/GoogleIabHelper;

    move-result-object v6

    invoke-virtual {v6, p0, v5, v3, v4}, Lcom/soomla/store/billing/google/GoogleIabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;Lcom/soomla/store/billing/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    invoke-static {}, Lcom/soomla/store/billing/google/GooglePlayIabService;->getInstance()Lcom/soomla/store/billing/google/GooglePlayIabService;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/soomla/store/billing/google/GooglePlayIabService;->access$102(Lcom/soomla/store/billing/google/GooglePlayIabService;Z)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iput-boolean v8, p0, Lcom/soomla/store/billing/google/GooglePlayIabService$IabActivity;->mInProgressDestroy:Z

    invoke-virtual {p0}, Lcom/soomla/store/billing/google/GooglePlayIabService$IabActivity;->finish()V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v6, "SOOMLA GooglePlayIabService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MSG: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/soomla/store/billing/google/GooglePlayIabService$IabActivity;->finish()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error purchasing item "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, "SOOMLA GooglePlayIabService"

    invoke-static {v6, v2}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/soomla/store/billing/google/GooglePlayIabService;->getInstance()Lcom/soomla/store/billing/google/GooglePlayIabService;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/soomla/store/billing/google/GooglePlayIabService;->access$102(Lcom/soomla/store/billing/google/GooglePlayIabService;Z)Z

    invoke-static {}, Lcom/soomla/store/billing/google/GooglePlayIabService;->getInstance()Lcom/soomla/store/billing/google/GooglePlayIabService;

    move-result-object v6

    invoke-static {v6}, Lcom/soomla/store/billing/google/GooglePlayIabService;->access$200(Lcom/soomla/store/billing/google/GooglePlayIabService;)Lcom/soomla/store/billing/IabCallbacks$OnPurchaseListener;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-static {}, Lcom/soomla/store/billing/google/GooglePlayIabService;->getInstance()Lcom/soomla/store/billing/google/GooglePlayIabService;

    move-result-object v6

    invoke-static {v6}, Lcom/soomla/store/billing/google/GooglePlayIabService;->access$200(Lcom/soomla/store/billing/google/GooglePlayIabService;)Lcom/soomla/store/billing/IabCallbacks$OnPurchaseListener;

    move-result-object v6

    invoke-interface {v6, v2}, Lcom/soomla/store/billing/IabCallbacks$OnPurchaseListener;->fail(Ljava/lang/String;)V

    invoke-static {}, Lcom/soomla/store/billing/google/GooglePlayIabService;->getInstance()Lcom/soomla/store/billing/google/GooglePlayIabService;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/soomla/store/billing/google/GooglePlayIabService;->access$202(Lcom/soomla/store/billing/google/GooglePlayIabService;Lcom/soomla/store/billing/IabCallbacks$OnPurchaseListener;)Lcom/soomla/store/billing/IabCallbacks$OnPurchaseListener;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 4

    const/4 v3, 0x0

    const-string v1, "SOOMLA GooglePlayIabService"

    const-string v2, "onDestroy 1"

    invoke-static {v1, v2}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/soomla/store/billing/google/GooglePlayIabService$IabActivity;->mInProgressDestroy:Z

    if-nez v1, :cond_0

    invoke-static {}, Lcom/soomla/store/billing/google/GooglePlayIabService;->getInstance()Lcom/soomla/store/billing/google/GooglePlayIabService;

    move-result-object v1

    invoke-static {v1}, Lcom/soomla/store/billing/google/GooglePlayIabService;->access$100(Lcom/soomla/store/billing/google/GooglePlayIabService;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SOOMLA GooglePlayIabService"

    const-string v2, "onDestroy 2"

    invoke-static {v1, v2}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/soomla/store/billing/google/GooglePlayIabService;->getInstance()Lcom/soomla/store/billing/google/GooglePlayIabService;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/soomla/store/billing/google/GooglePlayIabService;->access$102(Lcom/soomla/store/billing/google/GooglePlayIabService;Z)Z

    const-string v0, "IabActivity is destroyed during purchase."

    const-string v1, "SOOMLA GooglePlayIabService"

    invoke-static {v1, v0}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x2711

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v3, v2}, Lcom/soomla/store/billing/google/GooglePlayIabService$IabActivity;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    const-string v1, "SOOMLA GooglePlayIabService"

    const-string v2, "onDestroy 4"

    invoke-static {v1, v2}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    const-string v0, "SOOMLA GooglePlayIabService"

    const-string v1, "onResume 1"

    invoke-static {v0, v1}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/soomla/store/billing/google/GooglePlayIabService$IabActivity;->firstTime:Z

    return-void
.end method

.method protected onStart()V
    .locals 4

    const-string v1, "SOOMLA GooglePlayIabService"

    const-string v2, "onStart 1"

    invoke-static {v1, v2}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    iget-boolean v1, p0, Lcom/soomla/store/billing/google/GooglePlayIabService$IabActivity;->firstTime:Z

    if-nez v1, :cond_0

    invoke-static {}, Lcom/soomla/SoomlaApp;->getAppContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    const-string v1, "SOOMLA GooglePlayIabService"

    const-string v2, "onStart 2"

    invoke-static {v1, v2}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x2711

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/soomla/store/billing/google/GooglePlayIabService$IabActivity;->onActivityResult(IILandroid/content/Intent;)V

    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/soomla/SoomlaApp;->getAppContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "SOOMLA GooglePlayIabService"

    const-string v2, "onStart 3"

    invoke-static {v1, v2}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/soomla/store/billing/google/GooglePlayIabService$IabActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    const-string v1, "SOOMLA GooglePlayIabService"

    const-string v2, "onStart 4"

    invoke-static {v1, v2}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onStop()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method
