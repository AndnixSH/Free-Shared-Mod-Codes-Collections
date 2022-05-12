.class final Lcom/unity3d/player/UnityPlayer$12$1;
.super Lcom/unity3d/player/UnityPlayer$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/player/UnityPlayer$12;->surfaceChanged(Landroid/view/SurfaceHolder;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lcom/unity3d/player/UnityPlayer$12;


# direct methods
.method constructor <init>(Lcom/unity3d/player/UnityPlayer$12;III)V
    .locals 2

    iput-object p1, p0, Lcom/unity3d/player/UnityPlayer$12$1;->d:Lcom/unity3d/player/UnityPlayer$12;

    iput p2, p0, Lcom/unity3d/player/UnityPlayer$12$1;->a:I

    iput p3, p0, Lcom/unity3d/player/UnityPlayer$12$1;->b:I

    iput p4, p0, Lcom/unity3d/player/UnityPlayer$12$1;->c:I

    iget-object v0, p1, Lcom/unity3d/player/UnityPlayer$12;->a:Lcom/unity3d/player/UnityPlayer;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/unity3d/player/UnityPlayer$c;-><init>(Lcom/unity3d/player/UnityPlayer;B)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    iget v1, p0, Lcom/unity3d/player/UnityPlayer$12$1;->b:I

    iget v0, p0, Lcom/unity3d/player/UnityPlayer$12$1;->c:I

    iget-object v2, p0, Lcom/unity3d/player/UnityPlayer$12$1;->d:Lcom/unity3d/player/UnityPlayer$12;

    iget-object v2, v2, Lcom/unity3d/player/UnityPlayer$12;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v2}, Lcom/unity3d/player/UnityPlayer;->d(Lcom/unity3d/player/UnityPlayer;)I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/unity3d/player/UnityPlayer$12$1;->d:Lcom/unity3d/player/UnityPlayer$12;

    iget-object v2, v2, Lcom/unity3d/player/UnityPlayer$12;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v2}, Lcom/unity3d/player/UnityPlayer;->e(Lcom/unity3d/player/UnityPlayer;)I

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    iget-object v2, p0, Lcom/unity3d/player/UnityPlayer$12$1;->d:Lcom/unity3d/player/UnityPlayer$12;

    iget-object v2, v2, Lcom/unity3d/player/UnityPlayer$12;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v2}, Lcom/unity3d/player/UnityPlayer;->d(Lcom/unity3d/player/UnityPlayer;)I

    move-result v2

    if-ne v2, v1, :cond_1

    iget-object v2, p0, Lcom/unity3d/player/UnityPlayer$12$1;->d:Lcom/unity3d/player/UnityPlayer$12;

    iget-object v2, v2, Lcom/unity3d/player/UnityPlayer$12;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v2}, Lcom/unity3d/player/UnityPlayer;->e(Lcom/unity3d/player/UnityPlayer;)I

    move-result v2

    if-eq v2, v0, :cond_2

    :cond_1
    sget-boolean v0, Lcom/unity3d/player/n;->a:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/unity3d/player/n;->e:Lcom/unity3d/player/g;

    invoke-interface {v0}, Lcom/unity3d/player/g;->a()Z

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer$12$1;->d:Lcom/unity3d/player/UnityPlayer$12;

    iget-object v1, v1, Lcom/unity3d/player/UnityPlayer$12;->a:Lcom/unity3d/player/UnityPlayer;

    iget-object v2, p0, Lcom/unity3d/player/UnityPlayer$12$1;->d:Lcom/unity3d/player/UnityPlayer$12;

    iget-object v2, v2, Lcom/unity3d/player/UnityPlayer$12;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v2}, Lcom/unity3d/player/UnityPlayer;->d(Lcom/unity3d/player/UnityPlayer;)I

    move-result v2

    iget-object v3, p0, Lcom/unity3d/player/UnityPlayer$12$1;->d:Lcom/unity3d/player/UnityPlayer$12;

    iget-object v3, v3, Lcom/unity3d/player/UnityPlayer$12;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v3}, Lcom/unity3d/player/UnityPlayer;->e(Lcom/unity3d/player/UnityPlayer;)I

    move-result v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/unity3d/player/UnityPlayer;->setScreenSize(IIZ)V

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$12$1;->d:Lcom/unity3d/player/UnityPlayer$12;

    iget-object v0, v0, Lcom/unity3d/player/UnityPlayer$12;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v0}, Lcom/unity3d/player/UnityPlayer;->d(Lcom/unity3d/player/UnityPlayer;)I

    move-result v1

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$12$1;->d:Lcom/unity3d/player/UnityPlayer$12;

    iget-object v0, v0, Lcom/unity3d/player/UnityPlayer$12;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v0}, Lcom/unity3d/player/UnityPlayer;->e(Lcom/unity3d/player/UnityPlayer;)I

    move-result v0

    :cond_2
    iget-object v2, p0, Lcom/unity3d/player/UnityPlayer$12$1;->d:Lcom/unity3d/player/UnityPlayer$12;

    iget-object v2, v2, Lcom/unity3d/player/UnityPlayer$12;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v2, v1}, Lcom/unity3d/player/UnityPlayer;->a(Lcom/unity3d/player/UnityPlayer;I)I

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer$12$1;->d:Lcom/unity3d/player/UnityPlayer$12;

    iget-object v1, v1, Lcom/unity3d/player/UnityPlayer$12;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v1, v0}, Lcom/unity3d/player/UnityPlayer;->b(Lcom/unity3d/player/UnityPlayer;I)I

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$12$1;->d:Lcom/unity3d/player/UnityPlayer$12;

    iget-object v0, v0, Lcom/unity3d/player/UnityPlayer$12;->a:Lcom/unity3d/player/UnityPlayer;

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer$12$1;->d:Lcom/unity3d/player/UnityPlayer$12;

    iget-object v1, v1, Lcom/unity3d/player/UnityPlayer$12;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v1}, Lcom/unity3d/player/UnityPlayer;->f(Lcom/unity3d/player/UnityPlayer;)I

    move-result v1

    iget-object v2, p0, Lcom/unity3d/player/UnityPlayer$12$1;->d:Lcom/unity3d/player/UnityPlayer$12;

    iget-object v2, v2, Lcom/unity3d/player/UnityPlayer$12;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v2}, Lcom/unity3d/player/UnityPlayer;->g(Lcom/unity3d/player/UnityPlayer;)I

    move-result v2

    iget-object v3, p0, Lcom/unity3d/player/UnityPlayer$12$1;->d:Lcom/unity3d/player/UnityPlayer$12;

    iget-object v3, v3, Lcom/unity3d/player/UnityPlayer$12;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v3}, Lcom/unity3d/player/UnityPlayer;->h(Lcom/unity3d/player/UnityPlayer;)Landroid/view/SurfaceView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/SurfaceView;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/unity3d/player/UnityPlayer$12$1;->d:Lcom/unity3d/player/UnityPlayer$12;

    iget-object v4, v4, Lcom/unity3d/player/UnityPlayer$12;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v4}, Lcom/unity3d/player/UnityPlayer;->h(Lcom/unity3d/player/UnityPlayer;)Landroid/view/SurfaceView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/SurfaceView;->getHeight()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/unity3d/player/UnityPlayer;->a(Lcom/unity3d/player/UnityPlayer;IIII)V

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$12$1;->d:Lcom/unity3d/player/UnityPlayer$12;

    iget-object v0, v0, Lcom/unity3d/player/UnityPlayer$12;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v0}, Lcom/unity3d/player/UnityPlayer;->i(Lcom/unity3d/player/UnityPlayer;)V

    return-void

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
