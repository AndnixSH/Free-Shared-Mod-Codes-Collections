.class Lcom/vmos/ad/WrapRewardedAd$1;
.super Ljava/lang/Object;
.source "WrapRewardedAd.java"

# interfaces
.implements Lcom/vmos/glb/socket/SocketLongCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vmos/ad/WrapRewardedAd;-><init>(Lcom/vmos/activity/RendererActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vmos/ad/WrapRewardedAd;


# direct methods
.method constructor <init>(Lcom/vmos/ad/WrapRewardedAd;)V
    .locals 0

    iput-object p1, p0, Lcom/vmos/ad/WrapRewardedAd$1;->this$0:Lcom/vmos/ad/WrapRewardedAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public connectBreak()V
    .locals 0

    return-void
.end method

.method public connectSuc()V
    .locals 0

    return-void
.end method

.method public getData(Ljava/lang/String;I)V
    .locals 2

    iget-object p2, p0, Lcom/vmos/ad/WrapRewardedAd$1;->this$0:Lcom/vmos/ad/WrapRewardedAd;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getData s:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/vmos/ad/WrapRewardedAd;->log(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/vmos/ad/WrapRewardedAd$1;->this$0:Lcom/vmos/ad/WrapRewardedAd;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getData:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "action_open_root_request_ad"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/vmos/ad/WrapRewardedAd;->log(Ljava/lang/String;)V

    const-string p2, "action_open_root_request_ad"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p1, p0, Lcom/vmos/ad/WrapRewardedAd$1;->this$0:Lcom/vmos/ad/WrapRewardedAd;

    const-string p2, "ACTION_OPEN_ROOT_REQUEST_AD"

    invoke-virtual {p1, p2}, Lcom/vmos/ad/WrapRewardedAd;->log(Ljava/lang/String;)V

    const/16 p1, 0xbb9

    invoke-static {p1}, Lcom/vmos/glb/network/presenter/EventStatistics;->postEvent(I)V

    iget-object p1, p0, Lcom/vmos/ad/WrapRewardedAd$1;->this$0:Lcom/vmos/ad/WrapRewardedAd;

    iget-object p1, p1, Lcom/vmos/ad/WrapRewardedAd;->respGetAdEnble:Lcom/vmos/ad/RespGetAdEnble;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/vmos/ad/WrapRewardedAd$1;->this$0:Lcom/vmos/ad/WrapRewardedAd;

    iget-object p2, p0, Lcom/vmos/ad/WrapRewardedAd$1;->this$0:Lcom/vmos/ad/WrapRewardedAd;

    iget-object p2, p2, Lcom/vmos/ad/WrapRewardedAd;->mActivity:Lcom/vmos/activity/RendererActivity;

    invoke-virtual {p2}, Lcom/vmos/activity/RendererActivity;->getRespGetAdEnble()Lcom/vmos/ad/RespGetAdEnble;

    move-result-object p2

    iput-object p2, p1, Lcom/vmos/ad/WrapRewardedAd;->respGetAdEnble:Lcom/vmos/ad/RespGetAdEnble;

    :cond_1
    iget-object p1, p0, Lcom/vmos/ad/WrapRewardedAd$1;->this$0:Lcom/vmos/ad/WrapRewardedAd;

    iget-object p1, p1, Lcom/vmos/ad/WrapRewardedAd;->respGetAdEnble:Lcom/vmos/ad/RespGetAdEnble;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/vmos/ad/WrapRewardedAd$1;->this$0:Lcom/vmos/ad/WrapRewardedAd;

    iget-object p1, p1, Lcom/vmos/ad/WrapRewardedAd;->respGetAdEnble:Lcom/vmos/ad/RespGetAdEnble;

    invoke-virtual {p1}, Lcom/vmos/ad/RespGetAdEnble;->isOpenStartRootAd()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/vmos/ad/WrapRewardedAd$1;->this$0:Lcom/vmos/ad/WrapRewardedAd;

    iget-object p1, p1, Lcom/vmos/ad/WrapRewardedAd;->handler:Landroid/os/Handler;

    new-instance p2, Lcom/vmos/ad/WrapRewardedAd$1$1;

    invoke-direct {p2, p0}, Lcom/vmos/ad/WrapRewardedAd$1$1;-><init>(Lcom/vmos/ad/WrapRewardedAd$1;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/vmos/ad/WrapRewardedAd$1;->this$0:Lcom/vmos/ad/WrapRewardedAd;

    const-string p2, " \u4e0d\u9700\u8981\u770b\u5e7f\u544a"

    invoke-virtual {p1, p2}, Lcom/vmos/ad/WrapRewardedAd;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/vmos/glb/socket/SocketManagerServer;->getInstance()Lcom/vmos/glb/socket/SocketManagerServer;

    move-result-object p1

    const-string p2, "action_ad_is_ok"

    invoke-virtual {p1, p2}, Lcom/vmos/glb/socket/SocketManagerServer;->sendAll(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    new-instance p1, Lcom/vmos/glb/updateutils/update/net/PUpdate;

    invoke-direct {p1}, Lcom/vmos/glb/updateutils/update/net/PUpdate;-><init>()V

    new-instance p2, Lcom/vmos/ad/WrapRewardedAd$1$2;

    invoke-direct {p2, p0}, Lcom/vmos/ad/WrapRewardedAd$1$2;-><init>(Lcom/vmos/ad/WrapRewardedAd$1;)V

    invoke-virtual {p1, p2}, Lcom/vmos/glb/updateutils/update/net/PUpdate;->getAdEnble(Lcom/vmos/glb/updateutils/update/net/ICallback;)V

    goto :goto_0

    :cond_4
    const-string p2, "action_close_root"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    const/16 p1, 0xbbc

    invoke-static {p1}, Lcom/vmos/glb/network/presenter/EventStatistics;->postEvent(I)V

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/vmos/ad/WrapRewardedAd;->access$000()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SocketManagerServer s:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "end"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/vmos/ad/WrapRewardedAd;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SocketManagerServer OldSocketProtocol.ACTION_GET_READ_PHONE_STATE_PERMISS_ON:ACTION_GET_READ_PHONE_STATE_PERMISS_ONend"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/vmos/ad/WrapRewardedAd;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SocketManagerServer OldSocketProtocol.ACTION_SEND_REQUEST_READ_PHONE_STATE_PERMISS_ON:ACTION_SEND_REQUEST_READ_PHONE_STATE_PERMISS_ONend"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
