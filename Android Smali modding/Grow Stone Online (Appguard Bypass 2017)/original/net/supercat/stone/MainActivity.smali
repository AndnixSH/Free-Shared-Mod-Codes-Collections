.class public Lnet/supercat/stone/MainActivity;
.super Lcom/unity3d/player/UnityPlayerActivity;
.source "MainActivity.java"

# interfaces
.implements Lcom/anjlab/android/iab/v3/BillingProcessor$IBillingHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/supercat/stone/MainActivity$LoadAppsTask;
    }
.end annotation


# static fields
.field private static final MY_PERMISSION_REQUEST_STORAGE:I = 0x2711

.field private static final REQUEST_CROP:I = 0x1770

.field private static final REQUEST_PICK:I = 0x176f

.field public static mInitPushToken:Ljava/lang/String;

.field public static singleton:Lnet/supercat/stone/MainActivity;


# instance fields
.field private bp:Lcom/anjlab/android/iab/v3/BillingProcessor;

.field private lastPurchaseItemID:Ljava/lang/String;

.field private mAppFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAppGuardClient:Lcom/inca/security/AppGuard/AppGuardClient;

.field private mInstalledApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPushToken:Ljava/lang/String;

.field private mRunningApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private pickHeight:I

.field private pickWidth:I

.field private final rect:Landroid/graphics/Rect;

.field private view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    sput-object v0, Lnet/supercat/stone/MainActivity;->singleton:Lnet/supercat/stone/MainActivity;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayerActivity;-><init>()V

    .line 45
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lnet/supercat/stone/MainActivity;->rect:Landroid/graphics/Rect;

    .line 47
    iput-object v1, p0, Lnet/supercat/stone/MainActivity;->mAppGuardClient:Lcom/inca/security/AppGuard/AppGuardClient;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/supercat/stone/MainActivity;->mAppFilters:Ljava/util/List;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/supercat/stone/MainActivity;->mInstalledApps:Ljava/util/List;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/supercat/stone/MainActivity;->mRunningApps:Ljava/util/List;

    .line 395
    iput-object v1, p0, Lnet/supercat/stone/MainActivity;->lastPurchaseItemID:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100(Lnet/supercat/stone/MainActivity;)V
    .locals 0
    .param p0, "x0"    # Lnet/supercat/stone/MainActivity;

    .prologue
    .line 35
    invoke-direct {p0}, Lnet/supercat/stone/MainActivity;->fetchAppFilters()V

    return-void
.end method

.method static synthetic access$200(Lnet/supercat/stone/MainActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lnet/supercat/stone/MainActivity;

    .prologue
    .line 35
    invoke-direct {p0}, Lnet/supercat/stone/MainActivity;->loadRunningApps()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lnet/supercat/stone/MainActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lnet/supercat/stone/MainActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lnet/supercat/stone/MainActivity;->mInstalledApps:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lnet/supercat/stone/MainActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lnet/supercat/stone/MainActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lnet/supercat/stone/MainActivity;->mRunningApps:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lnet/supercat/stone/MainActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lnet/supercat/stone/MainActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lnet/supercat/stone/MainActivity;->mAppFilters:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Lnet/supercat/stone/MainActivity;)Lcom/anjlab/android/iab/v3/BillingProcessor;
    .locals 1
    .param p0, "x0"    # Lnet/supercat/stone/MainActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lnet/supercat/stone/MainActivity;->bp:Lcom/anjlab/android/iab/v3/BillingProcessor;

    return-object v0
.end method

