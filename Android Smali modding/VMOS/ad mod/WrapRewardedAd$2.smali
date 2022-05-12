.class Lcom/vmos/ad/WrapRewardedAd$2;
.super Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;
.source "WrapRewardedAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vmos/ad/WrapRewardedAd;->createRewardAd(Z)V
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

    iput-object p1, p0, Lcom/vmos/ad/WrapRewardedAd$2;->this$0:Lcom/vmos/ad/WrapRewardedAd;

    invoke-direct {p0}, Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRewardedAdFailedToLoad(I)V
    .locals 3

    const/16 v0, 0x7d5

    invoke-static {v0}, Lcom/vmos/glb/network/presenter/EventStatistics;->postEvent(I)V

    iget-object v0, p0, Lcom/vmos/ad/WrapRewardedAd$2;->this$0:Lcom/vmos/ad/WrapRewardedAd;

    invoke-static {v0}, Lcom/vmos/ad/WrapRewardedAd;->access$100(Lcom/vmos/ad/WrapRewardedAd;)V

    iget-object v0, p0, Lcom/vmos/ad/WrapRewardedAd$2;->this$0:Lcom/vmos/ad/WrapRewardedAd;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRewardedAdFailedToLoad errorCode:"

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

.method public onRewardedAdLoaded()V
    .locals 3

    const/16 v0, 0x7d4

    invoke-static {v0}, Lcom/vmos/glb/network/presenter/EventStatistics;->postEvent(I)V

    iget-object v0, p0, Lcom/vmos/ad/WrapRewardedAd$2;->this$0:Lcom/vmos/ad/WrapRewardedAd;

    const-string v1, "onRewardedAdLoaded"

    invoke-virtual {v0, v1}, Lcom/vmos/ad/WrapRewardedAd;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vmos/ad/WrapRewardedAd$2;->this$0:Lcom/vmos/ad/WrapRewardedAd;

    invoke-static {v0}, Lcom/vmos/ad/WrapRewardedAd;->access$100(Lcom/vmos/ad/WrapRewardedAd;)V

    iget-object v0, p0, Lcom/vmos/ad/WrapRewardedAd$2;->this$0:Lcom/vmos/ad/WrapRewardedAd;

    iget-object v0, v0, Lcom/vmos/ad/WrapRewardedAd;->rewardedAd:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    iget-object v1, p0, Lcom/vmos/ad/WrapRewardedAd$2;->this$0:Lcom/vmos/ad/WrapRewardedAd;

    iget-object v1, v1, Lcom/vmos/ad/WrapRewardedAd;->mActivity:Lcom/vmos/activity/RendererActivity;

    iget-object v2, p0, Lcom/vmos/ad/WrapRewardedAd$2;->this$0:Lcom/vmos/ad/WrapRewardedAd;

    iget-object v2, v2, Lcom/vmos/ad/WrapRewardedAd;->adCallback:Lcom/google/android/gms/ads/rewarded/RewardedAdCallback;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->show(Landroid/app/Activity;Lcom/google/android/gms/ads/rewarded/RewardedAdCallback;)V

    return-void
.end method
