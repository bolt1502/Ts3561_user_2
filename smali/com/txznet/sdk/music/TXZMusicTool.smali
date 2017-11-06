.class public Lcom/txznet/sdk/music/TXZMusicTool;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/txznet/sdk/TXZMusicManager$MusicTool;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txznet/sdk/music/TXZMusicTool$TXZMusicModel;,
        Lcom/txznet/sdk/music/TXZMusicTool$PlayMode;,
        Lcom/txznet/sdk/music/TXZMusicTool$TXZMusicStatusListener;
    }
.end annotation


# static fields
.field static T:Lcom/txznet/sdk/music/TXZMusicTool;

.field static T2:Ljava/lang/Runnable;

.field static T3:Lcom/txznet/sdk/TXZMusicManager$MusicToolStatusListener;

.field static TG:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/txznet/sdk/music/TXZMusicTool$TXZMusicModel;",
            ">;"
        }
    .end annotation
.end field

.field static TN:Z

.field static Te:Z

.field static Tn:Lcom/txznet/sdk/music/TXZMusicTool$PlayMode;

.field static Tw:D

.field static Ty:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 27
    new-instance v0, Lcom/txznet/sdk/music/TXZMusicTool;

    invoke-direct {v0}, Lcom/txznet/sdk/music/TXZMusicTool;-><init>()V

    sput-object v0, Lcom/txznet/sdk/music/TXZMusicTool;->T:Lcom/txznet/sdk/music/TXZMusicTool;

    .line 134
    const/4 v0, 0x0

    sput-object v0, Lcom/txznet/sdk/music/TXZMusicTool;->T3:Lcom/txznet/sdk/TXZMusicManager$MusicToolStatusListener;

    .line 136
    new-instance v0, Lcom/txznet/sdk/music/TXZMusicTool$1;

    invoke-direct {v0}, Lcom/txznet/sdk/music/TXZMusicTool$1;-><init>()V

    sput-object v0, Lcom/txznet/sdk/music/TXZMusicTool;->T2:Ljava/lang/Runnable;

    .line 293
    sput-boolean v2, Lcom/txznet/sdk/music/TXZMusicTool;->TN:Z

    .line 300
    sput-boolean v2, Lcom/txznet/sdk/music/TXZMusicTool;->Te:Z

    .line 311
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/txznet/sdk/music/TXZMusicTool;->Tw:D

    .line 333
    sput v2, Lcom/txznet/sdk/music/TXZMusicTool;->Ty:I

    .line 362
    sget-object v0, Lcom/txznet/sdk/music/TXZMusicTool$PlayMode;->PLAY_MODE_LOOP_SINGLE:Lcom/txznet/sdk/music/TXZMusicTool$PlayMode;

    sput-object v0, Lcom/txznet/sdk/music/TXZMusicTool;->Tn:Lcom/txznet/sdk/music/TXZMusicTool$PlayMode;

    .line 424
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/txznet/sdk/music/TXZMusicTool;->TG:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method static T([B)Z
    .locals 3
    .param p0, "data"    # [B

    .prologue
    const/4 v2, 0x1

    .line 366
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    .line 367
    .local v0, "mode":Ljava/lang/String;
    const-string v1, "single"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 368
    sget-object v1, Lcom/txznet/sdk/music/TXZMusicTool$PlayMode;->PLAY_MODE_LOOP_SINGLE:Lcom/txznet/sdk/music/TXZMusicTool$PlayMode;

    sput-object v1, Lcom/txznet/sdk/music/TXZMusicTool;->Tn:Lcom/txznet/sdk/music/TXZMusicTool$PlayMode;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 381
    sget-object v1, Lcom/txznet/sdk/music/TXZMusicTool;->T3:Lcom/txznet/sdk/TXZMusicManager$MusicToolStatusListener;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/txznet/sdk/music/TXZMusicTool;->T3:Lcom/txznet/sdk/TXZMusicManager$MusicToolStatusListener;

    instance-of v1, v1, Lcom/txznet/sdk/music/TXZMusicTool$TXZMusicStatusListener;

    if-eqz v1, :cond_0

    .line 383
    sget-object v1, Lcom/txznet/sdk/music/TXZMusicTool;->T3:Lcom/txznet/sdk/TXZMusicManager$MusicToolStatusListener;

    check-cast v1, Lcom/txznet/sdk/music/TXZMusicTool$TXZMusicStatusListener;

    invoke-interface {v1}, Lcom/txznet/sdk/music/TXZMusicTool$TXZMusicStatusListener;->onModeChange()V

    :cond_0
    move v1, v2

    .line 386
    .end local v0    # "mode":Ljava/lang/String;
    :goto_0
    return v1

    .line 371
    .restart local v0    # "mode":Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string v1, "all"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 372
    sget-object v1, Lcom/txznet/sdk/music/TXZMusicTool$PlayMode;->PLAY_MODE_LOOP_ALL:Lcom/txznet/sdk/music/TXZMusicTool$PlayMode;

    sput-object v1, Lcom/txznet/sdk/music/TXZMusicTool;->Tn:Lcom/txznet/sdk/music/TXZMusicTool$PlayMode;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 381
    sget-object v1, Lcom/txznet/sdk/music/TXZMusicTool;->T3:Lcom/txznet/sdk/TXZMusicManager$MusicToolStatusListener;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/txznet/sdk/music/TXZMusicTool;->T3:Lcom/txznet/sdk/TXZMusicManager$MusicToolStatusListener;

    instance-of v1, v1, Lcom/txznet/sdk/music/TXZMusicTool$TXZMusicStatusListener;

    if-eqz v1, :cond_2

    .line 383
    sget-object v1, Lcom/txznet/sdk/music/TXZMusicTool;->T3:Lcom/txznet/sdk/TXZMusicManager$MusicToolStatusListener;

    check-cast v1, Lcom/txznet/sdk/music/TXZMusicTool$TXZMusicStatusListener;

    invoke-interface {v1}, Lcom/txznet/sdk/music/TXZMusicTool$TXZMusicStatusListener;->onModeChange()V

    :cond_2
    move v1, v2

    goto :goto_0

    .line 375
    :cond_3
    :try_start_2
    const-string v1, "random"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 376
    sget-object v1, Lcom/txznet/sdk/music/TXZMusicTool$PlayMode;->PLAY_MODE_RANDOM:Lcom/txznet/sdk/music/TXZMusicTool$PlayMode;

    sput-object v1, Lcom/txznet/sdk/music/TXZMusicTool;->Tn:Lcom/txznet/sdk/music/TXZMusicTool$PlayMode;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 381
    sget-object v1, Lcom/txznet/sdk/music/TXZMusicTool;->T3:Lcom/txznet/sdk/TXZMusicManager$MusicToolStatusListener;

    if-eqz v1, :cond_4

    sget-object v1, Lcom/txznet/sdk/music/TXZMusicTool;->T3:Lcom/txznet/sdk/TXZMusicManager$MusicToolStatusListener;

    instance-of v1, v1, Lcom/txznet/sdk/music/TXZMusicTool$TXZMusicStatusListener;

    if-eqz v1, :cond_4

    .line 383
    sget-object v1, Lcom/txznet/sdk/music/TXZMusicTool;->T3:Lcom/txznet/sdk/TXZMusicManager$MusicToolStatusListener;

    check-cast v1, Lcom/txznet/sdk/music/TXZMusicTool$TXZMusicStatusListener;

    invoke-interface {v1}, Lcom/txznet/sdk/music/TXZMusicTool$TXZMusicStatusListener;->onModeChange()V

    :cond_4
    move v1, v2

    goto :goto_0

    .line 381
    :cond_5
    sget-object v1, Lcom/txznet/sdk/music/TXZMusicTool;->T3:Lcom/txznet/sdk/TXZMusicManager$MusicToolStatusListener;

    if-eqz v1, :cond_6

    sget-object v1, Lcom/txznet/sdk/music/TXZMusicTool;->T3:Lcom/txznet/sdk/TXZMusicManager$MusicToolStatusListener;

    instance-of v1, v1, Lcom/txznet/sdk/music/TXZMusicTool$TXZMusicStatusListener;

    if-eqz v1, :cond_6

    .line 383
    sget-object v1, Lcom/txznet/sdk/music/TXZMusicTool;->T3:Lcom/txznet/sdk/TXZMusicManager$MusicToolStatusListener;

    check-cast v1, Lcom/txznet/sdk/music/TXZMusicTool$TXZMusicStatusListener;

    invoke-interface {v1}, Lcom/txznet/sdk/music/TXZMusicTool$TXZMusicStatusListener;->onModeChange()V

    .line 386
    .end local v0    # "mode":Ljava/lang/String;
    :cond_6
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 379
    :catch_0
    move-exception v1

    .line 381
    sget-object v1, Lcom/txznet/sdk/music/TXZMusicTool;->T3:Lcom/txznet/sdk/TXZMusicManager$MusicToolStatusListener;

    if-eqz v1, :cond_6

    sget-object v1, Lcom/txznet/sdk/music/TXZMusicTool;->T3:Lcom/txznet/sdk/TXZMusicManager$MusicToolStatusListener;

    instance-of v1, v1, Lcom/txznet/sdk/music/TXZMusicTool$TXZMusicStatusListener;

    if-eqz v1, :cond_6

    .line 383
    sget-object v1, Lcom/txznet/sdk/music/TXZMusicTool;->T3:Lcom/txznet/sdk/TXZMusicManager$MusicToolStatusListener;

    check-cast v1, Lcom/txznet/sdk/music/TXZMusicTool$TXZMusicStatusListener;

    invoke-interface {v1}, Lcom/txznet/sdk/music/TXZMusicTool$TXZMusicStatusListener;->onModeChange()V

    goto :goto_1

    .line 381
    :catchall_0
    move-exception v1

    move-object v2, v1

    sget-object v1, Lcom/txznet/sdk/music/TXZMusicTool;->T3:Lcom/txznet/sdk/TXZMusicManager$MusicToolStatusListener;

    if-eqz v1, :cond_7

    sget-object v1, Lcom/txznet/sdk/music/TXZMusicTool;->T3:Lcom/txznet/sdk/TXZMusicManager$MusicToolStatusListener;

    instance-of v1, v1, Lcom/txznet/sdk/music/TXZMusicTool$TXZMusicStatusListener;

    if-eqz v1, :cond_7

    .line 383
    sget-object v1, Lcom/txznet/sdk/music/TXZMusicTool;->T3:Lcom/txznet/sdk/TXZMusicManager$MusicToolStatusListener;

    check-cast v1, Lcom/txznet/sdk/music/TXZMusicTool$TXZMusicStatusListener;

    invoke-interface {v1}, Lcom/txznet/sdk/music/TXZMusicTool$TXZMusicStatusListener;->onModeChange()V

    :cond_7
    throw v2
.end method

.method static T3([B)Z
    .locals 11
    .param p0, "data"    # [B

    .prologue
    const/4 v9, 0x0

    .line 428
    :try_start_0
    invoke-static {p0}, Lcom/TN/T/Tw/T$T3;->T([B)Lcom/TN/T/Tw/T$T3;

    move-result-object v5

    .line 429
    .local v5, "lst":Lcom/TN/T/Tw/T$T3;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 430
    .local v7, "ret":Ljava/util/List;, "Ljava/util/List<Lcom/txznet/sdk/music/TXZMusicTool$TXZMusicModel;>;"
    iget-object v0, v5, Lcom/TN/T/Tw/T$T3;->T3:[Lcom/TN/T/Tw/T$T;

    .local v0, "arr$":[Lcom/TN/T/Tw/T$T;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v3, v0, v2

    .line 431
    .local v3, "item":Lcom/TN/T/Tw/T$T;
    new-instance v6, Lcom/txznet/sdk/music/TXZMusicTool$TXZMusicModel;

    invoke-direct {v6}, Lcom/txznet/sdk/music/TXZMusicTool$TXZMusicModel;-><init>()V

    .line 432
    .local v6, "mod":Lcom/txznet/sdk/music/TXZMusicTool$TXZMusicModel;
    iget-object v8, v3, Lcom/TN/T/Tw/T$T;->T3:Lcom/TN/T/Tw/T$T2;

    iget-object v8, v8, Lcom/TN/T/Tw/T$T2;->T2:Ljava/lang/String;

    invoke-virtual {v6, v8}, Lcom/txznet/sdk/music/TXZMusicTool$TXZMusicModel;->setTitle(Ljava/lang/String;)V

    .line 433
    iget-object v8, v3, Lcom/TN/T/Tw/T$T;->T3:Lcom/TN/T/Tw/T$T2;

    iget-object v8, v8, Lcom/TN/T/Tw/T$T2;->TN:Ljava/lang/String;

    invoke-virtual {v6, v8}, Lcom/txznet/sdk/music/TXZMusicTool$TXZMusicModel;->setAlbum(Ljava/lang/String;)V

    .line 434
    iget-object v8, v3, Lcom/TN/T/Tw/T$T;->T3:Lcom/TN/T/Tw/T$T2;

    iget-object v8, v8, Lcom/TN/T/Tw/T$T2;->Te:[Ljava/lang/String;

    invoke-virtual {v6, v8}, Lcom/txznet/sdk/music/TXZMusicTool$TXZMusicModel;->setArtist([Ljava/lang/String;)V

    .line 435
    iget-object v8, v3, Lcom/TN/T/Tw/T$T;->T3:Lcom/TN/T/Tw/T$T2;

    iget-object v8, v8, Lcom/TN/T/Tw/T$T2;->TB:[Ljava/lang/String;

    invoke-virtual {v6, v8}, Lcom/txznet/sdk/music/TXZMusicTool$TXZMusicModel;->setKeywords([Ljava/lang/String;)V

    .line 436
    iget-object v8, v3, Lcom/TN/T/Tw/T$T;->T3:Lcom/TN/T/Tw/T$T2;

    iget-object v8, v8, Lcom/TN/T/Tw/T$T2;->Tr:Ljava/lang/Boolean;

    if-nez v8, :cond_0

    move v8, v9

    :goto_1
    invoke-virtual {v6, v8}, Lcom/txznet/sdk/music/TXZMusicTool$TXZMusicModel;->setFavour(Z)V

    .line 438
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 430
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 436
    :cond_0
    iget-object v8, v3, Lcom/TN/T/Tw/T$T;->T3:Lcom/TN/T/Tw/T$T2;

    iget-object v8, v8, Lcom/TN/T/Tw/T$T2;->Tr:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    goto :goto_1

    .line 440
    .end local v3    # "item":Lcom/TN/T/Tw/T$T;
    .end local v6    # "mod":Lcom/txznet/sdk/music/TXZMusicTool$TXZMusicModel;
    :cond_1
    const-class v10, Lcom/txznet/sdk/music/TXZMusicTool;

    monitor-enter v10
    :try_end_0
    .catch Lcom/T3/T/T/TN; {:try_start_0 .. :try_end_0} :catch_0

    .line 441
    :try_start_1
    sput-object v7, Lcom/txznet/sdk/music/TXZMusicTool;->TG:Ljava/util/List;

    .line 442
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 443
    :try_start_2
    sget-object v8, Lcom/txznet/sdk/music/TXZMusicTool;->T3:Lcom/txznet/sdk/TXZMusicManager$MusicToolStatusListener;

    if-eqz v8, :cond_2

    sget-object v8, Lcom/txznet/sdk/music/TXZMusicTool;->T3:Lcom/txznet/sdk/TXZMusicManager$MusicToolStatusListener;

    instance-of v8, v8, Lcom/txznet/sdk/music/TXZMusicTool$TXZMusicStatusListener;

    if-eqz v8, :cond_2

    .line 445
    sget-object v8, Lcom/txznet/sdk/music/TXZMusicTool;->T3:Lcom/txznet/sdk/TXZMusicManager$MusicToolStatusListener;

    check-cast v8, Lcom/txznet/sdk/music/TXZMusicTool$TXZMusicStatusListener;

    invoke-interface {v8}, Lcom/txznet/sdk/music/TXZMusicTool$TXZMusicStatusListener;->onListChange()V
    :try_end_2
    .catch Lcom/T3/T/T/TN; {:try_start_2 .. :try_end_2} :catch_0

    .line 450
    :cond_2
    const/4 v8, 0x1

    .end local v0    # "arr$":[Lcom/TN/T/Tw/T$T;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "lst":Lcom/TN/T/Tw/T$T3;
    .end local v7    # "ret":Ljava/util/List;, "Ljava/util/List<Lcom/txznet/sdk/music/TXZMusicTool$TXZMusicModel;>;"
    :goto_2
    return v8

    .line 442
    .restart local v0    # "arr$":[Lcom/TN/T/Tw/T$T;
    .restart local v2    # "i$":I
    .restart local v4    # "len$":I
    .restart local v5    # "lst":Lcom/TN/T/Tw/T$T3;
    .restart local v7    # "ret":Ljava/util/List;, "Ljava/util/List<Lcom/txznet/sdk/music/TXZMusicTool$TXZMusicModel;>;"
    :catchall_0
    move-exception v8

    :try_start_3
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v8
    :try_end_4
    .catch Lcom/T3/T/T/TN; {:try_start_4 .. :try_end_4} :catch_0

    .line 447
    .end local v0    # "arr$":[Lcom/TN/T/Tw/T$T;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "lst":Lcom/TN/T/Tw/T$T3;
    .end local v7    # "ret":Ljava/util/List;, "Ljava/util/List<Lcom/txznet/sdk/music/TXZMusicTool$TXZMusicModel;>;"
    :catch_0
    move-exception v1

    .local v1, "e":Lcom/T3/T/T/TN;
    move v8, v9

    .line 448
    goto :goto_2
.end method

.method public static getInstance()Lcom/txznet/sdk/music/TXZMusicTool;
    .locals 4

    .prologue
    .line 36
    :try_start_0
    invoke-static {}, Lcom/txznet/comm/T3/T;->T3()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.txznet.music"

    const/16 v3, 0x2000

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 42
    .local v0, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    .line 43
    sget-object v1, Lcom/txznet/sdk/music/TXZMusicTool;->T:Lcom/txznet/sdk/music/TXZMusicTool;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :goto_0
    return-object v1

    .line 44
    :catch_0
    move-exception v1

    .line 46
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public deleteIndex(IZ)V
    .locals 6
    .param p1, "index"    # I
    .param p2, "deleteFile"    # Z

    .prologue
    .line 497
    new-instance v0, Lcom/txznet/comm/TN/T;

    invoke-direct {v0}, Lcom/txznet/comm/TN/T;-><init>()V

    .line 498
    .local v0, "json":Lcom/txznet/comm/TN/T;
    const-string v1, "index"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    .line 499
    const-string v1, "deleteFile"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    .line 500
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v1

    const-string v2, "com.txznet.music"

    const-string v3, "music.deleteIndex"

    invoke-virtual {v0}, Lcom/txznet/comm/TN/T;->T2()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 502
    return-void
.end method

.method public exit()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 63
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.music"

    const-string v2, "music.exit"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 65
    return-void
.end method

.method public favourIndex(IZ)V
    .locals 6
    .param p1, "index"    # I
    .param p2, "favour"    # Z

    .prologue
    .line 481
    new-instance v0, Lcom/txznet/comm/TN/T;

    invoke-direct {v0}, Lcom/txznet/comm/TN/T;-><init>()V

    .line 482
    .local v0, "json":Lcom/txznet/comm/TN/T;
    const-string v1, "index"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    .line 483
    const-string v1, "favour"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    .line 484
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v1

    const-string v2, "com.txznet.music"

    const-string v3, "music.favourIndex"

    invoke-virtual {v0}, Lcom/txznet/comm/TN/T;->T2()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 486
    return-void
.end method

.method public favourMusic()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 124
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.music.txztool.favourMusic"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 126
    return-void
.end method

.method public getCurrentMusicIndex()I
    .locals 1

    .prologue
    .line 341
    sget v0, Lcom/txznet/sdk/music/TXZMusicTool;->Ty:I

    return v0
.end method

.method public getCurrentMusicModel()Lcom/txznet/sdk/TXZMusicManager$MusicModel;
    .locals 4

    .prologue
    .line 325
    :try_start_0
    const-class v2, Lcom/txznet/sdk/music/TXZMusicTool;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    :try_start_1
    sget-object v1, Lcom/txznet/sdk/music/TXZMusicTool;->TG:Ljava/util/List;

    sget v3, Lcom/txznet/sdk/music/TXZMusicTool;->Ty:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/txznet/sdk/TXZMusicManager$MusicModel;

    monitor-exit v2

    .line 329
    :goto_0
    return-object v1

    .line 327
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 328
    :catch_0
    move-exception v0

    .line 329
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMusicList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/txznet/sdk/music/TXZMusicTool$TXZMusicModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 457
    const-class v1, Lcom/txznet/sdk/music/TXZMusicTool;

    monitor-enter v1

    .line 458
    :try_start_0
    sget-object v0, Lcom/txznet/sdk/music/TXZMusicTool;->TG:Ljava/util/List;

    monitor-exit v1

    return-object v0

    .line 459
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPlayMode()Lcom/txznet/sdk/music/TXZMusicTool$PlayMode;
    .locals 1

    .prologue
    .line 395
    sget-object v0, Lcom/txznet/sdk/music/TXZMusicTool;->Tn:Lcom/txznet/sdk/music/TXZMusicTool$PlayMode;

    return-object v0
.end method

.method public getProgress()D
    .locals 2

    .prologue
    .line 319
    sget-wide v0, Lcom/txznet/sdk/music/TXZMusicTool;->Tw:D

    return-wide v0
.end method

.method public isBufferProccessing()Z
    .locals 1

    .prologue
    .line 308
    sget-boolean v0, Lcom/txznet/sdk/music/TXZMusicTool;->Te:Z

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 297
    sget-boolean v0, Lcom/txznet/sdk/music/TXZMusicTool;->TN:Z

    return v0
.end method

.method public next()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 69
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.music"

    const-string v2, "music.next"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 71
    return-void
.end method

.method public pause()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 57
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.music"

    const-string v2, "music.pause"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 59
    return-void
.end method

.method public play()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 51
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.music"

    const-string v2, "music.play"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 53
    return-void
.end method

.method public playFavourMusic()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 111
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.music.txztool.playFavourMusic"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 113
    return-void
.end method

.method public playIndex(I)V
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 468
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.music"

    const-string v2, "music.playIndex"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 470
    return-void
.end method

.method public playMusic(Lcom/txznet/sdk/TXZMusicManager$MusicModel;)V
    .locals 5
    .param p1, "musicModel"    # Lcom/txznet/sdk/TXZMusicManager$MusicModel;

    .prologue
    .line 117
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.music.txztool.playMusic"

    invoke-virtual {p1}, Lcom/txznet/sdk/TXZMusicManager$MusicModel;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 120
    return-void
.end method

.method public playRandom()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 105
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.music.txztool.playRandom"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 107
    return-void
.end method

.method public prev()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 75
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.music"

    const-string v2, "music.prev"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 77
    return-void
.end method

.method public setStatusListener(Lcom/txznet/sdk/TXZMusicManager$MusicToolStatusListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/txznet/sdk/TXZMusicManager$MusicToolStatusListener;

    .prologue
    .line 204
    sput-object p1, Lcom/txznet/sdk/music/TXZMusicTool;->T3:Lcom/txznet/sdk/TXZMusicManager$MusicToolStatusListener;

    .line 205
    const-string v0, "musicStatus."

    new-instance v1, Lcom/txznet/sdk/music/TXZMusicTool$2;

    invoke-direct {v1, p0}, Lcom/txznet/sdk/music/TXZMusicTool$2;-><init>(Lcom/txznet/sdk/music/TXZMusicTool;)V

    invoke-static {v0, v1}, Lcom/txznet/T2/T;->T(Ljava/lang/String;Lcom/txznet/T2/T$T;)V

    .line 260
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.music"

    sget-object v2, Lcom/txznet/sdk/music/TXZMusicTool;->T2:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 262
    sget-object v0, Lcom/txznet/sdk/music/TXZMusicTool;->T2:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 263
    return-void
.end method

.method public switchModeLoopAll()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 81
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.music"

    const-string v2, "music.switchModeLoopAll"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 83
    return-void
.end method

.method public switchModeLoopOne()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 87
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.music"

    const-string v2, "music.switchModeLoopOne"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 89
    return-void
.end method

.method public switchModeRandom()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 93
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.music"

    const-string v2, "music.switchModeRandom"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 95
    return-void
.end method

.method public switchSong()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 99
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.music"

    const-string v2, "music.switchSong"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 101
    return-void
.end method

.method public unfavourMusic()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 130
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.music.txztool.unfavourMusic"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 132
    return-void
.end method
