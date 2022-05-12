.class public Lcom/vmos/ad/NotifyDialogView;
.super Ljava/lang/Object;
.source "NotifyDialogView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vmos/ad/NotifyDialogView$NotifyDialogListener;
    }
.end annotation


# instance fields
.field commonDialog:Landroid/app/Dialog;

.field mActivity:Landroid/app/Activity;

.field notifyDialogListener:Lcom/vmos/ad/NotifyDialogView$NotifyDialogListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/vmos/ad/NotifyDialogView$NotifyDialogListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vmos/ad/NotifyDialogView;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/vmos/ad/NotifyDialogView;->notifyDialogListener:Lcom/vmos/ad/NotifyDialogView$NotifyDialogListener;

    invoke-virtual {p0}, Lcom/vmos/ad/NotifyDialogView;->initDialog()Landroid/app/Dialog;

    return-void
.end method


# virtual methods
.method public hide()V
    .locals 1

    iget-object v0, p0, Lcom/vmos/ad/NotifyDialogView;->commonDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vmos/ad/NotifyDialogView;->commonDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    :cond_0
    return-void
.end method

.method protected initDialog()Landroid/app/Dialog;
    .locals 4

    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/vmos/ad/NotifyDialogView;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0f00ca

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/vmos/ad/NotifyDialogView;->commonDialog:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/vmos/ad/NotifyDialogView;->commonDialog:Landroid/app/Dialog;

    const v1, 0x7f0b0042

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    iget-object v0, p0, Lcom/vmos/ad/NotifyDialogView;->commonDialog:Landroid/app/Dialog;

    const v1, 0x7f08019a

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/vmos/ad/NotifyDialogView;->commonDialog:Landroid/app/Dialog;

    const v2, 0x7f08019b

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/vmos/ad/NotifyDialogView;->commonDialog:Landroid/app/Dialog;

    const v3, 0x7f080193

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0e00f2

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    new-instance v2, Lcom/vmos/ad/NotifyDialogView$1;

    invoke-direct {v2, p0}, Lcom/vmos/ad/NotifyDialogView$1;-><init>(Lcom/vmos/ad/NotifyDialogView;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/vmos/ad/NotifyDialogView$2;

    invoke-direct {v0, p0}, Lcom/vmos/ad/NotifyDialogView$2;-><init>(Lcom/vmos/ad/NotifyDialogView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/vmos/ad/NotifyDialogView;->commonDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    iget-object v0, p0, Lcom/vmos/ad/NotifyDialogView;->commonDialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/vmos/ad/NotifyDialogView;->commonDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public show()V
    .locals 1

    iget-object v0, p0, Lcom/vmos/ad/NotifyDialogView;->commonDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vmos/ad/NotifyDialogView;->commonDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method
