.class abstract Lcom/soundcloud/android/crop/MonitoredActivity;
.super Landroid/app/Activity;
.source "MonitoredActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/soundcloud/android/crop/MonitoredActivity$LifeCycleAdapter;,
        Lcom/soundcloud/android/crop/MonitoredActivity$LifeCycleListener;
    }
.end annotation


# instance fields
.field private final listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/soundcloud/android/crop/MonitoredActivity$LifeCycleListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/soundcloud/android/crop/MonitoredActivity;->listeners:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addLifeCycleListener(Lcom/soundcloud/android/crop/MonitoredActivity$LifeCycleListener;)V
    .locals 1

    iget-object v0, p0, Lcom/soundcloud/android/crop/MonitoredActivity;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/soundcloud/android/crop/MonitoredActivity;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/soundcloud/android/crop/MonitoredActivity;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/soundcloud/android/crop/MonitoredActivity$LifeCycleListener;

    invoke-interface {v0, p0}, Lcom/soundcloud/android/crop/MonitoredActivity$LifeCycleListener;->onActivityCreated(Lcom/soundcloud/android/crop/MonitoredActivity;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v1, p0, Lcom/soundcloud/android/crop/MonitoredActivity;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/soundcloud/android/crop/MonitoredActivity$LifeCycleListener;

    invoke-interface {v0, p0}, Lcom/soundcloud/android/crop/MonitoredActivity$LifeCycleListener;->onActivityDestroyed(Lcom/soundcloud/android/crop/MonitoredActivity;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    iget-object v1, p0, Lcom/soundcloud/android/crop/MonitoredActivity;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/soundcloud/android/crop/MonitoredActivity$LifeCycleListener;

    invoke-interface {v0, p0}, Lcom/soundcloud/android/crop/MonitoredActivity$LifeCycleListener;->onActivityStarted(Lcom/soundcloud/android/crop/MonitoredActivity;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    iget-object v1, p0, Lcom/soundcloud/android/crop/MonitoredActivity;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/soundcloud/android/crop/MonitoredActivity$LifeCycleListener;

    invoke-interface {v0, p0}, Lcom/soundcloud/android/crop/MonitoredActivity$LifeCycleListener;->onActivityStopped(Lcom/soundcloud/android/crop/MonitoredActivity;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeLifeCycleListener(Lcom/soundcloud/android/crop/MonitoredActivity$LifeCycleListener;)V
    .locals 1

    iget-object v0, p0, Lcom/soundcloud/android/crop/MonitoredActivity;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
