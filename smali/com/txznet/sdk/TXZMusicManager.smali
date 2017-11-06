.class public Lcom/txznet/sdk/TXZMusicManager;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txznet/sdk/TXZMusicManager$AudioTool;,
        Lcom/txznet/sdk/TXZMusicManager$MusicToolType;,
        Lcom/txznet/sdk/TXZMusicManager$MusicToolEx;,
        Lcom/txznet/sdk/TXZMusicManager$MusicTool;,
        Lcom/txznet/sdk/TXZMusicManager$MusicToolStatusListener;,
        Lcom/txznet/sdk/TXZMusicManager$MusicModel;
    }
.end annotation


# static fields
.field private static Ty:Lcom/txznet/sdk/TXZMusicManager;


# instance fields
.field T:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/txznet/sdk/TXZMusicManager$MusicToolStatusListener;",
            ">;"
        }
    .end annotation
.end field

.field T2:Z

.field T3:Lcom/txznet/sdk/TXZMusicManager$AudioTool;

.field private TG:Ljava/lang/Object;

.field TN:Ljava/lang/Boolean;

.field private TR:Ljava/lang/Boolean;

.field Te:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/txznet/sdk/TXZMusicManager$MusicModel;",
            ">;"
        }
    .end annotation
.end field

.field private Tn:Z

.field Tw:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/txznet/sdk/TXZMusicManager$MusicModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/txznet/sdk/TXZMusicManager;

    invoke-direct {v0}, Lcom/txznet/sdk/TXZMusicManager;-><init>()V

    sput-object v0, Lcom/txznet/sdk/TXZMusicManager;->Ty:Lcom/txznet/sdk/TXZMusicManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 416
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/txznet/sdk/TXZMusicManager;->Tn:Z

    .line 417
    iput-object v1, p0, Lcom/txznet/sdk/TXZMusicManager;->TG:Ljava/lang/Object;

    .line 418
    iput-object v1, p0, Lcom/txznet/sdk/TXZMusicManager;->TR:Ljava/lang/Boolean;

    .line 1103
    iput-object v1, p0, Lcom/txznet/sdk/TXZMusicManager;->TN:Ljava/lang/Boolean;

    .line 1116
    iput-object v1, p0, Lcom/txznet/sdk/TXZMusicManager;->Te:Ljava/util/Collection;

    .line 1128
    iput-object v1, p0, Lcom/txznet/sdk/TXZMusicManager;->Tw:Ljava/util/Collection;

    .line 35
    return-void
.end method

.method public static getInstance()Lcom/txznet/sdk/TXZMusicManager;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/txznet/sdk/TXZMusicManager;->Ty:Lcom/txznet/sdk/TXZMusicManager;

    return-object v0
.end method


