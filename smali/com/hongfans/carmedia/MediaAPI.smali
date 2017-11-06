.class public Lcom/hongfans/carmedia/MediaAPI;
.super Ljava/lang/Object;
.source "MediaAPI.java"


# static fields
.field private static final NEXT:I = 0x1001

.field private static final OTHER:I = 0x4

.field private static final PAUSE:I = 0x2

.field private static final PREVIOUS:I = 0x1000

.field private static final RESUME:I = 0x3

.field private static conn:Landroid/content/ServiceConnection;

.field private static ipm:Lcom/hongfans/rearview/services/api/IPlayManager;

.field private static mContext:Landroid/content/Context;

.field private static volatile mIsBind:Z

.field private static mKey:Ljava/lang/String;

.field private static mListener:Lcom/hongfans/rearview/services/api/IOnPlayChangedListener$Stub;

.field private static mMediaAPI:Lcom/hongfans/carmedia/MediaAPI;

.field private static mOnPlayChangedListener:Lcom/hongfans/carmedia/OnPlayChangedListener;

.field private static mPlayStateListener:Lcom/hongfans/carmedia/PlayerStateListener;

.field private static sIsDebug:Z

.field private static sReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-string v0, ""

    sput-object v0, Lcom/hongfans/carmedia/MediaAPI;->mKey:Ljava/lang/String;

    .line 41
    new-instance v0, Lcom/hongfans/carmedia/MediaAPI$1;

    invoke-direct {v0}, Lcom/hongfans/carmedia/MediaAPI$1;-><init>()V

    sput-object v0, Lcom/hongfans/carmedia/MediaAPI;->sReceiver:Landroid/content/BroadcastReceiver;

    .line 63
    new-instance v0, Lcom/hongfans/carmedia/MediaAPI$2;

    invoke-direct {v0}, Lcom/hongfans/carmedia/MediaAPI$2;-><init>()V

    sput-object v0, Lcom/hongfans/carmedia/MediaAPI;->mListener:Lcom/hongfans/rearview/services/api/IOnPlayChangedListener$Stub;

    .line 148
    new-instance v0, Lcom/hongfans/carmedia/MediaAPI$3;

    invoke-direct {v0}, Lcom/hongfans/carmedia/MediaAPI$3;-><init>()V

    sput-object v0, Lcom/hongfans/carmedia/MediaAPI;->conn:Landroid/content/ServiceConnection;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 25
    sget-boolean v0, Lcom/hongfans/carmedia/MediaAPI;->mIsBind:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 25
    sput-boolean p0, Lcom/hongfans/carmedia/MediaAPI;->mIsBind:Z

    return p0
.end method

.method static synthetic access$100()Lcom/hongfans/rearview/services/api/IOnPlayChangedListener$Stub;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/hongfans/carmedia/MediaAPI;->mListener:Lcom/hongfans/rearview/services/api/IOnPlayChangedListener$Stub;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/hongfans/carmedia/MediaAPI;Landroid/content/Context;)Landroid/os/Bundle;
    .locals 1
    .param p0, "x0"    # Lcom/hongfans/carmedia/MediaAPI;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/hongfans/carmedia/MediaAPI;->getDefBundle(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/hongfans/carmedia/MediaAPI;Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p0, "x0"    # Lcom/hongfans/carmedia/MediaAPI;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/util/Map;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/hongfans/carmedia/MediaAPI;->toActivity(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$200()Landroid/content/ServiceConnection;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/hongfans/carmedia/MediaAPI;->conn:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$300()Landroid/content/Context;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/hongfans/carmedia/MediaAPI;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400()Lcom/hongfans/rearview/services/api/IPlayManager;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/hongfans/carmedia/MediaAPI;->ipm:Lcom/hongfans/rearview/services/api/IPlayManager;

    return-object v0
.end method

