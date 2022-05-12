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

    const/4 v0, 0x0

    sput-object v0, Lnet/supercat/stone/MainActivity;->singleton:Lnet/supercat/stone/MainActivity;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayerActivity;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lnet/supercat/stone/MainActivity;->rect:Landroid/graphics/Rect;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/supercat/stone/MainActivity;->mAppFilters:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/supercat/stone/MainActivity;->mInstalledApps:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/supercat/stone/MainActivity;->mRunningApps:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/supercat/stone/MainActivity;->lastPurchaseItemID:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100(Lnet/supercat/stone/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lnet/supercat/stone/MainActivity;->fetchAppFilters()V

    return-void
.end method

.method static synthetic access$200(Lnet/supercat/stone/MainActivity;)Ljava/util/List;
    .locals 1

    invoke-direct {p0}, Lnet/supercat/stone/MainActivity;->loadRunningApps()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lnet/supercat/stone/MainActivity;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lnet/supercat/stone/MainActivity;->mInstalledApps:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lnet/supercat/stone/MainActivity;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lnet/supercat/stone/MainActivity;->mRunningApps:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lnet/supercat/stone/MainActivity;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lnet/supercat/stone/MainActivity;->mAppFilters:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Lnet/supercat/stone/MainActivity;)Lcom/anjlab/android/iab/v3/BillingProcessor;
    .locals 1

    iget-object v0, p0, Lnet/supercat/stone/MainActivity;->bp:Lcom/anjlab/android/iab/v3/BillingProcessor;

    return-object v0
.end method

