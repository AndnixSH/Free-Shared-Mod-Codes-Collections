.class public Lcom/igaworks/adpopcorn/activity/ApOfferWallActivity_NT;
.super Landroid/app/Activity;


# static fields
.field public static apOfferwallActivity:Lcom/igaworks/adpopcorn/activity/ApOfferWallActivity_NT;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/content/Context;

.field private c:Lcom/igaworks/adpopcorn/cores/k;

.field private d:Z

.field private e:Z

.field private f:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, "ApOfferWallActivity_NT"

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApOfferWallActivity_NT;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApOfferWallActivity_NT;->f:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApOfferWallActivity_NT;->f:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/high16 v6, 0x1000000

    const/16 v5, 0x400

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    iput-boolean v4, p0, Lcom/igaworks/adpopcorn/activity/ApOfferWallActivity_NT;->d:Z

    iput-object p0, p0, Lcom/igaworks/adpopcorn/activity/ApOfferWallActivity_NT;->b:Landroid/content/Context;

    sput-object p0, Lcom/igaworks/adpopcorn/activity/ApOfferWallActivity_NT;->apOfferwallActivity:Lcom/igaworks/adpopcorn/activity/ApOfferWallActivity_NT;

    if-eqz p1, :cond_0

    const-string v0, "app_restart"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/igaworks/adpopcorn/activity/ApOfferWallActivity_NT;->d:Z

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApOfferWallActivity_NT;->b:Landroid/content/Context;

    const-string v1, "ApOfferWallActivity_NT"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "savedInstanceState >> app_restart : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/igaworks/adpopcorn/activity/ApOfferWallActivity_NT;->d:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lcom/igaworks/adpopcorn/cores/common/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    iget-boolean v0, p0, Lcom/igaworks/adpopcorn/activity/ApOfferWallActivity_NT;->d:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/igaworks/adpopcorn/activity/ApOfferWallActivity_NT;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "adpopcorn_statusbar_h"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/igaworks/adpopcorn/activity/ApOfferWallActivity_NT;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v5, v5}, Landroid/view/Window;->setFlags(II)V

    :cond_1
    invoke-virtual {p0}, Lcom/igaworks/adpopcorn/activity/ApOfferWallActivity_NT;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundColor(I)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/igaworks/adpopcorn/activity/ApOfferWallActivity_NT;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v6, v6}, Landroid/view/Window;->setFlags(II)V

    :cond_2
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApOfferWallActivity_NT;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/cores/k;->c(Landroid/content/Context;)Lcom/igaworks/adpopcorn/cores/k;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApOfferWallActivity_NT;->c:Lcom/igaworks/adpopcorn/cores/k;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApOfferWallActivity_NT;->c:Lcom/igaworks/adpopcorn/cores/k;

    invoke-virtual {v0, p0}, Lcom/igaworks/adpopcorn/cores/k;->a(Landroid/app/Activity;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/igaworks/adpopcorn/activity/ApOfferWallActivity_NT;->e:Z

    new-instance v0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApOfferWallActivity_NT;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApOfferWallActivity_NT;->f:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApOfferWallActivity_NT;->f:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    iget-boolean v1, p0, Lcom/igaworks/adpopcorn/activity/ApOfferWallActivity_NT;->e:Z

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->setApOfferWallOrientation(Z)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApOfferWallActivity_NT;->f:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    invoke-virtual {p0, v0}, Lcom/igaworks/adpopcorn/activity/ApOfferWallActivity_NT;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApOfferWallActivity_NT;->f:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    invoke-virtual {v0, v4, v4}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->initOfferwallLayout(ZZ)V

    :cond_3
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    :try_start_0
    iget-boolean v0, p0, Lcom/igaworks/adpopcorn/activity/ApOfferWallActivity_NT;->d:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/igaworks/adpopcorn/cores/e;->c()V

    :cond_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApOfferWallActivity_NT;->f:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApOfferWallActivity_NT;->f:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->destroy()V

    :cond_1
    const/4 v0, 0x0

    sput-object v0, Lcom/igaworks/adpopcorn/activity/ApOfferWallActivity_NT;->apOfferwallActivity:Lcom/igaworks/adpopcorn/activity/ApOfferWallActivity_NT;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    :try_start_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApOfferWallActivity_NT;->c:Lcom/igaworks/adpopcorn/cores/k;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/cores/k;->b(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    :try_start_0
    iget-boolean v0, p0, Lcom/igaworks/adpopcorn/activity/ApOfferWallActivity_NT;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/igaworks/adpopcorn/activity/ApOfferWallActivity_NT;->finish()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApOfferWallActivity_NT;->c:Lcom/igaworks/adpopcorn/cores/k;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/cores/k;->b(Z)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApOfferWallActivity_NT;->f:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->resume()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "app_restart"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
