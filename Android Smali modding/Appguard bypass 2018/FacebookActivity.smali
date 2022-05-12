.class public Lcom/facebook/FacebookActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "FacebookActivity.java"


# static fields
.field private static final API_EC_DIALOG_CANCEL:I = 0x1069

.field private static FRAGMENT_TAG:Ljava/lang/String;

.field public static PASS_THROUGH_CANCEL_ACTION:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private singleFragment:Landroid/support/v4/app/Fragment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "PassThrough"

    sput-object v0, Lcom/facebook/FacebookActivity;->PASS_THROUGH_CANCEL_ACTION:Ljava/lang/String;

    const-string v0, "SingleFragment"

    sput-object v0, Lcom/facebook/FacebookActivity;->FRAGMENT_TAG:Ljava/lang/String;

    const-class v0, Lcom/facebook/FacebookActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/FacebookActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method

.method private static final getRedirectUrl()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fb"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "://authorize"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handlePassThroughError()V
    .locals 4

    invoke-virtual {p0}, Lcom/facebook/FacebookActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/internal/NativeProtocol;->getMethodArgumentsFromIntent(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/NativeProtocol;->getExceptionFromErrorData(Landroid/os/Bundle;)Lcom/facebook/FacebookException;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v1}, Lcom/facebook/FacebookActivity;->sendResult(Landroid/os/Bundle;Lcom/facebook/FacebookException;)V

    return-void
.end method

.method private handlePassThroughUrl(Ljava/lang/String;)V
    .locals 11

    const/4 v10, 0x0

    if-eqz p1, :cond_6

    invoke-static {}, Lcom/facebook/FacebookActivity;->getRedirectUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/facebook/internal/Utility;->parseUrlQueryString(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v6}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/facebook/internal/Utility;->parseUrlQueryString(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    iget-object v8, p0, Lcom/facebook/FacebookActivity;->singleFragment:Landroid/support/v4/app/Fragment;

    instance-of v8, v8, Lcom/facebook/login/LoginFragment;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/facebook/FacebookActivity;->singleFragment:Landroid/support/v4/app/Fragment;

    check-cast v8, Lcom/facebook/login/LoginFragment;

    invoke-virtual {v8, v7}, Lcom/facebook/login/LoginFragment;->validateChallengeParam(Landroid/os/Bundle;)Z

    move-result v8

    if-nez v8, :cond_1

    :cond_0
    new-instance v8, Lcom/facebook/FacebookException;

    const-string v9, "Invalid state parameter"

    invoke-direct {v8, v9}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v10, v8}, Lcom/facebook/FacebookActivity;->sendResult(Landroid/os/Bundle;Lcom/facebook/FacebookException;)V

    :cond_1
    const-string v8, "error"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v8, "error_type"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    const-string v8, "error_msg"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    const-string v8, "error_message"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_3
    if-nez v3, :cond_4

    const-string v8, "error_description"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_4
    const-string v8, "error_code"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v1, -0x1

    invoke-static {v2}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_5
    :goto_0
    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-static {v3}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    const/4 v8, -0x1

    if-ne v1, v8, :cond_7

    invoke-virtual {p0, v7, v10}, Lcom/facebook/FacebookActivity;->sendResult(Landroid/os/Bundle;Lcom/facebook/FacebookException;)V

    :cond_6
    :goto_1
    return-void

    :catch_0
    move-exception v4

    const/4 v1, -0x1

    goto :goto_0

    :cond_7
    if-eqz v0, :cond_9

    const-string v8, "access_denied"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    const-string v8, "OAuthAccessDeniedException"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    :cond_8
    new-instance v8, Lcom/facebook/FacebookOperationCanceledException;

    invoke-direct {v8}, Lcom/facebook/FacebookOperationCanceledException;-><init>()V

    invoke-virtual {p0, v10, v8}, Lcom/facebook/FacebookActivity;->sendResult(Landroid/os/Bundle;Lcom/facebook/FacebookException;)V

    goto :goto_1

    :cond_9
    const/16 v8, 0x1069

    if-ne v1, v8, :cond_a

    new-instance v8, Lcom/facebook/FacebookOperationCanceledException;

    invoke-direct {v8}, Lcom/facebook/FacebookOperationCanceledException;-><init>()V

    invoke-virtual {p0, v10, v8}, Lcom/facebook/FacebookActivity;->sendResult(Landroid/os/Bundle;Lcom/facebook/FacebookException;)V

    goto :goto_1

    :cond_a
    new-instance v5, Lcom/facebook/FacebookRequestError;

    invoke-direct {v5, v1, v0, v3}, Lcom/facebook/FacebookRequestError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v8, Lcom/facebook/FacebookServiceException;

    invoke-direct {v8, v5, v3}, Lcom/facebook/FacebookServiceException;-><init>(Lcom/facebook/FacebookRequestError;Ljava/lang/String;)V

    invoke-virtual {p0, v10, v8}, Lcom/facebook/FacebookActivity;->sendResult(Landroid/os/Bundle;Lcom/facebook/FacebookException;)V

    goto :goto_1
