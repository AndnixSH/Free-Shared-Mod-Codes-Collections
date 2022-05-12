.class Lcom/vmos/ad/WrapRewardedAd$5;
.super Ljava/lang/Object;
.source "WrapRewardedAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vmos/ad/WrapRewardedAd;->showRewardAd()V
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

    iput-object p1, p0, Lcom/vmos/ad/WrapRewardedAd$5;->this$0:Lcom/vmos/ad/WrapRewardedAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/vmos/ad/WrapRewardedAd$5;->this$0:Lcom/vmos/ad/WrapRewardedAd;

    const-string v1, "showRewardAd"

    invoke-virtual {v0, v1}, Lcom/vmos/ad/WrapRewardedAd;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vmos/ad/WrapRewardedAd$5;->this$0:Lcom/vmos/ad/WrapRewardedAd;

    iget-object v0, v0, Lcom/vmos/ad/WrapRewardedAd;->rewardedAd:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vmos/ad/WrapRewardedAd$5;->this$0:Lcom/vmos/ad/WrapRewardedAd;

    iget-object v0, v0, Lcom/vmos/ad/WrapRewardedAd;->rewardedAd:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vmos/ad/WrapRewardedAd$5;->this$0:Lcom/vmos/ad/WrapRewardedAd;

    const-string v1, "showRewardAd rewardedAd != null && rewardedAd.isLoaded()"

    invoke-virtual {v0, v1}, Lcom/vmos/ad/WrapRewardedAd;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vmos/ad/WrapRewardedAd$5;->this$0:Lcom/vmos/ad/WrapRewardedAd;

    iget-object v0, v0, Lcom/vmos/ad/WrapRewardedAd;->rewardedAd:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    iget-object v1, p0, Lcom/vmos/ad/WrapRewardedAd$5;->this$0:Lcom/vmos/ad/WrapRewardedAd;

    iget-object v1, v1, Lcom/vmos/ad/WrapRewardedAd;->mActivity:Lcom/vmos/activity/RendererActivity;

    iget-object v2, p0, Lcom/vmos/ad/WrapRewardedAd$5;->this$0:Lcom/vmos/ad/WrapRewardedAd;

    iget-object v2, v2, Lcom/vmos/ad/WrapRewardedAd;->adCallback:Lcom/google/android/gms/ads/rewarded/RewardedAdCallback;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->show(Landroid/app/Activity;Lcom/google/android/gms/ads/rewarded/RewardedAdCallback;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/vmos/ad/WrapRewardedAd$5;->this$0:Lcom/vmos/ad/WrapRewardedAd;

    const-string v1, "showRewardAd else"

    invoke-virtual {v0, v1}, Lcom/vmos/ad/WrapRewardedAd;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vmos/ad/WrapRewardedAd$5;->this$0:Lcom/vmos/ad/WrapRewardedAd;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vmos/ad/WrapRewardedAd;->access$300(Lcom/vmos/ad/WrapRewardedAd;Z)V

    :goto_0
    return-void
.end method
