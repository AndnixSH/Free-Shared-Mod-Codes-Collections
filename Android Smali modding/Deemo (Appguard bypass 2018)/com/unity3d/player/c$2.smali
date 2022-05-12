.class final Lcom/unity3d/player/c$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/player/c;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unity3d/player/c;


# direct methods
.method constructor <init>(Lcom/unity3d/player/c;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/c$2;->a:Lcom/unity3d/player/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/unity3d/player/c$2;->a:Lcom/unity3d/player/c;

    invoke-static {v0}, Lcom/unity3d/player/c;->a(Lcom/unity3d/player/c;)Landroid/view/SurfaceView;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/unity3d/player/q;->a:Lcom/unity3d/player/q;

    iget-object v1, p0, Lcom/unity3d/player/c$2;->a:Lcom/unity3d/player/c;

    invoke-static {v1}, Lcom/unity3d/player/c;->a(Lcom/unity3d/player/c;)Landroid/view/SurfaceView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unity3d/player/q;->b(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/unity3d/player/c$2;->a:Lcom/unity3d/player/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/unity3d/player/c;->a(Lcom/unity3d/player/c;Landroid/view/SurfaceView;)Landroid/view/SurfaceView;

    return-void
.end method
