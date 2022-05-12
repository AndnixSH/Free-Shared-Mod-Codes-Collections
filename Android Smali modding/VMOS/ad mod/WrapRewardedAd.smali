.class public Lcom/vmos/ad/WrapRewardedAd;
.super Ljava/lang/Object;
.source "WrapRewardedAd.java"

# interfaces
.implements Lcom/vmos/ad/NotifyDialogView$NotifyDialogListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "WrapRewardedAd"


# instance fields
.field adCallback:Lcom/google/android/gms/ads/rewarded/RewardedAdCallback;

.field handler:Landroid/os/Handler;

.field mActivity:Lcom/vmos/activity/RendererActivity;

.field notifyDialogView:Lcom/vmos/ad/NotifyDialogView;

.field respGetAdEnble:Lcom/vmos/ad/RespGetAdEnble;

.field rewardedAd:Lcom/google/android/gms/ads/rewarded/RewardedAd;

.field watiDialog:Lcom/common/widget/LoadingDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/vmos/activity/RendererActivity;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/vmos/ad/WrapRewardedAd$4;

    invoke-direct {v0, p0}, Lcom/vmos/ad/WrapRewardedAd$4;-><init>(Lcom/vmos/ad/WrapRewardedAd;)V

    iput-object v0, p0, Lcom/vmos/ad/WrapRewardedAd;->adCallback:Lcom/google/android/gms/ads/rewarded/RewardedAdCallback;

    iput-object p1, p0, Lcom/vmos/ad/WrapRewardedAd;->mActivity:Lcom/vmos/activity/RendererActivity;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/vmos/ad/WrapRewardedAd;->handler:Landroid/os/Handler;

    new-instance p1, Lcom/vmos/ad/NotifyDialogView;

    iget-object v0, p0, Lcom/vmos/ad/WrapRewardedAd;->mActivity:Lcom/vmos/activity/RendererActivity;

    invoke-direct {p1, v0, p0}, Lcom/vmos/ad/NotifyDialogView;-><init>(Landroid/app/Activity;Lcom/vmos/ad/NotifyDialogView$NotifyDialogListener;)V

    iput-object p1, p0, Lcom/vmos/ad/WrapRewardedAd;->notifyDialogView:Lcom/vmos/ad/NotifyDialogView;

    invoke-static {}, Lcom/vmos/glb/socket/SocketManagerServer;->getInstance()Lcom/vmos/glb/socket/SocketManagerServer;

    move-result-object p1

    new-instance v0, Lcom/vmos/ad/WrapRewardedAd$1;

    invoke-direct {v0, p0}, Lcom/vmos/ad/WrapRewardedAd$1;-><init>(Lcom/vmos/ad/WrapRewardedAd;)V

    const/16 v1, 0x2767

    invoke-virtual {p1, v1, v0}, Lcom/vmos/glb/socket/SocketManagerServer;->setOtherCallBack(ILcom/vmos/glb/socket/SocketLongCallBack;)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/vmos/ad/WrapRewardedAd;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vmos/ad/WrapRewardedAd;)V
    .locals 0

    invoke-direct {p0}, Lcom/vmos/ad/WrapRewardedAd;->dismissWait()V

    return-void
.end method

