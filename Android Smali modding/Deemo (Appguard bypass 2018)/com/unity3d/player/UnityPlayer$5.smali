.class final Lcom/unity3d/player/UnityPlayer$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/player/UnityPlayer;->hideSoftInput()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unity3d/player/UnityPlayer;


# direct methods
.method constructor <init>(Lcom/unity3d/player/UnityPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/UnityPlayer$5;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$5;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v0}, Lcom/unity3d/player/UnityPlayer;->s(Lcom/unity3d/player/UnityPlayer;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$5;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v0}, Lcom/unity3d/player/UnityPlayer;->q(Lcom/unity3d/player/UnityPlayer;)Landroid/content/ContextWrapper;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$5;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v0, v2}, Lcom/unity3d/player/UnityPlayer;->b(Lcom/unity3d/player/UnityPlayer;Z)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$5;->a:Lcom/unity3d/player/UnityPlayer;

    iget-object v0, v0, Lcom/unity3d/player/UnityPlayer;->b:Lcom/unity3d/player/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$5;->a:Lcom/unity3d/player/UnityPlayer;

    iget-object v0, v0, Lcom/unity3d/player/UnityPlayer;->b:Lcom/unity3d/player/p;

    invoke-virtual {v0}, Lcom/unity3d/player/p;->dismiss()V

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$5;->a:Lcom/unity3d/player/UnityPlayer;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/unity3d/player/UnityPlayer;->b:Lcom/unity3d/player/p;

    goto :goto_0
.end method