.method static synthetic access$702(Lnet/supercat/stone/MainActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lnet/supercat/stone/MainActivity;->lastPurchaseItemID:Ljava/lang/String;

    return-object p1
.end method

.method private checkPermission()Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v2}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v2}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Read/Write external storage"

    invoke-static {p0, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :cond_0
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v1, v0

    const/16 v2, 0x2711

    invoke-static {p0, v1, v2}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private declared-synchronized fetchAppFilters()V
    .locals 15

    monitor-enter p0

    :try_start_0
    const-string v10, "supercat"

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Lnet/supercat/stone/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v10, "appFilter"

    const/4 v11, 0x0

    invoke-interface {v8, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v10, "lastUpdated"

    const-wide/16 v12, 0x0

    invoke-interface {v8, v10, v12, v13}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v10

    sub-long/2addr v10, v6

    const-wide/32 v12, 0x36ee80

    cmp-long v10, v10, v12

    if-lez v10, :cond_1

    :cond_0
    :try_start_1
    const-string v10, "supercat"

    const-string v11, "Fetching app filters..."

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v9, Ljava/net/URL;

    const-string v10, "http://lostguns.kernys.net/filters.php"

    invoke-direct {v9, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/util/Scanner;

    invoke-virtual {v9}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v5, v10}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v5}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "appFilter"

    invoke-interface {v10, v11, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    :try_start_2
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v4, v10, :cond_3

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_3
    const-string v10, "supercat"

    invoke-static {v10, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v2

    :try_start_4
    const-string v10, "supercat"

    invoke-static {v10, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_2
    :goto_2
    monitor-exit p0

    return-void

    :cond_3
    :try_start_5
    iput-object v3, p0, Lnet/supercat/stone/MainActivity;->mAppFilters:Ljava/util/List;

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

    :catch_2
    move-exception v2

    :try_start_6
    const-string v10, "supercat"

    invoke-static {v10, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10
.end method

.method public static get()Lnet/supercat/stone/MainActivity;
    .locals 1

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

    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

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

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

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

    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    const-string v4, "activity"

    invoke-virtual {p0, v4}, Lnet/supercat/stone/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lnet/supercat/stone/MainActivity;->mRunningApps:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method


# virtual methods
.method public getCountry()Ljava/lang/String;
    .locals 1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceID()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lnet/supercat/Utility;->getDeviceID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lnet/supercat/stone/MainActivity;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getWindowHeight()I
    .locals 2

    iget-object v0, p0, Lnet/supercat/stone/MainActivity;->view:Landroid/view/View;

    iget-object v1, p0, Lnet/supercat/stone/MainActivity;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lnet/supercat/stone/MainActivity;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    return v0
.end method

.method public handleIntent(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public handlePushToken(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lnet/supercat/stone/MainActivity;->mPushToken:Ljava/lang/String;

    new-instance v0, Lnet/supercat/stone/MainActivity$2;

    invoke-direct {v0, p0, p1}, Lnet/supercat/stone/MainActivity$2;-><init>(Lnet/supercat/stone/MainActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lnet/supercat/stone/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public isAppInstalled(Ljava/lang/String;)Z
    .locals 3

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

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

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 9

    const/16 v8, 0x1770

    const/4 v7, -0x1

    const/16 v6, 0x176f

    if-ne p1, v6, :cond_2

    if-ne p2, v7, :cond_2

    :try_start_0
    new-instance v6, Ljava/io/File;

    invoke-virtual {p0}, Lnet/supercat/stone/MainActivity;->getCacheDir()Ljava/io/File;

    move-result-object v7

    const-string v8, "cropped"

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

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

    :cond_0
    :goto_0
    iget-object v6, p0, Lnet/supercat/stone/MainActivity;->bp:Lcom/anjlab/android/iab/v3/BillingProcessor;

    invoke-virtual {v6, p1, p2, p3}, Lcom/anjlab/android/iab/v3/BillingProcessor;->handleActivityResult(IILandroid/content/Intent;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-super {p0, p1, p2, p3}, Lcom/unity3d/player/UnityPlayerActivity;->onActivityResult(IILandroid/content/Intent;)V

    :cond_1
    return-void

    :catch_0
    move-exception v2

    const-string v6, "supercat"

    invoke-static {v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    if-ne p1, v8, :cond_0

    if-ne p2, v7, :cond_0

    invoke-static {p3}, Lcom/soundcloud/android/crop/Crop;->getOutput(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object v5

    :try_start_1
    invoke-virtual {p0}, Lnet/supercat/stone/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v6

    invoke-static {v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v6, "image.jpg"

    const/4 v7, 0x0

    invoke-virtual {p0}, Lnet/supercat/stone/MainActivity;->getCacheDir()Ljava/io/File;

    move-result-object v8

    invoke-static {v6, v7, v8}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v4

    new-instance v3, Ljava/io/FileOutputStream;

    const/4 v6, 0x0

    invoke-direct {v3, v4, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x64

    invoke-virtual {v0, v6, v7, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    const-string v6, "[PlatformManager]"

    const-string v7, "NativePickImage"

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v2

    const-string v6, "supercat"

    invoke-static {v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onBillingError(ILjava/lang/Throwable;)V
    .locals 3

    const-string v0, "[PlatformManager]"

    const-string v1, "NativePurchaseCancelled"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onBillingInitialized()V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    sput-object p0, Lnet/supercat/stone/MainActivity;->singleton:Lnet/supercat/stone/MainActivity;

    sget-object v1, Lnet/supercat/stone/MainActivity;->mInitPushToken:Ljava/lang/String;

    iput-object v1, p0, Lnet/supercat/stone/MainActivity;->mPushToken:Ljava/lang/String;

    invoke-super {p0, p1}, Lcom/unity3d/player/UnityPlayerActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lnet/supercat/stone/MainActivity;->getView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lnet/supercat/stone/MainActivity;->view:Landroid/view/View;

    new-instance v1, Lcom/anjlab/android/iab/v3/BillingProcessor;

    const-string v2, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAxPozHUNjTJRoL68axnWRGyZyzK9ZqHTgzIiq1Cgd1nTStBLjPzUbUC1yOIBbFG42HrAKUipWONTU9LT618SdQnX/A6mJsapjhVQjNgd1IiYYf6ebGaiLZWRVPTD+fLdBAeh6qJvKCaM39k0qNfXq+1CAR+voKkYVq+npr1/KYmRsdFQXsKPyqDwXxNRY357ChtUrt8XrIH8RgKl4uP8LvkkglSbi6/dbgC6FRpU+DofMilfkUyNq8MFoAVu1QUPSFBcqx1c0SYE33dLwdOCrJHyQD7+Ekn4Smllu5sEFkcOEGxvGQRk7nBfvhXLlyTUnVZeAopYF/JZHVFGiDHkBswIDAQAB"

    invoke-direct {v1, p0, v2, p0}, Lcom/anjlab/android/iab/v3/BillingProcessor;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/anjlab/android/iab/v3/BillingProcessor$IBillingHandler;)V

    iput-object v1, p0, Lnet/supercat/stone/MainActivity;->bp:Lcom/anjlab/android/iab/v3/BillingProcessor;

    new-instance v1, Lnet/supercat/stone/MainActivity$LoadAppsTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lnet/supercat/stone/MainActivity$LoadAppsTask;-><init>(Lnet/supercat/stone/MainActivity;Lnet/supercat/stone/MainActivity$1;)V

    invoke-virtual {v1}, Lnet/supercat/stone/MainActivity$LoadAppsTask;->start()V

    :try_start_0
    invoke-static {}, Lnet/supercat/GCMManager;->getInstance()Lnet/supercat/GCMManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2}, Lnet/supercat/GCMManager;->register(Landroid/content/Context;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lnet/supercat/stone/MainActivity;->mPushToken:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/supercat/stone/MainActivity;->mPushToken:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lnet/supercat/stone/MainActivity;->handlePushToken(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lnet/supercat/stone/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lnet/supercat/stone/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/supercat/stone/MainActivity;->handleIntent(Landroid/content/Intent;)V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    const-string v1, "supercat"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/unity3d/player/UnityPlayerActivity;->onDestroy()V

    iget-object v0, p0, Lnet/supercat/stone/MainActivity;->bp:Lcom/anjlab/android/iab/v3/BillingProcessor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/supercat/stone/MainActivity;->bp:Lcom/anjlab/android/iab/v3/BillingProcessor;

    invoke-virtual {v0}, Lcom/anjlab/android/iab/v3/BillingProcessor;->release()V

    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/unity3d/player/UnityPlayerActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Lnet/supercat/stone/MainActivity;->handleIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Lcom/unity3d/player/UnityPlayerActivity;->onPause()V

    return-void
.end method

.method public onProductPurchased(Ljava/lang/String;Lcom/anjlab/android/iab/v3/TransactionDetails;)V
    .locals 3

    iget-object v0, p0, Lnet/supercat/stone/MainActivity;->bp:Lcom/anjlab/android/iab/v3/BillingProcessor;

    iget-object v1, p0, Lnet/supercat/stone/MainActivity;->lastPurchaseItemID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anjlab/android/iab/v3/BillingProcessor;->consumePurchase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "[PlatformManager]"

    const-string v1, "NativeSetSignedData"

    iget-object v2, p2, Lcom/anjlab/android/iab/v3/TransactionDetails;->purchaseInfo:Lcom/anjlab/android/iab/v3/PurchaseInfo;

    iget-object v2, v2, Lcom/anjlab/android/iab/v3/PurchaseInfo;->responseData:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "[PlatformManager]"

    const-string v1, "NativePurchaseCompleted"

    iget-object v2, p2, Lcom/anjlab/android/iab/v3/TransactionDetails;->purchaseInfo:Lcom/anjlab/android/iab/v3/PurchaseInfo;

    iget-object v2, v2, Lcom/anjlab/android/iab/v3/PurchaseInfo;->signature:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "[PlatformManager]"

    const-string v1, "NativePurchaseCancelled"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPurchaseHistoryRestored()V
    .locals 0

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Lcom/unity3d/player/UnityPlayerActivity;->onResume()V

    return-void
.end method

.method public pickImage(II)V
    .locals 1

    iput p1, p0, Lnet/supercat/stone/MainActivity;->pickWidth:I

    iput p2, p0, Lnet/supercat/stone/MainActivity;->pickHeight:I

    const/16 v0, 0x176f

    invoke-static {p0, v0}, Lcom/soundcloud/android/crop/Crop;->pickImage(Landroid/app/Activity;I)V

    return-void
.end method

.method public postKakaoStory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lnet/supercat/stone/MainActivity$3;

    invoke-direct {v0, p0, p2, p1, p3}, Lnet/supercat/stone/MainActivity$3;-><init>(Lnet/supercat/stone/MainActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lnet/supercat/stone/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public requestPurchase(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lnet/supercat/stone/MainActivity$4;

    invoke-direct {v0, p0, p1}, Lnet/supercat/stone/MainActivity$4;-><init>(Lnet/supercat/stone/MainActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lnet/supercat/stone/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public savePhoto(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    invoke-direct {p0}, Lnet/supercat/stone/MainActivity;->checkPermission()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {p0}, Lnet/supercat/stone/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, ""

    const-string v4, ""

    invoke-static {v2, p1, v3, v4}, Lnet/supercat/StoreImage;->saveImageToGallery(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public savePicture(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lnet/supercat/stone/MainActivity$5;

    invoke-direct {v0, p0, p3, p1, p2}, Lnet/supercat/stone/MainActivity$5;-><init>(Lnet/supercat/stone/MainActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lnet/supercat/stone/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setSoftInputMode(I)V
    .locals 1

    new-instance v0, Lnet/supercat/stone/MainActivity$1;

    invoke-direct {v0, p0, p1}, Lnet/supercat/stone/MainActivity$1;-><init>(Lnet/supercat/stone/MainActivity;I)V

    invoke-virtual {p0, v0}, Lnet/supercat/stone/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public sharePhoto(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.STREAM"

    const-string v2, "://"

    invoke-virtual {p3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "image/jpeg"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lnet/supercat/stone/MainActivity;->startActivity(Landroid/content/Intent;)V

    return-void

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

    return-void
.end method
