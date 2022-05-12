.class public Lcom/cw/sdk/c;
.super Ljava/lang/Object;
.source "CWSDK.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cw/sdk/c$a;
    }
.end annotation


# static fields
.field private static a:Lcom/cw/sdk/c;


# instance fields
.field private b:Landroid/app/Application;

.field private c:Landroid/app/Activity;

.field private d:Landroid/os/Handler;

.field private e:Lcom/cw/sdk/v;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cw/sdk/p;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cw/sdk/m;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cw/sdk/o;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/cw/sdk/verify/UToken;

.field private j:Lcom/cw/sdk/RoleExtraData;

.field private k:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lcom/cw/sdk/c;->i:Lcom/cw/sdk/verify/UToken;

    .line 59
    iput-object v0, p0, Lcom/cw/sdk/c;->j:Lcom/cw/sdk/RoleExtraData;

    .line 63
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/cw/sdk/c;->d:Landroid/os/Handler;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cw/sdk/c;->f:Ljava/util/List;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/cw/sdk/c;->g:Ljava/util/List;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/cw/sdk/c;->h:Ljava/util/List;

    return-void
.end method

.method public static a()Lcom/cw/sdk/c;
    .registers 1

    .line 70
    sget-object v0, Lcom/cw/sdk/c;->a:Lcom/cw/sdk/c;

    if-nez v0, :cond_b

    .line 71
    new-instance v0, Lcom/cw/sdk/c;

    invoke-direct {v0}, Lcom/cw/sdk/c;-><init>()V

    sput-object v0, Lcom/cw/sdk/c;->a:Lcom/cw/sdk/c;

    .line 73
    :cond_b
    sget-object v0, Lcom/cw/sdk/c;->a:Lcom/cw/sdk/c;

    return-object v0
.end method

.method static synthetic a(Lcom/cw/sdk/c;)Lcom/cw/sdk/v;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/cw/sdk/c;->e:Lcom/cw/sdk/v;

    return-object p0
.end method

