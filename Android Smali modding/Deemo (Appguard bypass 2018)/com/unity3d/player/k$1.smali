.class final Lcom/unity3d/player/k$1;
.super Landroid/app/Fragment;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/player/k;->a(Landroid/app/Activity;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Landroid/app/FragmentManager;

.field final synthetic c:Ljava/lang/Runnable;

.field final synthetic d:Lcom/unity3d/player/k;


# direct methods
.method constructor <init>(Lcom/unity3d/player/k;Ljava/util/List;Landroid/app/FragmentManager;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/k$1;->d:Lcom/unity3d/player/k;

    iput-object p2, p0, Lcom/unity3d/player/k$1;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/unity3d/player/k$1;->b:Landroid/app/FragmentManager;

    iput-object p4, p0, Lcom/unity3d/player/k$1;->c:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    const/16 v0, 0x3e09

    if-eq p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/unity3d/player/k$1;->b:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    iget-object v0, p0, Lcom/unity3d/player/k$1;->c:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public final onStart()V
    .locals 2

    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    iget-object v0, p0, Lcom/unity3d/player/k$1;->a:Ljava/util/List;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/16 v1, 0x3e09

    invoke-virtual {p0, v0, v1}, Lcom/unity3d/player/k$1;->requestPermissions([Ljava/lang/String;I)V

    return-void
.end method
