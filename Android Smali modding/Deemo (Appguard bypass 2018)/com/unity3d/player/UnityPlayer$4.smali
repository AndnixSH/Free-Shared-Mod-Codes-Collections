.class final Lcom/unity3d/player/UnityPlayer$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/player/UnityPlayer;->showSoftInput(Ljava/lang/String;IZZZZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unity3d/player/UnityPlayer;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I

.field final synthetic d:Z

.field final synthetic e:Z

.field final synthetic f:Z

.field final synthetic g:Z

.field final synthetic h:Ljava/lang/String;

.field final synthetic i:Lcom/unity3d/player/UnityPlayer;


# direct methods
.method constructor <init>(Lcom/unity3d/player/UnityPlayer;Lcom/unity3d/player/UnityPlayer;Ljava/lang/String;IZZZZLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/UnityPlayer$4;->i:Lcom/unity3d/player/UnityPlayer;

    iput-object p2, p0, Lcom/unity3d/player/UnityPlayer$4;->a:Lcom/unity3d/player/UnityPlayer;

    iput-object p3, p0, Lcom/unity3d/player/UnityPlayer$4;->b:Ljava/lang/String;

    iput p4, p0, Lcom/unity3d/player/UnityPlayer$4;->c:I

    iput-boolean p5, p0, Lcom/unity3d/player/UnityPlayer$4;->d:Z

    iput-boolean p6, p0, Lcom/unity3d/player/UnityPlayer$4;->e:Z

    iput-boolean p7, p0, Lcom/unity3d/player/UnityPlayer$4;->f:Z

    iput-boolean p8, p0, Lcom/unity3d/player/UnityPlayer$4;->g:Z

    iput-object p9, p0, Lcom/unity3d/player/UnityPlayer$4;->h:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$4;->i:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v0}, Lcom/unity3d/player/UnityPlayer;->r(Lcom/unity3d/player/UnityPlayer;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$4;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v0}, Lcom/unity3d/player/UnityPlayer;->q(Lcom/unity3d/player/UnityPlayer;)Landroid/content/ContextWrapper;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$4;->i:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v0, v2}, Lcom/unity3d/player/UnityPlayer;->b(Lcom/unity3d/player/UnityPlayer;Z)Z

    :goto_0
    return-void

    :cond_0
    iget-object v9, p0, Lcom/unity3d/player/UnityPlayer$4;->i:Lcom/unity3d/player/UnityPlayer;

    new-instance v0, Lcom/unity3d/player/p;

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer$4;->i:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v1}, Lcom/unity3d/player/UnityPlayer;->q(Lcom/unity3d/player/UnityPlayer;)Landroid/content/ContextWrapper;

    move-result-object v1

    iget-object v2, p0, Lcom/unity3d/player/UnityPlayer$4;->a:Lcom/unity3d/player/UnityPlayer;

    iget-object v3, p0, Lcom/unity3d/player/UnityPlayer$4;->b:Ljava/lang/String;

    iget v4, p0, Lcom/unity3d/player/UnityPlayer$4;->c:I

    iget-boolean v5, p0, Lcom/unity3d/player/UnityPlayer$4;->d:Z

    iget-boolean v6, p0, Lcom/unity3d/player/UnityPlayer$4;->e:Z

    iget-boolean v7, p0, Lcom/unity3d/player/UnityPlayer$4;->f:Z

    iget-object v8, p0, Lcom/unity3d/player/UnityPlayer$4;->h:Ljava/lang/String;

    invoke-direct/range {v0 .. v8}, Lcom/unity3d/player/p;-><init>(Landroid/content/Context;Lcom/unity3d/player/UnityPlayer;Ljava/lang/String;IZZZLjava/lang/String;)V

    iput-object v0, v9, Lcom/unity3d/player/UnityPlayer;->b:Lcom/unity3d/player/p;

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$4;->i:Lcom/unity3d/player/UnityPlayer;

    iget-object v0, v0, Lcom/unity3d/player/UnityPlayer;->b:Lcom/unity3d/player/p;

    invoke-virtual {v0}, Lcom/unity3d/player/p;->show()V

    goto :goto_0
.end method
