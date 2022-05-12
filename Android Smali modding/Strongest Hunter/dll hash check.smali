.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 286
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/cw/sdk/c;->l()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "Assembly-CSharp.dll"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 288
    :try_start_f
    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V

    .line 289
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_15} :catch_16

    goto :goto_1a

    :catch_16
    move-exception v1

    .line 291
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 293
    :goto_1a
    invoke-virtual {p0}, Lcom/cw/sdk/c;->l()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 297
    :try_start_22
    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 298
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 299
    invoke-direct {p0, p1, v1}, Lcom/cw/sdk/c;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 300
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 301
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 302
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    const-string p1, "CWSDK"

    .line 304
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/cw/sdk/b/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "CWSDK"

    .line 305
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/cw/sdk/b/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "CWSDK"

    .line 306
    invoke-static {v0}, Lcom/cw/sdk/c;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/cw/sdk/b/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    invoke-static {v0}, Lcom/cw/sdk/c;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7b

    .line 308
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7b

    .line 309
    invoke-virtual {p0}, Lcom/cw/sdk/c;->l()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_76} :catch_77

    goto :goto_7b

    :catch_77
    move-exception p1

    .line 312
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_7b
    :goto_7b
    return-void
.end method