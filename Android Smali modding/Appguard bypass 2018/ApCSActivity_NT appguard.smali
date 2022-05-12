.class public Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;
.super Lcom/inca/security/Proxy/AppGuardProxyActivity;


# static fields
.field private static y:Landroid/os/Handler;


# instance fields
.field private final A:Ljava/lang/String;

.field a:Landroid/view/View$OnClickListener;

.field private b:Landroid/content/Context;

.field private c:Z

.field private d:D

.field private e:D

.field private f:Lcom/igaworks/adpopcorn/cores/common/j;

.field private g:Landroid/graphics/drawable/GradientDrawable;

.field private h:Landroid/graphics/drawable/GradientDrawable;

.field private i:Landroid/graphics/drawable/StateListDrawable;

.field private j:Landroid/widget/LinearLayout;

.field private k:Landroid/widget/EditText;

.field private l:Landroid/widget/EditText;

.field private m:Z

.field private n:Z

.field private o:Lcom/igaworks/adpopcorn/cores/k;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Z

.field private w:Lcom/igaworks/adpopcorn/activity/b/g;

.field private x:Z

.field private final z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->y:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/inca/security/Proxy/AppGuardProxyActivity;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->p:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->q:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->s:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->x:Z

    new-instance v0, Lcom/igaworks/adpopcorn/activity/a;

    invoke-direct {v0, p0}, Lcom/igaworks/adpopcorn/activity/a;-><init>(Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->a:Landroid/view/View$OnClickListener;

    const-string v0, "http://api.adpopcorn.com/ap/v3/sdk/media/MediaService.svc/PostCSBEQ?"

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->z:Ljava/lang/String;

    const-string v0, "http://staging.adpopcorn.com/ap/v3/sdk/media/MediaService.svc/PostCSBEQ?"

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->A:Ljava/lang/String;

    return-void
.end method

.method static synthetic a()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->y:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic a(Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->k:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic a(Landroid/os/Handler;)V
    .locals 0

    sput-object p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->y:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mailto:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->r:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic a(Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "^(?:\\w+\\.?)*\\w+@(?:\\w+\\.)+\\w+$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->l:Landroid/widget/EditText;

    return-object v0
.end method

.method private b()V
    .locals 0

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->c()V

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->d()V

    return-void
.end method

.method static synthetic c(Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->p:Ljava/lang/String;

    return-object v0
.end method

.method private c()V
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/cores/common/j;->a(Landroid/content/Context;)Lcom/igaworks/adpopcorn/cores/common/j;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->f:Lcom/igaworks/adpopcorn/cores/common/j;

    iput-boolean v6, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->n:Z

    invoke-virtual {p0}, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string v1, "campaignKey"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "campaignKey"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->p:Ljava/lang/String;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->p:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->p:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v6, :cond_0

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->p:Ljava/lang/String;

    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "unknown"

    iput-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->p:Ljava/lang/String;

    :cond_1
    const-string v1, "campaignName"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "campaignName"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->q:Ljava/lang/String;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->q:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->q:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v6, :cond_2

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->q:Ljava/lang/String;

    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const-string v1, "unknown"

    iput-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->q:Ljava/lang/String;

    :cond_3
    const-string v1, "csType"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "csType"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_4

    iput-boolean v5, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->n:Z

    const-string v1, "csSource"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "csSource"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->r:Ljava/lang/String;

    :cond_4
    const-string v1, "isFullScreen"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "isFullScreen"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->v:Z

    :cond_5
    const-string v1, "authkey"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "authkey"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->s:Ljava/lang/String;

    :cond_6
    const-string v1, "isEtcMode"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "isEtcMode"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->x:Z

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->b:Landroid/content/Context;

    const-string v1, "IGAW_QA"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isEtcMode: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->x:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v8}, Lcom/igaworks/adpopcorn/cores/common/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_7
    iget-boolean v0, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->v:Z

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    const/16 v2, 0x400

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFlags(II)V

    :cond_8
    sget-object v0, Lcom/igaworks/adpopcorn/style/AdPOPcornStyler;->themeStyle:Lcom/igaworks/adpopcorn/style/AdPOPcornStyler$ThemeStyle;

    iget v0, v0, Lcom/igaworks/adpopcorn/style/AdPOPcornStyler$ThemeStyle;->themeColor:I

    sget-object v1, Lcom/igaworks/adpopcorn/style/AdPOPcornStyler;->themeStyle:Lcom/igaworks/adpopcorn/style/AdPOPcornStyler$ThemeStyle;

    iget v1, v1, Lcom/igaworks/adpopcorn/style/AdPOPcornStyler$ThemeStyle;->DEFAULT_THEME:I

    if-eq v0, v1, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/igaworks/adpopcorn/style/AdPOPcornStyler;->themeStyle:Lcom/igaworks/adpopcorn/style/AdPOPcornStyler$ThemeStyle;

    iget v1, v1, Lcom/igaworks/adpopcorn/style/AdPOPcornStyler$ThemeStyle;->themeColor:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->t:Ljava/lang/String;

    :goto_0
    sget-object v0, Lcom/igaworks/adpopcorn/style/AdPOPcornStyler;->themeStyle:Lcom/igaworks/adpopcorn/style/AdPOPcornStyler$ThemeStyle;

    iget v0, v0, Lcom/igaworks/adpopcorn/style/AdPOPcornStyler$ThemeStyle;->textThemeColor:I

    sget-object v1, Lcom/igaworks/adpopcorn/style/AdPOPcornStyler;->themeStyle:Lcom/igaworks/adpopcorn/style/AdPOPcornStyler$ThemeStyle;

    iget v1, v1, Lcom/igaworks/adpopcorn/style/AdPOPcornStyler$ThemeStyle;->DEFAULT_TEXT_THEME:I

    if-eq v0, v1, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/igaworks/adpopcorn/style/AdPOPcornStyler;->themeStyle:Lcom/igaworks/adpopcorn/style/AdPOPcornStyler$ThemeStyle;

    iget v1, v1, Lcom/igaworks/adpopcorn/style/AdPOPcornStyler$ThemeStyle;->textThemeColor:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->u:Ljava/lang/String;

    :goto_1
    invoke-static {p0}, Lcom/igaworks/adpopcorn/cores/common/c;->a(Landroid/app/Activity;)V

    invoke-static {}, Lcom/igaworks/adpopcorn/cores/common/c;->a()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->d:D

    invoke-static {}, Lcom/igaworks/adpopcorn/cores/common/c;->b()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->e:D

    const-wide/high16 v0, 0x4028000000000000L    # 12.0

    iget-wide v2, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->d:D

    mul-double/2addr v0, v2

    double-to-int v0, v0

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v3, v7, [I

    fill-array-data v3, :array_0

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->g:Landroid/graphics/drawable/GradientDrawable;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->g:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->g:Landroid/graphics/drawable/GradientDrawable;

    const/16 v2, 0x8

    new-array v2, v2, [F

    int-to-float v3, v0

    aput v3, v2, v5

    int-to-float v3, v0

    aput v3, v2, v6

    int-to-float v3, v0

    aput v3, v2, v7

    int-to-float v3, v0

    aput v3, v2, v8

    int-to-float v3, v0

    aput v3, v2, v9

    const/4 v3, 0x5

    int-to-float v4, v0

    aput v4, v2, v3

    const/4 v3, 0x6

    int-to-float v4, v0

    aput v4, v2, v3

    const/4 v3, 0x7

    int-to-float v4, v0

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->g:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->g:Landroid/graphics/drawable/GradientDrawable;

    const-string v2, "#ffffff"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v6, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v3, v7, [I

    fill-array-data v3, :array_1

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->h:Landroid/graphics/drawable/GradientDrawable;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->h:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->h:Landroid/graphics/drawable/GradientDrawable;

    const/16 v2, 0x8

    new-array v2, v2, [F

    int-to-float v3, v0

    aput v3, v2, v5

    int-to-float v3, v0

    aput v3, v2, v6

    int-to-float v3, v0

    aput v3, v2, v7

    int-to-float v3, v0

    aput v3, v2, v8

    int-to-float v3, v0

    aput v3, v2, v9

    const/4 v3, 0x5

    int-to-float v4, v0

    aput v4, v2, v3

    const/4 v3, 0x6

    int-to-float v4, v0

    aput v4, v2, v3

    const/4 v3, 0x7

    int-to-float v0, v0

    aput v0, v2, v3

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->h:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->h:Landroid/graphics/drawable/GradientDrawable;

    const-string v1, "#ffffff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v6, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->i:Landroid/graphics/drawable/StateListDrawable;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->i:Landroid/graphics/drawable/StateListDrawable;

    new-array v1, v6, [I

    const v2, 0x10100a7

    aput v2, v1, v5

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->h:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->i:Landroid/graphics/drawable/StateListDrawable;

    sget-object v1, Landroid/util/StateSet;->WILD_CARD:[I

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->g:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/cores/k;->c(Landroid/content/Context;)Lcom/igaworks/adpopcorn/cores/k;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->o:Lcom/igaworks/adpopcorn/cores/k;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->o:Lcom/igaworks/adpopcorn/cores/k;

    invoke-virtual {v0, p0}, Lcom/igaworks/adpopcorn/cores/k;->a(Landroid/app/Activity;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->m:Z

    return-void

    :cond_9
    const-string v0, "#ff59c079"

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->t:Ljava/lang/String;

    goto/16 :goto_0

    :cond_a
    const-string v0, "#ff262626"

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->u:Ljava/lang/String;

    goto/16 :goto_1

    :array_0
    .array-data 4
        -0xb48633
        -0xb48633
    .end array-data

    :array_1
    .array-data 4
        -0xbf9852
        -0xbf9852
    .end array-data
.end method

.method static synthetic d(Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->b:Landroid/content/Context;

    return-object v0
.end method

.method private d()V
    .locals 3

    const/4 v2, -0x1

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->j:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->j:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->j:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->j:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->e()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->j:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->f()Landroid/widget/ScrollView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->j:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method private e()Landroid/widget/RelativeLayout;
    .locals 11

    const/16 v10, 0xf

    const/4 v9, -0x1

    const/4 v8, -0x2

    const-wide/high16 v6, 0x404c000000000000L    # 56.0

    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const-wide/high16 v2, 0x4058000000000000L    # 96.0

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->e:D

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-direct {v1, v9, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->t:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->d:D

    mul-double/2addr v4, v6

    double-to-int v3, v4

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->d:D

    mul-double/2addr v4, v6

    double-to-int v4, v4

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const-wide/high16 v4, 0x403a000000000000L    # 26.0

    iget-wide v6, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->d:D

    mul-double/2addr v4, v6

    double-to-int v3, v4

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->b:Landroid/content/Context;

    const-string v3, "igaworks/adpopcorn/res/ic_back.png"

    invoke-static {v2, v3}, Lcom/igaworks/adpopcorn/activity/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    new-instance v2, Lcom/igaworks/adpopcorn/activity/b;

    invoke-direct {v2, p0}, Lcom/igaworks/adpopcorn/activity/b;-><init>(Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xe

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v2, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x0

    const-wide/high16 v4, 0x4046000000000000L    # 44.0

    iget-wide v6, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->e:D

    mul-double/2addr v4, v6

    double-to-int v3, v4

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->f:Lcom/igaworks/adpopcorn/cores/common/j;

    iget-object v2, v2, Lcom/igaworks/adpopcorn/cores/common/j;->ab:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v2

    or-int/lit8 v2, v2, 0x20

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setPaintFlags(I)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method static synthetic e(Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;)Lcom/igaworks/adpopcorn/cores/common/j;
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->f:Lcom/igaworks/adpopcorn/cores/common/j;

    return-object v0
.end method

.method private f()Landroid/widget/ScrollView;
    .locals 10

    new-instance v0, Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const-wide v4, 0x4055800000000000L    # 86.0

    iget-wide v6, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->e:D

    mul-double/2addr v4, v6

    double-to-int v4, v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const-wide/high16 v4, 0x403a000000000000L    # 26.0

    iget-wide v6, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->d:D

    mul-double/2addr v4, v6

    double-to-int v3, v4

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    const-wide/high16 v4, 0x403a000000000000L    # 26.0

    iget-wide v6, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->d:D

    mul-double/2addr v4, v6

    double-to-int v3, v4

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->b:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v4, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->f:Lcom/igaworks/adpopcorn/cores/common/j;

    iget-object v4, v4, Lcom/igaworks/adpopcorn/cores/common/j;->ag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/4 v4, 0x0

    const-wide/high16 v6, 0x4038000000000000L    # 24.0

    iget-wide v8, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->e:D

    mul-double/2addr v6, v8

    double-to-int v5, v6

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v4, "#363f4b"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const v4, 0x3f666666    # 0.9f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextScaleX(F)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->b:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v4, "#cdcdcd"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->b:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v4, "#ffffff"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->b:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v4, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->q:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/4 v4, 0x0

    const-wide/high16 v6, 0x4040000000000000L    # 32.0

    iget-wide v8, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->e:D

    mul-double/2addr v6, v8

    double-to-int v5, v6

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v4, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->u:Ljava/lang/String;

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v4

    or-int/lit8 v4, v4, 0x20

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setPaintFlags(I)V

    const v4, 0x3f666666    # 0.9f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextScaleX(F)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->b:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v4, "#cdcdcd"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->b:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v4, "#ffffff"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->b:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v4, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->f:Lcom/igaworks/adpopcorn/cores/common/j;

    iget-object v4, v4, Lcom/igaworks/adpopcorn/cores/common/j;->n:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/4 v4, 0x0

    const-wide/high16 v6, 0x4040000000000000L    # 32.0

    iget-wide v8, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->e:D

    mul-double/2addr v6, v8

    double-to-int v5, v6

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v4, "#fe5a59"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const v4, 0x3f666666    # 0.9f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextScaleX(F)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->b:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v4, "#cdcdcd"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->b:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v4, "#ffffff"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/EditText;

    iget-object v4, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->b:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->k:Landroid/widget/EditText;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const-wide v6, 0x4070200000000000L    # 258.0

    iget-wide v8, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->e:D

    mul-double/2addr v6, v8

    double-to-int v5, v6

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v4, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->k:Landroid/widget/EditText;

    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->k:Landroid/widget/EditText;

    const/16 v4, 0x30

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setGravity(I)V

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->k:Landroid/widget/EditText;

    const-wide/high16 v4, 0x403a000000000000L    # 26.0

    iget-wide v6, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->d:D

    mul-double/2addr v4, v6

    double-to-int v4, v4

    const-wide/high16 v6, 0x4034000000000000L    # 20.0

    iget-wide v8, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->e:D

    mul-double/2addr v6, v8

    double-to-int v5, v6

    const-wide/high16 v6, 0x403a000000000000L    # 26.0

    iget-wide v8, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->d:D

    mul-double/2addr v6, v8

    double-to-int v6, v6

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/EditText;->setPadding(IIII)V

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->k:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->f:Lcom/igaworks/adpopcorn/cores/common/j;

    iget-object v4, v4, Lcom/igaworks/adpopcorn/cores/common/j;->an:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->k:Landroid/widget/EditText;

    const-string v4, "#939393"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setHintTextColor(I)V

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->k:Landroid/widget/EditText;

    const/4 v4, 0x0

    const-wide/high16 v6, 0x403a000000000000L    # 26.0

    iget-wide v8, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->e:D

    mul-double/2addr v6, v8

    double-to-int v5, v6

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/EditText;->setTextSize(IF)V

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->k:Landroid/widget/EditText;

    const-string v4, "#939393"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setTextColor(I)V

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->k:Landroid/widget/EditText;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setBackgroundColor(I)V

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->k:Landroid/widget/EditText;

    const v4, 0x3f666666    # 0.9f

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setTextScaleX(F)V

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->k:Landroid/widget/EditText;

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->k:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->b:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v4, "#cdcdcd"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->b:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v4, "#ffffff"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->b:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v4, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->f:Lcom/igaworks/adpopcorn/cores/common/j;

    iget-object v4, v4, Lcom/igaworks/adpopcorn/cores/common/j;->m:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v4, 0x0

    const-wide/high16 v6, 0x4040000000000000L    # 32.0

    iget-wide v8, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->e:D

    mul-double/2addr v6, v8

    double-to-int v5, v6

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v4, "#fe5a59"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const v4, 0x3f666666    # 0.9f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextScaleX(F)V

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->b:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v4, "#cbcbcb"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->b:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v4, "#ffffff"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/EditText;

    iget-object v4, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->b:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->l:Landroid/widget/EditText;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const-wide v6, 0x4055800000000000L    # 86.0

    iget-wide v8, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->e:D

    mul-double/2addr v6, v8

    double-to-int v5, v6

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x10

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v4, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->l:Landroid/widget/EditText;

    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->l:Landroid/widget/EditText;

    const-wide/high16 v4, 0x403a000000000000L    # 26.0

    iget-wide v6, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->d:D

    mul-double/2addr v4, v6

    double-to-int v4, v4

    const/4 v5, 0x0

    const-wide/high16 v6, 0x403a000000000000L    # 26.0

    iget-wide v8, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->d:D

    mul-double/2addr v6, v8

    double-to-int v6, v6

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/EditText;->setPadding(IIII)V

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->l:Landroid/widget/EditText;

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setGravity(I)V

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->l:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->f:Lcom/igaworks/adpopcorn/cores/common/j;

    iget-object v4, v4, Lcom/igaworks/adpopcorn/cores/common/j;->am:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->l:Landroid/widget/EditText;

    const-string v4, "#939394"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setHintTextColor(I)V

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->l:Landroid/widget/EditText;

    const/4 v4, 0x0

    const-wide/high16 v6, 0x403a000000000000L    # 26.0

    iget-wide v8, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->e:D

    mul-double/2addr v6, v8

    double-to-int v5, v6

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/EditText;->setTextSize(IF)V

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->l:Landroid/widget/EditText;

    const-string v4, "#363f4b"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setTextColor(I)V

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->l:Landroid/widget/EditText;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setBackgroundColor(I)V

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->l:Landroid/widget/EditText;

    const v4, 0x3f666666    # 0.9f

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setTextScaleX(F)V

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->l:Landroid/widget/EditText;

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->l:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->b:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v4, "#cbcbcb"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->b:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v4, "#ffffff"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->b:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v2, 0x10

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->f:Lcom/igaworks/adpopcorn/cores/common/j;

    iget-object v2, v2, Lcom/igaworks/adpopcorn/cores/common/j;->ah:Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    const-wide/high16 v4, 0x4038000000000000L    # 24.0

    iget-wide v6, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->e:D

    mul-double/2addr v4, v6

    double-to-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v3, v2, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v2, "#939393"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const v2, 0x3f666666    # 0.9f

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextScaleX(F)V

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->b:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iget-boolean v3, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->m:Z

    if-eqz v3, :cond_0

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const-wide v6, 0x4060400000000000L    # 130.0

    iget-wide v8, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->e:D

    mul-double/2addr v6, v8

    double-to-int v5, v6

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->b:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const-wide v6, 0x4072200000000000L    # 290.0

    iget-wide v8, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->d:D

    mul-double/2addr v6, v8

    double-to-int v5, v6

    const-wide v6, 0x4056800000000000L    # 90.0

    iget-wide v8, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->e:D

    mul-double/2addr v6, v8

    double-to-int v6, v6

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const-wide/high16 v6, 0x4034000000000000L    # 20.0

    iget-wide v8, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->e:D

    mul-double/2addr v6, v8

    double-to-int v5, v6

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->f:Lcom/igaworks/adpopcorn/cores/common/j;

    iget-object v4, v4, Lcom/igaworks/adpopcorn/cores/common/j;->o:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v4, 0x0

    const-wide/high16 v6, 0x4043000000000000L    # 38.0

    iget-wide v8, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->e:D

    mul-double/2addr v6, v8

    double-to-int v5, v6

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v4, "#ffffff"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v4, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->i:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v4, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    return-object v0

    :cond_0
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method static synthetic f(Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->n:Z

    return v0
.end method

.method static synthetic g(Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->s:Ljava/lang/String;

    return-object v0
.end method

.method private g()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->w:Lcom/igaworks/adpopcorn/activity/b/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->w:Lcom/igaworks/adpopcorn/activity/b/g;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/activity/b/g;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->w:Lcom/igaworks/adpopcorn/activity/b/g;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic h(Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;)Lcom/igaworks/adpopcorn/cores/k;
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->o:Lcom/igaworks/adpopcorn/cores/k;

    return-object v0
.end method

.method static synthetic i(Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->q:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->x:Z

    return v0
.end method

.method static synthetic k(Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;)V
    .locals 0

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->g()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/inca/security/Proxy/AppGuardProxyActivity;->onCreate(Landroid/os/Bundle;)V

    iput-object p0, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->b:Landroid/content/Context;

    iput-boolean v1, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->c:Z

    if-eqz p1, :cond_0

    const-string v0, "app_restart"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->c:Z

    :cond_0
    iget-boolean v0, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->c:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->finish()V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->b()V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Lcom/inca/security/Proxy/AppGuardProxyActivity;->onPause()V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->o:Lcom/igaworks/adpopcorn/cores/k;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/cores/k;->b(Z)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Lcom/inca/security/Proxy/AppGuardProxyActivity;->onResume()V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->o:Lcom/igaworks/adpopcorn/cores/k;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/cores/k;->b(Z)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/inca/security/Proxy/AppGuardProxyActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "app_restart"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public showProgressDialog(Ljava/lang/String;Z)V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->g()V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/igaworks/adpopcorn/activity/b/g;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/igaworks/adpopcorn/activity/b/c;->a(Landroid/content/Context;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/igaworks/adpopcorn/activity/b/g;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->w:Lcom/igaworks/adpopcorn/activity/b/g;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->w:Lcom/igaworks/adpopcorn/activity/b/g;

    invoke-virtual {v0, p2}, Lcom/igaworks/adpopcorn/activity/b/g;->setCancelable(Z)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApCSActivity_NT;->w:Lcom/igaworks/adpopcorn/activity/b/g;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/activity/b/g;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
