.class public Lcom/unity3d/ads/adunit/AdUnitActivity;
.super Lcom/inca/security/Proxy/AppGuardProxyActivity;
.source "AdUnitActivity.java"


# static fields
.field public static final EXTRA_ACTIVITY_ID:Ljava/lang/String; = "activityId"

.field public static final EXTRA_KEEP_SCREEN_ON:Ljava/lang/String; = "keepScreenOn"

.field public static final EXTRA_KEY_EVENT_LIST:Ljava/lang/String; = "keyEvents"

.field public static final EXTRA_ORIENTATION:Ljava/lang/String; = "orientation"

.field public static final EXTRA_SYSTEM_UI_VISIBILITY:Ljava/lang/String; = "systemUiVisibility"

.field public static final EXTRA_VIEWS:Ljava/lang/String; = "views"


# instance fields
.field private _activityId:I

.field _keepScreenOn:Z

.field private _keyEventList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private _layout:Landroid/widget/RelativeLayout;

.field private _orientation:I

.field private _systemUiVisibility:I

.field private _videoContainer:Landroid/widget/RelativeLayout;

.field private _views:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/inca/security/Proxy/AppGuardProxyActivity;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_orientation:I

    return-void
.end method

.method private createLayout()V
    .locals 3

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_layout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_layout:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_layout:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_layout:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v2, -0x1000000

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-static {v0, v1}, Lcom/unity3d/ads/misc/ViewUtilities;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private createVideoPlayer()V
    .locals 3

    const/4 v2, -0x1

    iget-object v1, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_videoContainer:Landroid/widget/RelativeLayout;

    if-nez v1, :cond_0

    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_videoContainer:Landroid/widget/RelativeLayout;

    :cond_0
    invoke-static {}, Lcom/unity3d/ads/api/VideoPlayer;->getVideoPlayerView()Lcom/unity3d/ads/video/VideoPlayerView;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v1, Lcom/unity3d/ads/video/VideoPlayerView;

    invoke-direct {v1, p0}, Lcom/unity3d/ads/video/VideoPlayerView;-><init>(Landroid/content/Context;)V

    invoke-static {v1}, Lcom/unity3d/ads/api/VideoPlayer;->setVideoPlayerView(Lcom/unity3d/ads/video/VideoPlayerView;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-static {}, Lcom/unity3d/ads/api/VideoPlayer;->getVideoPlayerView()Lcom/unity3d/ads/video/VideoPlayerView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/unity3d/ads/video/VideoPlayerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_videoContainer:Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/unity3d/ads/api/VideoPlayer;->getVideoPlayerView()Lcom/unity3d/ads/video/VideoPlayerView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method private destroyVideoPlayer()V
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Lcom/unity3d/ads/api/VideoPlayer;->getVideoPlayerView()Lcom/unity3d/ads/video/VideoPlayerView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/unity3d/ads/api/VideoPlayer;->getVideoPlayerView()Lcom/unity3d/ads/video/VideoPlayerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/ads/video/VideoPlayerView;->stopVideoProgressTimer()V

    invoke-static {}, Lcom/unity3d/ads/api/VideoPlayer;->getVideoPlayerView()Lcom/unity3d/ads/video/VideoPlayerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/ads/video/VideoPlayerView;->stopPlayback()V

    invoke-static {}, Lcom/unity3d/ads/api/VideoPlayer;->getVideoPlayerView()Lcom/unity3d/ads/video/VideoPlayerView;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/misc/ViewUtilities;->removeViewFromParent(Landroid/view/View;)V

    :cond_0
    invoke-static {v1}, Lcom/unity3d/ads/api/VideoPlayer;->setVideoPlayerView(Lcom/unity3d/ads/video/VideoPlayerView;)V

    iget-object v0, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_videoContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_videoContainer:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/unity3d/ads/misc/ViewUtilities;->removeViewFromParent(Landroid/view/View;)V

    iput-object v1, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_videoContainer:Landroid/widget/RelativeLayout;

    :cond_1
    return-void
.end method

.method private handleViewPlacement(Landroid/view/View;)V
    .locals 5

    const/4 v4, -0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v2, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p1}, Landroid/widget/RelativeLayout;->bringChildToFront(Landroid/view/View;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Lcom/unity3d/ads/misc/ViewUtilities;->removeViewFromParent(Landroid/view/View;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {p1, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    iget-object v1, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method


# virtual methods
.method public getViewFrame(Ljava/lang/String;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    const-string v3, "adunit"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v3, "x"

    iget v4, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "y"

    iget v4, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "width"

    iget-object v4, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "height"

    iget-object v4, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    const-string v3, "videoplayer"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v2, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_videoContainer:Landroid/widget/RelativeLayout;

    :cond_1
    :goto_1
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v3, "x"

    iget v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "y"

    iget v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "width"

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "height"

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const-string v3, "webview"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/unity3d/ads/webview/WebViewApp;->getWebView()Lcom/unity3d/ads/webview/WebView;

    move-result-object v2

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getViews()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_views:[Ljava/lang/String;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v3, -0x1

    invoke-super {p0, p1}, Lcom/inca/security/Proxy/AppGuardProxyActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "Unity Ads web app is null, closing Unity Ads activity from onCreate"

    invoke-static {v1}, Lcom/unity3d/ads/log/DeviceLog;->error(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/unity3d/ads/adunit/AdUnitActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Lcom/unity3d/ads/api/AdUnit;->setAdUnitActivity(Lcom/unity3d/ads/adunit/AdUnitActivity;)V

    invoke-direct {p0}, Lcom/unity3d/ads/adunit/AdUnitActivity;->createLayout()V

    iget-object v1, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_layout:Landroid/widget/RelativeLayout;

    invoke-static {v1}, Lcom/unity3d/ads/misc/ViewUtilities;->removeViewFromParent(Landroid/view/View;)V

    iget-object v1, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_layout:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/unity3d/ads/adunit/AdUnitActivity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-nez p1, :cond_5

    invoke-virtual {p0}, Lcom/unity3d/ads/adunit/AdUnitActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "views"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_views:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/unity3d/ads/adunit/AdUnitActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "keyEvents"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_keyEventList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/unity3d/ads/adunit/AdUnitActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "orientation"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/unity3d/ads/adunit/AdUnitActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "orientation"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_orientation:I

    :cond_1
    invoke-virtual {p0}, Lcom/unity3d/ads/adunit/AdUnitActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "systemUiVisibility"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/unity3d/ads/adunit/AdUnitActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "systemUiVisibility"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_systemUiVisibility:I

    :cond_2
    invoke-virtual {p0}, Lcom/unity3d/ads/adunit/AdUnitActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "activityId"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/unity3d/ads/adunit/AdUnitActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "activityId"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_activityId:I

    :cond_3
    sget-object v0, Lcom/unity3d/ads/adunit/AdUnitEvent;->ON_CREATE:Lcom/unity3d/ads/adunit/AdUnitEvent;

    :goto_1
    iget v1, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_orientation:I

    invoke-virtual {p0, v1}, Lcom/unity3d/ads/adunit/AdUnitActivity;->setOrientation(I)V

    iget v1, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_systemUiVisibility:I

    invoke-virtual {p0, v1}, Lcom/unity3d/ads/adunit/AdUnitActivity;->setSystemUiVisibility(I)Z

    iget-object v1, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_views:[Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_views:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "videoplayer"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/unity3d/ads/adunit/AdUnitActivity;->createVideoPlayer()V

    :cond_4
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v1

    sget-object v2, Lcom/unity3d/ads/webview/WebViewEventCategory;->ADUNIT:Lcom/unity3d/ads/webview/WebViewEventCategory;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_activityId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v0, v3}, Lcom/unity3d/ads/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_5
    const-string v1, "views"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_views:[Ljava/lang/String;

    const-string v1, "orientation"

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_orientation:I

    const-string v1, "systemUiVisibility"

    invoke-virtual {p1, v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_systemUiVisibility:I

    const-string v1, "keyEvents"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_keyEventList:Ljava/util/ArrayList;

    const-string v1, "keepScreenOn"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_keepScreenOn:Z

    const-string v1, "activityId"

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_activityId:I

    iget-boolean v1, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_keepScreenOn:Z

    invoke-virtual {p0, v1}, Lcom/unity3d/ads/adunit/AdUnitActivity;->setKeepScreenOn(Z)Z

    sget-object v0, Lcom/unity3d/ads/adunit/AdUnitEvent;->ON_RESTORE:Lcom/unity3d/ads/adunit/AdUnitEvent;

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 6

    invoke-super {p0}, Lcom/inca/security/Proxy/AppGuardProxyActivity;->onDestroy()V

    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/unity3d/ads/adunit/AdUnitActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Unity Ads web app is null, closing Unity Ads activity from onDestroy"

    invoke-static {v0}, Lcom/unity3d/ads/log/DeviceLog;->error(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/unity3d/ads/adunit/AdUnitActivity;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v0

    sget-object v1, Lcom/unity3d/ads/webview/WebViewEventCategory;->ADUNIT:Lcom/unity3d/ads/webview/WebViewEventCategory;

    sget-object v2, Lcom/unity3d/ads/adunit/AdUnitEvent;->ON_DESTROY:Lcom/unity3d/ads/adunit/AdUnitEvent;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/unity3d/ads/adunit/AdUnitActivity;->isFinishing()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_activityId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/unity3d/ads/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    invoke-static {}, Lcom/unity3d/ads/api/AdUnit;->getCurrentAdUnitActivityId()I

    move-result v0

    iget v1, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_activityId:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/unity3d/ads/api/AdUnit;->setAdUnitActivity(Lcom/unity3d/ads/adunit/AdUnitActivity;)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_keyEventList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_keyEventList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v2

    sget-object v3, Lcom/unity3d/ads/webview/WebViewEventCategory;->ADUNIT:Lcom/unity3d/ads/webview/WebViewEventCategory;

    sget-object v4, Lcom/unity3d/ads/adunit/AdUnitEvent;->KEY_DOWN:Lcom/unity3d/ads/adunit/AdUnitEvent;

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v1, 0x2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v1

    const/4 v1, 0x3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    const/4 v1, 0x4

    iget v6, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_activityId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v2, v3, v4, v5}, Lcom/unity3d/ads/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method protected onPause()V
    .locals 6

    invoke-super {p0}, Lcom/inca/security/Proxy/AppGuardProxyActivity;->onPause()V

    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/unity3d/ads/adunit/AdUnitActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Unity Ads web app is null, closing Unity Ads activity from onPause"

    invoke-static {v0}, Lcom/unity3d/ads/log/DeviceLog;->error(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/unity3d/ads/adunit/AdUnitActivity;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/unity3d/ads/adunit/AdUnitActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/ads/webview/WebViewApp;->getWebView()Lcom/unity3d/ads/webview/WebView;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/misc/ViewUtilities;->removeViewFromParent(Landroid/view/View;)V

    :cond_2
    invoke-direct {p0}, Lcom/unity3d/ads/adunit/AdUnitActivity;->destroyVideoPlayer()V

    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v0

    sget-object v1, Lcom/unity3d/ads/webview/WebViewEventCategory;->ADUNIT:Lcom/unity3d/ads/webview/WebViewEventCategory;

    sget-object v2, Lcom/unity3d/ads/adunit/AdUnitEvent;->ON_PAUSE:Lcom/unity3d/ads/adunit/AdUnitEvent;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/unity3d/ads/adunit/AdUnitActivity;->isFinishing()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_activityId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/unity3d/ads/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected onResume()V
    .locals 6

    invoke-super {p0}, Lcom/inca/security/Proxy/AppGuardProxyActivity;->onResume()V

    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/unity3d/ads/adunit/AdUnitActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Unity Ads web app is null, closing Unity Ads activity from onResume"

    invoke-static {v0}, Lcom/unity3d/ads/log/DeviceLog;->error(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/unity3d/ads/adunit/AdUnitActivity;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_views:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/adunit/AdUnitActivity;->setViews([Ljava/lang/String;)V

    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v0

    sget-object v1, Lcom/unity3d/ads/webview/WebViewEventCategory;->ADUNIT:Lcom/unity3d/ads/webview/WebViewEventCategory;

    sget-object v2, Lcom/unity3d/ads/adunit/AdUnitEvent;->ON_RESUME:Lcom/unity3d/ads/adunit/AdUnitEvent;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_activityId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/unity3d/ads/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/inca/security/Proxy/AppGuardProxyActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "orientation"

    iget v1, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_orientation:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "systemUiVisibility"

    iget v1, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_systemUiVisibility:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "keyEvents"

    iget-object v1, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_keyEventList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v0, "keepScreenOn"

    iget-boolean v1, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_keepScreenOn:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "views"

    iget-object v1, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_views:[Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v0, "activityId"

    iget v1, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_activityId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method protected onStart()V
    .locals 6

    invoke-super {p0}, Lcom/inca/security/Proxy/AppGuardProxyActivity;->onStart()V

    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/unity3d/ads/adunit/AdUnitActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Unity Ads web app is null, closing Unity Ads activity from onStart"

    invoke-static {v0}, Lcom/unity3d/ads/log/DeviceLog;->error(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/unity3d/ads/adunit/AdUnitActivity;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v0

    sget-object v1, Lcom/unity3d/ads/webview/WebViewEventCategory;->ADUNIT:Lcom/unity3d/ads/webview/WebViewEventCategory;

    sget-object v2, Lcom/unity3d/ads/adunit/AdUnitEvent;->ON_START:Lcom/unity3d/ads/adunit/AdUnitEvent;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_activityId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/unity3d/ads/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected onStop()V
    .locals 6

    invoke-super {p0}, Lcom/inca/security/Proxy/AppGuardProxyActivity;->onStop()V

    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/unity3d/ads/adunit/AdUnitActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Unity Ads web app is null, closing Unity Ads activity from onStop"

    invoke-static {v0}, Lcom/unity3d/ads/log/DeviceLog;->error(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/unity3d/ads/adunit/AdUnitActivity;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v0

    sget-object v1, Lcom/unity3d/ads/webview/WebViewEventCategory;->ADUNIT:Lcom/unity3d/ads/webview/WebViewEventCategory;

    sget-object v2, Lcom/unity3d/ads/adunit/AdUnitEvent;->ON_STOP:Lcom/unity3d/ads/adunit/AdUnitEvent;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_activityId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/unity3d/ads/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setKeepScreenOn(Z)Z
    .locals 2

    const/16 v1, 0x80

    iput-boolean p1, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_keepScreenOn:Z

    invoke-virtual {p0}, Lcom/unity3d/ads/adunit/AdUnitActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/unity3d/ads/adunit/AdUnitActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/unity3d/ads/adunit/AdUnitActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_1
.end method

.method public setKeyEventList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_keyEventList:Ljava/util/ArrayList;

    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    iput p1, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_orientation:I

    invoke-virtual {p0, p1}, Lcom/unity3d/ads/adunit/AdUnitActivity;->setRequestedOrientation(I)V

    return-void
.end method

.method public setSystemUiVisibility(I)Z
    .locals 4

    const/4 v1, 0x0

    iput p1, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_systemUiVisibility:I

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/unity3d/ads/adunit/AdUnitActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setSystemUiVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v2, "Error while setting SystemUIVisibility"

    invoke-static {v2, v0}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setViewFrame(Ljava/lang/String;IIII)V
    .locals 4

    const/4 v3, 0x0

    const/4 v1, 0x0

    const-string v2, "adunit"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p4, p5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p2, p3, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget-object v2, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, p4, p5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p2, p3, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void

    :cond_2
    const-string v2, "videoplayer"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v1, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_videoContainer:Landroid/widget/RelativeLayout;

    goto :goto_0

    :cond_3
    const-string v2, "webview"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/unity3d/ads/webview/WebViewApp;->getWebView()Lcom/unity3d/ads/webview/WebView;

    move-result-object v1

    goto :goto_0
.end method

.method public setViews([Ljava/lang/String;)V
    .locals 8

    const/4 v4, 0x0

    if-nez p1, :cond_2

    new-array v0, v4, [Ljava/lang/String;

    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v5, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_views:[Ljava/lang/String;

    if-nez v5, :cond_0

    new-array v5, v4, [Ljava/lang/String;

    iput-object v5, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_views:[Ljava/lang/String;

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_views:[Ljava/lang/String;

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v5, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :cond_1
    :goto_2
    packed-switch v5, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-direct {p0}, Lcom/unity3d/ads/adunit/AdUnitActivity;->destroyVideoPlayer()V

    goto :goto_1

    :cond_2
    move-object v0, p1

    goto :goto_0

    :sswitch_0
    const-string v7, "videoplayer"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v5, v4

    goto :goto_2

    :sswitch_1
    const-string v7, "webview"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v5, 0x1

    goto :goto_2

    :pswitch_1
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/unity3d/ads/webview/WebViewApp;->getWebView()Lcom/unity3d/ads/webview/WebView;

    move-result-object v5

    invoke-static {v5}, Lcom/unity3d/ads/misc/ViewUtilities;->removeViewFromParent(Landroid/view/View;)V

    goto :goto_1

    :cond_3
    iput-object v0, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_views:[Ljava/lang/String;

    array-length v5, v0

    :goto_3
    if-ge v4, v5, :cond_8

    aget-object v3, v0, v4

    if-nez v3, :cond_5

    :cond_4
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_5
    const-string v6, "videoplayer"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-direct {p0}, Lcom/unity3d/ads/adunit/AdUnitActivity;->createVideoPlayer()V

    iget-object v6, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_videoContainer:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v6}, Lcom/unity3d/ads/adunit/AdUnitActivity;->handleViewPlacement(Landroid/view/View;)V

    goto :goto_4

    :cond_6
    const-string v6, "webview"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v6

    if-eqz v6, :cond_7

    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/unity3d/ads/webview/WebViewApp;->getWebView()Lcom/unity3d/ads/webview/WebView;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/unity3d/ads/adunit/AdUnitActivity;->handleViewPlacement(Landroid/view/View;)V

    goto :goto_4

    :cond_7
    const-string v4, "WebApp IS NULL!"

    invoke-static {v4}, Lcom/unity3d/ads/log/DeviceLog;->error(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    :cond_8
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x48fb3bf9 -> :sswitch_1
        0x6f2e271c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
