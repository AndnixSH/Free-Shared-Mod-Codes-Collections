.class public abstract Lcom/facebook/unity/FBUnityAppLinkBaseActivity;
.super Landroid/app/Activity;
.source "FBUnityAppLinkBaseActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private getMainActivityClass()Ljava/lang/Class;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/facebook/unity/FBUnityAppLinkBaseActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/facebook/unity/FBUnityAppLinkBaseActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    :try_start_0
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_0
    return-object v3

    :catch_0
    move-exception v0

    sget-object v3, Lcom/facebook/unity/FB;->TAG:Ljava/lang/String;

    const-string v4, "Unable to find Main Activity Class"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/facebook/unity/FBUnityAppLinkBaseActivity;->requestWindowFeature(I)Z

    sget-object v1, Lcom/facebook/unity/FB;->TAG:Ljava/lang/String;

    const-string v2, "Saving deep link from deep linking activity"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/facebook/unity/FBUnityAppLinkBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/unity/FB;->SetIntent(Landroid/content/Intent;)V

    sget-object v1, Lcom/facebook/unity/FB;->TAG:Ljava/lang/String;

    const-string v2, "Returning to main activity"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {p0}, Lcom/facebook/unity/FBUnityAppLinkBaseActivity;->getMainActivityClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/facebook/unity/FBUnityAppLinkBaseActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/facebook/unity/FBUnityAppLinkBaseActivity;->finish()V

    return-void
.end method
