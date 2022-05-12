.class Lcom/vmos/ad/WrapRewardedAd$1$2;
.super Ljava/lang/Object;
.source "WrapRewardedAd.java"

# interfaces
.implements Lcom/vmos/glb/updateutils/update/net/ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vmos/ad/WrapRewardedAd$1;->getData(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vmos/ad/WrapRewardedAd$1;


# direct methods
.method constructor <init>(Lcom/vmos/ad/WrapRewardedAd$1;)V
    .locals 0

    iput-object p1, p0, Lcom/vmos/ad/WrapRewardedAd$1$2;->this$1:Lcom/vmos/ad/WrapRewardedAd$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErro(Ljava/lang/String;)V
    .locals 2

    iget-object p1, p0, Lcom/vmos/ad/WrapRewardedAd$1$2;->this$1:Lcom/vmos/ad/WrapRewardedAd$1;

    iget-object p1, p1, Lcom/vmos/ad/WrapRewardedAd$1;->this$0:Lcom/vmos/ad/WrapRewardedAd;

    iget-object p1, p1, Lcom/vmos/ad/WrapRewardedAd;->mActivity:Lcom/vmos/activity/RendererActivity;

    const v0, 0x7f0e006b

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/vmos/ad/WrapRewardedAd$1$2;->this$1:Lcom/vmos/ad/WrapRewardedAd$1;

    iget-object v0, v0, Lcom/vmos/ad/WrapRewardedAd$1;->this$0:Lcom/vmos/ad/WrapRewardedAd;

    check-cast p1, Lcom/vmos/ad/RespGetAdEnble;

    iput-object p1, v0, Lcom/vmos/ad/WrapRewardedAd;->respGetAdEnble:Lcom/vmos/ad/RespGetAdEnble;

    iget-object p1, p0, Lcom/vmos/ad/WrapRewardedAd$1$2;->this$1:Lcom/vmos/ad/WrapRewardedAd$1;

    iget-object p1, p1, Lcom/vmos/ad/WrapRewardedAd$1;->this$0:Lcom/vmos/ad/WrapRewardedAd;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "respGetAdEnble:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vmos/ad/WrapRewardedAd$1$2;->this$1:Lcom/vmos/ad/WrapRewardedAd$1;

    iget-object v1, v1, Lcom/vmos/ad/WrapRewardedAd$1;->this$0:Lcom/vmos/ad/WrapRewardedAd;

    iget-object v1, v1, Lcom/vmos/ad/WrapRewardedAd;->respGetAdEnble:Lcom/vmos/ad/RespGetAdEnble;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/vmos/ad/WrapRewardedAd;->log(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/vmos/ad/WrapRewardedAd$1$2;->this$1:Lcom/vmos/ad/WrapRewardedAd$1;

    iget-object p1, p1, Lcom/vmos/ad/WrapRewardedAd$1;->this$0:Lcom/vmos/ad/WrapRewardedAd;

    iget-object p1, p1, Lcom/vmos/ad/WrapRewardedAd;->respGetAdEnble:Lcom/vmos/ad/RespGetAdEnble;

    invoke-virtual {p1}, Lcom/vmos/ad/RespGetAdEnble;->isOpenStartRootAd()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/vmos/ad/WrapRewardedAd$1$2;->this$1:Lcom/vmos/ad/WrapRewardedAd$1;

    iget-object p1, p1, Lcom/vmos/ad/WrapRewardedAd$1;->this$0:Lcom/vmos/ad/WrapRewardedAd;

    iget-object p1, p1, Lcom/vmos/ad/WrapRewardedAd;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/vmos/ad/WrapRewardedAd$1$2$1;

    invoke-direct {v0, p0}, Lcom/vmos/ad/WrapRewardedAd$1$2$1;-><init>(Lcom/vmos/ad/WrapRewardedAd$1$2;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/vmos/glb/socket/SocketManagerServer;->getInstance()Lcom/vmos/glb/socket/SocketManagerServer;

    move-result-object p1

    const-string v0, "action_ad_is_ok"

    invoke-virtual {p1, v0}, Lcom/vmos/glb/socket/SocketManagerServer;->sendAll(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
