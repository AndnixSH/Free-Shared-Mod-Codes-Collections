.class public Lcom/tapjoy/mraid/view/ActionHandler;
.super Lcom/inca/security/Proxy/AppGuardProxyActivity;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/HashMap;

.field private b:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/inca/security/Proxy/AppGuardProxyActivity;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/mraid/view/ActionHandler;->a:Ljava/util/HashMap;

    return-void
.end method

.method private a(Landroid/os/Bundle;Lcom/tapjoy/mraid/view/MraidView$Action;)Lcom/tapjoy/mraid/util/MraidPlayer;
    .locals 7

    const/high16 v6, 0x1000000

    const/16 v5, 0x400

    const/4 v4, -0x1

    const-string v0, "player_properties"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties;

    const-string v1, "expand_dimensions"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;

    new-instance v2, Lcom/tapjoy/mraid/util/MraidPlayer;

    invoke-direct {v2, p0}, Lcom/tapjoy/mraid/util/MraidPlayer;-><init>(Landroid/content/Context;)V

    const-string v3, "expand_url"

    invoke-static {v3, p1}, Lcom/tapjoy/mraid/util/Utils;->getData(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/tapjoy/mraid/util/MraidPlayer;->setPlayData(Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties;Ljava/lang/String;)V

    iget-boolean v3, v0, Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties;->inline:Z

    if-nez v3, :cond_0

    iget-object v0, v0, Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties;->startStyle:Ljava/lang/String;

    const-string v3, "fullscreen"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/ActionHandler;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v5, v5}, Landroid/view/Window;->setFlags(II)V

    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/ActionHandler;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v6, v6}, Landroid/view/Window;->setFlags(II)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :goto_0
    invoke-virtual {v2, v0}, Lcom/tapjoy/mraid/util/MraidPlayer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/tapjoy/mraid/view/ActionHandler;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/tapjoy/mraid/view/ActionHandler;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/tapjoy/mraid/view/ActionHandler$1;

    invoke-direct {v0, p0}, Lcom/tapjoy/mraid/view/ActionHandler$1;-><init>(Lcom/tapjoy/mraid/view/ActionHandler;)V

    invoke-virtual {v2, v0}, Lcom/tapjoy/mraid/util/MraidPlayer;->setListener(Lcom/tapjoy/mraid/listener/Player;)V

    return-object v2

    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, v1, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;->width:I

    iget v4, v1, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;->height:I

    invoke-direct {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget v3, v1, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;->y:I

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v1, v1, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;->x:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, -0x1

    invoke-super {p0, p1}, Lcom/inca/security/Proxy/AppGuardProxyActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tapjoy/mraid/view/ActionHandler;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/ActionHandler;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tapjoy/mraid/view/ActionHandler;->b:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/tapjoy/mraid/view/ActionHandler;->b:Landroid/widget/RelativeLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/tapjoy/mraid/view/ActionHandler;->b:Landroid/widget/RelativeLayout;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/tapjoy/mraid/view/ActionHandler;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1}, Lcom/tapjoy/mraid/view/ActionHandler;->setContentView(Landroid/view/View;)V

    const-string v1, "action"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/tapjoy/mraid/view/MraidView$Action;->valueOf(Ljava/lang/String;)Lcom/tapjoy/mraid/view/MraidView$Action;

    move-result-object v1

    sget-object v2, Lcom/tapjoy/mraid/view/ActionHandler$2;->a:[I

    invoke-virtual {v1}, Lcom/tapjoy/mraid/view/MraidView$Action;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0, v0, v1}, Lcom/tapjoy/mraid/view/ActionHandler;->a(Landroid/os/Bundle;Lcom/tapjoy/mraid/view/MraidView$Action;)Lcom/tapjoy/mraid/util/MraidPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/mraid/util/MraidPlayer;->playAudio()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, v0, v1}, Lcom/tapjoy/mraid/view/ActionHandler;->a(Landroid/os/Bundle;Lcom/tapjoy/mraid/view/MraidView$Action;)Lcom/tapjoy/mraid/util/MraidPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/mraid/util/MraidPlayer;->playVideo()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onStop()V
    .locals 4

    iget-object v0, p0, Lcom/tapjoy/mraid/view/ActionHandler;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    sget-object v3, Lcom/tapjoy/mraid/view/ActionHandler$2;->a:[I

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tapjoy/mraid/view/MraidView$Action;

    invoke-virtual {v1}, Lcom/tapjoy/mraid/view/MraidView$Action;->ordinal()I

    move-result v1

    aget v1, v3, v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/mraid/util/MraidPlayer;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/util/MraidPlayer;->releasePlayer()V

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/inca/security/Proxy/AppGuardProxyActivity;->onStop()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