.method static synthetic access$402(Lcom/hongfans/rearview/services/api/IPlayManager;)Lcom/hongfans/rearview/services/api/IPlayManager;
    .locals 0
    .param p0, "x0"    # Lcom/hongfans/rearview/services/api/IPlayManager;

    .prologue
    .line 25
    sput-object p0, Lcom/hongfans/carmedia/MediaAPI;->ipm:Lcom/hongfans/rearview/services/api/IPlayManager;

    return-object p0
.end method

.method static synthetic access$500()Lcom/hongfans/carmedia/OnPlayChangedListener;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/hongfans/carmedia/MediaAPI;->mOnPlayChangedListener:Lcom/hongfans/carmedia/OnPlayChangedListener;

    return-object v0
.end method

.method static synthetic access$600()Lcom/hongfans/carmedia/PlayerStateListener;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/hongfans/carmedia/MediaAPI;->mPlayStateListener:Lcom/hongfans/carmedia/PlayerStateListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/hongfans/carmedia/MediaAPI;Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/hongfans/carmedia/MediaAPI;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/util/Map;
    .param p4, "x4"    # Z

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/hongfans/carmedia/MediaAPI;->toActivity(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/hongfans/carmedia/MediaAPI;Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p0, "x0"    # Lcom/hongfans/carmedia/MediaAPI;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/util/Map;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/hongfans/carmedia/MediaAPI;->toBroadcast(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$900()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/hongfans/carmedia/MediaAPI;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public static createMediaAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/hongfans/carmedia/MediaAPI;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "paramString"    # Ljava/lang/String;

    .prologue
    .line 102
    if-nez p0, :cond_0

    .line 103
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "param Context cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 105
    :cond_0
    sget-object v1, Lcom/hongfans/carmedia/MediaAPI;->mMediaAPI:Lcom/hongfans/carmedia/MediaAPI;

    if-nez v1, :cond_1

    .line 106
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.hongfans.action.exit"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 107
    .local v0, "filter":Landroid/content/IntentFilter;
    sget-object v1, Lcom/hongfans/carmedia/MediaAPI;->sReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 109
    sput-object p0, Lcom/hongfans/carmedia/MediaAPI;->mContext:Landroid/content/Context;

    .line 110
    new-instance v1, Lcom/hongfans/carmedia/MediaAPI;

    invoke-direct {v1}, Lcom/hongfans/carmedia/MediaAPI;-><init>()V

    sput-object v1, Lcom/hongfans/carmedia/MediaAPI;->mMediaAPI:Lcom/hongfans/carmedia/MediaAPI;

    .line 113
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_1
    sget-object v1, Lcom/hongfans/carmedia/MediaAPI;->mMediaAPI:Lcom/hongfans/carmedia/MediaAPI;

    return-object v1
.end method

.method private getDefBundle(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 4
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 540
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 541
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "appid"

    invoke-static {p1}, Lcom/hongfans/carmedia/Util;->GetAppID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    const-string v1, "appsecret"

    invoke-static {p1}, Lcom/hongfans/carmedia/Util;->GetSecret(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    const-string v1, "pid"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    const-string v1, "extra_version"

    const-string v2, "v4.0,40"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    return-object v0
.end method

.method public static getIsDebug()Z
    .locals 1

    .prologue
    .line 122
    sget-boolean v0, Lcom/hongfans/carmedia/MediaAPI;->sIsDebug:Z

    return v0
.end method

.method private static initService()V
    .locals 4

    .prologue
    .line 134
    const-string v1, "\u7ed1\u5b9a\u670d\u52a1"

    invoke-static {v1}, Lcom/hongfans/carmedia/Util;->print(Ljava/lang/String;)V

    .line 135
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 136
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.hongfans.rearview.services.MusicService"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    const-string v1, "com.hongfans.rearview"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    const-string v1, "extra_version"

    const-string v2, "v4.0,40"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    sget-boolean v1, Lcom/hongfans/carmedia/MediaAPI;->mIsBind:Z

    if-eqz v1, :cond_0

    .line 140
    const-string v1, "\u9700\u89e3\u7ed1\u670d\u52a1\u4e0a\u4e00\u6b21"

    invoke-static {v1}, Lcom/hongfans/carmedia/Util;->print(Ljava/lang/String;)V

    .line 141
    sget-object v1, Lcom/hongfans/carmedia/MediaAPI;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/hongfans/carmedia/MediaAPI;->conn:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 142
    const/4 v1, 0x0

    sput-boolean v1, Lcom/hongfans/carmedia/MediaAPI;->mIsBind:Z

    .line 143
    const/4 v1, 0x0

    sput-object v1, Lcom/hongfans/carmedia/MediaAPI;->ipm:Lcom/hongfans/rearview/services/api/IPlayManager;

    .line 145
    :cond_0
    sget-object v1, Lcom/hongfans/carmedia/MediaAPI;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/hongfans/carmedia/MediaAPI;->conn:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 146
    return-void
.end method

.method private toActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V
    .locals 8
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "classname"    # Ljava/lang/String;
    .param p5, "isRightWindow"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 512
    .local p4, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 513
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v5, 0x10000000

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 514
    if-eqz p5, :cond_0

    .line 515
    const/16 v0, 0x200

    .line 516
    .local v0, "FLAG_ACTIVITY_RUN_IN_RIGHT_WINDOW":I
    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 518
    .end local v0    # "FLAG_ACTIVITY_RUN_IN_RIGHT_WINDOW":I
    :cond_0
    if-eqz p3, :cond_1

    .line 519
    const-string v5, "com.hongfans.rearview"

    invoke-virtual {v3, v5, p3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 521
    :cond_1
    invoke-direct {p0, p1}, Lcom/hongfans/carmedia/MediaAPI;->getDefBundle(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v1

    .line 522
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz p4, :cond_2

    .line 523
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 524
    .local v4, "next":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 527
    .end local v4    # "next":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    invoke-virtual {v3, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 530
    :try_start_0
    invoke-virtual {p1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 534
    :goto_1
    return-void

    .line 531
    :catch_0
    move-exception v2

    .line 532
    .local v2, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "err "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/hongfans/carmedia/Util;->printE(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private toActivity(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "classname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 559
    .local p3, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/hongfans/carmedia/MediaAPI;->toActivity(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Z)V

    .line 560
    return-void
.end method

.method private toActivity(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Z)V
    .locals 6
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "className"    # Ljava/lang/String;
    .param p4, "isRightWindow"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 552
    .local p3, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "android.intent.action.VIEW"

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/hongfans/carmedia/MediaAPI;->toActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    .line 553
    return-void
.end method

.method private toActivityByAction(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "action"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 566
    .local p3, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/hongfans/carmedia/MediaAPI;->toActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    .line 567
    return-void
.end method

.method private toBroadcast(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "broadcast"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 573
    .local p3, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 574
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 575
    invoke-direct {p0, p1}, Lcom/hongfans/carmedia/MediaAPI;->getDefBundle(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    .line 576
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz p3, :cond_0

    .line 577
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 578
    .local v2, "next":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 581
    .end local v2    # "next":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 582
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 583
    return-void
.end method

.method private validate()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 406
    sget-object v1, Lcom/hongfans/carmedia/MediaAPI;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 407
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "param Context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 409
    :cond_0
    sget-object v1, Lcom/hongfans/carmedia/MediaAPI;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/hongfans/carmedia/Util;->GetAppID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 410
    sget-object v1, Lcom/hongfans/carmedia/MediaAPI;->mContext:Landroid/content/Context;

    const-string v2, "\u65e0\u6548AppID"

    invoke-static {v1, v2}, Lcom/hongfans/carmedia/Util;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 417
    :goto_0
    return v0

    .line 413
    :cond_1
    sget-object v1, Lcom/hongfans/carmedia/MediaAPI;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/hongfans/carmedia/Util;->GetSecret(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_2

    .line 414
    sget-object v1, Lcom/hongfans/carmedia/MediaAPI;->mContext:Landroid/content/Context;

    const-string v2, "\u65e0\u6548Secret"

    invoke-static {v1, v2}, Lcom/hongfans/carmedia/Util;->show(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 417
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public OnPlayState(Lcom/hongfans/carmedia/PlayerStateListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/hongfans/carmedia/PlayerStateListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 463
    sput-object p1, Lcom/hongfans/carmedia/MediaAPI;->mPlayStateListener:Lcom/hongfans/carmedia/PlayerStateListener;

    .line 464
    return-void
.end method

.method public PlayNext(Landroid/content/Context;)V
    .locals 3
    .param p1, "paramContext"    # Landroid/content/Context;

    .prologue
    .line 312
    const-string v1, "PlayNext"

    invoke-static {v1}, Lcom/hongfans/carmedia/Util;->print(Ljava/lang/String;)V

    .line 313
    invoke-direct {p0}, Lcom/hongfans/carmedia/MediaAPI;->validate()Z

    move-result v1

    if-nez v1, :cond_0

    .line 322
    :goto_0
    return-void

    .line 316
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 317
    .local v0, "MusicIntent":Landroid/content/Intent;
    const-string v1, "MusicControl_To_Service_Action"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 318
    const-string v1, "musiccommand"

    const/16 v2, 0x1001

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 319
    const-string v1, "ttscommand"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 320
    invoke-direct {p0, p1}, Lcom/hongfans/carmedia/MediaAPI;->getDefBundle(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 321
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public PlayPause(Landroid/content/Context;)V
    .locals 3
    .param p1, "paramContext"    # Landroid/content/Context;

    .prologue
    .line 344
    const-string v1, "PlayPause"

    invoke-static {v1}, Lcom/hongfans/carmedia/Util;->print(Ljava/lang/String;)V

    .line 345
    invoke-direct {p0}, Lcom/hongfans/carmedia/MediaAPI;->validate()Z

    move-result v1

    if-nez v1, :cond_0

    .line 354
    :goto_0
    return-void

    .line 348
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 349
    .local v0, "MusicIntent":Landroid/content/Intent;
    const-string v1, "MusicControl_To_Service_Action"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 350
    const-string v1, "musiccommand"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 351
    const-string v1, "ttscommand"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 352
    invoke-direct {p0, p1}, Lcom/hongfans/carmedia/MediaAPI;->getDefBundle(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 353
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public PlayPrevious(Landroid/content/Context;)V
    .locals 3
    .param p1, "paramContext"    # Landroid/content/Context;

    .prologue
    .line 328
    const-string v1, "PlayPrevious"

    invoke-static {v1}, Lcom/hongfans/carmedia/Util;->print(Ljava/lang/String;)V

    .line 329
    invoke-direct {p0}, Lcom/hongfans/carmedia/MediaAPI;->validate()Z

    move-result v1

    if-nez v1, :cond_0

    .line 338
    :goto_0
    return-void

    .line 332
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 333
    .local v0, "MusicIntent":Landroid/content/Intent;
    const-string v1, "MusicControl_To_Service_Action"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 334
    const-string v1, "musiccommand"

    const/16 v2, 0x1000

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 335
    const-string v1, "ttscommand"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 336
    invoke-direct {p0, p1}, Lcom/hongfans/carmedia/MediaAPI;->getDefBundle(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 337
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public PlayResume(Landroid/content/Context;)V
    .locals 3
    .param p1, "paramContext"    # Landroid/content/Context;

    .prologue
    .line 360
    const-string v1, "PlayResume"

    invoke-static {v1}, Lcom/hongfans/carmedia/Util;->print(Ljava/lang/String;)V

    .line 361
    invoke-direct {p0}, Lcom/hongfans/carmedia/MediaAPI;->validate()Z

    move-result v1

    if-nez v1, :cond_0

    .line 370
    :goto_0
    return-void

    .line 364
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 365
    .local v0, "MusicIntent":Landroid/content/Intent;
    const-string v1, "MusicControl_To_Service_Action"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 366
    const-string v1, "musiccommand"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 367
    const-string v1, "ttscommand"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 368
    invoke-direct {p0, p1}, Lcom/hongfans/carmedia/MediaAPI;->getDefBundle(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 369
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public destroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 589
    const-string v1, "destroy"

    invoke-static {v1}, Lcom/hongfans/carmedia/Util;->print(Ljava/lang/String;)V

    .line 590
    sget-boolean v1, Lcom/hongfans/carmedia/MediaAPI;->mIsBind:Z

    if-eqz v1, :cond_0

    .line 592
    :try_start_0
    sget-object v1, Lcom/hongfans/carmedia/MediaAPI;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/hongfans/carmedia/MediaAPI;->conn:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 593
    const/4 v1, 0x0

    sput-boolean v1, Lcom/hongfans/carmedia/MediaAPI;->mIsBind:Z

    .line 594
    const/4 v1, 0x0

    sput-object v1, Lcom/hongfans/carmedia/MediaAPI;->ipm:Lcom/hongfans/rearview/services/api/IPlayManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 600
    :cond_0
    :goto_0
    sget-object v1, Lcom/hongfans/carmedia/MediaAPI;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/hongfans/carmedia/MediaAPI;->sReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 601
    sput-object v3, Lcom/hongfans/carmedia/MediaAPI;->mMediaAPI:Lcom/hongfans/carmedia/MediaAPI;

    .line 602
    sput-object v3, Lcom/hongfans/carmedia/MediaAPI;->mContext:Landroid/content/Context;

    .line 603
    return-void

    .line 595
    :catch_0
    move-exception v0

    .line 596
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hongfans/carmedia/Util;->printE(Ljava/lang/String;)V

    .line 597
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public exitAPP(Landroid/content/Context;)V
    .locals 4
    .param p1, "paramContext"    # Landroid/content/Context;

    .prologue
    .line 278
    const-string v2, "exitAPP"

    invoke-static {v2}, Lcom/hongfans/carmedia/Util;->print(Ljava/lang/String;)V

    .line 279
    invoke-direct {p0}, Lcom/hongfans/carmedia/MediaAPI;->validate()Z

    move-result v2

    if-nez v2, :cond_0

    .line 288
    :goto_0
    return-void

    .line 282
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.hongfans.rearview.action.EXITAPP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 283
    .local v1, "localIntent":Landroid/content/Intent;
    const-string v2, "hongfans_key"

    sget-object v3, Lcom/hongfans/carmedia/MediaAPI;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 284
    invoke-direct {p0, p1}, Lcom/hongfans/carmedia/MediaAPI;->getDefBundle(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    .line 285
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 286
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 287
    const-string v2, "exitAPP 1--"

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/hongfans/carmedia/Util;->print(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public getPlayState()I
    .locals 5

    .prologue
    const/4 v2, -0x1

    .line 426
    const-string v3, "getPlayState"

    invoke-static {v3}, Lcom/hongfans/carmedia/Util;->print(Ljava/lang/String;)V

    .line 427
    invoke-direct {p0}, Lcom/hongfans/carmedia/MediaAPI;->validate()Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 451
    :goto_0
    return v1

    .line 430
    :cond_0
    sget-object v3, Lcom/hongfans/carmedia/MediaAPI;->ipm:Lcom/hongfans/rearview/services/api/IPlayManager;

    if-eqz v3, :cond_3

    .line 432
    :try_start_0
    sget-object v3, Lcom/hongfans/carmedia/MediaAPI;->ipm:Lcom/hongfans/rearview/services/api/IPlayManager;

    invoke-interface {v3}, Lcom/hongfans/rearview/services/api/IPlayManager;->IGetPlayState()I

    move-result v1

    .line 433
    .local v1, "state":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u670d\u52a1\u8fde\u63a5 \u4fee\u6b63\u524d state "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/hongfans/carmedia/Util;->print(Ljava/lang/String;)V

    .line 434
    if-eqz v1, :cond_1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    .line 435
    const/16 v3, 0x1005

    if-lt v1, v3, :cond_2

    const/16 v3, 0x1008

    if-gt v1, v3, :cond_2

    .line 436
    const/4 v1, 0x2

    .line 442
    :cond_1
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u670d\u52a1\u8fde\u63a5 \u4fee\u6b63\u540e state "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/hongfans/carmedia/Util;->print(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 444
    .end local v1    # "state":I
    :catch_0
    move-exception v0

    .line 445
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 446
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "err "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/hongfans/carmedia/Util;->printE(Ljava/lang/String;)V

    move v1, v2

    .line 447
    goto :goto_0

    .line 438
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "state":I
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 450
    .end local v1    # "state":I
    :cond_3
    const-string v3, "\u670d\u52a1\u672a\u8fde\u63a5 not connect"

    invoke-static {v3}, Lcom/hongfans/carmedia/Util;->print(Ljava/lang/String;)V

    move v1, v2

    .line 451
    goto :goto_0
.end method

.method public opeanUrl(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "paramContext"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 373
    const-string v0, "opeanUrl"

    invoke-static {v0}, Lcom/hongfans/carmedia/Util;->print(Ljava/lang/String;)V

    .line 374
    invoke-direct {p0}, Lcom/hongfans/carmedia/MediaAPI;->validate()Z

    move-result v0

    if-nez v0, :cond_0

    .line 402
    :goto_0
    return-void

    .line 377
    :cond_0
    new-instance v0, Lcom/hongfans/carmedia/processes/AndroidAppProcessLoader;

    new-instance v1, Lcom/hongfans/carmedia/MediaAPI$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/hongfans/carmedia/MediaAPI$6;-><init>(Lcom/hongfans/carmedia/MediaAPI;Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v0, p1, v1}, Lcom/hongfans/carmedia/processes/AndroidAppProcessLoader;-><init>(Landroid/content/Context;Lcom/hongfans/carmedia/processes/AndroidAppProcessLoader$Listener;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 401
    invoke-virtual {v0, v1, v2}, Lcom/hongfans/carmedia/processes/AndroidAppProcessLoader;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public playMusic(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "paramContext"    # Landroid/content/Context;
    .param p2, "keyword"    # Ljava/lang/String;
    .param p3, "semantics"    # Ljava/lang/String;

    .prologue
    .line 246
    const-string v1, "playMusic"

    invoke-static {v1}, Lcom/hongfans/carmedia/Util;->print(Ljava/lang/String;)V

    .line 247
    invoke-direct {p0}, Lcom/hongfans/carmedia/MediaAPI;->validate()Z

    move-result v1

    if-nez v1, :cond_0

    .line 255
    :goto_0
    return-void

    .line 250
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 251
    .local v0, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "keyword"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    const-string v1, "semantics"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    const-string v1, "cn.hongfans.rearview.playmusic"

    invoke-direct {p0, p1, v1, v0}, Lcom/hongfans/carmedia/MediaAPI;->toActivityByAction(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 254
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playMusic 3-- keyword "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/hongfans/carmedia/Util;->print(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public playMusic(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7
    .param p1, "paramContext"    # Landroid/content/Context;
    .param p2, "keyword"    # Ljava/lang/String;
    .param p3, "semantics"    # Ljava/lang/String;
    .param p4, "switchScreen"    # Z

    .prologue
    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playMusic switchScreen "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hongfans/carmedia/Util;->print(Ljava/lang/String;)V

    .line 220
    invoke-direct {p0}, Lcom/hongfans/carmedia/MediaAPI;->validate()Z

    move-result v0

    if-nez v0, :cond_0

    .line 240
    :goto_0
    return-void

    .line 223
    :cond_0
    new-instance v6, Lcom/hongfans/carmedia/processes/AndroidAppProcessLoader;

    new-instance v0, Lcom/hongfans/carmedia/MediaAPI$5;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p1

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/hongfans/carmedia/MediaAPI$5;-><init>(Lcom/hongfans/carmedia/MediaAPI;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Z)V

    invoke-direct {v6, p1, v0}, Lcom/hongfans/carmedia/processes/AndroidAppProcessLoader;-><init>(Landroid/content/Context;Lcom/hongfans/carmedia/processes/AndroidAppProcessLoader$Listener;)V

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 239
    invoke-virtual {v6, v0, v1}, Lcom/hongfans/carmedia/processes/AndroidAppProcessLoader;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public setIsDebug(Z)V
    .locals 0
    .param p1, "isDebug"    # Z

    .prologue
    .line 129
    sput-boolean p1, Lcom/hongfans/carmedia/MediaAPI;->sIsDebug:Z

    .line 130
    return-void
.end method

.method public setOnPlayChangedListener(Lcom/hongfans/carmedia/OnPlayChangedListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/hongfans/carmedia/OnPlayChangedListener;

    .prologue
    .line 472
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8bbe\u7f6e\u56de\u8c03 listener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ipm "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/hongfans/carmedia/MediaAPI;->ipm:Lcom/hongfans/rearview/services/api/IPlayManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hongfans/carmedia/Util;->print(Ljava/lang/String;)V

    .line 473
    invoke-direct {p0}, Lcom/hongfans/carmedia/MediaAPI;->validate()Z

    move-result v1

    if-nez v1, :cond_1

    .line 501
    :cond_0
    :goto_0
    return-void

    .line 476
    :cond_1
    sput-object p1, Lcom/hongfans/carmedia/MediaAPI;->mOnPlayChangedListener:Lcom/hongfans/carmedia/OnPlayChangedListener;

    .line 477
    if-eqz p1, :cond_3

    .line 479
    sget-object v1, Lcom/hongfans/carmedia/MediaAPI;->ipm:Lcom/hongfans/rearview/services/api/IPlayManager;

    if-eqz v1, :cond_2

    .line 481
    :try_start_0
    sget-object v1, Lcom/hongfans/carmedia/MediaAPI;->ipm:Lcom/hongfans/rearview/services/api/IPlayManager;

    sget-object v2, Lcom/hongfans/carmedia/MediaAPI;->mListener:Lcom/hongfans/rearview/services/api/IOnPlayChangedListener$Stub;

    invoke-interface {v1, v2}, Lcom/hongfans/rearview/services/api/IPlayManager;->registerPlayChangedListener(Lcom/hongfans/rearview/services/api/IOnPlayChangedListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 482
    :catch_0
    move-exception v0

    .line 483
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 484
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8bbe\u7f6e\u56de\u8c03\u5931\u8d25\uff0c\u91cd\u8fde "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hongfans/carmedia/Util;->printE(Ljava/lang/String;)V

    .line 485
    invoke-static {}, Lcom/hongfans/carmedia/MediaAPI;->initService()V

    goto :goto_0

    .line 488
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    invoke-static {}, Lcom/hongfans/carmedia/MediaAPI;->initService()V

    goto :goto_0

    .line 492
    :cond_3
    sget-object v1, Lcom/hongfans/carmedia/MediaAPI;->ipm:Lcom/hongfans/rearview/services/api/IPlayManager;

    if-eqz v1, :cond_0

    .line 494
    :try_start_1
    sget-object v1, Lcom/hongfans/carmedia/MediaAPI;->ipm:Lcom/hongfans/rearview/services/api/IPlayManager;

    sget-object v2, Lcom/hongfans/carmedia/MediaAPI;->mListener:Lcom/hongfans/rearview/services/api/IOnPlayChangedListener$Stub;

    invoke-interface {v1, v2}, Lcom/hongfans/rearview/services/api/IPlayManager;->unRegisterPlayChangedListener(Lcom/hongfans/rearview/services/api/IOnPlayChangedListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 495
    :catch_1
    move-exception v0

    .line 496
    .restart local v0    # "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6ce8\u9500\u56de\u8c03\u5931\u8d25 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hongfans/carmedia/Util;->printE(Ljava/lang/String;)V

    .line 497
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setPlayMode(Landroid/content/Context;I)V
    .locals 3
    .param p1, "paramContext"    # Landroid/content/Context;
    .param p2, "paramPlayMode"    # I

    .prologue
    .line 296
    const-string v1, "setPlayMode"

    invoke-static {v1}, Lcom/hongfans/carmedia/Util;->print(Ljava/lang/String;)V

    .line 297
    invoke-direct {p0}, Lcom/hongfans/carmedia/MediaAPI;->validate()Z

    move-result v1

    if-nez v1, :cond_0

    .line 306
    :goto_0
    return-void

    .line 300
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.hongfans.rearview.action.MEDIA_BUTTON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 301
    .local v0, "localIntent":Landroid/content/Intent;
    const-string v1, "PlayMode"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 302
    const-string v1, "hongfans_key"

    sget-object v2, Lcom/hongfans/carmedia/MediaAPI;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 303
    invoke-direct {p0, p1}, Lcom/hongfans/carmedia/MediaAPI;->getDefBundle(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 304
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 305
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPlayMode playMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/hongfans/carmedia/Util;->print(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public startAPP(Landroid/content/Context;)V
    .locals 3
    .param p1, "paramContext"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 202
    const-string v0, "startAPP"

    invoke-static {v0}, Lcom/hongfans/carmedia/Util;->print(Ljava/lang/String;)V

    .line 203
    const-string v0, "version info v4.0, 40"

    invoke-static {v0, v2}, Lcom/hongfans/carmedia/Util;->print(Ljava/lang/String;Z)V

    .line 204
    invoke-direct {p0}, Lcom/hongfans/carmedia/MediaAPI;->validate()Z

    move-result v0

    if-nez v0, :cond_0

    .line 209
    :goto_0
    return-void

    .line 207
    :cond_0
    const-string v0, "cn.hongfans.rearview.startapp"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/hongfans/carmedia/MediaAPI;->toActivityByAction(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 208
    const-string v0, "startAPP 0or3--"

    invoke-static {v0, v2}, Lcom/hongfans/carmedia/Util;->print(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public startAPP(Landroid/content/Context;Z)V
    .locals 3
    .param p1, "paramContext"    # Landroid/content/Context;
    .param p2, "switchScreen"    # Z

    .prologue
    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startAPP switchScreen "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hongfans/carmedia/Util;->print(Ljava/lang/String;)V

    .line 180
    invoke-direct {p0}, Lcom/hongfans/carmedia/MediaAPI;->validate()Z

    move-result v0

    if-nez v0, :cond_0

    .line 196
    :goto_0
    return-void

    .line 183
    :cond_0
    new-instance v0, Lcom/hongfans/carmedia/processes/AndroidAppProcessLoader;

    new-instance v1, Lcom/hongfans/carmedia/MediaAPI$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/hongfans/carmedia/MediaAPI$4;-><init>(Lcom/hongfans/carmedia/MediaAPI;Landroid/content/Context;Z)V

    invoke-direct {v0, p1, v1}, Lcom/hongfans/carmedia/processes/AndroidAppProcessLoader;-><init>(Landroid/content/Context;Lcom/hongfans/carmedia/processes/AndroidAppProcessLoader$Listener;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 195
    invoke-virtual {v0, v1, v2}, Lcom/hongfans/carmedia/processes/AndroidAppProcessLoader;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public switchProgramByBroadcast()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 261
    const-string v2, "switchProgramByBroadcast"

    invoke-static {v2}, Lcom/hongfans/carmedia/Util;->print(Ljava/lang/String;)V

    .line 262
    invoke-direct {p0}, Lcom/hongfans/carmedia/MediaAPI;->validate()Z

    move-result v2

    if-nez v2, :cond_0

    .line 272
    :goto_0
    return-void

    .line 265
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.hongfans.rearview.action.SWITCH_PROGRAM"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 266
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "hongfans_key"

    sget-object v3, Lcom/hongfans/carmedia/MediaAPI;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 267
    sget-object v2, Lcom/hongfans/carmedia/MediaAPI;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/hongfans/carmedia/MediaAPI;->getDefBundle(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    .line 268
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "next"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 269
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 270
    sget-object v2, Lcom/hongfans/carmedia/MediaAPI;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 271
    const-string v2, "switchProgramByBroadcast"

    invoke-static {v2, v4}, Lcom/hongfans/carmedia/Util;->print(Ljava/lang/String;Z)V

    goto :goto_0
.end method
