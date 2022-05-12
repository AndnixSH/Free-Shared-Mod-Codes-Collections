.class Lcom/vmos/ad/NotifyDialogView$2;
.super Ljava/lang/Object;
.source "NotifyDialogView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vmos/ad/NotifyDialogView;->initDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vmos/ad/NotifyDialogView;


# direct methods
.method constructor <init>(Lcom/vmos/ad/NotifyDialogView;)V
    .locals 0

    iput-object p1, p0, Lcom/vmos/ad/NotifyDialogView$2;->this$0:Lcom/vmos/ad/NotifyDialogView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/vmos/ad/NotifyDialogView$2;->this$0:Lcom/vmos/ad/NotifyDialogView;

    iget-object p1, p1, Lcom/vmos/ad/NotifyDialogView;->notifyDialogListener:Lcom/vmos/ad/NotifyDialogView$NotifyDialogListener;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/vmos/ad/NotifyDialogView$2;->this$0:Lcom/vmos/ad/NotifyDialogView;

    iget-object p1, p1, Lcom/vmos/ad/NotifyDialogView;->notifyDialogListener:Lcom/vmos/ad/NotifyDialogView$NotifyDialogListener;

    iget-object v0, p0, Lcom/vmos/ad/NotifyDialogView$2;->this$0:Lcom/vmos/ad/NotifyDialogView;

    iget-object v0, v0, Lcom/vmos/ad/NotifyDialogView;->commonDialog:Landroid/app/Dialog;

    invoke-interface {p1, v0}, Lcom/vmos/ad/NotifyDialogView$NotifyDialogListener;->onClickOk(Landroid/app/Dialog;)V

    :cond_0
    return-void
.end method
