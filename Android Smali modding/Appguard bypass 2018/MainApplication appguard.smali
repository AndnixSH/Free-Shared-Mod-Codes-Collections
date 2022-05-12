.class public Lnet/supercat/MainApplication;
.super Lcom/inca/security/Proxy/AppGuardProxyApplication;
.source "MainApplication.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/inca/security/Proxy/AppGuardProxyApplication;-><init>()V

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/inca/security/Proxy/AppGuardProxyApplication;->attachBaseContext(Landroid/content/Context;)V

    invoke-static {p0}, Landroid/support/multidex/MultiDex;->install(Landroid/content/Context;)V

    return-void
.end method
