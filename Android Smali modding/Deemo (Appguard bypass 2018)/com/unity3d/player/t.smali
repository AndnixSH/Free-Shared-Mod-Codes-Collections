.class public final Lcom/unity3d/player/t;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/widget/MediaController$MediaPlayerControl;


# static fields
.field private static final A:Z

.field private static a:Z


# instance fields
.field private final b:Lcom/unity3d/player/UnityPlayer;

.field private final c:Landroid/content/Context;

.field private final d:Landroid/view/SurfaceView;

.field private final e:Landroid/view/SurfaceHolder;

.field private final f:Ljava/lang/String;

.field private final g:I

.field private final h:I

.field private final i:Z

.field private final j:J

.field private final k:J

.field private final l:Landroid/widget/FrameLayout;

.field private final m:Landroid/hardware/SensorManager;

.field private final n:Landroid/view/Display;

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:Landroid/media/MediaPlayer;

.field private t:Landroid/widget/MediaController;

.field private u:Z

.field private v:Z

.field private w:I

.field private x:Z

.field private y:I

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    sput-boolean v0, Lcom/unity3d/player/t;->a:Z

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v2, "Amazon"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "KFTT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "KFJWI"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "KFJWA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "KFSOWI"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "KFTHWA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "KFTHWI"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "KFAPWA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "KFAPWI"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    sput-boolean v0, Lcom/unity3d/player/t;->A:Z

    return-void
.end method

