.class final Lcom/unity3d/player/UnityPlayer$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/player/UnityPlayer;->setScreenSize(IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:Landroid/view/SurfaceView;

.field final synthetic d:I

.field final synthetic e:I

.field final synthetic f:Z

.field final synthetic g:Lcom/unity3d/player/UnityPlayer;


# direct methods
.method constructor <init>(Lcom/unity3d/player/UnityPlayer;ZZLandroid/view/SurfaceView;IIZ)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/UnityPlayer$3;->g:Lcom/unity3d/player/UnityPlayer;

    iput-boolean p2, p0, Lcom/unity3d/player/UnityPlayer$3;->a:Z

    iput-boolean p3, p0, Lcom/unity3d/player/UnityPlayer$3;->b:Z

    iput-object p4, p0, Lcom/unity3d/player/UnityPlayer$3;->c:Landroid/view/SurfaceView;

    iput p5, p0, Lcom/unity3d/player/UnityPlayer$3;->d:I

    iput p6, p0, Lcom/unity3d/player/UnityPlayer$3;->e:I

    iput-boolean p7, p0, Lcom/unity3d/player/UnityPlayer$3;->f:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-boolean v0, p0, Lcom/unity3d/player/UnityPlayer$3;->a:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/unity3d/player/UnityPlayer$3;->b:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$3;->c:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->setSizeFromLayout()V

    :goto_0
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$3;->c:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->invalidate()V

    :cond_0
    sget-boolean v0, Lcom/unity3d/player/n;->a:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/unity3d/player/n;->e:Lcom/unity3d/player/g;

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer$3;->g:Lcom/unity3d/player/UnityPlayer;

    iget-boolean v2, p0, Lcom/unity3d/player/UnityPlayer$3;->f:Z

    invoke-interface {v0, v1, v2}, Lcom/unity3d/player/g;->a(Landroid/view/View;Z)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$3;->c:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget v1, p0, Lcom/unity3d/player/UnityPlayer$3;->d:I

    iget v2, p0, Lcom/unity3d/player/UnityPlayer$3;->e:I

    invoke-interface {v0, v1, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    goto :goto_0
.end method
