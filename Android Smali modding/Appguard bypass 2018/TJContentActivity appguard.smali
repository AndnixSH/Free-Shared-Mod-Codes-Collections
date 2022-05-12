.class public Lcom/tapjoy/TJContentActivity;
.super Lcom/inca/security/Proxy/AppGuardProxyActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/TJContentActivity$AbstractContentProducer;,
        Lcom/tapjoy/TJContentActivity$ContentProducer;
    }
.end annotation


# static fields
.field private static volatile a:Lcom/tapjoy/TJContentActivity$ContentProducer;


# instance fields
.field private b:Lcom/tapjoy/TJContentActivity$ContentProducer;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/inca/security/Proxy/AppGuardProxyActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/TJContentActivity;->c:Z

    return-void
.end method

.method private a(Landroid/content/Intent;)Z
    .locals 5

    const/16 v4, 0x400

    const/4 v0, 0x0

    const-string v1, "com.tapjoy.internal.content.producer.id"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const-class v2, Lcom/tapjoy/TJContentActivity;

    monitor-enter v2

    :try_start_0
    sget-object v3, Lcom/tapjoy/TJContentActivity;->a:Lcom/tapjoy/TJContentActivity$ContentProducer;

    if-eqz v3, :cond_2

    sget-object v3, Lcom/tapjoy/TJContentActivity;->a:Lcom/tapjoy/TJContentActivity$ContentProducer;

    invoke-static {v3}, Lcom/tapjoy/TJContentActivity;->toIdentityString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/tapjoy/TJContentActivity;->a:Lcom/tapjoy/TJContentActivity$ContentProducer;

    iput-object v1, p0, Lcom/tapjoy/TJContentActivity;->b:Lcom/tapjoy/TJContentActivity$ContentProducer;

    const/4 v1, 0x0

    sput-object v1, Lcom/tapjoy/TJContentActivity;->a:Lcom/tapjoy/TJContentActivity$ContentProducer;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "com.tapjoy.internal.content.fullscreen"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/tapjoy/TJContentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Landroid/view/Window;->setFlags(II)V

    :cond_1
    iget-object v0, p0, Lcom/tapjoy/TJContentActivity;->b:Lcom/tapjoy/TJContentActivity$ContentProducer;

    invoke-interface {v0, p0}, Lcom/tapjoy/TJContentActivity$ContentProducer;->show(Landroid/app/Activity;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    :try_start_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static start(Landroid/content/Context;Lcom/tapjoy/TJContentActivity$ContentProducer;Z)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tapjoy/TJContentActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10810000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "com.tapjoy.internal.content.producer.id"

    invoke-static {p1}, Lcom/tapjoy/TJContentActivity;->toIdentityString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.tapjoy.internal.content.fullscreen"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-class v1, Lcom/tapjoy/TJContentActivity;

    monitor-enter v1

    :try_start_0
    sput-object p1, Lcom/tapjoy/TJContentActivity;->a:Lcom/tapjoy/TJContentActivity$ContentProducer;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static toIdentityString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string v0, "null"

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/TJContentActivity;->b:Lcom/tapjoy/TJContentActivity$ContentProducer;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/tapjoy/TJContentActivity$ContentProducer;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/inca/security/Proxy/AppGuardProxyActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tapjoy/TJContentActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/tapjoy/TJContentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tapjoy/TJContentActivity;->a(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/tapjoy/TJContentActivity;->finish()V

    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/TJContentActivity;->b:Lcom/tapjoy/TJContentActivity$ContentProducer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/TJContentActivity;->b:Lcom/tapjoy/TJContentActivity$ContentProducer;

    invoke-interface {v0, p0}, Lcom/tapjoy/TJContentActivity$ContentProducer;->dismiss(Landroid/app/Activity;)V

    :cond_0
    invoke-super {p0}, Lcom/inca/security/Proxy/AppGuardProxyActivity;->onDestroy()V

    return-void
.end method

.method protected onStart()V
    .locals 1

    invoke-super {p0}, Lcom/inca/security/Proxy/AppGuardProxyActivity;->onStart()V

    invoke-static {}, Lcom/tapjoy/internal/fz;->a()Lcom/tapjoy/internal/fz;

    move-result-object v0

    iget-boolean v0, v0, Lcom/tapjoy/internal/fz;->n:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/TJContentActivity;->c:Z

    invoke-static {p0}, Lcom/tapjoy/internal/fn;->a(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    iget-boolean v0, p0, Lcom/tapjoy/TJContentActivity;->c:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/TJContentActivity;->c:Z

    invoke-static {p0}, Lcom/tapjoy/internal/fn;->b(Landroid/app/Activity;)V

    :cond_0
    invoke-super {p0}, Lcom/inca/security/Proxy/AppGuardProxyActivity;->onStop()V

    return-void
.end method
