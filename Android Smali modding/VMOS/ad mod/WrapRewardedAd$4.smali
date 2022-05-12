.class Lcom/vmos/ad/WrapRewardedAd$4;
.super Lcom/google/android/gms/ads/rewarded/RewardedAdCallback;
.source "WrapRewardedAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vmos/ad/WrapRewardedAd;
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

    iput-object p1, p0, Lcom/vmos/ad/WrapRewardedAd$4;->this$0:Lcom/vmos/ad/WrapRewardedAd;

    invoke-direct {p0}, Lcom/google/android/gms/ads/rewarded/RewardedAdCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRewardedAdClosed()V
    .locals 3

    iget-object v0, p0, Lcom/vmos/ad/WrapRewardedAd$4;->this$0:Lcom/vmos/ad/WrapRewardedAd;

    const-string v1, "onRewardedAdClosed"

    invoke-virtual {v0, v1}, Lcom/vmos/ad/WrapRewardedAd;->log(Ljava/lang/String;)V

    return-void
.end method

.method public onRewardedAdFailedToShow(I)V
    .locals 3

    iget-object v0, p0, Lcom/vmos/ad/WrapRewardedAd$4;->this$0:Lcom/vmos/ad/WrapRewardedAd;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRewardedAdFailedToShow errorCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vmos/ad/WrapRewardedAd;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/vmos/glb/socket/SocketManagerServer;->getInstance()Lcom/vmos/glb/socket/SocketManagerServer;

    move-result-object p1

    const-string v0, "action_ad_is_ok"

    invoke-virtual {p1, v0}, Lcom/vmos/glb/socket/SocketManagerServer;->sendAll(Ljava/lang/String;)V

    return-void
.end method

.method public onRewardedAdOpened()V
    .locals 2

    iget-object v0, p0, Lcom/vmos/ad/WrapRewardedAd$4;->this$0:Lcom/vmos/ad/WrapRewardedAd;

    const-string v1, "onRewardedAdOpened"

    invoke-virtual {v0, v1}, Lcom/vmos/ad/WrapRewardedAd;->log(Ljava/lang/String;)V

    const/16 v0, 0x7d7

    invoke-static {v0}, Lcom/vmos/glb/network/presenter/EventStatistics;->postEvent(I)V

    return-void
.end method

.method public onUserEarnedReward(Lcom/google/android/gms/ads/rewarded/RewardItem;)V
    .locals 3
    .param p1    # Lcom/google/android/gms/ads/rewarded/RewardItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/16 v0, 0x7d6

    invoke-static {v0}, Lcom/vmos/glb/network/presenter/EventStatistics;->postEvent(I)V

    iget-object v0, p0, Lcom/vmos/ad/WrapRewardedAd$4;->this$0:Lcom/vmos/ad/WrapRewardedAd;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUserEarnedReward getType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/google/android/gms/ads/rewarded/RewardItem;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "   getAmount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/google/android/gms/ads/rewarded/RewardItem;->getAmount()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/vmos/ad/WrapRewardedAd;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/vmos/glb/socket/SocketManagerServer;->getInstance()Lcom/vmos/glb/socket/SocketManagerServer;

    move-result-object p1

    const-string v0, "action_ad_is_ok"

    invoke-virtual {p1, v0}, Lcom/vmos/glb/socket/SocketManagerServer;->sendAll(Ljava/lang/String;)V

    return-void
.end method