# virtual methods
.method T()V
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/txznet/sdk/TXZMusicManager;->Tn:Z

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/txznet/sdk/TXZMusicManager;->TG:Ljava/lang/Object;

    if-nez v0, :cond_5

    .line 52
    const/4 v0, 0x0

    check-cast v0, Lcom/txznet/sdk/TXZMusicManager$MusicToolType;

    invoke-virtual {p0, v0}, Lcom/txznet/sdk/TXZMusicManager;->setMusicTool(Lcom/txznet/sdk/TXZMusicManager$MusicToolType;)V

    .line 59
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/txznet/sdk/TXZMusicManager;->T2:Z

    if-eqz v0, :cond_1

    .line 60
    iget-object v0, p0, Lcom/txznet/sdk/TXZMusicManager;->T3:Lcom/txznet/sdk/TXZMusicManager$AudioTool;

    invoke-virtual {p0, v0}, Lcom/txznet/sdk/TXZMusicManager;->setDefaultAudioTool(Lcom/txznet/sdk/TXZMusicManager$AudioTool;)V

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/txznet/sdk/TXZMusicManager;->Te:Ljava/util/Collection;

    if-eqz v0, :cond_2

    .line 63
    iget-object v0, p0, Lcom/txznet/sdk/TXZMusicManager;->Te:Ljava/util/Collection;

    invoke-virtual {p0, v0}, Lcom/txznet/sdk/TXZMusicManager;->syncMuicList(Ljava/util/Collection;)V

    .line 65
    :cond_2
    iget-object v0, p0, Lcom/txznet/sdk/TXZMusicManager;->Tw:Ljava/util/Collection;

    if-eqz v0, :cond_3

    .line 66
    iget-object v0, p0, Lcom/txznet/sdk/TXZMusicManager;->Tw:Ljava/util/Collection;

    invoke-virtual {p0, v0}, Lcom/txznet/sdk/TXZMusicManager;->syncExMuicList(Ljava/util/Collection;)V

    .line 68
    :cond_3
    iget-object v0, p0, Lcom/txznet/sdk/TXZMusicManager;->TN:Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    .line 69
    iget-object v0, p0, Lcom/txznet/sdk/TXZMusicManager;->TN:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/txznet/sdk/TXZMusicManager;->showKuwoSearchResult(Z)V

    .line 71
    :cond_4
    return-void

    .line 53
    :cond_5
    iget-object v0, p0, Lcom/txznet/sdk/TXZMusicManager;->TG:Ljava/lang/Object;

    instance-of v0, v0, Lcom/txznet/sdk/TXZMusicManager$MusicToolType;

    if-eqz v0, :cond_6

    .line 54
    iget-object v0, p0, Lcom/txznet/sdk/TXZMusicManager;->TG:Ljava/lang/Object;

    check-cast v0, Lcom/txznet/sdk/TXZMusicManager$MusicToolType;

    invoke-virtual {p0, v0}, Lcom/txznet/sdk/TXZMusicManager;->setMusicTool(Lcom/txznet/sdk/TXZMusicManager$MusicToolType;)V

    goto :goto_0

    .line 55
    :cond_6
    iget-object v0, p0, Lcom/txznet/sdk/TXZMusicManager;->TG:Ljava/lang/Object;

    instance-of v0, v0, Lcom/txznet/sdk/TXZMusicManager$MusicTool;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/txznet/sdk/TXZMusicManager;->TG:Ljava/lang/Object;

    check-cast v0, Lcom/txznet/sdk/TXZMusicManager$MusicTool;

    invoke-virtual {p0, v0}, Lcom/txznet/sdk/TXZMusicManager;->setMusicTool(Lcom/txznet/sdk/TXZMusicManager$MusicTool;)V

    goto :goto_0
.end method

