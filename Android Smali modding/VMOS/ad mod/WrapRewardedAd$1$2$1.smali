.class Lcom/vmos/ad/WrapRewardedAd$1$2$1;
.super Ljava/lang/Object;
.source "WrapRewardedAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vmos/ad/WrapRewardedAd$1$2;->onSuccess(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/vmos/ad/WrapRewardedAd$1$2;


# direct methods
.method constructor <init>(Lcom/vmos/ad/WrapRewardedAd$1$2;)V
    .locals 0

    iput-object p1, p0, Lcom/vmos/ad/WrapRewardedAd$1$2$1;->this$2:Lcom/vmos/ad/WrapRewardedAd$1$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/vmos/ad/WrapRewardedAd$1$2$1;->this$2:Lcom/vmos/ad/WrapRewardedAd$1$2;

    iget-object v0, v0, Lcom/vmos/ad/WrapRewardedAd$1$2;->this$1:Lcom/vmos/ad/WrapRewardedAd$1;

    iget-object v0, v0, Lcom/vmos/ad/WrapRewardedAd$1;->this$0:Lcom/vmos/ad/WrapRewardedAd;

    iget-object v0, v0, Lcom/vmos/ad/WrapRewardedAd;->notifyDialogView:Lcom/vmos/ad/NotifyDialogView;

    invoke-virtual {v0}, Lcom/vmos/ad/NotifyDialogView;->show()V

    return-void
.end method