.end method


# virtual methods
.method public getCurrentFragment()Landroid/support/v4/app/Fragment;
    .locals 1

    iget-object v0, p0, Lcom/facebook/FacebookActivity;->singleFragment:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/facebook/FacebookActivity;->singleFragment:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/FacebookActivity;->singleFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x1

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/facebook/FacebookSdk;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lcom/facebook/FacebookActivity;->TAG:Ljava/lang/String;

    const-string v5, "Facebook SDK not initialized. Make sure you call sdkInitialize inside your Application\'s onCreate method."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/facebook/FacebookActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/facebook/FacebookSdk;->sdkInitialize(Landroid/content/Context;)V

    :cond_0
    sget v4, Lcom/facebook/R$layout;->com_facebook_activity_layout:I

    invoke-virtual {p0, v4}, Lcom/facebook/FacebookActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/facebook/FacebookActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    sget-object v4, Lcom/facebook/FacebookActivity;->PASS_THROUGH_CANCEL_ACTION:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct {p0}, Lcom/facebook/FacebookActivity;->handlePassThroughError()V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/facebook/FacebookActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    sget-object v4, Lcom/facebook/FacebookActivity;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v4, "FacebookDialogFragment"

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v0, Lcom/facebook/internal/FacebookDialogFragment;

    invoke-direct {v0}, Lcom/facebook/internal/FacebookDialogFragment;-><init>()V

    invoke-virtual {v0, v6}, Lcom/facebook/internal/FacebookDialogFragment;->setRetainInstance(Z)V

    sget-object v4, Lcom/facebook/FacebookActivity;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/facebook/internal/FacebookDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    move-object v1, v0

    :cond_2
    :goto_1
    iput-object v1, p0, Lcom/facebook/FacebookActivity;->singleFragment:Landroid/support/v4/app/Fragment;

    goto :goto_0

    :cond_3
    const-string v4, "DeviceShareDialogFragment"

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance v0, Lcom/facebook/share/internal/DeviceShareDialogFragment;

    invoke-direct {v0}, Lcom/facebook/share/internal/DeviceShareDialogFragment;-><init>()V

    invoke-virtual {v0, v6}, Lcom/facebook/share/internal/DeviceShareDialogFragment;->setRetainInstance(Z)V

    const-string v4, "content"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/facebook/share/model/ShareContent;

    invoke-virtual {v0, v4}, Lcom/facebook/share/internal/DeviceShareDialogFragment;->setShareContent(Lcom/facebook/share/model/ShareContent;)V

    sget-object v4, Lcom/facebook/FacebookActivity;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/facebook/share/internal/DeviceShareDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    move-object v1, v0

    goto :goto_1

    :cond_4
    new-instance v1, Lcom/facebook/login/LoginFragment;

    invoke-direct {v1}, Lcom/facebook/login/LoginFragment;-><init>()V

    invoke-virtual {v1, v6}, Landroid/support/v4/app/Fragment;->setRetainInstance(Z)V

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v4

    sget v5, Lcom/facebook/R$id;->com_facebook_fragment_container:I

    sget-object v6, Lcom/facebook/FacebookActivity;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v4, v5, v1, v6}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    const-string v1, "url"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/FacebookActivity;->handlePassThroughUrl(Ljava/lang/String;)V

    return-void
.end method

.method public sendResult(Landroid/os/Bundle;Lcom/facebook/FacebookException;)V
    .locals 2

    invoke-virtual {p0}, Lcom/facebook/FacebookActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-nez p2, :cond_0

    const/4 v0, -0x1

    invoke-static {v1, p1}, Lcom/facebook/login/LoginManager;->setSuccessResult(Landroid/content/Intent;Landroid/os/Bundle;)V

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/facebook/FacebookActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/facebook/FacebookActivity;->finish()V

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-static {v1, p1, p2}, Lcom/facebook/internal/NativeProtocol;->createProtocolResultIntent(Landroid/content/Intent;Landroid/os/Bundle;Lcom/facebook/FacebookException;)Landroid/content/Intent;

    move-result-object v1

    goto :goto_0
.end method