.method static synthetic access$200(Lcom/vmos/ad/WrapRewardedAd;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/vmos/ad/WrapRewardedAd;->failedLoad(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/vmos/ad/WrapRewardedAd;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/vmos/ad/WrapRewardedAd;->createRewardAd(Z)V

    return-void
.end method

.method private createRewardAd(Z)V
    .locals 3

    new-instance v0, Lcom/google/android/gms/ads/rewarded/RewardedAd;

    iget-object v1, p0, Lcom/vmos/ad/WrapRewardedAd;->mActivity:Lcom/vmos/activity/RendererActivity;

    const-string v2, "ca-app-pub-8238830934913714/1371048920"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/ads/rewarded/RewardedAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vmos/ad/WrapRewardedAd;->rewardedAd:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/vmos/ad/WrapRewardedAd;->showWait()V

    new-instance p1, Lcom/vmos/ad/WrapRewardedAd$2;

    invoke-direct {p1, p0}, Lcom/vmos/ad/WrapRewardedAd$2;-><init>(Lcom/vmos/ad/WrapRewardedAd;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/vmos/ad/WrapRewardedAd$3;

    invoke-direct {p1, p0}, Lcom/vmos/ad/WrapRewardedAd$3;-><init>(Lcom/vmos/ad/WrapRewardedAd;)V

    :goto_0
    iget-object v0, p0, Lcom/vmos/ad/WrapRewardedAd;->rewardedAd:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    new-instance v1, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    const-string v2, "AB22B39C4B451E6560367A586492A589"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v1

    const-string v2, "0B1E6F02C89A613FDC77A8F105D51E66"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v1

    const-string v2, "174AA0C1FBD13779F823FCC37670FB39"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v1

    const-string v2, "976FE71A75CC79942971E1302E7641F5"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v1

    const-string v2, "A43F1EAD4F60974B454FE500386F8715"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v1

    const-string v2, "DA294C257283409AE80CBEDFC82F57DB"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v1

    const-string v2, "77407731CA7B746369F6BF4C1812AEA1"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v1

    const-string v2, "94D107F97AB1933E91AE228D302AC4AB"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v1

    const-string v2, "4C5CDFB7D1BAC5B0544E78AC8B4EF283"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v1

    const-string v2, "30C3480816D1F41D3567F29DB9F164DD"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v1

    const-string v2, "2F6CE57E30A8BC51A4FE50A5EEDFB297"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v1

    const-string v2, "733113B44B927C32A27CC6CE99519595"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v1

    const-string v2, "15A25D8235F2C4ED8FD52792FF723375"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->loadAd(Lcom/google/android/gms/ads/AdRequest;Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;)V

    return-void
.end method

.method private dismissWait()V
    .locals 1

    iget-object v0, p0, Lcom/vmos/ad/WrapRewardedAd;->watiDialog:Lcom/common/widget/LoadingDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vmos/ad/WrapRewardedAd;->watiDialog:Lcom/common/widget/LoadingDialog;

    invoke-virtual {v0}, Lcom/common/widget/LoadingDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vmos/ad/WrapRewardedAd;->watiDialog:Lcom/common/widget/LoadingDialog;

    invoke-virtual {v0}, Lcom/common/widget/LoadingDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private failedLoad(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne v1, p1, :cond_0

    iput-object v0, p0, Lcom/vmos/ad/WrapRewardedAd;->rewardedAd:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    invoke-virtual {p0}, Lcom/vmos/ad/WrapRewardedAd;->showRewardAd()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    if-ne v1, p1, :cond_1

    iput-object v0, p0, Lcom/vmos/ad/WrapRewardedAd;->rewardedAd:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    iput-object v0, p0, Lcom/vmos/ad/WrapRewardedAd;->rewardedAd:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    if-ne v1, p1, :cond_3

    iput-object v0, p0, Lcom/vmos/ad/WrapRewardedAd;->rewardedAd:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    :cond_3
    :goto_0
    return-void
.end method

.method private showWait()V
    .locals 2

    iget-object v0, p0, Lcom/vmos/ad/WrapRewardedAd;->watiDialog:Lcom/common/widget/LoadingDialog;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/common/widget/LoadingDialog$Builder;->getBuilder()Lcom/common/widget/LoadingDialog$Builder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/common/widget/LoadingDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/common/widget/LoadingDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/vmos/ad/WrapRewardedAd;->mActivity:Lcom/vmos/activity/RendererActivity;

    invoke-virtual {v0, v1}, Lcom/common/widget/LoadingDialog$Builder;->show(Landroid/content/Context;)Lcom/common/widget/LoadingDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/vmos/ad/WrapRewardedAd;->watiDialog:Lcom/common/widget/LoadingDialog;

    :cond_0
    iget-object v0, p0, Lcom/vmos/ad/WrapRewardedAd;->watiDialog:Lcom/common/widget/LoadingDialog;

    invoke-virtual {v0}, Lcom/common/widget/LoadingDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/vmos/ad/WrapRewardedAd;->watiDialog:Lcom/common/widget/LoadingDialog;

    invoke-virtual {v0}, Lcom/common/widget/LoadingDialog;->show()V

    :cond_1
    return-void
.end method


# virtual methods
.method public initRewardAd()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vmos/ad/WrapRewardedAd;->createRewardAd(Z)V

    return-void
.end method

.method public log(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/vmos/ad/WrapRewardedAd;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/common/utils/log/DBLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onClickNo(Landroid/app/Dialog;)V
    .locals 0

    invoke-virtual {p1}, Landroid/app/Dialog;->hide()V

    const/16 p1, 0xbbb

    invoke-static {p1}, Lcom/vmos/glb/network/presenter/EventStatistics;->postEvent(I)V

    return-void
.end method

.method public onClickOk(Landroid/app/Dialog;)V
    .locals 0

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    const/16 p1, 0xbba

    invoke-static {p1}, Lcom/vmos/glb/network/presenter/EventStatistics;->postEvent(I)V

    invoke-virtual {p0}, Lcom/vmos/ad/WrapRewardedAd;->showRewardAd()V

    return-void
.end method

.method public showRewardAd()V
    .locals 2

    iget-object v0, p0, Lcom/vmos/ad/WrapRewardedAd;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/vmos/ad/WrapRewardedAd$5;

    invoke-direct {v1, p0}, Lcom/vmos/ad/WrapRewardedAd$5;-><init>(Lcom/vmos/ad/WrapRewardedAd;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