.method private static a(Ljava/io/File;)Ljava/lang/String;
    .registers 8

    .line 317
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    :cond_8
    const/16 v0, 0x400

    .line 322
    new-array v2, v0, [B

    :try_start_c
    const-string v3, "MD5"

    .line 325
    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 326
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :goto_17
    const/4 p0, 0x0

    .line 327
    invoke-virtual {v4, v2, p0, v0}, Ljava/io/FileInputStream;->read([BII)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_23

    .line 328
    invoke-virtual {v3, v2, p0, v5}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_17

    .line 330
    :cond_23
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_26} :catch_37

    .line 335
    new-instance p0, Ljava/math/BigInteger;

    const/4 v0, 0x1

    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 v0, 0x10

    .line 336
    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_37
    move-exception p0

    .line 332
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v1
.end method

.method static synthetic a(Lcom/cw/sdk/c;Lcom/cw/sdk/verify/UToken;)V
    .registers 2

    .line 40
    invoke-direct {p0, p1}, Lcom/cw/sdk/c;->a(Lcom/cw/sdk/verify/UToken;)V

    return-void
.end method

.method static synthetic a(Lcom/cw/sdk/c;Lorg/json/JSONArray;Lcom/cw/sdk/v;)V
    .registers 3

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/cw/sdk/c;->a(Lorg/json/JSONArray;Lcom/cw/sdk/v;)V

    return-void
.end method

.method private a(Lcom/cw/sdk/verify/UToken;)V
    .registers 4

    .line 419
    invoke-virtual {p1}, Lcom/cw/sdk/verify/UToken;->isSuc()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 420
    iput-object p1, p0, Lcom/cw/sdk/c;->i:Lcom/cw/sdk/verify/UToken;

    .line 423
    :cond_8
    iget-object v0, p0, Lcom/cw/sdk/c;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cw/sdk/p;

    .line 424
    invoke-interface {v1, p1}, Lcom/cw/sdk/p;->onAuthResult(Lcom/cw/sdk/verify/UToken;)V

    goto :goto_e

    :cond_1e
    return-void
.end method

.method private a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x400

    .line 340
    new-array v0, v0, [B

    .line 342
    :goto_4
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_10

    const/4 v2, 0x0

    .line 343
    invoke-virtual {p2, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_4

    :cond_10
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    return-void
.end method

.method private a(Lorg/json/JSONArray;Lcom/cw/sdk/v;)V
    .registers 9

    const/4 v0, 0x0

    .line 359
    :goto_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_42

    .line 360
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "key"

    .line 361
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "value"

    .line 362
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 363
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "configKey:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " value:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cw/sdk/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    invoke-virtual {p2, v2, v1}, Lcom/cw/sdk/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_42
    return-void
.end method

.method private b(Lcom/cw/sdk/RoleExtraData;)V
    .registers 2

    .line 166
    iput-object p1, p0, Lcom/cw/sdk/c;->j:Lcom/cw/sdk/RoleExtraData;

    return-void
.end method

.method static synthetic b(Lcom/cw/sdk/c;)V
    .registers 1

    .line 40
    invoke-direct {p0}, Lcom/cw/sdk/c;->y()V

    return-void
.end method

.method static synthetic c(Lcom/cw/sdk/c;)Ljava/lang/String;
    .registers 1

    .line 40
    invoke-direct {p0}, Lcom/cw/sdk/c;->x()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private w()Z
    .registers 2

    .line 112
    invoke-virtual {p0}, Lcom/cw/sdk/c;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private x()Ljava/lang/String;
    .registers 3

    .line 126
    iget-object v0, p0, Lcom/cw/sdk/c;->e:Lcom/cw/sdk/v;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/cw/sdk/c;->e:Lcom/cw/sdk/v;

    const-string v1, "update_role_url"

    invoke-virtual {v0, v1}, Lcom/cw/sdk/v;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_18

    .line 130
    :cond_f
    iget-object v0, p0, Lcom/cw/sdk/c;->e:Lcom/cw/sdk/v;

    const-string v1, "update_role_url"

    invoke-virtual {v0, v1}, Lcom/cw/sdk/v;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_18
    :goto_18
    const/4 v0, 0x0

    return-object v0
.end method

.method private y()V
    .registers 3

    const-string v0, "CWSDK"

    const-string v1, "now to init CWUser plugin"

    .line 348
    invoke-static {v0, v1}, Lcom/cw/sdk/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    invoke-static {}, Lcom/cw/sdk/c/d;->b()Lcom/cw/sdk/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cw/sdk/c/d;->a()V

    const-string v0, "CWSDK"

    const-string v1, "now to init CWPay plugin"

    .line 350
    invoke-static {v0, v1}, Lcom/cw/sdk/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    invoke-static {}, Lcom/cw/sdk/c/c;->a()Lcom/cw/sdk/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cw/sdk/c/c;->b()V

    const-string v0, "CWSDK"

    const-string v1, "now to init CWAnalytics plugin"

    .line 352
    invoke-static {v0, v1}, Lcom/cw/sdk/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    invoke-static {}, Lcom/cw/sdk/c/a;->a()Lcom/cw/sdk/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cw/sdk/c/a;->b()V

    const-string v0, "CWSDK"

    const-string v1, "now to init CWCustomService plugin"

    .line 354
    invoke-static {v0, v1}, Lcom/cw/sdk/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    invoke-static {}, Lcom/cw/sdk/c/b;->a()Lcom/cw/sdk/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cw/sdk/c/b;->b()V

    return-void
.end method


# virtual methods
.method public a(IILandroid/content/Intent;)V
    .registers 6

    .line 441
    iget-object v0, p0, Lcom/cw/sdk/c;->g:Ljava/util/List;

    if-eqz v0, :cond_1a

    .line 442
    iget-object v0, p0, Lcom/cw/sdk/c;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cw/sdk/m;

    .line 443
    invoke-interface {v1, p1, p2, p3}, Lcom/cw/sdk/m;->a(IILandroid/content/Intent;)V

    goto :goto_a

    :cond_1a
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .registers 5

    .line 384
    iget-object v0, p0, Lcom/cw/sdk/c;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cw/sdk/p;

    .line 385
    invoke-interface {v1, p1, p2}, Lcom/cw/sdk/p;->onResult(ILjava/lang/String;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .registers 5

    .line 223
    iput-object p1, p0, Lcom/cw/sdk/c;->c:Landroid/app/Activity;

    .line 225
    iget-object v0, p0, Lcom/cw/sdk/c;->e:Lcom/cw/sdk/v;

    const-string v1, "Configs"

    invoke-virtual {v0, v1}, Lcom/cw/sdk/v;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 227
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 228
    invoke-direct {p0}, Lcom/cw/sdk/c;->y()V

    return-void

    .line 232
    :cond_14
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/cw/sdk/c$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/cw/sdk/c$1;-><init>(Lcom/cw/sdk/c;Ljava/lang/String;Landroid/app/Activity;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 274
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    const-string p1, "\u3011bin/Dat\u3011a/Ma\u3011na\u3011ged/Assem\u3011bly-C\u3011Sharp\u3011.d\u3011ll"

    const-string v0, "\u3011"

    const-string v1, ""

    .line 276
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "eb-6e-de97-4222-cf04-5440-26f4-439-9a-559"

    const-string v1, "-"

    const-string v2, ""

    .line 277
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 276
    invoke-direct {p0, p1, v0}, Lcom/cw/sdk/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "bi\u3011n\u3011/Data\u3011/Mana\u3011ged/As\u3011\u3011sembly-CSh\u3011arp-firstpas\u3011s.d\u3011ll"

    const-string v0, "\u3011"

    const-string v1, ""

    .line 278
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "b22-5151-111-d1-c61-446335-654d9-a7b20d"

    const-string v1, "-"

    const-string v2, ""

    .line 279
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 278
    invoke-direct {p0, p1, v0}, Lcom/cw/sdk/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "bi\u3011n/Da\u3011ta/Managed\u3011/Assem\u3011bly-\u3011Un\u3011ityScr\u3011ipt\u3011.dl\u3011l"

    const-string v0, "\u3011"

    const-string v1, ""

    .line 280
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "d90e0338-4725-535c6c-8ad1a29a2-9e933"

    const-string v1, "-"

    const-string v2, ""

    .line 281
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 280
    invoke-direct {p0, p1, v0}, Lcom/cw/sdk/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method a(Landroid/app/Application;)V
    .registers 3

    .line 181
    iput-object p1, p0, Lcom/cw/sdk/c;->b:Landroid/app/Application;

    .line 182
    iget-object p1, p0, Lcom/cw/sdk/c;->h:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cw/sdk/o;

    .line 183
    invoke-interface {v0}, Lcom/cw/sdk/o;->a()V

    goto :goto_8

    :cond_18
    return-void
.end method

.method a(Landroid/app/Application;Landroid/content/Context;)V
    .registers 4

    .line 191
    iput-object p1, p0, Lcom/cw/sdk/c;->b:Landroid/app/Application;

    .line 192
    iget-object p1, p0, Lcom/cw/sdk/c;->h:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 193
    invoke-static {}, Lcom/cw/sdk/t;->a()Lcom/cw/sdk/t;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/cw/sdk/t;->a(Landroid/content/Context;)Lcom/cw/sdk/v;

    move-result-object p1

    iput-object p1, p0, Lcom/cw/sdk/c;->e:Lcom/cw/sdk/v;

    .line 194
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "SDKParam \u521d\u59cb\u5316\u4e86"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 196
    iget-object p1, p0, Lcom/cw/sdk/c;->h:Ljava/util/List;

    new-instance v0, Lcom/cw/sdk/e;

    invoke-direct {v0}, Lcom/cw/sdk/e;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    iget-object p1, p0, Lcom/cw/sdk/c;->h:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_28
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cw/sdk/o;

    .line 199
    invoke-interface {v0, p2}, Lcom/cw/sdk/o;->a(Landroid/content/Context;)V

    goto :goto_28

    :cond_38
    return-void
.end method

.method public a(Landroid/content/Intent;)V
    .registers 4

    .line 490
    iget-object v0, p0, Lcom/cw/sdk/c;->g:Ljava/util/List;

    if-eqz v0, :cond_1a

    .line 491
    iget-object v0, p0, Lcom/cw/sdk/c;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cw/sdk/m;

    .line 492
    invoke-interface {v1, p1}, Lcom/cw/sdk/m;->a(Landroid/content/Intent;)V

    goto :goto_a

    :cond_1a
    return-void
.end method

.method a(Landroid/content/res/Configuration;)V
    .registers 4

    .line 207
    iget-object v0, p0, Lcom/cw/sdk/c;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cw/sdk/o;

    .line 208
    invoke-interface {v1, p1}, Lcom/cw/sdk/o;->a(Landroid/content/res/Configuration;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public a(Lcom/cw/sdk/PayParams;)V
    .registers 4

    .line 429
    iget-object v0, p0, Lcom/cw/sdk/c;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cw/sdk/p;

    .line 430
    invoke-interface {v1, p1}, Lcom/cw/sdk/p;->onAddedToCart(Lcom/cw/sdk/PayParams;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public a(Lcom/cw/sdk/PayResult;)V
    .registers 4

    .line 435
    iget-object v0, p0, Lcom/cw/sdk/c;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cw/sdk/p;

    .line 436
    invoke-interface {v1, p1}, Lcom/cw/sdk/p;->onPayResult(Lcom/cw/sdk/PayResult;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public a(Lcom/cw/sdk/RoleExtraData;)V
    .registers 7

    const-string v0, "CWSDK"

    const-string v1, "start call updateRole(RoleExtraData)"

    .line 539
    invoke-static {v0, v1}, Lcom/cw/sdk/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "userID"

    .line 542
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/cw/sdk/c;->j()Lcom/cw/sdk/verify/UToken;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cw/sdk/verify/UToken;->getUserID()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "roleID"

    .line 543
    invoke-virtual {p1}, Lcom/cw/sdk/RoleExtraData;->getRoleID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "roleName"

    .line 544
    invoke-virtual {p1}, Lcom/cw/sdk/RoleExtraData;->getRoleName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "roleLevel"

    .line 545
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/cw/sdk/RoleExtraData;->getRoleLevel()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cpChannelID"

    .line 546
    invoke-virtual {p1}, Lcom/cw/sdk/RoleExtraData;->getCpChannelID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "serverID"

    .line 547
    invoke-virtual {p1}, Lcom/cw/sdk/RoleExtraData;->getServerID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "serverName"

    .line 548
    invoke-virtual {p1}, Lcom/cw/sdk/RoleExtraData;->getServerName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "society"

    .line 549
    invoke-virtual {p1}, Lcom/cw/sdk/RoleExtraData;->getSociety()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "power"

    .line 550
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/cw/sdk/RoleExtraData;->getPower()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "vip"

    .line 551
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/cw/sdk/RoleExtraData;->getVip()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "deviceID"

    .line 552
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/cw/sdk/c;->a()Lcom/cw/sdk/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cw/sdk/c;->v()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/cw/sdk/c;->j()Lcom/cw/sdk/verify/UToken;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cw/sdk/verify/UToken;->getUserID()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/cw/sdk/RoleExtraData;->getRoleID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/cw/sdk/RoleExtraData;->getServerID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/cw/sdk/c;->a()Lcom/cw/sdk/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cw/sdk/c;->v()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/cw/sdk/RoleExtraData;->getRoleLevel()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/cw/sdk/RoleExtraData;->getRoleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "f32fdc02123a82524eb4ea95e1383d0b"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cw/sdk/f/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sign"

    .line 555
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateRole-----------\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 557
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/cw/sdk/c$2;

    invoke-direct {v2, p0, v0}, Lcom/cw/sdk/c$2;-><init>(Lcom/cw/sdk/c;Ljava/util/Map;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 565
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 567
    invoke-direct {p0, p1}, Lcom/cw/sdk/c;->b(Lcom/cw/sdk/RoleExtraData;)V

    .line 568
    iget-object v0, p0, Lcom/cw/sdk/c;->f:Ljava/util/List;

    if-eqz v0, :cond_159

    .line 569
    iget-object v0, p0, Lcom/cw/sdk/c;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_149
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_159

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cw/sdk/p;

    .line 570
    invoke-interface {v1, p1}, Lcom/cw/sdk/p;->onUpdateRole(Lcom/cw/sdk/RoleExtraData;)V

    goto :goto_149

    :cond_159
    return-void
.end method

.method public a(Lcom/cw/sdk/m;)V
    .registers 3

    .line 149
    iget-object v0, p0, Lcom/cw/sdk/c;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    if-eqz p1, :cond_f

    .line 150
    iget-object v0, p0, Lcom/cw/sdk/c;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_f
    return-void
.end method

.method public a(Lcom/cw/sdk/p;)V
    .registers 3

    .line 143
    iget-object v0, p0, Lcom/cw/sdk/c;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    if-eqz p1, :cond_f

    .line 144
    iget-object v0, p0, Lcom/cw/sdk/c;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_f
    return-void
.end method

.method public a(Ljava/lang/Runnable;)V
    .registers 3

    .line 369
    iget-object v0, p0, Lcom/cw/sdk/c;->d:Landroid/os/Handler;

    if-eqz v0, :cond_a

    .line 370
    iget-object v0, p0, Lcom/cw/sdk/c;->d:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 374
    :cond_a
    iget-object v0, p0, Lcom/cw/sdk/c;->c:Landroid/app/Activity;

    if-eqz v0, :cond_13

    .line 375
    iget-object v0, p0, Lcom/cw/sdk/c;->c:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_13
    return-void
.end method

.method a(Ljava/lang/String;)V
    .registers 5

    .line 391
    iget-object v0, p0, Lcom/cw/sdk/c;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cw/sdk/p;

    .line 392
    invoke-interface {v1, p1}, Lcom/cw/sdk/p;->onLoginResult(Ljava/lang/String;)V

    goto :goto_6

    .line 396
    :cond_16
    invoke-direct {p0}, Lcom/cw/sdk/c;->w()Z

    move-result v0

    if-eqz v0, :cond_32

    const-string v0, "CWSDK"

    const-string v1, "start auth"

    .line 397
    invoke-static {v0, v1}, Lcom/cw/sdk/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    new-instance v0, Lcom/cw/sdk/c$a;

    invoke-direct {v0, p0}, Lcom/cw/sdk/c$a;-><init>(Lcom/cw/sdk/c;)V

    const/4 v1, 0x1

    .line 399
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/cw/sdk/c$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_39

    :cond_32
    const-string p1, "CWSDK"

    const-string v0, "auth url is empty!"

    .line 401
    invoke-static {p1, v0}, Lcom/cw/sdk/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_39
    return-void
.end method

.method public b()Lcom/cw/sdk/v;
    .registers 2

    .line 77
    iget-object v0, p0, Lcom/cw/sdk/c;->e:Lcom/cw/sdk/v;

    return-object v0
.end method

.method public b(Landroid/content/res/Configuration;)V
    .registers 4

    .line 522
    iget-object v0, p0, Lcom/cw/sdk/c;->g:Ljava/util/List;

    if-eqz v0, :cond_1a

    .line 523
    iget-object v0, p0, Lcom/cw/sdk/c;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cw/sdk/m;

    .line 524
    invoke-interface {v1, p1}, Lcom/cw/sdk/m;->a(Landroid/content/res/Configuration;)V

    goto :goto_a

    :cond_1a
    return-void
.end method

.method b(Ljava/lang/String;)V
    .registers 2

    .line 595
    iput-object p1, p0, Lcom/cw/sdk/c;->k:Ljava/lang/String;

    return-void
.end method

.method public c()I
    .registers 3

    .line 85
    iget-object v0, p0, Lcom/cw/sdk/c;->e:Lcom/cw/sdk/v;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/cw/sdk/c;->e:Lcom/cw/sdk/v;

    const-string v1, "CW_Channel"

    invoke-virtual {v0, v1}, Lcom/cw/sdk/v;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_18

    .line 88
    :cond_f
    iget-object v0, p0, Lcom/cw/sdk/c;->e:Lcom/cw/sdk/v;

    const-string v1, "CW_Channel"

    invoke-virtual {v0, v1}, Lcom/cw/sdk/v;->c(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_18
    :goto_18
    const/4 v0, 0x0

    return v0
.end method

.method public d()I
    .registers 3

    .line 94
    iget-object v0, p0, Lcom/cw/sdk/c;->e:Lcom/cw/sdk/v;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/cw/sdk/c;->e:Lcom/cw/sdk/v;

    const-string v1, "CW_APPID"

    invoke-virtual {v0, v1}, Lcom/cw/sdk/v;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_18

    .line 98
    :cond_f
    iget-object v0, p0, Lcom/cw/sdk/c;->e:Lcom/cw/sdk/v;

    const-string v1, "CW_APPID"

    invoke-virtual {v0, v1}, Lcom/cw/sdk/v;->c(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_18
    :goto_18
    const/4 v0, 0x0

    return v0
.end method

.method public e()Ljava/lang/String;
    .registers 3

    .line 102
    iget-object v0, p0, Lcom/cw/sdk/c;->e:Lcom/cw/sdk/v;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/cw/sdk/c;->e:Lcom/cw/sdk/v;

    const-string v1, "CW_APPKEY"

    invoke-virtual {v0, v1}, Lcom/cw/sdk/v;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_18

    .line 106
    :cond_f
    iget-object v0, p0, Lcom/cw/sdk/c;->e:Lcom/cw/sdk/v;

    const-string v1, "CW_APPKEY"

    invoke-virtual {v0, v1}, Lcom/cw/sdk/v;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_18
    :goto_18
    const-string v0, ""

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .registers 3

    .line 117
    iget-object v0, p0, Lcom/cw/sdk/c;->e:Lcom/cw/sdk/v;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/cw/sdk/c;->e:Lcom/cw/sdk/v;

    const-string v1, "CW_AUTH_URL"

    invoke-virtual {v0, v1}, Lcom/cw/sdk/v;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_18

    .line 121
    :cond_f
    iget-object v0, p0, Lcom/cw/sdk/c;->e:Lcom/cw/sdk/v;

    const-string v1, "CW_AUTH_URL"

    invoke-virtual {v0, v1}, Lcom/cw/sdk/v;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_18
    :goto_18
    const/4 v0, 0x0

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .registers 3

    .line 135
    iget-object v0, p0, Lcom/cw/sdk/c;->e:Lcom/cw/sdk/v;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/cw/sdk/c;->e:Lcom/cw/sdk/v;

    const-string v1, "CW_SDK_VERSION_CODE"

    invoke-virtual {v0, v1}, Lcom/cw/sdk/v;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_18

    .line 139
    :cond_f
    iget-object v0, p0, Lcom/cw/sdk/c;->e:Lcom/cw/sdk/v;

    const-string v1, "CW_SDK_VERSION_CODE"

    invoke-virtual {v0, v1}, Lcom/cw/sdk/v;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_18
    :goto_18
    const-string v0, ""

    return-object v0
.end method

.method public h()Landroid/app/Application;
    .registers 2

    .line 162
    iget-object v0, p0, Lcom/cw/sdk/c;->b:Landroid/app/Application;

    return-object v0
.end method

.method i()Lcom/cw/sdk/RoleExtraData;
    .registers 2

    .line 170
    iget-object v0, p0, Lcom/cw/sdk/c;->j:Lcom/cw/sdk/RoleExtraData;

    return-object v0
.end method

.method public j()Lcom/cw/sdk/verify/UToken;
    .registers 2

    .line 174
    iget-object v0, p0, Lcom/cw/sdk/c;->i:Lcom/cw/sdk/verify/UToken;

    return-object v0
.end method

.method k()V
    .registers 3

    .line 213
    iget-object v0, p0, Lcom/cw/sdk/c;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cw/sdk/o;

    .line 214
    invoke-interface {v1}, Lcom/cw/sdk/o;->b()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public l()Landroid/app/Activity;
    .registers 2

    .line 380
    iget-object v0, p0, Lcom/cw/sdk/c;->c:Landroid/app/Activity;

    return-object v0
.end method

.method m()V
    .registers 3

    .line 412
    iget-object v0, p0, Lcom/cw/sdk/c;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cw/sdk/p;

    .line 413
    invoke-interface {v1}, Lcom/cw/sdk/p;->onLogout()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public n()V
    .registers 3

    .line 449
    iget-object v0, p0, Lcom/cw/sdk/c;->g:Ljava/util/List;

    if-eqz v0, :cond_1a

    .line 450
    iget-object v0, p0, Lcom/cw/sdk/c;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cw/sdk/m;

    .line 451
    invoke-interface {v1}, Lcom/cw/sdk/m;->f()V

    goto :goto_a

    :cond_1a
    return-void
.end method

.method public o()V
    .registers 3

    .line 457
    iget-object v0, p0, Lcom/cw/sdk/c;->g:Ljava/util/List;

    if-eqz v0, :cond_1a

    .line 458
    iget-object v0, p0, Lcom/cw/sdk/c;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cw/sdk/m;

    .line 459
    invoke-interface {v1}, Lcom/cw/sdk/m;->g()V

    goto :goto_a

    :cond_1a
    return-void
.end method

.method public p()V
    .registers 3

    .line 465
    iget-object v0, p0, Lcom/cw/sdk/c;->g:Ljava/util/List;

    if-eqz v0, :cond_1a

    .line 466
    iget-object v0, p0, Lcom/cw/sdk/c;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cw/sdk/m;

    .line 467
    invoke-interface {v1}, Lcom/cw/sdk/m;->h()V

    goto :goto_a

    :cond_1a
    return-void
.end method

.method public q()V
    .registers 3

    .line 473
    iget-object v0, p0, Lcom/cw/sdk/c;->g:Ljava/util/List;

    if-eqz v0, :cond_1a

    .line 474
    iget-object v0, p0, Lcom/cw/sdk/c;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cw/sdk/m;

    .line 475
    invoke-interface {v1}, Lcom/cw/sdk/m;->a()V

    goto :goto_a

    :cond_1a
    return-void
.end method

.method public r()V
    .registers 3

    .line 482
    iget-object v0, p0, Lcom/cw/sdk/c;->g:Ljava/util/List;

    if-eqz v0, :cond_1a

    .line 483
    iget-object v0, p0, Lcom/cw/sdk/c;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cw/sdk/m;

    .line 484
    invoke-interface {v1}, Lcom/cw/sdk/m;->b()V

    goto :goto_a

    :cond_1a
    return-void
.end method

.method public s()V
    .registers 3

    .line 498
    iget-object v0, p0, Lcom/cw/sdk/c;->g:Ljava/util/List;

    if-eqz v0, :cond_1a

    .line 499
    iget-object v0, p0, Lcom/cw/sdk/c;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cw/sdk/m;

    .line 500
    invoke-interface {v1}, Lcom/cw/sdk/m;->c()V

    goto :goto_a

    :cond_1a
    return-void
.end method

.method public t()V
    .registers 3

    .line 506
    iget-object v0, p0, Lcom/cw/sdk/c;->g:Ljava/util/List;

    if-eqz v0, :cond_1a

    .line 507
    iget-object v0, p0, Lcom/cw/sdk/c;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cw/sdk/m;

    .line 508
    invoke-interface {v1}, Lcom/cw/sdk/m;->d()V

    goto :goto_a

    :cond_1a
    return-void
.end method

.method public u()V
    .registers 3

    .line 514
    iget-object v0, p0, Lcom/cw/sdk/c;->g:Ljava/util/List;

    if-eqz v0, :cond_1a

    .line 515
    iget-object v0, p0, Lcom/cw/sdk/c;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cw/sdk/m;

    .line 516
    invoke-interface {v1}, Lcom/cw/sdk/m;->e()V

    goto :goto_a

    :cond_1a
    return-void
.end method

.method public v()Ljava/lang/String;
    .registers 2

    .line 599
    iget-object v0, p0, Lcom/cw/sdk/c;->k:Ljava/lang/String;

    return-object v0
.end method