.method protected constructor <init>(Lcom/unity3d/player/UnityPlayer;Landroid/content/Context;Ljava/lang/String;IIIZJJ)V
    .locals 4

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unity3d/player/t;->u:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unity3d/player/t;->v:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/unity3d/player/t;->w:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unity3d/player/t;->x:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/unity3d/player/t;->y:I

    iput-object p1, p0, Lcom/unity3d/player/t;->b:Lcom/unity3d/player/UnityPlayer;

    iput-object p2, p0, Lcom/unity3d/player/t;->c:Landroid/content/Context;

    iput-object p0, p0, Lcom/unity3d/player/t;->l:Landroid/widget/FrameLayout;

    new-instance v0, Landroid/view/SurfaceView;

    invoke-direct {v0, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unity3d/player/t;->d:Landroid/view/SurfaceView;

    iget-object v0, p0, Lcom/unity3d/player/t;->d:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/player/t;->e:Landroid/view/SurfaceHolder;

    iget-object v0, p0, Lcom/unity3d/player/t;->e:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    iget-object v0, p0, Lcom/unity3d/player/t;->e:Landroid/view/SurfaceHolder;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    iget-object v0, p0, Lcom/unity3d/player/t;->l:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p4}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/unity3d/player/t;->l:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/unity3d/player/t;->d:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/unity3d/player/t;->c:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/unity3d/player/t;->m:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/unity3d/player/t;->c:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/player/t;->n:Landroid/view/Display;

    iput-object p3, p0, Lcom/unity3d/player/t;->f:Ljava/lang/String;

    iput p5, p0, Lcom/unity3d/player/t;->g:I

    iput p6, p0, Lcom/unity3d/player/t;->h:I

    iput-boolean p7, p0, Lcom/unity3d/player/t;->i:Z

    iput-wide p8, p0, Lcom/unity3d/player/t;->j:J

    iput-wide p10, p0, Lcom/unity3d/player/t;->k:J

    sget-boolean v0, Lcom/unity3d/player/t;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "fileName: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unity3d/player/t;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/player/t;->a(Ljava/lang/String;)V

    :cond_0
    sget-boolean v0, Lcom/unity3d/player/t;->a:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "backgroundColor: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/player/t;->a(Ljava/lang/String;)V

    :cond_1
    sget-boolean v0, Lcom/unity3d/player/t;->a:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "controlMode: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/unity3d/player/t;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/player/t;->a(Ljava/lang/String;)V

    :cond_2
    sget-boolean v0, Lcom/unity3d/player/t;->a:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "scalingMode: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/unity3d/player/t;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/player/t;->a(Ljava/lang/String;)V

    :cond_3
    sget-boolean v0, Lcom/unity3d/player/t;->a:Z

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isURL: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/unity3d/player/t;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/player/t;->a(Ljava/lang/String;)V

    :cond_4
    sget-boolean v0, Lcom/unity3d/player/t;->a:Z

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "videoOffset: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/unity3d/player/t;->j:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/player/t;->a(Ljava/lang/String;)V

    :cond_5
    sget-boolean v0, Lcom/unity3d/player/t;->a:Z

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "videoLength: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/unity3d/player/t;->k:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/player/t;->a(Ljava/lang/String;)V

    :cond_6
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/unity3d/player/t;->setFocusable(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/unity3d/player/t;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/unity3d/player/t;->m:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/unity3d/player/t;->m:Landroid/hardware/SensorManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unity3d/player/t;->z:Z

    return-void
.end method

.method static synthetic a(Lcom/unity3d/player/t;)Lcom/unity3d/player/UnityPlayer;
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/t;->b:Lcom/unity3d/player/UnityPlayer;

    return-object v0
.end method

.method private a()V
    .locals 8

    const/4 v7, 0x1

    invoke-virtual {p0}, Lcom/unity3d/player/t;->doCleanUp()V

    :try_start_0
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/unity3d/player/t;->s:Landroid/media/MediaPlayer;

    iget-boolean v0, p0, Lcom/unity3d/player/t;->i:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/unity3d/player/t;->s:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/unity3d/player/t;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/unity3d/player/t;->f:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    :goto_0
    iget-object v0, p0, Lcom/unity3d/player/t;->s:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/unity3d/player/t;->e:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    iget-object v0, p0, Lcom/unity3d/player/t;->s:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    iget-object v0, p0, Lcom/unity3d/player/t;->s:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcom/unity3d/player/t;->s:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lcom/unity3d/player/t;->s:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    iget-object v0, p0, Lcom/unity3d/player/t;->s:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    iget-object v0, p0, Lcom/unity3d/player/t;->s:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    iget v0, p0, Lcom/unity3d/player/t;->g:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/unity3d/player/t;->g:I

    if-ne v0, v7, :cond_1

    :cond_0
    new-instance v0, Landroid/widget/MediaController;

    iget-object v1, p0, Lcom/unity3d/player/t;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unity3d/player/t;->t:Landroid/widget/MediaController;

    iget-object v0, p0, Lcom/unity3d/player/t;->t:Landroid/widget/MediaController;

    invoke-virtual {v0, p0}, Landroid/widget/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    iget-object v0, p0, Lcom/unity3d/player/t;->t:Landroid/widget/MediaController;

    iget-object v1, p0, Lcom/unity3d/player/t;->d:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/unity3d/player/t;->t:Landroid/widget/MediaController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->setEnabled(Z)V

    iget-object v0, p0, Lcom/unity3d/player/t;->t:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-wide v0, p0, Lcom/unity3d/player/t;->k:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    new-instance v6, Ljava/io/FileInputStream;

    iget-object v0, p0, Lcom/unity3d/player/t;->f:Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unity3d/player/t;->s:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    iget-wide v2, p0, Lcom/unity3d/player/t;->j:J

    iget-wide v4, p0, Lcom/unity3d/player/t;->k:J

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/unity3d/player/t;->a:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/player/t;->a(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p0}, Lcom/unity3d/player/t;->onDestroy()V

    goto :goto_1

    :cond_4
    :try_start_1
    invoke-virtual {p0}, Lcom/unity3d/player/t;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    :try_start_2
    iget-object v1, p0, Lcom/unity3d/player/t;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    iget-object v0, p0, Lcom/unity3d/player/t;->s:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_1
    move-exception v0

    :try_start_3
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/unity3d/player/t;->f:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unity3d/player/t;->s:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0
.end method

.method private static a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "Video"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private b()V
    .locals 1

    invoke-virtual {p0}, Lcom/unity3d/player/t;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Lcom/unity3d/player/t;->a:Z

    if-eqz v0, :cond_2

    const-string v0, "startVideoPlayback"

    invoke-static {v0}, Lcom/unity3d/player/t;->a(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lcom/unity3d/player/t;->updateVideoLayout()V

    iget-boolean v0, p0, Lcom/unity3d/player/t;->x:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/unity3d/player/t;->start()V

    goto :goto_0
.end method

.method public static calculateDeviceOrientation(Landroid/hardware/SensorEvent;Landroid/view/Display;)I
    .locals 11

    const/4 v5, 0x2

    const/high16 v7, -0x40800000    # -1.0f

    const/4 v6, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v2

    iget-object v1, p0, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v6

    iget-object v3, p0, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v5

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float v8, v0, v0

    mul-float v9, v1, v1

    add-float/2addr v8, v9

    mul-float v9, v3, v3

    add-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v8, v8

    div-float/2addr v4, v8

    mul-float/2addr v0, v4

    mul-float/2addr v1, v4

    mul-float/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/Display;->getOrientation()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/Display;->getHeight()I

    move-result v8

    invoke-virtual {p1}, Landroid/view/Display;->getWidth()I

    move-result v9

    if-le v8, v9, :cond_5

    move v8, v6

    :goto_0
    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_6

    move v4, v6

    :goto_1
    xor-int/2addr v4, v8

    if-eqz v4, :cond_a

    neg-float v0, v0

    :goto_2
    sget-boolean v4, Lcom/unity3d/player/t;->A:Z

    if-eqz v4, :cond_9

    neg-float v4, v1

    :goto_3
    cmpg-float v1, v7, v0

    if-gez v1, :cond_8

    move v1, v6

    move v6, v0

    :goto_4
    neg-float v7, v0

    cmpg-float v7, v6, v7

    if-gez v7, :cond_7

    neg-float v1, v0

    move v0, v5

    :goto_5
    cmpg-float v5, v1, v4

    if-gez v5, :cond_0

    const/4 v0, 0x3

    move v1, v4

    :cond_0
    neg-float v5, v4

    cmpg-float v5, v1, v5

    if-gez v5, :cond_1

    neg-float v1, v4

    const/4 v0, 0x4

    :cond_1
    cmpg-float v4, v1, v3

    if-gez v4, :cond_2

    const/4 v0, 0x5

    move v1, v3

    :cond_2
    neg-float v4, v3

    cmpg-float v4, v1, v4

    if-gez v4, :cond_3

    neg-float v1, v3

    const/4 v0, 0x6

    :cond_3
    float-to-double v4, v1

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v8, 0x4008000000000000L    # 3.0

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    cmpg-double v1, v4, v6

    if-gez v1, :cond_4

    move v0, v2

    :cond_4
    return v0

    :cond_5
    move v8, v2

    goto :goto_0

    :cond_6
    move v4, v2

    goto :goto_1

    :cond_7
    move v0, v1

    move v1, v6

    goto :goto_5

    :cond_8
    move v1, v2

    move v6, v7

    goto :goto_4

    :cond_9
    move v4, v1

    goto :goto_3

    :cond_a
    move v10, v1

    move v1, v0

    move v0, v10

    goto :goto_2
.end method


# virtual methods
.method public final canPause()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final canSeekBackward()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final canSeekForward()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected final doCleanUp()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/unity3d/player/t;->s:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/player/t;->s:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/player/t;->s:Landroid/media/MediaPlayer;

    :cond_0
    iput v1, p0, Lcom/unity3d/player/t;->q:I

    iput v1, p0, Lcom/unity3d/player/t;->r:I

    iput-boolean v1, p0, Lcom/unity3d/player/t;->v:Z

    iput-boolean v1, p0, Lcom/unity3d/player/t;->u:Z

    return-void
.end method

.method public final getBufferPercentage()I
    .locals 1

    iget-boolean v0, p0, Lcom/unity3d/player/t;->i:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/unity3d/player/t;->w:I

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x64

    goto :goto_0
.end method

.method public final getCurrentPosition()I
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/t;->s:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/unity3d/player/t;->s:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    goto :goto_0
.end method

.method public final getDuration()I
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/t;->s:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/unity3d/player/t;->s:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    goto :goto_0
.end method

.method public final isPlaying()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/unity3d/player/t;->v:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/unity3d/player/t;->u:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/unity3d/player/t;->s:Landroid/media/MediaPlayer;

    if-nez v3, :cond_3

    if-nez v0, :cond_2

    :cond_0
    :goto_1
    return v1

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/unity3d/player/t;->s:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v0, :cond_0

    move v1, v2

    goto :goto_1
.end method

.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public final onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 2

    sget-boolean v0, Lcom/unity3d/player/t;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onBufferingUpdate percent:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/player/t;->a(Ljava/lang/String;)V

    :cond_0
    iput p2, p0, Lcom/unity3d/player/t;->w:I

    return-void
.end method

.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    sget-boolean v0, Lcom/unity3d/player/t;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "onCompletion called"

    invoke-static {v0}, Lcom/unity3d/player/t;->a(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/unity3d/player/t;->onDestroy()V

    return-void
.end method

.method public final onControllerHide()V
    .locals 0

    return-void
.end method

.method protected final onDestroy()V
    .locals 1

    invoke-virtual {p0}, Lcom/unity3d/player/t;->onPause()V

    invoke-virtual {p0}, Lcom/unity3d/player/t;->doCleanUp()V

    new-instance v0, Lcom/unity3d/player/t$1;

    invoke-direct {v0, p0}, Lcom/unity3d/player/t$1;-><init>(Lcom/unity3d/player/t;)V

    invoke-static {v0}, Lcom/unity3d/player/UnityPlayer;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    iget v0, p0, Lcom/unity3d/player/t;->g:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/unity3d/player/t;->onDestroy()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/unity3d/player/t;->t:Landroid/widget/MediaController;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/unity3d/player/t;->t:Landroid/widget/MediaController;

    invoke-virtual {v0, p1, p2}, Landroid/widget/MediaController;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected final onPause()V
    .locals 2

    const/4 v1, 0x0

    sget-boolean v0, Lcom/unity3d/player/t;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "onPause called"

    invoke-static {v0}, Lcom/unity3d/player/t;->a(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/unity3d/player/t;->m:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    iget-boolean v0, p0, Lcom/unity3d/player/t;->x:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/unity3d/player/t;->pause()V

    iput-boolean v1, p0, Lcom/unity3d/player/t;->x:Z

    :cond_1
    iget-object v0, p0, Lcom/unity3d/player/t;->s:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/unity3d/player/t;->s:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/unity3d/player/t;->y:I

    :cond_2
    iput-boolean v1, p0, Lcom/unity3d/player/t;->z:Z

    return-void
.end method

.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    sget-boolean v0, Lcom/unity3d/player/t;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "onPrepared called"

    invoke-static {v0}, Lcom/unity3d/player/t;->a(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unity3d/player/t;->v:Z

    iget-boolean v0, p0, Lcom/unity3d/player/t;->v:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/unity3d/player/t;->u:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/unity3d/player/t;->b()V

    :cond_1
    return-void
.end method

.method protected final onResume()V
    .locals 3

    const/4 v2, 0x1

    sget-boolean v0, Lcom/unity3d/player/t;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "onResume called"

    invoke-static {v0}, Lcom/unity3d/player/t;->a(Ljava/lang/String;)V

    :cond_0
    iget-boolean v0, p0, Lcom/unity3d/player/t;->z:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/unity3d/player/t;->m:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/unity3d/player/t;->m:Landroid/hardware/SensorManager;

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    iget-boolean v0, p0, Lcom/unity3d/player/t;->x:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/unity3d/player/t;->start()V

    :cond_1
    iput-boolean v2, p0, Lcom/unity3d/player/t;->z:Z

    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2

    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/unity3d/player/t;->n:Landroid/view/Display;

    invoke-static {p1, v0}, Lcom/unity3d/player/t;->calculateDeviceOrientation(Landroid/hardware/SensorEvent;Landroid/view/Display;)I

    move-result v0

    iget-object v1, p0, Lcom/unity3d/player/t;->b:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v1, v0}, Lcom/unity3d/player/UnityPlayer;->nativeDeviceOrientation(I)V

    :cond_0
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iget v1, p0, Lcom/unity3d/player/t;->g:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/unity3d/player/t;->onDestroy()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/unity3d/player/t;->t:Landroid/widget/MediaController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unity3d/player/t;->t:Landroid/widget/MediaController;

    invoke-virtual {v0, p1}, Landroid/widget/MediaController;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public final onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 2

    sget-boolean v0, Lcom/unity3d/player/t;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onVideoSizeChanged called "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/player/t;->a(Ljava/lang/String;)V

    :cond_0
    if-eqz p2, :cond_1

    if-nez p3, :cond_3

    :cond_1
    sget-boolean v0, Lcom/unity3d/player/t;->a:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invalid video width("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") or height("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/player/t;->a(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unity3d/player/t;->u:Z

    iput p2, p0, Lcom/unity3d/player/t;->q:I

    iput p3, p0, Lcom/unity3d/player/t;->r:I

    iget-boolean v0, p0, Lcom/unity3d/player/t;->v:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/unity3d/player/t;->u:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/unity3d/player/t;->b()V

    goto :goto_0
.end method

.method public final pause()V
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/t;->s:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/unity3d/player/t;->s:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unity3d/player/t;->x:Z

    goto :goto_0
.end method

.method public final seekTo(I)V
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/t;->s:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/unity3d/player/t;->s:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    goto :goto_0
.end method

.method public final start()V
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/t;->s:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/unity3d/player/t;->s:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unity3d/player/t;->x:Z

    goto :goto_0
.end method

.method public final surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2

    sget-boolean v0, Lcom/unity3d/player/t;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "surfaceChanged called "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/player/t;->a(Ljava/lang/String;)V

    :cond_0
    iput p3, p0, Lcom/unity3d/player/t;->o:I

    iput p4, p0, Lcom/unity3d/player/t;->p:I

    return-void
.end method

.method public final surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    sget-boolean v0, Lcom/unity3d/player/t;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "surfaceCreated called"

    invoke-static {v0}, Lcom/unity3d/player/t;->a(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/unity3d/player/t;->a()V

    iget v0, p0, Lcom/unity3d/player/t;->y:I

    invoke-virtual {p0, v0}, Lcom/unity3d/player/t;->seekTo(I)V

    return-void
.end method

.method public final surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    sget-boolean v0, Lcom/unity3d/player/t;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "surfaceDestroyed called"

    invoke-static {v0}, Lcom/unity3d/player/t;->a(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/unity3d/player/t;->doCleanUp()V

    return-void
.end method

.method protected final updateVideoLayout()V
    .locals 5

    sget-boolean v0, Lcom/unity3d/player/t;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "updateVideoLayout"

    invoke-static {v0}, Lcom/unity3d/player/t;->a(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/unity3d/player/t;->c:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/unity3d/player/t;->o:I

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/unity3d/player/t;->p:I

    iget v1, p0, Lcom/unity3d/player/t;->o:I

    iget v0, p0, Lcom/unity3d/player/t;->p:I

    iget v2, p0, Lcom/unity3d/player/t;->h:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    iget v2, p0, Lcom/unity3d/player/t;->h:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    :cond_1
    iget v2, p0, Lcom/unity3d/player/t;->q:I

    int-to-float v2, v2

    iget v3, p0, Lcom/unity3d/player/t;->r:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget v3, p0, Lcom/unity3d/player/t;->o:I

    int-to-float v3, v3

    iget v4, p0, Lcom/unity3d/player/t;->p:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    cmpg-float v3, v3, v2

    if-gtz v3, :cond_4

    iget v0, p0, Lcom/unity3d/player/t;->o:I

    int-to-float v0, v0

    div-float/2addr v0, v2

    float-to-int v0, v0

    :cond_2
    :goto_0
    sget-boolean v2, Lcom/unity3d/player/t;->a:Z

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "frameWidth = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; frameHeight = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/unity3d/player/t;->a(Ljava/lang/String;)V

    :cond_3
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x11

    invoke-direct {v2, v1, v0, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget-object v0, p0, Lcom/unity3d/player/t;->l:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/unity3d/player/t;->d:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_4
    iget v1, p0, Lcom/unity3d/player/t;->p:I

    int-to-float v1, v1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    goto :goto_0

    :cond_5
    iget v2, p0, Lcom/unity3d/player/t;->h:I

    if-nez v2, :cond_2

    iget v1, p0, Lcom/unity3d/player/t;->q:I

    iget v0, p0, Lcom/unity3d/player/t;->r:I

    goto :goto_0
.end method
