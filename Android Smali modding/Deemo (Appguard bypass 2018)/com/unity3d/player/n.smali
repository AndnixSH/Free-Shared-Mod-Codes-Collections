.class public final Lcom/unity3d/player/n;
.super Ljava/lang/Object;


# static fields
.field static final a:Z

.field static final b:Z

.field static final c:Z

.field static final d:Z

.field static final e:Lcom/unity3d/player/g;

.field static final f:Lcom/unity3d/player/f;

.field static final g:Lcom/unity3d/player/h;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v0, v4, :cond_1

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/unity3d/player/n;->a:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xc

    if-lt v0, v4, :cond_2

    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/unity3d/player/n;->b:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v0, v4, :cond_3

    move v0, v1

    :goto_2
    sput-boolean v0, Lcom/unity3d/player/n;->c:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v0, v4, :cond_4

    :goto_3
    sput-boolean v1, Lcom/unity3d/player/n;->d:Z

    sget-boolean v0, Lcom/unity3d/player/n;->a:Z

    if-eqz v0, :cond_5

    new-instance v0, Lcom/unity3d/player/e;

    invoke-direct {v0}, Lcom/unity3d/player/e;-><init>()V

    :goto_4
    sput-object v0, Lcom/unity3d/player/n;->e:Lcom/unity3d/player/g;

    sget-boolean v0, Lcom/unity3d/player/n;->b:Z

    if-eqz v0, :cond_6

    new-instance v0, Lcom/unity3d/player/d;

    invoke-direct {v0}, Lcom/unity3d/player/d;-><init>()V

    :goto_5
    sput-object v0, Lcom/unity3d/player/n;->f:Lcom/unity3d/player/f;

    sget-boolean v0, Lcom/unity3d/player/n;->d:Z

    if-eqz v0, :cond_0

    new-instance v3, Lcom/unity3d/player/k;

    invoke-direct {v3}, Lcom/unity3d/player/k;-><init>()V

    :cond_0
    sput-object v3, Lcom/unity3d/player/n;->g:Lcom/unity3d/player/h;

    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2

    :cond_4
    move v1, v2

    goto :goto_3

    :cond_5
    move-object v0, v3

    goto :goto_4

    :cond_6
    move-object v0, v3

    goto :goto_5
.end method