.method public addMusicStatusListener(Lcom/txznet/sdk/TXZMusicManager$MusicToolStatusListener;)V
    .locals 5
    .param p1, "mtsl"    # Lcom/txznet/sdk/TXZMusicManager$MusicToolStatusListener;

    .prologue
    const/4 v4, 0x0

    .line 460
    if-nez p1, :cond_1

    .line 522
    :cond_0
    :goto_0
    return-void

    .line 464
    :cond_1
    iget-object v1, p0, Lcom/txznet/sdk/TXZMusicManager;->T:Ljava/util/List;

    if-nez v1, :cond_2

    .line 465
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/txznet/sdk/TXZMusicManager;->T:Ljava/util/List;

    .line 468
    :cond_2
    const/4 v0, 0x0

    .line 469
    .local v0, "needNotify":Z
    iget-object v1, p0, Lcom/txznet/sdk/TXZMusicManager;->T:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_3

    .line 470
    const/4 v0, 0x1

    .line 472
    :cond_3
    iget-object v1, p0, Lcom/txznet/sdk/TXZMusicManager;->T:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 473
    if-eqz v0, :cond_0

    .line 474
    const-string v1, "tool.music.status."

    new-instance v2, Lcom/txznet/sdk/TXZMusicManager$1;

    invoke-direct {v2, p0}, Lcom/txznet/sdk/TXZMusicManager$1;-><init>(Lcom/txznet/sdk/TXZMusicManager;)V

    invoke-static {v1, v2}, Lcom/txznet/sdk/TXZService;->T(Ljava/lang/String;Lcom/txznet/sdk/TXZService$T;)V

    .line 519
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v1

    const-string v2, "com.txznet.txz"

    const-string v3, "txz.music.musiclistener.set"

    invoke-virtual {v1, v2, v3, v4, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    goto :goto_0
.end method

.method public continuePlay()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 970
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.music.cont"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 972
    return-void
.end method

.method public exit()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 986
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.music.exit"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 988
    return-void
.end method

.method public exitAllMusicToolImmediately()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 994
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.music.exitAllMusicToolImmediately"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 996
    return-void
.end method

.method public favourMusic()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1081
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.music.favourMusic"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 1083
    return-void
.end method

.method public getCurrentMusicModel()Lcom/txznet/sdk/TXZMusicManager$MusicModel;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1059
    :try_start_0
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v3

    const-string v4, "txz.music.getCurrentMusicModel"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;[B)[B

    move-result-object v0

    .line 1061
    .local v0, "data":[B
    if-nez v0, :cond_0

    .line 1065
    .end local v0    # "data":[B
    :goto_0
    return-object v2

    .line 1063
    .restart local v0    # "data":[B
    :cond_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v3}, Lcom/txznet/sdk/TXZMusicManager$MusicModel;->fromString(Ljava/lang/String;)Lcom/txznet/sdk/TXZMusicManager$MusicModel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 1064
    .end local v0    # "data":[B
    :catch_0
    move-exception v1

    .line 1065
    .local v1, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public isBuffering()Z
    .locals 4

    .prologue
    .line 949
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v1

    const-string v2, "txz.music.isBuffering"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;[B)[B

    move-result-object v0

    .line 951
    .local v0, "data":[B
    if-nez v0, :cond_0

    .line 952
    const/4 v1, 0x0

    .line 953
    :goto_0
    return v1

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 4

    .prologue
    .line 936
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v1

    const-string v2, "txz.music.isPlaying"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;[B)[B

    move-result-object v0

    .line 938
    .local v0, "data":[B
    if-nez v0, :cond_0

    .line 939
    const/4 v1, 0x0

    .line 940
    :goto_0
    return v1

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public next()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1002
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.music.next"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 1004
    return-void
.end method

.method public pause()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 978
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.music.pause"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 980
    return-void
.end method

.method public play()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 962
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.music.play"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 964
    return-void
.end method

.method public playFavourMusic()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1073
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.music.playFavourMusic"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 1075
    return-void
.end method

.method public playRandom()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1050
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.music.playRandom"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 1052
    return-void
.end method

.method public prev()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1010
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.music.prev"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 1012
    return-void
.end method

.method public removeMusicStatusListener(Lcom/txznet/sdk/TXZMusicManager$MusicToolStatusListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/txznet/sdk/TXZMusicManager$MusicToolStatusListener;

    .prologue
    const/4 v3, 0x0

    .line 525
    if-nez p1, :cond_1

    .line 537
    :cond_0
    :goto_0
    return-void

    .line 528
    :cond_1
    iget-object v0, p0, Lcom/txznet/sdk/TXZMusicManager;->T:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/txznet/sdk/TXZMusicManager;->T:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 530
    iget-object v0, p0, Lcom/txznet/sdk/TXZMusicManager;->T:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 533
    :cond_2
    iget-object v0, p0, Lcom/txznet/sdk/TXZMusicManager;->T:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 534
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.music.musiclistener.clear"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    goto :goto_0
.end method

.method public setDefaultAudioTool(Lcom/txznet/sdk/TXZMusicManager$AudioTool;)V
    .locals 5
    .param p1, "at"    # Lcom/txznet/sdk/TXZMusicManager$AudioTool;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 919
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/txznet/sdk/TXZMusicManager;->T2:Z

    .line 920
    iput-object p1, p0, Lcom/txznet/sdk/TXZMusicManager;->T3:Lcom/txznet/sdk/TXZMusicManager$AudioTool;

    .line 921
    if-nez p1, :cond_0

    .line 922
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.audio.cleartool"

    invoke-virtual {v0, v1, v2, v4, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 928
    :goto_0
    return-void

    .line 926
    :cond_0
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.audio.setInnerTool"

    iget-object v3, p0, Lcom/txznet/sdk/TXZMusicManager;->T3:Lcom/txznet/sdk/TXZMusicManager$AudioTool;

    invoke-virtual {v3}, Lcom/txznet/sdk/TXZMusicManager$AudioTool;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    goto :goto_0
.end method

.method public setEnableAudoJumpPlayerPage(Ljava/lang/Boolean;)V
    .locals 5
    .param p1, "enable"    # Ljava/lang/Boolean;

    .prologue
    .line 593
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.music"

    const-string v2, "music.autoJumpPlayerPage"

    if-nez p1, :cond_0

    const-string p1, "true"

    .end local p1    # "enable":Ljava/lang/Boolean;
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 595
    return-void
.end method

.method public setEnableFloatingPlayer(Ljava/lang/Boolean;)V
    .locals 5
    .param p1, "enable"    # Ljava/lang/Boolean;

    .prologue
    .line 572
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.music"

    const-string v2, "music.enableFloatingPlayer"

    if-nez p1, :cond_0

    const-string p1, "true"

    .end local p1    # "enable":Ljava/lang/Boolean;
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 574
    return-void
.end method

.method public setEnableSplash(Ljava/lang/Boolean;)V
    .locals 5
    .param p1, "enable"    # Ljava/lang/Boolean;

    .prologue
    .line 582
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.music"

    const-string v2, "music.enableSplash"

    if-nez p1, :cond_0

    const-string p1, "true"

    .end local p1    # "enable":Ljava/lang/Boolean;
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 584
    return-void
.end method

.method public setExitWithPlay(Z)V
    .locals 5
    .param p1, "withplay"    # Z

    .prologue
    .line 632
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.music"

    const-string v2, "music.setExitWithPlay"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 634
    return-void
.end method

.method public setExtraTypeface(Z)V
    .locals 5
    .param p1, "needExtra"    # Z

    .prologue
    .line 644
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.music"

    const-string v2, "music.setExtraTypeface"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 646
    return-void
.end method

.method public setFullScreen(Ljava/lang/Boolean;)V
    .locals 5
    .param p1, "play"    # Ljava/lang/Boolean;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 559
    iput-object p1, p0, Lcom/txznet/sdk/TXZMusicManager;->TR:Ljava/lang/Boolean;

    .line 560
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.music"

    const-string v2, "music.fullscreen"

    if-nez p1, :cond_0

    const-string p1, "true"

    .end local p1    # "play":Ljava/lang/Boolean;
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 563
    return-void
.end method

.method public setIsCloseVolume(Ljava/lang/Boolean;)V
    .locals 5
    .param p1, "close"    # Ljava/lang/Boolean;

    .prologue
    .line 605
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.music"

    const-string v2, "music.closeVolume"

    if-nez p1, :cond_0

    const-string p1, "false"

    .end local p1    # "close":Ljava/lang/Boolean;
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 609
    return-void
.end method

.method public setLocalPath([Ljava/lang/String;)V
    .locals 6
    .param p1, "paths"    # [Ljava/lang/String;

    .prologue
    .line 743
    if-eqz p1, :cond_0

    array-length v1, p1

    if-lez v1, :cond_0

    .line 745
    new-instance v0, Lcom/txznet/comm/TN/T;

    invoke-direct {v0}, Lcom/txznet/comm/TN/T;-><init>()V

    .line 746
    .local v0, "builder":Lcom/txznet/comm/TN/T;
    const-string v1, "data"

    invoke-virtual {v0, v1, p1}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    .line 748
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v1

    const-string v2, "com.txznet.music"

    const-string v3, "music.searchPath"

    invoke-virtual {v0}, Lcom/txznet/comm/TN/T;->T2()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 753
    .end local v0    # "builder":Lcom/txznet/comm/TN/T;
    :goto_0
    return-void

    .line 751
    :cond_0
    invoke-static {}, Lcom/txznet/comm/T3/T;->T3()Landroid/content/Context;

    move-result-object v1

    const-string v2, "\u672c\u5730\u626b\u63cf\u8def\u5f84\u8bbe\u7f6e\u9519\u8bef"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public setLocalSearchSize(Ljava/lang/Integer;)V
    .locals 5
    .param p1, "minSize"    # Ljava/lang/Integer;

    .prologue
    .line 726
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v1, 0x19000

    if-lt v0, v1, :cond_0

    .line 727
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.music"

    const-string v2, "music.searchSize"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 733
    :goto_0
    return-void

    .line 731
    :cond_0
    const-string v0, "\u672c\u5730\u626b\u63cf\u8bbe\u7f6e\u53c2\u6570\u9519\u8bef,\u652f\u6301\u7684\u8303\u56f4[100K~+]"

    invoke-static {v0}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setMusicTool(Lcom/txznet/sdk/TXZMusicManager$MusicTool;)V
    .locals 6
    .param p1, "tool"    # Lcom/txznet/sdk/TXZMusicManager$MusicTool;

    .prologue
    const/4 v5, 0x0

    .line 774
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/txznet/sdk/TXZMusicManager;->Tn:Z

    .line 775
    iput-object p1, p0, Lcom/txznet/sdk/TXZMusicManager;->TG:Ljava/lang/Object;

    .line 777
    if-nez p1, :cond_0

    .line 778
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.music.cleartool"

    invoke-virtual {v0, v1, v2, v5, v5}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 887
    .end local p1    # "tool":Lcom/txznet/sdk/TXZMusicManager$MusicTool;
    :goto_0
    return-void

    .line 782
    .restart local p1    # "tool":Lcom/txznet/sdk/TXZMusicManager$MusicTool;
    :cond_0
    new-instance v0, Lcom/txznet/sdk/TXZMusicManager$2;

    invoke-direct {v0, p0}, Lcom/txznet/sdk/TXZMusicManager$2;-><init>(Lcom/txznet/sdk/TXZMusicManager;)V

    invoke-interface {p1, v0}, Lcom/txznet/sdk/TXZMusicManager$MusicTool;->setStatusListener(Lcom/txznet/sdk/TXZMusicManager$MusicToolStatusListener;)V

    .line 810
    const-string v0, "tool.music."

    new-instance v1, Lcom/txznet/sdk/TXZMusicManager$3;

    invoke-direct {v1, p0, p1}, Lcom/txznet/sdk/TXZMusicManager$3;-><init>(Lcom/txznet/sdk/TXZMusicManager;Lcom/txznet/sdk/TXZMusicManager$MusicTool;)V

    invoke-static {v0, v1}, Lcom/txznet/sdk/TXZService;->T(Ljava/lang/String;Lcom/txznet/sdk/TXZService$T;)V

    .line 879
    instance-of v0, p1, Lcom/txznet/sdk/TXZMusicManager$MusicToolEx;

    if-eqz v0, :cond_1

    .line 880
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.music.settool"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    check-cast p1, Lcom/txznet/sdk/TXZMusicManager$MusicToolEx;

    .end local p1    # "tool":Lcom/txznet/sdk/TXZMusicManager$MusicTool;
    invoke-interface {p1}, Lcom/txznet/sdk/TXZMusicManager$MusicToolEx;->needTts()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    goto :goto_0

    .line 885
    .restart local p1    # "tool":Lcom/txznet/sdk/TXZMusicManager$MusicTool;
    :cond_1
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.music.settool"

    invoke-virtual {v0, v1, v2, v5, v5}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    goto :goto_0
.end method

.method public setMusicTool(Lcom/txznet/sdk/TXZMusicManager$MusicToolType;)V
    .locals 5
    .param p1, "type"    # Lcom/txznet/sdk/TXZMusicManager$MusicToolType;

    .prologue
    const/4 v4, 0x0

    .line 446
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/txznet/sdk/TXZMusicManager;->Tn:Z

    .line 447
    iput-object p1, p0, Lcom/txznet/sdk/TXZMusicManager;->TG:Ljava/lang/Object;

    .line 448
    if-nez p1, :cond_0

    .line 449
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.music.cleartool"

    invoke-virtual {v0, v1, v2, v4, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 455
    :goto_0
    return-void

    .line 453
    :cond_0
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.music.setInnerTool"

    invoke-virtual {p1}, Lcom/txznet/sdk/TXZMusicManager$MusicToolType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    goto :goto_0
.end method

.method public setNeedAsr(Ljava/lang/Boolean;)V
    .locals 5
    .param p1, "need"    # Ljava/lang/Boolean;

    .prologue
    .line 762
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.music"

    const-string v2, "music.needAsr"

    if-nez p1, :cond_0

    const-string p1, "true"

    .end local p1    # "need":Ljava/lang/Boolean;
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 765
    return-void
.end method

.method public setNotOpenAppPName([Ljava/lang/String;)V
    .locals 6
    .param p1, "sContent"    # [Ljava/lang/String;

    .prologue
    .line 619
    new-instance v0, Lcom/txznet/comm/TN/T;

    invoke-direct {v0}, Lcom/txznet/comm/TN/T;-><init>()V

    .line 620
    .local v0, "builder":Lcom/txznet/comm/TN/T;
    const-string v1, "data"

    invoke-virtual {v0, v1, p1}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    .line 621
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v1

    const-string v2, "com.txznet.music"

    const-string v3, "music.notOpenAppPName"

    invoke-virtual {v0}, Lcom/txznet/comm/TN/T;->T2()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 623
    return-void
.end method

.method public setReleaseAudioFocus(Ljava/lang/Boolean;)V
    .locals 5
    .param p1, "isRealse"    # Ljava/lang/Boolean;

    .prologue
    .line 657
    if-nez p1, :cond_0

    .line 658
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 660
    :cond_0
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.music"

    const-string v2, "music.releaseAudioFocus"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 662
    return-void
.end method

.method public setShortPlayEnable(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    .line 685
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.music"

    const-string v2, "music.shortPlayEnable"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 687
    return-void
.end method

.method public setShortPlayNeedTrigger(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    .line 697
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.music"

    const-string v2, "music.setShortPlayNeedTrigger"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 699
    return-void
.end method

.method public setShowExitDialog(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    .line 715
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.music"

    const-string v2, "music.showExitDialog"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 717
    return-void
.end method

.method public setStartAppPlay(Ljava/lang/Boolean;)V
    .locals 5
    .param p1, "play"    # Ljava/lang/Boolean;

    .prologue
    .line 546
    iput-object p1, p0, Lcom/txznet/sdk/TXZMusicManager;->TR:Ljava/lang/Boolean;

    .line 547
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.music"

    const-string v2, "music.startappplay"

    if-nez p1, :cond_0

    const-string p1, "true"

    .end local p1    # "play":Ljava/lang/Boolean;
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 550
    return-void
.end method

.method public setWakeupPlay(Ljava/lang/Boolean;)V
    .locals 5
    .param p1, "isPlay"    # Ljava/lang/Boolean;

    .prologue
    .line 671
    if-nez p1, :cond_0

    .line 672
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 674
    :cond_0
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.music"

    const-string v2, "music.wakeupPlay"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 676
    return-void
.end method

.method public showKuwoSearchResult(Z)V
    .locals 5
    .param p1, "show"    # Z

    .prologue
    .line 1111
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/txznet/sdk/TXZMusicManager;->TN:Ljava/lang/Boolean;

    .line 1112
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.music.showKuwoSearchResult"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 1114
    return-void
.end method

.method public switchModeLoopAll()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1018
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.music.switchModeLoopAll"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 1020
    return-void
.end method

.method public switchModeLoopOne()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1026
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.music.switchModeLoopOne"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 1028
    return-void
.end method

.method public switchModeRandom()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1034
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.music.switchModeRandom"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 1036
    return-void
.end method

.method public switchSong()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1042
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.music.switchSong"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 1044
    return-void
.end method

.method public syncExMuicList(Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/txznet/sdk/TXZMusicManager$MusicModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1134
    .local p1, "musics":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/txznet/sdk/TXZMusicManager$MusicModel;>;"
    iput-object p1, p0, Lcom/txznet/sdk/TXZMusicManager;->Tw:Ljava/util/Collection;

    .line 1135
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.music.syncExMuicList"

    iget-object v3, p0, Lcom/txznet/sdk/TXZMusicManager;->Tw:Ljava/util/Collection;

    invoke-static {v3}, Lcom/txznet/sdk/TXZMusicManager$MusicModel;->collecionToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 1139
    return-void
.end method

.method public syncMuicList(Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/txznet/sdk/TXZMusicManager$MusicModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1122
    .local p1, "musics":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/txznet/sdk/TXZMusicManager$MusicModel;>;"
    iput-object p1, p0, Lcom/txznet/sdk/TXZMusicManager;->Te:Ljava/util/Collection;

    .line 1123
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.music.syncMuicList"

    iget-object v3, p0, Lcom/txznet/sdk/TXZMusicManager;->Te:Ljava/util/Collection;

    invoke-static {v3}, Lcom/txznet/sdk/TXZMusicManager$MusicModel;->collecionToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 1126
    return-void
.end method

.method public triggerShortPlay()V
    .locals 5

    .prologue
    .line 705
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.music"

    const-string v2, "music.triggerShortPlay"

    const-string v3, ""

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 706
    return-void
.end method

.method public unfavourMusic()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1089
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.music.unfavourMusic"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 1091
    return-void
.end method
