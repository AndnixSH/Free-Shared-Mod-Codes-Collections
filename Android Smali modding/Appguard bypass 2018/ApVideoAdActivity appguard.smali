.class public Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;
.super Lcom/inca/security/Proxy/AppGuardProxyActivity;

# interfaces
.implements Lcom/igaworks/adpopcorn/interfaces/a;


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private C:Ljava/lang/String;

.field private D:Ljava/lang/String;

.field private E:Ljava/lang/String;

.field private F:Ljava/lang/String;

.field private G:I

.field private H:D

.field private I:Z

.field private J:Z

.field private K:Z

.field private L:Ljava/lang/Runnable;

.field private M:Lcom/igaworks/adpopcorn/cores/common/j;

.field private N:Z

.field private O:Z

.field private P:Lcom/igaworks/adpopcorn/activity/b/d;

.field private Q:Lcom/igaworks/adpopcorn/activity/b/g;

.field private R:Lcom/igaworks/adpopcorn/cores/a/g;

.field private S:D

.field private T:D

.field private U:I

.field private V:Landroid/graphics/drawable/GradientDrawable;

.field private W:Landroid/graphics/drawable/GradientDrawable;

.field private X:Lcom/igaworks/adpopcorn/cores/k;

.field private final Y:I

.field private final Z:I

.field a:Landroid/view/View$OnClickListener;

.field private final aa:I

.field private final b:Ljava/lang/String;

.field private c:Landroid/content/Context;

.field private d:Landroid/widget/FrameLayout;

.field private e:Landroid/widget/FrameLayout;

.field private f:Landroid/widget/VideoView;

.field private g:Lcom/igaworks/adpopcorn/activity/layout/aD;

.field private h:Landroid/widget/LinearLayout;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/ImageView;

.field private o:Landroid/widget/ImageView;

.field private p:Landroid/widget/ImageView;

.field private q:Landroid/widget/ImageView;

.field private r:Landroid/widget/ImageView;

.field private s:Landroid/widget/ImageView;

.field private t:Landroid/widget/ImageView;

