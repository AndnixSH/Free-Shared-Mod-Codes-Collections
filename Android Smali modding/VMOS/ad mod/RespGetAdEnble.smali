.class public Lcom/vmos/ad/RespGetAdEnble;
.super Ljava/lang/Object;
.source "RespGetAdEnble.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private isStartRootAd:I

.field private isStartScreenAd:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIsStartRootAd()I
    .locals 1

    iget v0, p0, Lcom/vmos/ad/RespGetAdEnble;->isStartRootAd:I

    return v0
.end method

.method public getIsStartScreenAd()I
    .locals 1

    iget v0, p0, Lcom/vmos/ad/RespGetAdEnble;->isStartScreenAd:I

    return v0
.end method

.method public isOpenStartRootAd()Z
    .locals 2

    iget v0, p0, Lcom/vmos/ad/RespGetAdEnble;->isStartRootAd:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isOpenStartScreenAd()Z
    .locals 2

    iget v0, p0, Lcom/vmos/ad/RespGetAdEnble;->isStartScreenAd:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public setIsStartRootAd(I)V
    .locals 0

    iput p1, p0, Lcom/vmos/ad/RespGetAdEnble;->isStartRootAd:I

    return-void
.end method

.method public setIsStartScreenAd(I)V
    .locals 0

    iput p1, p0, Lcom/vmos/ad/RespGetAdEnble;->isStartScreenAd:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RespGetAdEnble{isStartRootAd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vmos/ad/RespGetAdEnble;->isStartRootAd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isStartScreenAd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vmos/ad/RespGetAdEnble;->isStartScreenAd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
