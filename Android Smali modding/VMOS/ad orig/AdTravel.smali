.class public Lcom/vmos/ad/AdTravel;
.super Ljava/lang/Object;
.source "AdTravel.java"


# static fields
.field public static final AD_GET_STATE_ERROR:Ljava/lang/String; = "get_ad_error"

.field public static final AD_GET_STATE_SUCCESS:Ljava/lang/String; = "get_ad_success"

.field public static final AD_MYCONFIG_STATE_TYPE_ENABLE:Ljava/lang/String; = "ad_myconfig_state_type_enable"

.field public static final AD_MYCONFIG_STATE_TYPE_ERROR:Ljava/lang/String; = "ad_myconfig_state_type_error"

.field public static final AD_MYCONFIG_STATE_TYPE_FACEBOOK:Ljava/lang/String; = "ad_myconfig_state_type_facebook"

.field public static final AD_MYCONFIG_STATE_TYPE_GOOGLE:Ljava/lang/String; = "ad_myconfig_state_type_google"

.field public static final AD_MYCONFIG_STATE_TYPE_NODATA:Ljava/lang/String; = "ad_myconfig_state_type_nodata"


# instance fields
.field adFacebookState:Ljava/lang/String;

.field adGoogleState:Ljava/lang/String;

.field adMyConfigSateType:Ljava/lang/String;

.field androidVersionCode:I

.field endGetAdTime:J

.field endGetMyAdConfigTime:J

.field endVmFinishTime:J

.field middleGetAdTime:J

.field phoneBrand:Ljava/lang/String;

.field phoneModel:Ljava/lang/String;

.field startActionTime:J

.field startGetAdTime:J

.field vmStartType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/vmos/ad/AdTravel;->adMyConfigSateType:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/vmos/ad/AdTravel;->adGoogleState:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/vmos/ad/AdTravel;->adFacebookState:Ljava/lang/String;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iput v0, p0, Lcom/vmos/ad/AdTravel;->androidVersionCode:I

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    iput-object v0, p0, Lcom/vmos/ad/AdTravel;->phoneBrand:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/vmos/ad/AdTravel;->phoneModel:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAdFacebookState()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vmos/ad/AdTravel;->adFacebookState:Ljava/lang/String;

    return-object v0
.end method

.method public getAdGoogleState()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vmos/ad/AdTravel;->adGoogleState:Ljava/lang/String;

    return-object v0
.end method

.method public getAdMyConfigSateType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vmos/ad/AdTravel;->adMyConfigSateType:Ljava/lang/String;

    return-object v0
.end method

.method public getAdTime()J
    .locals 4

    iget-wide v0, p0, Lcom/vmos/ad/AdTravel;->startGetAdTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/vmos/ad/AdTravel;->getMyConfigTime()J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/vmos/ad/AdTravel;->endGetAdTime:J

    iget-wide v2, p0, Lcom/vmos/ad/AdTravel;->startGetAdTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getEndGetAdTime()J
    .locals 2

    iget-wide v0, p0, Lcom/vmos/ad/AdTravel;->endGetAdTime:J

    return-wide v0
.end method

.method public getEndVmFinishTime()J
    .locals 2

    iget-wide v0, p0, Lcom/vmos/ad/AdTravel;->endVmFinishTime:J

    return-wide v0
.end method

.method public getFirstGetAdErrorTime()J
    .locals 4

    iget-wide v0, p0, Lcom/vmos/ad/AdTravel;->middleGetAdTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/vmos/ad/AdTravel;->endVmFinishTime:J

    iget-wide v2, p0, Lcom/vmos/ad/AdTravel;->middleGetAdTime:J

    sub-long/2addr v0, v2

    return-wide v0

    :cond_0
    return-wide v2
.end method

.method public getMyConfigTime()J
    .locals 4

    iget-wide v0, p0, Lcom/vmos/ad/AdTravel;->endGetMyAdConfigTime:J

    iget-wide v2, p0, Lcom/vmos/ad/AdTravel;->startActionTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getStartGetAdTime()J
    .locals 2

    iget-wide v0, p0, Lcom/vmos/ad/AdTravel;->startGetAdTime:J

    return-wide v0
.end method

.method public getVmStartType()I
    .locals 1

    iget v0, p0, Lcom/vmos/ad/AdTravel;->vmStartType:I

    return v0
.end method

.method public getVmTime()J
    .locals 4

    iget-wide v0, p0, Lcom/vmos/ad/AdTravel;->endVmFinishTime:J

    iget-wide v2, p0, Lcom/vmos/ad/AdTravel;->startActionTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdTravel{startActionTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/vmos/ad/AdTravel;->startActionTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", endGetMyAdConfigTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/vmos/ad/AdTravel;->endGetMyAdConfigTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", adMyConfigSateType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vmos/ad/AdTravel;->adMyConfigSateType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", startGetAdTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/vmos/ad/AdTravel;->startGetAdTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", middleGetAdTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/vmos/ad/AdTravel;->middleGetAdTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", endGetAdTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/vmos/ad/AdTravel;->endGetAdTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", adGoogleState=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vmos/ad/AdTravel;->adGoogleState:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", adFacebookState=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vmos/ad/AdTravel;->adFacebookState:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", endVmFinishTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/vmos/ad/AdTravel;->endVmFinishTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", vmStartType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vmos/ad/AdTravel;->vmStartType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}\nMyConfigTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/vmos/ad/AdTravel;->getMyConfigTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\nAdTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/vmos/ad/AdTravel;->getAdTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\nVmTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/vmos/ad/AdTravel;->getVmTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
