.class public Lcom/txznet/comm/T3/T/Ty;
.super Ljava/lang/Object;
.source "Proguard"


# static fields
.field private static final T:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/txz/plugin/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/txznet/comm/T3/T/Ty;->T:Ljava/lang/String;

    return-void
.end method

.method private static T(Lcom/TN/T/TN/T$T;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "pluginFile"    # Lcom/TN/T/TN/T$T;
    .param p1, "suffix"    # Ljava/lang/String;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/TN/T/TN/T$T;->TG:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/txznet/comm/T3/T/Ty;->T:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/TN/T/TN/T$T;->T3:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/current/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/TN/T/TN/T$T;->T2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 120
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/txznet/comm/T3/T/Ty;->T:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/TN/T/TN/T$T;->T3:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/TN/T/TN/T$T;->T2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static T(Lcom/TN/T/TN/T$T;)V
    .locals 9
    .param p0, "pluginFile"    # Lcom/TN/T/TN/T$T;

    .prologue
    .line 61
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "string"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/lang/String;

    iget-object v8, p0, Lcom/TN/T/TN/T$T;->TN:[B

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/TN/T/TN/T$T;->T3:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/TN/T/TN/T$T;->Tw:Ljava/lang/Integer;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/txznet/comm/Te/T;->T3:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 64
    .local v2, "chkString":Ljava/lang/String;
    invoke-static {v2}, Lcom/txznet/txz/util/T2;->T(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "chk":Ljava/lang/String;
    const-string v6, ".chk"

    invoke-static {p0, v6}, Lcom/txznet/comm/T3/T/Ty;->T(Lcom/TN/T/TN/T$T;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, "chkFilePath":Ljava/lang/String;
    const/4 v4, 0x0

    .line 68
    .local v4, "outputStream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    .end local v4    # "outputStream":Ljava/io/FileOutputStream;
    .local v5, "outputStream":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 75
    if-eqz v5, :cond_0

    .line 76
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v4, v5

    .line 80
    .end local v5    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v4    # "outputStream":Ljava/io/FileOutputStream;
    :cond_1
    :goto_0
    return-void

    .line 77
    .end local v4    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v5    # "outputStream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v6

    move-object v4, v5

    .line 79
    .end local v5    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v4    # "outputStream":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 70
    :catch_1
    move-exception v3

    .line 71
    .local v3, "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 72
    const-string v6, "Plugin:create check file failed"

    invoke-static {v6, v3}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 75
    if-eqz v4, :cond_1

    .line 76
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 77
    :catch_2
    move-exception v6

    goto :goto_0

    .line 74
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 75
    :goto_2
    if-eqz v4, :cond_2

    .line 76
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 78
    :cond_2
    :goto_3
    throw v6

    .line 77
    :catch_3
    move-exception v7

    goto :goto_3

    .line 74
    .end local v4    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v5    # "outputStream":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v4    # "outputStream":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 70
    .end local v4    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v5    # "outputStream":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v3

    move-object v4, v5

    .end local v5    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v4    # "outputStream":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public static T([B)V
    .locals 8
    .param p0, "data"    # [B

    .prologue
    .line 31
    :try_start_0
    invoke-static {p0}, Lcom/TN/T/TN/T$T;->T([B)Lcom/TN/T/TN/T$T;

    move-result-object v2

    .line 33
    .local v2, "pluginFile":Lcom/TN/T/TN/T$T;
    invoke-static {v2}, Lcom/txznet/comm/T3/T/Ty;->T(Lcom/TN/T/TN/T$T;)V

    .line 34
    iget-object v3, v2, Lcom/TN/T/TN/T$T;->TG:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    .line 35
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 36
    .local v1, "files":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string v3, ".jar"

    invoke-static {v2, v3}, Lcom/txznet/comm/T3/T/Ty;->T(Lcom/TN/T/TN/T$T;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 37
    const/4 v3, 0x0

    invoke-static {v3, v1}, Lcom/txznet/T/T;->T(ILjava/util/Set;)V

    .line 39
    .end local v1    # "files":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_0
    iget-object v3, v2, Lcom/TN/T/TN/T$T;->TG:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 58
    .end local v2    # "pluginFile":Lcom/TN/T/TN/T$T;
    :cond_1
    :goto_0
    return-void

    .line 41
    .restart local v2    # "pluginFile":Lcom/TN/T/TN/T$T;
    :pswitch_0
    iget-object v3, v2, Lcom/TN/T/TN/T$T;->Tn:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 42
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v3

    iget-object v4, v2, Lcom/TN/T/TN/T$T;->T3:Ljava/lang/String;

    const-string v5, "comm.update.restart"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I
    :try_end_0
    .catch Lcom/T3/T/T/TN; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 53
    .end local v2    # "pluginFile":Lcom/TN/T/TN/T$T;
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Lcom/T3/T/T/TN;
    invoke-virtual {v0}, Lcom/T3/T/T/TN;->printStackTrace()V

    .line 55
    const-string v3, "Plugin:download plugin error"

    invoke-static {v3, v0}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 49
    .end local v0    # "e":Lcom/T3/T/T/TN;
    .restart local v2    # "pluginFile":Lcom/TN/T/TN/T$T;
    :pswitch_1
    :try_start_1
    const-string v3, ".jar"

    invoke-static {v2, v3}, Lcom/txznet/comm/T3/T/Ty;->T(Lcom/TN/T/TN/T$T;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Lcom/TN/T/TN/T$T;->T2:Ljava/lang/String;

    iget-object v5, v2, Lcom/TN/T/TN/T$T;->Ty:[B

    invoke-static {v3, v4, v5}, Lcom/txznet/txz/T/T2;->T(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/T3/T/T/TN; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 39
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