.method static synthetic access$702(Lnet/supercat/stone/MainActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lnet/supercat/stone/MainActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lnet/supercat/stone/MainActivity;->lastPurchaseItemID:Ljava/lang/String;

    return-object p1
.end method

.method private checkPermission()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 484
    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v2}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 490
    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v2}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 492
    const-string v2, "Read/Write external storage"

    invoke-static {p0, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 495
    :cond_0
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v1, v0

    const/16 v2, 0x2711

    invoke-static {p0, v1, v2}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 500
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private declared-synchronized fetchAppFilters()V
    .locals 15

    .prologue
    .line 232
    monitor-enter p0

    :try_start_0
    const-string v10, "supercat"

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Lnet/supercat/stone/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 233
    .local v8, "sp":Landroid/content/SharedPreferences;
    const-string v10, "appFilter"

    const/4 v11, 0x0

    invoke-interface {v8, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, "appFilterJSON":Ljava/lang/String;
    const-string v10, "lastUpdated"

    const-wide/16 v12, 0x0

    invoke-interface {v8, v10, v12, v13}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 236
    .local v6, "lastTime":J
    if-eqz v0, :cond_0

    .line 237
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v10

    sub-long/2addr v10, v6

    const-wide/32 v12, 0x36ee80

    cmp-long v10, v10, v12

    if-lez v10, :cond_1

    .line 239
    :cond_0
    :try_start_1
    const-string v10, "supercat"

    const-string v11, "Fetching app filters..."

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    new-instance v9, Ljava/net/URL;

    const-string v10, "http://lostguns.kernys.net/filters.php"

    invoke-direct {v9, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 241
    .local v9, "url":Ljava/net/URL;
    new-instance v5, Ljava/util/Scanner;

    invoke-virtual {v9}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v5, v10}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    .line 243
    .local v5, "s":Ljava/util/Scanner;
    invoke-virtual {v5}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v0

    .line 245
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "appFilter"

    invoke-interface {v10, v11, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 253
    .end local v5    # "s":Ljava/util/Scanner;
    .end local v9    # "url":Ljava/net/URL;
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 255
    :try_start_2
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 256
    .local v1, "array":Lorg/json/JSONArray;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 258
    .local v3, "filters":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v4, v10, :cond_3

    .line 259
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 258
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 246
    .end local v1    # "array":Lorg/json/JSONArray;
    .end local v3    # "filters":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "i":I
    :catch_0
    move-exception v2

    .line 247
    .local v2, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v10, "supercat"

    invoke-static {v10, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 269
    .end local v0    # "appFilterJSON":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v6    # "lastTime":J
    .end local v8    # "sp":Landroid/content/SharedPreferences;
    :catch_1
    move-exception v2

    .line 270
    .restart local v2    # "e":Ljava/lang/Exception;
    :try_start_4
    const-string v10, "supercat"

    invoke-static {v10, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 273
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_2
    monitor-exit p0

    return-void

    .line 262
    .restart local v0    # "appFilterJSON":Ljava/lang/String;
    .restart local v1    # "array":Lorg/json/JSONArray;
    .restart local v3    # "filters":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "i":I
    .restart local v6    # "lastTime":J
    .restart local v8    # "sp":Landroid/content/SharedPreferences;
    :cond_3
    :try_start_5
    iput-object v3, p0, Lnet/supercat/stone/MainActivity;->mAppFilters:Ljava/util/List;

    .line 264
    const-string v10, "supercat"

    const-string v11, "Fetched %d app filters..."

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget-object v14, p0, Lnet/supercat/stone/MainActivity;->mAppFilters:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 265
    .end local v1    # "array":Lorg/json/JSONArray;
    .end local v3    # "filters":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "i":I
    :catch_2
    move-exception v2

    .line 266
    .restart local v2    # "e":Ljava/lang/Exception;
    :try_start_6
    const-string v10, "supercat"

    invoke-static {v10, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 232
    .end local v0    # "appFilterJSON":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v6    # "lastTime":J
    .end local v8    # "sp":Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10
.end method

.method public static get()Lnet/supercat/stone/MainActivity;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lnet/supercat/stone/MainActivity;->singleton:Lnet/supercat/stone/MainActivity;

    return-object v0
.end method

.method private declared-synchronized loadInstalledApps()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 276
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 277
    .local v1, "apps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lnet/supercat/stone/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 278
    .local v0, "app":Landroid/content/pm/ApplicationInfo;
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 276
    .end local v0    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "apps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 281
    .restart local v1    # "apps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    :try_start_1
    iput-object v1, p0, Lnet/supercat/stone/MainActivity;->mInstalledApps:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1
.end method

.method private declared-synchronized loadRunningApps()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 285
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 286
    .local v1, "apps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v4, "activity"

    invoke-virtual {p0, v4}, Lnet/supercat/stone/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 287
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    .line 289
    .local v3, "runningAppProcessInfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 290
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 292
    :cond_0
    iput-object v1, p0, Lnet/supercat/stone/MainActivity;->mRunningApps:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 285
    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v1    # "apps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "i":I
    .end local v3    # "runningAppProcessInfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method


# virtual methods
.method public getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 533
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 536
    invoke-static {p0}, Lnet/supercat/Utility;->getDeviceID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 529
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lnet/supercat/stone/MainActivity;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getWindowHeight()I
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lnet/supercat/stone/MainActivity;->view:Landroid/view/View;

    iget-object v1, p0, Lnet/supercat/stone/MainActivity;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 51
    iget-object v0, p0, Lnet/supercat/stone/MainActivity;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    return v0
.end method

.method public handleIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 156
    return-void
.end method

.method public handlePushToken(Ljava/lang/String;)V
    .locals 1
    .param p1, "pushToken"    # Ljava/lang/String;

    .prologue
    .line 139
    iput-object p1, p0, Lnet/supercat/stone/MainActivity;->mPushToken:Ljava/lang/String;

    .line 141
    new-instance v0, Lnet/supercat/stone/MainActivity$2;

    invoke-direct {v0, p0, p1}, Lnet/supercat/stone/MainActivity$2;-><init>(Lnet/supercat/stone/MainActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lnet/supercat/stone/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 147
    return-void
.end method

.method public isAppInstalled(Ljava/lang/String;)Z
    .locals 3
    .param p1, "appID"    # Ljava/lang/String;

    .prologue
    .line 352
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 353
    iget-object v1, p0, Lnet/supercat/stone/MainActivity;->mInstalledApps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 354
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 355
    const/4 v1, 0x1

    .line 358
    .end local v0    # "s":Ljava/lang/String;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/16 v8, 0x1770

    const/4 v7, -0x1

    .line 195
    const/16 v6, 0x176f

    if-ne p1, v6, :cond_2

    if-ne p2, v7, :cond_2

    .line 197
    :try_start_0
    new-instance v6, Ljava/io/File;

    invoke-virtual {p0}, Lnet/supercat/stone/MainActivity;->getCacheDir()Ljava/io/File;

    move-result-object v7

    const-string v8, "cropped"

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 198
    .local v1, "dest":Landroid/net/Uri;
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    invoke-static {v6, v1}, Lcom/soundcloud/android/crop/Crop;->of(Landroid/net/Uri;Landroid/net/Uri;)Lcom/soundcloud/android/crop/Crop;

    move-result-object v6

    iget v7, p0, Lnet/supercat/stone/MainActivity;->pickWidth:I

    iget v8, p0, Lnet/supercat/stone/MainActivity;->pickHeight:I

    invoke-virtual {v6, v7, v8}, Lcom/soundcloud/android/crop/Crop;->withMaxSize(II)Lcom/soundcloud/android/crop/Crop;

    move-result-object v6

    invoke-virtual {v6}, Lcom/soundcloud/android/crop/Crop;->asSquare()Lcom/soundcloud/android/crop/Crop;

    move-result-object v6

    const/16 v7, 0x1770

    invoke-virtual {v6, p0, v7}, Lcom/soundcloud/android/crop/Crop;->start(Landroid/app/Activity;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    .end local v1    # "dest":Landroid/net/Uri;
    :cond_0
    :goto_0
    iget-object v6, p0, Lnet/supercat/stone/MainActivity;->bp:Lcom/anjlab/android/iab/v3/BillingProcessor;

    invoke-virtual {v6, p1, p2, p3}, Lcom/anjlab/android/iab/v3/BillingProcessor;->handleActivityResult(IILandroid/content/Intent;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 224
    invoke-super {p0, p1, p2, p3}, Lcom/unity3d/player/UnityPlayerActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 225
    :cond_1
    return-void

    .line 199
    :catch_0
    move-exception v2

    .line 200
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "supercat"

    invoke-static {v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 202
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    if-ne p1, v8, :cond_0

    if-ne p2, v7, :cond_0

    .line 203
    invoke-static {p3}, Lcom/soundcloud/android/crop/Crop;->getOutput(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object v5

    .line 208
    .local v5, "uri":Landroid/net/Uri;
    :try_start_1
    invoke-virtual {p0}, Lnet/supercat/stone/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v6

    invoke-static {v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 209
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const-string v6, "image.jpg"

    const/4 v7, 0x0

    invoke-virtual {p0}, Lnet/supercat/stone/MainActivity;->getCacheDir()Ljava/io/File;

    move-result-object v8

    invoke-static {v6, v7, v8}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v4

    .line 210
    .local v4, "outFile":Ljava/io/File;
    new-instance v3, Ljava/io/FileOutputStream;

    const/4 v6, 0x0

    invoke-direct {v3, v4, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 211
    .local v3, "fos":Ljava/io/OutputStream;
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x64

    invoke-virtual {v0, v6, v7, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 212
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 215
    const-string v6, "[PlatformManager]"

    const-string v7, "NativePickImage"

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 216
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "fos":Ljava/io/OutputStream;
    .end local v4    # "outFile":Ljava/io/File;
    :catch_1
    move-exception v2

    .line 217
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v6, "supercat"

    invoke-static {v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onBillingError(ILjava/lang/Throwable;)V
    .locals 3
    .param p1, "i"    # I
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 417
    const-string v0, "[PlatformManager]"

    const-string v1, "NativePurchaseCancelled"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    return-void
.end method

.method public onBillingInitialized()V
    .locals 0

    .prologue
    .line 423
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 91
    sput-object p0, Lnet/supercat/stone/MainActivity;->singleton:Lnet/supercat/stone/MainActivity;

    .line 92
    sget-object v1, Lnet/supercat/stone/MainActivity;->mInitPushToken:Ljava/lang/String;

    iput-object v1, p0, Lnet/supercat/stone/MainActivity;->mPushToken:Ljava/lang/String;

    .line 93
    invoke-super {p0, p1}, Lcom/unity3d/player/UnityPlayerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 97
    invoke-virtual {p0}, Lnet/supercat/stone/MainActivity;->getView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lnet/supercat/stone/MainActivity;->view:Landroid/view/View;

    .line 98
    new-instance v1, Lcom/anjlab/android/iab/v3/BillingProcessor;

    const-string v2, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAxPozHUNjTJRoL68axnWRGyZyzK9ZqHTgzIiq1Cgd1nTStBLjPzUbUC1yOIBbFG42HrAKUipWONTU9LT618SdQnX/A6mJsapjhVQjNgd1IiYYf6ebGaiLZWRVPTD+fLdBAeh6qJvKCaM39k0qNfXq+1CAR+voKkYVq+npr1/KYmRsdFQXsKPyqDwXxNRY357ChtUrt8XrIH8RgKl4uP8LvkkglSbi6/dbgC6FRpU+DofMilfkUyNq8MFoAVu1QUPSFBcqx1c0SYE33dLwdOCrJHyQD7+Ekn4Smllu5sEFkcOEGxvGQRk7nBfvhXLlyTUnVZeAopYF/JZHVFGiDHkBswIDAQAB"

    invoke-direct {v1, p0, v2, p0}, Lcom/anjlab/android/iab/v3/BillingProcessor;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/anjlab/android/iab/v3/BillingProcessor$IBillingHandler;)V

    iput-object v1, p0, Lnet/supercat/stone/MainActivity;->bp:Lcom/anjlab/android/iab/v3/BillingProcessor;

    .line 102
    new-instance v1, Lnet/supercat/stone/MainActivity$LoadAppsTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lnet/supercat/stone/MainActivity$LoadAppsTask;-><init>(Lnet/supercat/stone/MainActivity;Lnet/supercat/stone/MainActivity$1;)V

    invoke-virtual {v1}, Lnet/supercat/stone/MainActivity$LoadAppsTask;->start()V

    .line 107
    :try_start_0
    invoke-static {}, Lnet/supercat/GCMManager;->getInstance()Lnet/supercat/GCMManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2}, Lnet/supercat/GCMManager;->register(Landroid/content/Context;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :goto_0
    iget-object v1, p0, Lnet/supercat/stone/MainActivity;->mPushToken:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 114
    iget-object v1, p0, Lnet/supercat/stone/MainActivity;->mPushToken:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lnet/supercat/stone/MainActivity;->handlePushToken(Ljava/lang/String;)V

    .line 117
    :cond_0
    invoke-virtual {p0}, Lnet/supercat/stone/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 118
    invoke-virtual {p0}, Lnet/supercat/stone/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/supercat/stone/MainActivity;->handleIntent(Landroid/content/Intent;)V

    .line 119
    :cond_1
    return-void

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "supercat"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 172
    invoke-super {p0}, Lcom/unity3d/player/UnityPlayerActivity;->onDestroy()V

    .line 174
    iget-object v0, p0, Lnet/supercat/stone/MainActivity;->mAppGuardClient:Lcom/inca/security/AppGuard/AppGuardClient;

    invoke-virtual {v0}, Lcom/inca/security/AppGuard/AppGuardClient;->cleanup()V

    .line 176
    iget-object v0, p0, Lnet/supercat/stone/MainActivity;->bp:Lcom/anjlab/android/iab/v3/BillingProcessor;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lnet/supercat/stone/MainActivity;->bp:Lcom/anjlab/android/iab/v3/BillingProcessor;

    invoke-virtual {v0}, Lcom/anjlab/android/iab/v3/BillingProcessor;->release()V

    .line 178
    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 165
    invoke-super {p0, p1}, Lcom/unity3d/player/UnityPlayerActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 167
    invoke-virtual {p0, p1}, Lnet/supercat/stone/MainActivity;->handleIntent(Landroid/content/Intent;)V

    .line 168
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 133
    invoke-super {p0}, Lcom/unity3d/player/UnityPlayerActivity;->onPause()V

    .line 134
    iget-object v0, p0, Lnet/supercat/stone/MainActivity;->mAppGuardClient:Lcom/inca/security/AppGuard/AppGuardClient;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lnet/supercat/stone/MainActivity;->mAppGuardClient:Lcom/inca/security/AppGuard/AppGuardClient;

    invoke-virtual {v0}, Lcom/inca/security/AppGuard/AppGuardClient;->pause()V

    .line 136
    :cond_0
    return-void
.end method

.method public onProductPurchased(Ljava/lang/String;Lcom/anjlab/android/iab/v3/TransactionDetails;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "transactionDetails"    # Lcom/anjlab/android/iab/v3/TransactionDetails;

    .prologue
    .line 400
    iget-object v0, p0, Lnet/supercat/stone/MainActivity;->bp:Lcom/anjlab/android/iab/v3/BillingProcessor;

    iget-object v1, p0, Lnet/supercat/stone/MainActivity;->lastPurchaseItemID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anjlab/android/iab/v3/BillingProcessor;->consumePurchase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    const-string v0, "[PlatformManager]"

    const-string v1, "NativeSetSignedData"

    iget-object v2, p2, Lcom/anjlab/android/iab/v3/TransactionDetails;->purchaseInfo:Lcom/anjlab/android/iab/v3/PurchaseInfo;

    iget-object v2, v2, Lcom/anjlab/android/iab/v3/PurchaseInfo;->responseData:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    const-string v0, "[PlatformManager]"

    const-string v1, "NativePurchaseCompleted"

    iget-object v2, p2, Lcom/anjlab/android/iab/v3/TransactionDetails;->purchaseInfo:Lcom/anjlab/android/iab/v3/PurchaseInfo;

    iget-object v2, v2, Lcom/anjlab/android/iab/v3/PurchaseInfo;->signature:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    :goto_0
    return-void

    .line 404
    :cond_0
    const-string v0, "[PlatformManager]"

    const-string v1, "NativePurchaseCancelled"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPurchaseHistoryRestored()V
    .locals 0

    .prologue
    .line 412
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 125
    invoke-super {p0}, Lcom/unity3d/player/UnityPlayerActivity;->onResume()V

    .line 126
    iget-object v0, p0, Lnet/supercat/stone/MainActivity;->mAppGuardClient:Lcom/inca/security/AppGuard/AppGuardClient;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lnet/supercat/stone/MainActivity;->mAppGuardClient:Lcom/inca/security/AppGuard/AppGuardClient;

    invoke-virtual {v0}, Lcom/inca/security/AppGuard/AppGuardClient;->resume()V

    .line 128
    :cond_0
    return-void
.end method

.method public pickImage(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 186
    iput p1, p0, Lnet/supercat/stone/MainActivity;->pickWidth:I

    .line 187
    iput p2, p0, Lnet/supercat/stone/MainActivity;->pickHeight:I

    .line 188
    const/16 v0, 0x176f

    invoke-static {p0, v0}, Lcom/soundcloud/android/crop/Crop;->pickImage(Landroid/app/Activity;I)V

    .line 189
    return-void
.end method

.method public postKakaoStory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    .line 362
    new-instance v0, Lnet/supercat/stone/MainActivity$3;

    invoke-direct {v0, p0, p2, p1, p3}, Lnet/supercat/stone/MainActivity$3;-><init>(Lnet/supercat/stone/MainActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lnet/supercat/stone/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 392
    return-void
.end method

.method public requestPurchase(Ljava/lang/String;)V
    .locals 1
    .param p1, "productID"    # Ljava/lang/String;

    .prologue
    .line 427
    new-instance v0, Lnet/supercat/stone/MainActivity$4;

    invoke-direct {v0, p0, p1}, Lnet/supercat/stone/MainActivity$4;-><init>(Lnet/supercat/stone/MainActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lnet/supercat/stone/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 443
    return-void
.end method

.method public savePhoto(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 506
    invoke-direct {p0}, Lnet/supercat/stone/MainActivity;->checkPermission()Z

    move-result v2

    if-nez v2, :cond_1

    .line 512
    :cond_0
    :goto_0
    return-object v1

    .line 509
    :cond_1
    invoke-virtual {p0}, Lnet/supercat/stone/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, ""

    const-string v4, ""

    invoke-static {v2, p1, v3, v4}, Lnet/supercat/StoreImage;->saveImageToGallery(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 510
    .local v0, "uri":Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 511
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public savePicture(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "imageURL"    # Ljava/lang/String;

    .prologue
    .line 447
    new-instance v0, Lnet/supercat/stone/MainActivity$5;

    invoke-direct {v0, p0, p3, p1, p2}, Lnet/supercat/stone/MainActivity$5;-><init>(Lnet/supercat/stone/MainActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lnet/supercat/stone/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 462
    return-void
.end method

.method public setSoftInputMode(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 71
    new-instance v0, Lnet/supercat/stone/MainActivity$1;

    invoke-direct {v0, p0, p1}, Lnet/supercat/stone/MainActivity$1;-><init>(Lnet/supercat/stone/MainActivity;I)V

    invoke-virtual {p0, v0}, Lnet/supercat/stone/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 77
    return-void
.end method

.method public sharePhoto(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/lang/String;

    .prologue
    .line 517
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 518
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 519
    const-string v1, "android.intent.extra.STREAM"

    const-string v2, "://"

    invoke-virtual {p3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .end local p3    # "path":Ljava/lang/String;
    :goto_0
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 520
    const-string v1, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 521
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 522
    const-string v1, "image/jpeg"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 524
    invoke-virtual {p0, v0}, Lnet/supercat/stone/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 525
    return-void

    .line 519
    .restart local p3    # "path":Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_0
.end method

.method public showAD(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 228
    return-void
.end method

.method public startAG(Ljava/lang/String;)V
    .locals 2
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 81
    :try_start_0
    new-instance v1, Lcom/inca/security/AppGuard/AppGuardClient;

    invoke-direct {v1}, Lcom/inca/security/AppGuard/AppGuardClient;-><init>()V

    iput-object v1, p0, Lnet/supercat/stone/MainActivity;->mAppGuardClient:Lcom/inca/security/AppGuard/AppGuardClient;

    .line 82
    iget-object v1, p0, Lnet/supercat/stone/MainActivity;->mAppGuardClient:Lcom/inca/security/AppGuard/AppGuardClient;

    invoke-virtual {v1}, Lcom/inca/security/AppGuard/AppGuardClient;->pause()V
    :try_end_0
    .catch Lcom/inca/security/Exception/AppGuardException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :goto_0
    iget-object v1, p0, Lnet/supercat/stone/MainActivity;->mAppGuardClient:Lcom/inca/security/AppGuard/AppGuardClient;

    invoke-virtual {v1, p1}, Lcom/inca/security/AppGuard/AppGuardClient;->setUserId(Ljava/lang/String;)V

    .line 87
    return-void

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Lcom/inca/security/Exception/AppGuardException;
    const-string v1, "supercat"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