.field private u:Landroid/widget/RatingBar;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/inca/security/Proxy/AppGuardProxyActivity;-><init>()V

    const-string v0, "ApVideoAdActivity"

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->v:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->w:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->x:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->y:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->z:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->A:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->B:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->C:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->D:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->E:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->F:Ljava/lang/String;

    iput v2, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->G:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->H:D

    iput v2, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->Y:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->Z:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->aa:I

    new-instance v0, Lcom/igaworks/adpopcorn/activity/e;

    invoke-direct {v0, p0}, Lcom/igaworks/adpopcorn/activity/e;-><init>(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->a:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private a([Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .locals 12

    const/4 v11, 0x0

    const/4 v0, 0x0

    const/4 v10, 0x3

    new-array v2, v10, [I

    fill-array-data v2, :array_0

    const/16 v1, 0x8

    new-array v3, v1, [F

    fill-array-data v3, :array_1

    new-array v4, v10, [Landroid/graphics/drawable/Drawable;

    move v1, v0

    :goto_0
    if-lt v1, v10, :cond_0

    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v1, v4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    :goto_1
    if-lt v0, v10, :cond_2

    return-object v1

    :cond_0
    new-instance v5, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v6, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-direct {v6, v3, v11, v11}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-direct {v5, v6}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    new-instance v6, Landroid/graphics/BitmapShader;

    aget-object v7, p1, v1

    sget-object v8, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v6, v7, v8, v9}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v5}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    new-instance v6, Landroid/graphics/drawable/ClipDrawable;

    const/4 v7, 0x1

    invoke-direct {v6, v5, v10, v7}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    if-nez v1, :cond_1

    aput-object v5, v4, v1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    aput-object v6, v4, v1

    goto :goto_2

    :cond_2
    aget v3, v2, v0

    invoke-virtual {v1, v0, v3}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :array_0
    .array-data 4
        0x1020000
        0x102000f
        0x102000d
    .end array-data

    :array_1
    .array-data 4
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
    .end array-data
.end method

.method static synthetic a(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)Lcom/igaworks/adpopcorn/cores/k;
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->X:Lcom/igaworks/adpopcorn/cores/k;

    return-object v0
.end method

.method private a()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/cores/common/j;->a(Landroid/content/Context;)Lcom/igaworks/adpopcorn/cores/common/j;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->M:Lcom/igaworks/adpopcorn/cores/common/j;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->M:Lcom/igaworks/adpopcorn/cores/common/j;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/cores/common/j;->a()V

    iput-boolean v3, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->I:Z

    iput-boolean v3, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->N:Z

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/cores/k;->c(Landroid/content/Context;)Lcom/igaworks/adpopcorn/cores/k;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->X:Lcom/igaworks/adpopcorn/cores/k;

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v2, v4, [I

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->V:Landroid/graphics/drawable/GradientDrawable;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->V:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->V:Landroid/graphics/drawable/GradientDrawable;

    const/high16 v1, 0x41000000    # 8.0f

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->V:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->V:Landroid/graphics/drawable/GradientDrawable;

    const-string v1, "#ffffffff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v4, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v2, v4, [I

    fill-array-data v2, :array_0

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->W:Landroid/graphics/drawable/GradientDrawable;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->W:Landroid/graphics/drawable/GradientDrawable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->W:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->W:Landroid/graphics/drawable/GradientDrawable;

    const/4 v1, 0x3

    const-string v2, "#ffffffff"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    invoke-static {p0}, Lcom/igaworks/adpopcorn/cores/common/c;->a(Landroid/app/Activity;)V

    invoke-static {}, Lcom/igaworks/adpopcorn/cores/common/c;->a()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->S:D

    invoke-static {}, Lcom/igaworks/adpopcorn/cores/common/c;->b()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->T:D

    sget-boolean v0, Lcom/igaworks/adpopcorn/cores/e;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "http://staging.adpopcorn.com/ap/v3/cmm/conversion/conversionservice.svc/CompleteRewardVideo?"

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->y:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const-string v0, "http://api.adpopcorn.com/ap/v3/cmm/conversion/conversionservice.svc/CompleteRewardVideo?"

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->y:Ljava/lang/String;

    goto :goto_0

    :array_0
    .array-data 4
        0x66000000
        0x66000000
    .end array-data
.end method

.method private a(Landroid/widget/TextView;Ljava/lang/String;II)V
    .locals 6

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    int-to-double v2, p3

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->T:D

    mul-double/2addr v2, v4

    double-to-int v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method static synthetic a(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;I)V
    .locals 0

    iput p1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->U:I

    return-void
.end method

.method static synthetic a(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->I:Z

    return-void
.end method

.method private a(Lcom/igaworks/adpopcorn/cores/a/b;)V
    .locals 4

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->r()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/igaworks/adpopcorn/cores/a/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->q()V

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/igaworks/adpopcorn/cores/a/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    :try_start_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->c:Landroid/content/Context;

    const-string v1, "ApVideoAdActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "return string = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/igaworks/adpopcorn/cores/a/b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lcom/igaworks/adpopcorn/cores/common/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/igaworks/adpopcorn/cores/a/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "Result"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "ResultCode"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "ResultMsg"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->K:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->q()V

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :cond_1
    const/16 v1, 0x7d0

    if-ne v2, v1, :cond_2

    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->K:Z

    goto :goto_0

    :cond_2
    const/16 v1, 0x3e7

    if-eq v2, v1, :cond_3

    const/16 v1, 0x3e8

    if-ne v2, v1, :cond_4

    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->K:Z

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->M:Lcom/igaworks/adpopcorn/cores/common/j;

    iget-object v1, v1, Lcom/igaworks/adpopcorn/cores/common/j;->t:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->q()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->q()V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 9

    :try_start_0
    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->s()V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->M:Lcom/igaworks/adpopcorn/cores/common/j;

    iget-object v3, v0, Lcom/igaworks/adpopcorn/cores/common/j;->aU:Ljava/lang/String;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->M:Lcom/igaworks/adpopcorn/cores/common/j;

    iget-object v5, v0, Lcom/igaworks/adpopcorn/cores/common/j;->k:Ljava/lang/String;

    new-instance v0, Lcom/igaworks/adpopcorn/activity/b/d;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/igaworks/adpopcorn/activity/b/c;->a(Landroid/content/Context;)I

    move-result v2

    new-instance v6, Lcom/igaworks/adpopcorn/activity/i;

    invoke-direct {v6, p0}, Lcom/igaworks/adpopcorn/activity/i;-><init>(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)V

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v4, p1

    invoke-direct/range {v0 .. v8}, Lcom/igaworks/adpopcorn/activity/b/d;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;ZLandroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->P:Lcom/igaworks/adpopcorn/activity/b/d;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->P:Lcom/igaworks/adpopcorn/activity/b/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/activity/b/d;->setCancelable(Z)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->P:Lcom/igaworks/adpopcorn/activity/b/d;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/activity/b/d;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    :try_start_0
    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->s()V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->M:Lcom/igaworks/adpopcorn/cores/common/j;

    iget-object v5, v0, Lcom/igaworks/adpopcorn/cores/common/j;->k:Ljava/lang/String;

    new-instance v0, Lcom/igaworks/adpopcorn/activity/b/d;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/igaworks/adpopcorn/activity/b/c;->a(Landroid/content/Context;)I

    move-result v2

    new-instance v6, Lcom/igaworks/adpopcorn/activity/l;

    invoke-direct {v6, p0}, Lcom/igaworks/adpopcorn/activity/l;-><init>(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)V

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v8}, Lcom/igaworks/adpopcorn/activity/b/d;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;ZLandroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->P:Lcom/igaworks/adpopcorn/activity/b/d;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->P:Lcom/igaworks/adpopcorn/activity/b/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/activity/b/d;->setCancelable(Z)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->P:Lcom/igaworks/adpopcorn/activity/b/d;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/activity/b/d;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->e:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/igaworks/adpopcorn/activity/t;

    invoke-direct {v1, p0}, Lcom/igaworks/adpopcorn/activity/t;-><init>(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->f:Landroid/widget/VideoView;

    new-instance v1, Lcom/igaworks/adpopcorn/activity/f;

    invoke-direct {v1, p0}, Lcom/igaworks/adpopcorn/activity/f;-><init>(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private b()V
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "cKey"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->w:Ljava/lang/String;

    const-string v1, "ptid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->x:Ljava/lang/String;

    const-string v1, "averageRating"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->H:D

    const-string v1, "landscapeImageURL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->D:Ljava/lang/String;

    const-string v1, "clickAction"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->E:Ljava/lang/String;

    const-string v1, "campaignDescription"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->A:Ljava/lang/String;

    const-string v1, "iconImageURL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->B:Ljava/lang/String;

    const-string v1, "campaignName"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->z:Ljava/lang/String;

    const-string v1, "numberOfDownloads"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->F:Ljava/lang/String;

    const-string v1, "redirectURL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->C:Ljava/lang/String;

    const-string v1, "videoURL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->v:Ljava/lang/String;

    const-string v1, "ADType"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->G:I

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->v:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->v:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v4, :cond_3

    :cond_0
    iput-boolean v4, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->N:Z

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->R:Lcom/igaworks/adpopcorn/cores/a/g;

    if-nez v0, :cond_2

    new-instance v0, Lcom/igaworks/adpopcorn/cores/a/g;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/igaworks/adpopcorn/cores/a/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->R:Lcom/igaworks/adpopcorn/cores/a/g;

    :cond_2
    return-void

    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->v:Ljava/lang/String;

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->v:Ljava/lang/String;

    const-string v1, "https://"

    const-string v2, "http://"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->v:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic b(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->o()V

    return-void
.end method

.method static synthetic b(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->a(Z)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->c:Landroid/content/Context;

    const-string v1, "ApVideoAdActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "landingByBrowser url = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lcom/igaworks/adpopcorn/cores/common/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->c:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic c(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->C:Ljava/lang/String;

    return-object v0
.end method

.method private c()V
    .locals 5

    const-string v0, "authkey=%s&sign=%s"

    const-string v1, ""

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->x:Ljava/lang/String;

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->w:Ljava/lang/String;

    const-string v3, ""

    :try_start_0
    invoke-static {v2, v1}, Lcom/igaworks/adpopcorn/cores/common/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->x:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->R:Lcom/igaworks/adpopcorn/cores/a/g;

    const/16 v2, 0x10

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->y:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0, p0}, Lcom/igaworks/adpopcorn/cores/a/g;->a(ILjava/lang/String;Ljava/lang/String;Lcom/igaworks/adpopcorn/interfaces/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic c(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->J:Z

    return-void
.end method

.method private d()V
    .locals 3

    const/4 v2, -0x1

    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->d:Landroid/widget/FrameLayout;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x30

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->e()V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->d:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->setContentView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->f()V

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->h()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->a(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->showProgressDialog(Z)V

    return-void
.end method

.method static synthetic d(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->s()V

    return-void
.end method

.method static synthetic e(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->c:Landroid/content/Context;

    return-object v0
.end method

.method private e()V
    .locals 3

    const/16 v1, 0x400

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    :try_start_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->X:Lcom/igaworks/adpopcorn/cores/k;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/cores/k;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->setRequestedOrientation(I)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->setRequestedOrientation(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v2}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->setRequestedOrientation(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private f()V
    .locals 6

    const/4 v3, -0x1

    new-instance v0, Lcom/igaworks/adpopcorn/activity/c/f;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->c:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/igaworks/adpopcorn/activity/c/f;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->f:Landroid/widget/VideoView;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->f:Landroid/widget/VideoView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->d:Landroid/widget/FrameLayout;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->d:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->f:Landroid/widget/VideoView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->i:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->i:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->W:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->i:Landroid/widget/TextView;

    const/4 v1, 0x0

    const-wide/high16 v2, 0x4038000000000000L    # 24.0

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->T:D

    mul-double/2addr v2, v4

    double-to-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->i:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->q:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->c:Landroid/content/Context;

    const-string v1, "igaworks/adpopcorn/res/logo_adpopcorn_video.png"

    invoke-static {v0, v1}, Lcom/igaworks/adpopcorn/activity/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->q:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->d:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->d:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->q:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->g()V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->f:Landroid/widget/VideoView;

    new-instance v1, Lcom/igaworks/adpopcorn/activity/n;

    invoke-direct {v1, p0}, Lcom/igaworks/adpopcorn/activity/n;-><init>(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->f:Landroid/widget/VideoView;

    new-instance v1, Lcom/igaworks/adpopcorn/activity/o;

    invoke-direct {v1, p0}, Lcom/igaworks/adpopcorn/activity/o;-><init>(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->f:Landroid/widget/VideoView;

    new-instance v1, Lcom/igaworks/adpopcorn/activity/p;

    invoke-direct {v1, p0}, Lcom/igaworks/adpopcorn/activity/p;-><init>(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    return-void
.end method

.method static synthetic f(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->J:Z

    return v0
.end method

.method private g()V
    .locals 12

    const-wide/high16 v10, 0x402e000000000000L    # 15.0

    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    const-wide/high16 v6, 0x4046000000000000L    # 44.0

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-wide v2, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->S:D

    mul-double/2addr v2, v6

    double-to-int v1, v2

    iget-wide v2, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->S:D

    mul-double/2addr v2, v6

    double-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-wide v2, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->S:D

    mul-double/2addr v2, v10

    double-to-int v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget-wide v2, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->T:D

    mul-double/2addr v2, v8

    double-to-int v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    const/16 v1, 0x53

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const-wide v2, 0x405fc00000000000L    # 127.0

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->S:D

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iget-wide v2, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->T:D

    mul-double/2addr v2, v6

    double-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-wide v2, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->S:D

    mul-double/2addr v2, v10

    double-to-int v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget-wide v2, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->T:D

    mul-double/2addr v2, v8

    double-to-int v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    const/16 v1, 0x55

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->q:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic g(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->r()V

    return-void
.end method

.method static synthetic h(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)Landroid/widget/VideoView;
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->f:Landroid/widget/VideoView;

    return-object v0
.end method

.method private h()V
    .locals 3

    const/4 v2, -0x1

    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->e:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->e:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->d:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->i()V

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->j()V

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->k()V

    return-void
.end method

.method private i()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x1

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->n:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->n:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->n:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->D:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->D:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->D:Ljava/lang/String;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->n:Landroid/widget/ImageView;

    new-instance v2, Lcom/igaworks/adpopcorn/activity/q;

    invoke-direct {v2, p0}, Lcom/igaworks/adpopcorn/activity/q;-><init>(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)V

    invoke-static {v0, v1, v3, v3, v2}, Lcom/igaworks/adpopcorn/cores/common/e;->a(Ljava/lang/String;Landroid/widget/ImageView;IILcom/igaworks/adpopcorn/cores/common/d;)V

    :cond_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->e:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->n:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic i(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->n()V

    return-void
.end method

.method private j()V
    .locals 14

    const/16 v13, 0x10

    const/4 v12, 0x0

    const-wide/high16 v10, 0x4024000000000000L    # 10.0

    const-wide/high16 v8, 0x4046000000000000L    # 44.0

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-wide v2, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->S:D

    mul-double/2addr v2, v10

    double-to-int v2, v2

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->T:D

    mul-double/2addr v4, v10

    double-to-int v3, v4

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->S:D

    mul-double/2addr v4, v10

    double-to-int v4, v4

    iget-wide v6, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->T:D

    mul-double/2addr v6, v10

    double-to-int v5, v6

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->c:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->o:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-wide v2, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->S:D

    mul-double/2addr v2, v8

    double-to-int v2, v2

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->S:D

    mul-double/2addr v4, v8

    double-to-int v3, v4

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v13, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->o:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->c:Landroid/content/Context;

    const-string v2, "igaworks/adpopcorn/res/ic_replay.png"

    invoke-static {v1, v2}, Lcom/igaworks/adpopcorn/activity/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->o:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->o:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->o:Landroid/widget/ImageView;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->c:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->T:D

    mul-double/2addr v4, v8

    double-to-int v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v12, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->c:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->p:Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->S:D

    mul-double/2addr v4, v8

    double-to-int v3, v4

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->S:D

    mul-double/2addr v4, v8

    double-to-int v4, v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v13, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->p:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->c:Landroid/content/Context;

    const-string v3, "igaworks/adpopcorn/res/ic_close_video.png"

    invoke-static {v2, v3}, Lcom/igaworks/adpopcorn/activity/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->p:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->p:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->p:Landroid/widget/ImageView;

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->o:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->p:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic j(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->K:Z

    return v0
.end method

.method private k()V
    .locals 12

    const/16 v9, 0x18

    const/16 v7, 0x8

    const-wide/high16 v10, 0x4060000000000000L    # 128.0

    const/4 v8, 0x2

    const/4 v6, 0x1

    new-instance v0, Lcom/igaworks/adpopcorn/activity/layout/aD;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/igaworks/adpopcorn/activity/layout/aD;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->g:Lcom/igaworks/adpopcorn/activity/layout/aD;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->g:Lcom/igaworks/adpopcorn/activity/layout/aD;

    invoke-virtual {v0, v6}, Lcom/igaworks/adpopcorn/activity/layout/aD;->setOrientation(I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->g:Lcom/igaworks/adpopcorn/activity/layout/aD;

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/activity/layout/aD;->setGravity(I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->e:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->g:Lcom/igaworks/adpopcorn/activity/layout/aD;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->g:Lcom/igaworks/adpopcorn/activity/layout/aD;

    invoke-virtual {v0, v6}, Lcom/igaworks/adpopcorn/activity/layout/aD;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->r:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->g:Lcom/igaworks/adpopcorn/activity/layout/aD;

    invoke-virtual {v0, v8}, Lcom/igaworks/adpopcorn/activity/layout/aD;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->j:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->g:Lcom/igaworks/adpopcorn/activity/layout/aD;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/activity/layout/aD;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->k:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->g:Lcom/igaworks/adpopcorn/activity/layout/aD;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/activity/layout/aD;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RatingBar;

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->u:Landroid/widget/RatingBar;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->g:Lcom/igaworks/adpopcorn/activity/layout/aD;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/activity/layout/aD;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->l:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->g:Lcom/igaworks/adpopcorn/activity/layout/aD;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/activity/layout/aD;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->h:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->g:Lcom/igaworks/adpopcorn/activity/layout/aD;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/activity/layout/aD;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->s:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->g:Lcom/igaworks/adpopcorn/activity/layout/aD;

    invoke-virtual {v0, v7}, Lcom/igaworks/adpopcorn/activity/layout/aD;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->m:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->g:Lcom/igaworks/adpopcorn/activity/layout/aD;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/activity/layout/aD;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->t:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->j:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->z:Ljava/lang/String;

    const/16 v2, 0x20

    const-string v3, "#7ddb13"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->a(Landroid/widget/TextView;Ljava/lang/String;II)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->A:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->A:Ljava/lang/String;

    const-string v1, "\n"

    const-string v2, "<br>"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->A:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->k:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->A:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Spanned;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "#ffffff"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v0, v1, v9, v2}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->a(Landroid/widget/TextView;Ljava/lang/String;II)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->B:Ljava/lang/String;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->r:Landroid/widget/ImageView;

    iget-wide v2, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->S:D

    mul-double/2addr v2, v10

    double-to-int v2, v2

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->S:D

    mul-double/2addr v4, v10

    double-to-int v3, v4

    new-instance v4, Lcom/igaworks/adpopcorn/activity/r;

    invoke-direct {v4, p0}, Lcom/igaworks/adpopcorn/activity/r;-><init>(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/igaworks/adpopcorn/cores/common/e;->a(Ljava/lang/String;Landroid/widget/ImageView;IILcom/igaworks/adpopcorn/cores/common/d;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    iget v2, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->G:I

    if-ne v2, v6, :cond_6

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->m:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->M:Lcom/igaworks/adpopcorn/cores/common/j;

    iget-object v2, v2, Lcom/igaworks/adpopcorn/cores/common/j;->bv:Ljava/lang/String;

    const/16 v3, 0x1a

    const-string v4, "#ffffff"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->a(Landroid/widget/TextView;Ljava/lang/String;II)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->c:Landroid/content/Context;

    const-string v2, "igaworks/adpopcorn/res/ic_download.png"

    invoke-static {v0, v2}, Lcom/igaworks/adpopcorn/activity/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->l:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->F:Ljava/lang/String;

    const-string v4, "#ffffff"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-direct {p0, v2, v3, v9, v4}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->a(Landroid/widget/TextView;Ljava/lang/String;II)V

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->l:Landroid/widget/TextView;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    const-string v2, "ja"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->m:Landroid/widget/TextView;

    const/4 v2, 0x0

    const-wide/high16 v4, 0x4036000000000000L    # 22.0

    iget-wide v6, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->T:D

    mul-double/2addr v4, v6

    double-to-int v3, v4

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_2
    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->E:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->E:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->m:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->E:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->s:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_4
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->h:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->V:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->m:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->m:Landroid/widget/TextView;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->c:Landroid/content/Context;

    const-string v1, "igaworks/adpopcorn/res/logo_adpopcorn_video.png"

    invoke-static {v0, v1}, Lcom/igaworks/adpopcorn/activity/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->t:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_5
    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->l()V

    return-void

    :cond_6
    iget v2, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->G:I

    if-ne v2, v8, :cond_1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->m:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->M:Lcom/igaworks/adpopcorn/cores/common/j;

    iget-object v2, v2, Lcom/igaworks/adpopcorn/cores/common/j;->bw:Ljava/lang/String;

    const/16 v3, 0x1a

    const-string v4, "#ffffff"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->a(Landroid/widget/TextView;Ljava/lang/String;II)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->c:Landroid/content/Context;

    const-string v2, "igaworks/adpopcorn/res/ic_more.png"

    invoke-static {v0, v2}, Lcom/igaworks/adpopcorn/activity/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->u:Landroid/widget/RatingBar;

    invoke-virtual {v2, v7}, Landroid/widget/RatingBar;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic k(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->c()V

    return-void
.end method

.method static synthetic l(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->i:Landroid/widget/TextView;

    return-object v0
.end method

.method private l()V
    .locals 10

    const/16 v9, 0x8

    const/4 v8, 0x1

    const-wide v6, 0x4040800000000000L    # 33.0

    :try_start_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->c:Landroid/content/Context;

    const-string v1, "igaworks/adpopcorn/res/img_star_full.png"

    invoke-static {v0, v1}, Lcom/igaworks/adpopcorn/activity/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->c:Landroid/content/Context;

    const-string v2, "igaworks/adpopcorn/res/img_star_transparent.png"

    invoke-static {v1, v2}, Lcom/igaworks/adpopcorn/activity/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    iget-wide v2, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->S:D

    mul-double/2addr v2, v6

    double-to-int v2, v2

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->S:D

    mul-double/2addr v4, v6

    double-to-int v3, v4

    const/4 v4, 0x1

    invoke-static {v0, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-wide v2, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->S:D

    mul-double/2addr v2, v6

    double-to-int v2, v2

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->S:D

    mul-double/2addr v4, v6

    double-to-int v3, v4

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const/4 v1, 0x2

    aput-object v0, v2, v1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->u:Landroid/widget/RatingBar;

    invoke-direct {p0, v2}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->a([Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->u:Landroid/widget/RatingBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->u:Landroid/widget/RatingBar;

    const v1, 0x3dcccccd    # 0.1f

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setStepSize(F)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->u:Landroid/widget/RatingBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    iget-wide v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->H:D

    double-to-float v0, v0

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->u:Landroid/widget/RatingBar;

    invoke-virtual {v1, v0}, Landroid/widget/RatingBar;->setRating(F)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->u:Landroid/widget/RatingBar;

    invoke-virtual {v0, v8}, Landroid/widget/RatingBar;->setIsIndicator(Z)V

    :cond_0
    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->u:Landroid/widget/RatingBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->u:Landroid/widget/RatingBar;

    invoke-virtual {v0, v9}, Landroid/widget/RatingBar;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic m(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)Lcom/igaworks/adpopcorn/cores/common/j;
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->M:Lcom/igaworks/adpopcorn/cores/common/j;

    return-object v0
.end method

.method private m()V
    .locals 2

    iget-boolean v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->N:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->v:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->f:Landroid/widget/VideoView;

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method static synthetic n(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->n:Landroid/widget/ImageView;

    return-object v0
.end method

.method private n()V
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->L:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->L:Ljava/lang/Runnable;

    :cond_0
    new-instance v0, Lcom/igaworks/adpopcorn/activity/s;

    invoke-direct {v0, p0}, Lcom/igaworks/adpopcorn/activity/s;-><init>(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->L:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->L:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method static synthetic o(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->r:Landroid/widget/ImageView;

    return-object v0
.end method

.method private o()V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->a(Z)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->f:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->n()V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->X:Lcom/igaworks/adpopcorn/cores/k;

    const-string v1, "start_video"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/igaworks/adpopcorn/cores/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic p(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)I
    .locals 1

    iget v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->U:I

    return v0
.end method

.method private p()V
    .locals 11

    :try_start_0
    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->s()V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->M:Lcom/igaworks/adpopcorn/cores/common/j;

    iget-object v3, v0, Lcom/igaworks/adpopcorn/cores/common/j;->aU:Ljava/lang/String;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->M:Lcom/igaworks/adpopcorn/cores/common/j;

    iget-object v4, v0, Lcom/igaworks/adpopcorn/cores/common/j;->bi:Ljava/lang/String;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->M:Lcom/igaworks/adpopcorn/cores/common/j;

    iget-object v5, v0, Lcom/igaworks/adpopcorn/cores/common/j;->bj:Ljava/lang/String;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->M:Lcom/igaworks/adpopcorn/cores/common/j;

    iget-object v7, v0, Lcom/igaworks/adpopcorn/cores/common/j;->bk:Ljava/lang/String;

    new-instance v0, Lcom/igaworks/adpopcorn/activity/b/d;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/igaworks/adpopcorn/activity/b/c;->a(Landroid/content/Context;)I

    move-result v2

    new-instance v6, Lcom/igaworks/adpopcorn/activity/g;

    invoke-direct {v6, p0}, Lcom/igaworks/adpopcorn/activity/g;-><init>(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)V

    new-instance v8, Lcom/igaworks/adpopcorn/activity/h;

    invoke-direct {v8, p0}, Lcom/igaworks/adpopcorn/activity/h;-><init>(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)V

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-direct/range {v0 .. v10}, Lcom/igaworks/adpopcorn/activity/b/d;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;ZLandroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->P:Lcom/igaworks/adpopcorn/activity/b/d;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->P:Lcom/igaworks/adpopcorn/activity/b/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/activity/b/d;->setCancelable(Z)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->P:Lcom/igaworks/adpopcorn/activity/b/d;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/activity/b/d;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic q(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->q:Landroid/widget/ImageView;

    return-object v0
.end method

.method private q()V
    .locals 11

    :try_start_0
    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->s()V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->M:Lcom/igaworks/adpopcorn/cores/common/j;

    iget-object v3, v0, Lcom/igaworks/adpopcorn/cores/common/j;->t:Ljava/lang/String;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->M:Lcom/igaworks/adpopcorn/cores/common/j;

    iget-object v4, v0, Lcom/igaworks/adpopcorn/cores/common/j;->bn:Ljava/lang/String;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->M:Lcom/igaworks/adpopcorn/cores/common/j;

    iget-object v5, v0, Lcom/igaworks/adpopcorn/cores/common/j;->x:Ljava/lang/String;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->M:Lcom/igaworks/adpopcorn/cores/common/j;

    iget-object v7, v0, Lcom/igaworks/adpopcorn/cores/common/j;->D:Ljava/lang/String;

    new-instance v0, Lcom/igaworks/adpopcorn/activity/b/d;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/igaworks/adpopcorn/activity/b/c;->a(Landroid/content/Context;)I

    move-result v2

    new-instance v6, Lcom/igaworks/adpopcorn/activity/j;

    invoke-direct {v6, p0}, Lcom/igaworks/adpopcorn/activity/j;-><init>(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)V

    new-instance v8, Lcom/igaworks/adpopcorn/activity/k;

    invoke-direct {v8, p0}, Lcom/igaworks/adpopcorn/activity/k;-><init>(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)V

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-direct/range {v0 .. v10}, Lcom/igaworks/adpopcorn/activity/b/d;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;ZLandroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->P:Lcom/igaworks/adpopcorn/activity/b/d;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->P:Lcom/igaworks/adpopcorn/activity/b/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/activity/b/d;->setCancelable(Z)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->P:Lcom/igaworks/adpopcorn/activity/b/d;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/activity/b/d;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private r()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->Q:Lcom/igaworks/adpopcorn/activity/b/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->Q:Lcom/igaworks/adpopcorn/activity/b/g;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/activity/b/g;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->Q:Lcom/igaworks/adpopcorn/activity/b/g;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic r(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->g()V

    return-void
.end method

.method static synthetic s(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->L:Ljava/lang/Runnable;

    return-object v0
.end method

.method private s()V
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->P:Lcom/igaworks/adpopcorn/activity/b/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->P:Lcom/igaworks/adpopcorn/activity/b/d;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/activity/b/d;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->P:Lcom/igaworks/adpopcorn/activity/b/d;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/activity/b/d;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->P:Lcom/igaworks/adpopcorn/activity/b/d;

    return-void
.end method

.method static synthetic t(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->e:Landroid/widget/FrameLayout;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    iget-boolean v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->I:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->p()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    const/4 v1, 0x0

    const v0, 0x1030010

    invoke-virtual {p0, v0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->setTheme(I)V

    invoke-super {p0, p1}, Lcom/inca/security/Proxy/AppGuardProxyActivity;->onCreate(Landroid/os/Bundle;)V

    iput-object p0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->c:Landroid/content/Context;

    iput-boolean v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->O:Z

    if-eqz p1, :cond_0

    const-string v0, "app_restart"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->O:Z

    :cond_0
    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->a()V

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->b()V

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->d()V

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->m()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/inca/security/Proxy/AppGuardProxyActivity;->onDestroy()V

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->s()V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->f:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->f:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    :cond_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->d:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViewsInLayout()V

    :cond_1
    return-void
.end method

.method public onNetResponseListener(ILcom/igaworks/adpopcorn/cores/a/b;)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0, p2}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->a(Lcom/igaworks/adpopcorn/cores/a/b;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Lcom/inca/security/Proxy/AppGuardProxyActivity;->onPause()V

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->s()V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->f:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->f:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->L:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->L:Ljava/lang/Runnable;

    :cond_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->X:Lcom/igaworks/adpopcorn/cores/k;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/cores/k;->b(Z)V

    return-void
.end method

.method protected onResume()V
    .locals 9

    invoke-super {p0}, Lcom/inca/security/Proxy/AppGuardProxyActivity;->onResume()V

    :try_start_0
    iget-boolean v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->O:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->N:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->s()V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->M:Lcom/igaworks/adpopcorn/cores/common/j;

    iget-object v3, v0, Lcom/igaworks/adpopcorn/cores/common/j;->aU:Ljava/lang/String;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->M:Lcom/igaworks/adpopcorn/cores/common/j;

    iget-object v4, v0, Lcom/igaworks/adpopcorn/cores/common/j;->z:Ljava/lang/String;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->M:Lcom/igaworks/adpopcorn/cores/common/j;

    iget-object v5, v0, Lcom/igaworks/adpopcorn/cores/common/j;->k:Ljava/lang/String;

    new-instance v0, Lcom/igaworks/adpopcorn/activity/b/d;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/igaworks/adpopcorn/activity/b/c;->a(Landroid/content/Context;)I

    move-result v2

    new-instance v6, Lcom/igaworks/adpopcorn/activity/m;

    invoke-direct {v6, p0}, Lcom/igaworks/adpopcorn/activity/m;-><init>(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)V

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/igaworks/adpopcorn/activity/b/d;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;ZLandroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->P:Lcom/igaworks/adpopcorn/activity/b/d;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->P:Lcom/igaworks/adpopcorn/activity/b/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/activity/b/d;->setCancelable(Z)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->P:Lcom/igaworks/adpopcorn/activity/b/d;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/activity/b/d;->show()V

    :cond_1
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->X:Lcom/igaworks/adpopcorn/cores/k;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/cores/k;->b(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/inca/security/Proxy/AppGuardProxyActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "app_restart"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public showProgressDialog(Z)V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->r()V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->c:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/igaworks/adpopcorn/activity/b/g;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/igaworks/adpopcorn/activity/b/c;->a(Landroid/content/Context;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/igaworks/adpopcorn/activity/b/g;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->Q:Lcom/igaworks/adpopcorn/activity/b/g;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->Q:Lcom/igaworks/adpopcorn/activity/b/g;

    invoke-virtual {v0, p1}, Lcom/igaworks/adpopcorn/activity/b/g;->setCancelable(Z)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->Q:Lcom/igaworks/adpopcorn/activity/b/g;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/activity/b/g;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
