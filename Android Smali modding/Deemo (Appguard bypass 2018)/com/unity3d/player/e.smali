.class public final Lcom/unity3d/player/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unity3d/player/g;


# static fields
.field private static final a:Landroid/graphics/SurfaceTexture;


# instance fields
.field private volatile b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/graphics/SurfaceTexture;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    sput-object v0, Lcom/unity3d/player/e;->a:Landroid/graphics/SurfaceTexture;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/view/View;I)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/unity3d/player/e;->b:Z

    invoke-virtual {p0, p1, v0}, Lcom/unity3d/player/e;->a(Landroid/view/View;Z)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/unity3d/player/e$2;

    invoke-direct {v1, p0, p1}, Lcom/unity3d/player/e$2;-><init>(Lcom/unity3d/player/e;Landroid/view/View;)V

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/unity3d/player/e;Landroid/view/View;)V
    .locals 1

    const/16 v0, 0x3e8

    invoke-direct {p0, p1, v0}, Lcom/unity3d/player/e;->a(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic a(Lcom/unity3d/player/e;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/unity3d/player/e;->b:Z

    return v0
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 1

    new-instance v0, Lcom/unity3d/player/e$1;

    invoke-direct {v0, p0, p1}, Lcom/unity3d/player/e$1;-><init>(Lcom/unity3d/player/e;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    return-void
.end method

.method public final a(Landroid/view/View;Z)V
    .locals 1

    iput-boolean p2, p0, Lcom/unity3d/player/e;->b:Z

    iget-boolean v0, p0, Lcom/unity3d/player/e;->b:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    or-int/lit8 v0, v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    and-int/lit8 v0, v0, -0x2

    goto :goto_0
.end method

.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unity3d/player/e;->b:Z

    return v0
.end method

.method public final a(Landroid/hardware/Camera;)Z
    .locals 1

    :try_start_0
    sget-object v0, Lcom/unity3d/player/e;->a:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Landroid/view/View;)V
    .locals 1

    iget-boolean v0, p0, Lcom/unity3d/player/e;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/unity3d/player/e;->a(Landroid/view/View;Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unity3d/player/e;->b:Z

    const/16 v0, 0x1f4

    invoke-direct {p0, p1, v0}, Lcom/unity3d/player/e;->a(Landroid/view/View;I)V

    :cond_0
    return-void
.end method
