.class Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker$3;
.super Ljava/lang/Object;
.source "DeviceChecker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker;->CheckRunningApp(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker;

.field final synthetic val$pCallBackMethod:Ljava/lang/String;


# direct methods
.method constructor <init>(Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker;

    .prologue
    .line 519
    iput-object p1, p0, Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker$3;->this$0:Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker;

    iput-object p2, p0, Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker$3;->val$pCallBackMethod:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    return-void
.end method
