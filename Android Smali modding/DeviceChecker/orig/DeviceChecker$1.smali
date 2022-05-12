.class Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker$1;
.super Ljava/lang/Object;
.source "DeviceChecker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker;->DetectDevice(Ljava/lang/String;)V
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
    .line 158
    iput-object p1, p0, Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker$1;->this$0:Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker;

    iput-object p2, p0, Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker$1;->val$pCallBackMethod:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 161
    iget-object v1, p0, Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker$1;->this$0:Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker;

    invoke-static {v1}, Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker;->access$000(Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker;)Z

    move-result v0

    .line 162
    .local v0, "isEmulator":Z
    iget-object v1, p0, Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker$1;->this$0:Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "This System is Emulator: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker;->access$100(Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker;Ljava/lang/String;)V

    .line 163
    iget-object v2, p0, Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker$1;->this$0:Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker;

    iget-object v3, p0, Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker$1;->val$pCallBackMethod:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "y"

    :goto_0
    invoke-static {v2, v3, v1}, Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker;->access$200(Llib/bluegames/com/clubaudition/devicechecker/DeviceChecker;Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    return-void

    .line 163
    :cond_0
    const-string v1, "n"

    goto :goto_0
.end method
