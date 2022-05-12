.class public Lcom/prime31/UnityPlayerNativeActivity;
.super Lcom/unity3d/player/UnityPlayerNativeActivity;
.source "UnityPlayerNativeActivity.java"


# instance fields
.field private _proxyHelper:Lcom/prime31/ActivityProxyObjectHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayerNativeActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/unity3d/player/UnityPlayerNativeActivity;->onActivityResult(IILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/prime31/UnityPlayerNativeActivity;->_proxyHelper:Lcom/prime31/ActivityProxyObjectHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/prime31/ActivityProxyObjectHelper;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    invoke-super {p0}, Lcom/unity3d/player/UnityPlayerNativeActivity;->onBackPressed()V

    iget-object v0, p0, Lcom/prime31/UnityPlayerNativeActivity;->_proxyHelper:Lcom/prime31/ActivityProxyObjectHelper;

    const-string v1, "onBackPressed"

    invoke-virtual {v0, v1}, Lcom/prime31/ActivityProxyObjectHelper;->invokeZeroParameterMethod(Ljava/lang/String;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/unity3d/player/UnityPlayerNativeActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/prime31/UnityPlayerNativeActivity;->_proxyHelper:Lcom/prime31/ActivityProxyObjectHelper;

    invoke-virtual {v0, p1}, Lcom/prime31/ActivityProxyObjectHelper;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/unity3d/player/UnityPlayerNativeActivity;->onCreate(Landroid/os/Bundle;)V

    :try_start_0
    new-instance v1, Lcom/prime31/ActivityProxyObjectHelper;

    invoke-direct {v1, p0}, Lcom/prime31/ActivityProxyObjectHelper;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/prime31/UnityPlayerNativeActivity;->_proxyHelper:Lcom/prime31/ActivityProxyObjectHelper;

    iget-object v1, p0, Lcom/prime31/UnityPlayerNativeActivity;->_proxyHelper:Lcom/prime31/ActivityProxyObjectHelper;

    invoke-virtual {v1, p1}, Lcom/prime31/ActivityProxyObjectHelper;->onCreate(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Prime31"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to create proxyHelper: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/unity3d/player/UnityPlayerNativeActivity;->onDestroy()V

    iget-object v0, p0, Lcom/prime31/UnityPlayerNativeActivity;->_proxyHelper:Lcom/prime31/ActivityProxyObjectHelper;

    const-string v1, "onDestroy"

    invoke-virtual {v0, v1}, Lcom/prime31/ActivityProxyObjectHelper;->invokeZeroParameterMethod(Ljava/lang/String;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/prime31/UnityPlayerNativeActivity;->_proxyHelper:Lcom/prime31/ActivityProxyObjectHelper;

    invoke-virtual {v0, p1, p2}, Lcom/prime31/ActivityProxyObjectHelper;->onKeyDown(ILandroid/view/KeyEvent;)V

    invoke-super {p0, p1, p2}, Lcom/unity3d/player/UnityPlayerNativeActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/prime31/UnityPlayerNativeActivity;->_proxyHelper:Lcom/prime31/ActivityProxyObjectHelper;

    invoke-virtual {v0, p1, p2}, Lcom/prime31/ActivityProxyObjectHelper;->onKeyUp(ILandroid/view/KeyEvent;)V

    invoke-super {p0, p1, p2}, Lcom/unity3d/player/UnityPlayerNativeActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/unity3d/player/UnityPlayerNativeActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Lcom/prime31/UnityPlayerNativeActivity;->setIntent(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/prime31/UnityPlayerNativeActivity;->_proxyHelper:Lcom/prime31/ActivityProxyObjectHelper;

    invoke-virtual {v0, p1}, Lcom/prime31/ActivityProxyObjectHelper;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/unity3d/player/UnityPlayerNativeActivity;->onPause()V

    iget-object v0, p0, Lcom/prime31/UnityPlayerNativeActivity;->_proxyHelper:Lcom/prime31/ActivityProxyObjectHelper;

    const-string v1, "onPause"

    invoke-virtual {v0, v1}, Lcom/prime31/ActivityProxyObjectHelper;->invokeZeroParameterMethod(Ljava/lang/String;)V

    return-void
.end method

.method protected onRestart()V
    .locals 2

    invoke-super {p0}, Lcom/unity3d/player/UnityPlayerNativeActivity;->onRestart()V

    iget-object v0, p0, Lcom/prime31/UnityPlayerNativeActivity;->_proxyHelper:Lcom/prime31/ActivityProxyObjectHelper;

    const-string v1, "onRestart"

    invoke-virtual {v0, v1}, Lcom/prime31/ActivityProxyObjectHelper;->invokeZeroParameterMethod(Ljava/lang/String;)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/unity3d/player/UnityPlayerNativeActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/prime31/UnityPlayerNativeActivity;->_proxyHelper:Lcom/prime31/ActivityProxyObjectHelper;

    invoke-virtual {v0, p1}, Lcom/prime31/ActivityProxyObjectHelper;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/unity3d/player/UnityPlayerNativeActivity;->onResume()V

    iget-object v0, p0, Lcom/prime31/UnityPlayerNativeActivity;->_proxyHelper:Lcom/prime31/ActivityProxyObjectHelper;

    const-string v1, "onResume"

    invoke-virtual {v0, v1}, Lcom/prime31/ActivityProxyObjectHelper;->invokeZeroParameterMethod(Ljava/lang/String;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/prime31/UnityPlayerNativeActivity;->_proxyHelper:Lcom/prime31/ActivityProxyObjectHelper;

    invoke-virtual {v0, p1}, Lcom/prime31/ActivityProxyObjectHelper;->onSaveInstanceState(Landroid/os/Bundle;)V

    invoke-super {p0, p1}, Lcom/unity3d/player/UnityPlayerNativeActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStart()V
    .locals 2

    invoke-super {p0}, Lcom/unity3d/player/UnityPlayerNativeActivity;->onStart()V

    iget-object v0, p0, Lcom/prime31/UnityPlayerNativeActivity;->_proxyHelper:Lcom/prime31/ActivityProxyObjectHelper;

    const-string v1, "onStart"

    invoke-virtual {v0, v1}, Lcom/prime31/ActivityProxyObjectHelper;->invokeZeroParameterMethod(Ljava/lang/String;)V

    return-void
.end method

.method protected onStop()V
    .locals 2

    invoke-super {p0}, Lcom/unity3d/player/UnityPlayerNativeActivity;->onStop()V

    iget-object v0, p0, Lcom/prime31/UnityPlayerNativeActivity;->_proxyHelper:Lcom/prime31/ActivityProxyObjectHelper;

    const-string v1, "onStop"

    invoke-virtual {v0, v1}, Lcom/prime31/ActivityProxyObjectHelper;->invokeZeroParameterMethod(Ljava/lang/String;)V

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/unity3d/player/UnityPlayerNativeActivity;->onTrimMemory(I)V

    iget-object v0, p0, Lcom/prime31/UnityPlayerNativeActivity;->_proxyHelper:Lcom/prime31/ActivityProxyObjectHelper;

    invoke-virtual {v0, p1}, Lcom/prime31/ActivityProxyObjectHelper;->onTrimMemory(I)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/unity3d/player/UnityPlayerNativeActivity;->onWindowFocusChanged(Z)V

    iget-object v0, p0, Lcom/prime31/UnityPlayerNativeActivity;->_proxyHelper:Lcom/prime31/ActivityProxyObjectHelper;

    invoke-virtual {v0, p1}, Lcom/prime31/ActivityProxyObjectHelper;->onWindowFocusChanged(Z)V

    return-void
.end method
