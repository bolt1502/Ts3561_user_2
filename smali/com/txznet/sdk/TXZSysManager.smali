.class public Lcom/txznet/sdk/TXZSysManager;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txznet/sdk/TXZSysManager$ScreenSleepTool;,
        Lcom/txznet/sdk/TXZSysManager$AppInfo;,
        Lcom/txznet/sdk/TXZSysManager$AppMgrTool;,
        Lcom/txznet/sdk/TXZSysManager$WakeLockTool;,
        Lcom/txznet/sdk/TXZSysManager$MuteAllTool;,
        Lcom/txznet/sdk/TXZSysManager$VolumeMgrTool;
    }
.end annotation


# static fields
.field private static T:Lcom/txznet/sdk/TXZSysManager;


# instance fields
.field private T2:Lcom/txznet/sdk/TXZSysManager$VolumeMgrTool;

.field private T3:Z

.field private TG:Lcom/txznet/sdk/TXZSysManager$AppMgrTool;

.field private TJ:Lcom/txznet/sdk/TXZSysManager$ScreenSleepTool;

.field private TN:Z

.field private TR:[B

.field private TW:Z

.field private Te:Lcom/txznet/sdk/TXZSysManager$MuteAllTool;

.field private Tn:Z

.field private Tw:Z

.field private Ty:Lcom/txznet/sdk/TXZSysManager$WakeLockTool;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-boolean v0, p0, Lcom/txznet/sdk/TXZSysManager;->T3:Z

    .line 132
    iput-object v1, p0, Lcom/txznet/sdk/TXZSysManager;->T2:Lcom/txznet/sdk/TXZSysManager$VolumeMgrTool;

    .line 188
    iput-boolean v0, p0, Lcom/txznet/sdk/TXZSysManager;->TN:Z

    .line 189
    iput-object v1, p0, Lcom/txznet/sdk/TXZSysManager;->Te:Lcom/txznet/sdk/TXZSysManager$MuteAllTool;

    .line 236
    iput-boolean v0, p0, Lcom/txznet/sdk/TXZSysManager;->Tw:Z

    .line 237
    iput-object v1, p0, Lcom/txznet/sdk/TXZSysManager;->Ty:Lcom/txznet/sdk/TXZSysManager$WakeLockTool;

    .line 350
    iput-boolean v0, p0, Lcom/txznet/sdk/TXZSysManager;->Tn:Z

    .line 351
    iput-object v1, p0, Lcom/txznet/sdk/TXZSysManager;->TG:Lcom/txznet/sdk/TXZSysManager$AppMgrTool;

    .line 454
    iput-boolean v0, p0, Lcom/txznet/sdk/TXZSysManager;->TW:Z

    .line 455
    iput-object v1, p0, Lcom/txznet/sdk/TXZSysManager;->TJ:Lcom/txznet/sdk/TXZSysManager$ScreenSleepTool;

    .line 28
    return-void
.end method

.method static synthetic T(Lcom/txznet/sdk/TXZSysManager;)Lcom/txznet/sdk/TXZSysManager$VolumeMgrTool;
    .locals 1
    .param p0, "x0"    # Lcom/txznet/sdk/TXZSysManager;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/txznet/sdk/TXZSysManager;->T2:Lcom/txznet/sdk/TXZSysManager$VolumeMgrTool;

    return-object v0
.end method

.method static synthetic T(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-static {p0, p1}, Lcom/txznet/sdk/TXZSysManager;->T3(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic T2(Lcom/txznet/sdk/TXZSysManager;)Lcom/txznet/sdk/TXZSysManager$WakeLockTool;
    .locals 1
    .param p0, "x0"    # Lcom/txznet/sdk/TXZSysManager;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/txznet/sdk/TXZSysManager;->Ty:Lcom/txznet/sdk/TXZSysManager$WakeLockTool;

    return-object v0
.end method

.method static synthetic T3(Lcom/txznet/sdk/TXZSysManager;)Lcom/txznet/sdk/TXZSysManager$MuteAllTool;
    .locals 1
    .param p0, "x0"    # Lcom/txznet/sdk/TXZSysManager;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/txznet/sdk/TXZSysManager;->Te:Lcom/txznet/sdk/TXZSysManager$MuteAllTool;

    return-object v0
.end method

.method private T3()V
    .locals 5

    .prologue
    .line 438
    iget-object v0, p0, Lcom/txznet/sdk/TXZSysManager;->TR:[B

    if-eqz v0, :cond_0

    .line 439
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.sys.pkg.sync"

    iget-object v3, p0, Lcom/txznet/sdk/TXZSysManager;->TR:[B

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 442
    :cond_0
    return-void
.end method

.method private static T3(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 338
    :try_start_0
    const-string v4, "activity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 340
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    .line 341
    .local v2, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 342
    .local v3, "rapi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .line 343
    const/4 v4, 0x1

    .line 347
    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v3    # "rapi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :goto_0
    return v4

    .line 345
    :catch_0
    move-exception v4

    .line 347
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method static synthetic TN(Lcom/txznet/sdk/TXZSysManager;)Lcom/txznet/sdk/TXZSysManager$AppMgrTool;
    .locals 1
    .param p0, "x0"    # Lcom/txznet/sdk/TXZSysManager;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/txznet/sdk/TXZSysManager;->TG:Lcom/txznet/sdk/TXZSysManager$AppMgrTool;

    return-object v0
.end method

.method static synthetic Te(Lcom/txznet/sdk/TXZSysManager;)Lcom/txznet/sdk/TXZSysManager$ScreenSleepTool;
    .locals 1
    .param p0, "x0"    # Lcom/txznet/sdk/TXZSysManager;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/txznet/sdk/TXZSysManager;->TJ:Lcom/txznet/sdk/TXZSysManager$ScreenSleepTool;

    return-object v0
.end method

.method public static getInstance()Lcom/txznet/sdk/TXZSysManager;
    .locals 2

    .prologue
    .line 36
    sget-object v0, Lcom/txznet/sdk/TXZSysManager;->T:Lcom/txznet/sdk/TXZSysManager;

    if-nez v0, :cond_1

    .line 37
    const-class v1, Lcom/txznet/sdk/TXZSysManager;

    monitor-enter v1

    .line 38
    :try_start_0
    sget-object v0, Lcom/txznet/sdk/TXZSysManager;->T:Lcom/txznet/sdk/TXZSysManager;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/txznet/sdk/TXZSysManager;

    invoke-direct {v0}, Lcom/txznet/sdk/TXZSysManager;-><init>()V

    sput-object v0, Lcom/txznet/sdk/TXZSysManager;->T:Lcom/txznet/sdk/TXZSysManager;

    .line 41
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    :cond_1
    sget-object v0, Lcom/txznet/sdk/TXZSysManager;->T:Lcom/txznet/sdk/TXZSysManager;

    return-object v0

    .line 41
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method T()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 50
    iget-boolean v0, p0, Lcom/txznet/sdk/TXZSysManager;->T3:Z

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/txznet/sdk/TXZSysManager;->T2:Lcom/txznet/sdk/TXZSysManager$VolumeMgrTool;

    if-nez v0, :cond_5

    .line 52
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.sys.volume.cleartool"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 59
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/txznet/sdk/TXZSysManager;->Tw:Z

    if-eqz v0, :cond_1

    .line 60
    iget-object v0, p0, Lcom/txznet/sdk/TXZSysManager;->Ty:Lcom/txznet/sdk/TXZSysManager$WakeLockTool;

    if-nez v0, :cond_6

    .line 61
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.sys.wakelock.cleartool"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 68
    :cond_1
    :goto_1
    iget-boolean v0, p0, Lcom/txznet/sdk/TXZSysManager;->Tn:Z

    if-eqz v0, :cond_2

    .line 69
    iget-object v0, p0, Lcom/txznet/sdk/TXZSysManager;->TG:Lcom/txznet/sdk/TXZSysManager$AppMgrTool;

    if-nez v0, :cond_7

    .line 70
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.sys.appmgr.cleartool"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 77
    :cond_2
    :goto_2
    iget-boolean v0, p0, Lcom/txznet/sdk/TXZSysManager;->TW:Z

    if-eqz v0, :cond_3

    .line 78
    iget-object v0, p0, Lcom/txznet/sdk/TXZSysManager;->TJ:Lcom/txznet/sdk/TXZSysManager$ScreenSleepTool;

    if-nez v0, :cond_8

    .line 79
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.sys.screensleep.cleartool"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 86
    :cond_3
    :goto_3
    iget-boolean v0, p0, Lcom/txznet/sdk/TXZSysManager;->TN:Z

    if-eqz v0, :cond_4

    .line 87
    iget-object v0, p0, Lcom/txznet/sdk/TXZSysManager;->Te:Lcom/txznet/sdk/TXZSysManager$MuteAllTool;

    if-nez v0, :cond_9

    .line 88
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.sys.muteall.cleartool"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 95
    :cond_4
    :goto_4
    invoke-direct {p0}, Lcom/txznet/sdk/TXZSysManager;->T3()V

    .line 96
    return-void

    .line 55
    :cond_5
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.sys.volume.settool"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    goto :goto_0

    .line 64
    :cond_6
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.sys.wakelock.settool"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    goto :goto_1

    .line 73
    :cond_7
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.sys.appmgr.settool"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    goto :goto_2

    .line 82
    :cond_8
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.sys.screensleep.settool"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    goto :goto_3

    .line 91
    :cond_9
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.sys.muteall.settool"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    goto :goto_4
.end method

.method public setAppMgrTool(Lcom/txznet/sdk/TXZSysManager$AppMgrTool;)V
    .locals 4
    .param p1, "appMgrTool"    # Lcom/txznet/sdk/TXZSysManager$AppMgrTool;

    .prologue
    const/4 v3, 0x0

    .line 360
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/txznet/sdk/TXZSysManager;->Tn:Z

    .line 361
    iput-object p1, p0, Lcom/txznet/sdk/TXZSysManager;->TG:Lcom/txznet/sdk/TXZSysManager$AppMgrTool;

    .line 362
    iget-object v0, p0, Lcom/txznet/sdk/TXZSysManager;->TG:Lcom/txznet/sdk/TXZSysManager$AppMgrTool;

    if-nez v0, :cond_0

    .line 363
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.sys.appmgr.cleartool"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 391
    :goto_0
    return-void

    .line 367
    :cond_0
    const-string v0, "tool.appmgr."

    new-instance v1, Lcom/txznet/sdk/TXZSysManager$4;

    invoke-direct {v1, p0}, Lcom/txznet/sdk/TXZSysManager$4;-><init>(Lcom/txznet/sdk/TXZSysManager;)V

    invoke-static {v0, v1}, Lcom/txznet/sdk/TXZService;->T(Ljava/lang/String;Lcom/txznet/sdk/TXZService$T;)V

    .line 389
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.sys.appmgr.settool"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    goto :goto_0
.end method

.method public setMuteAllTool(Lcom/txznet/sdk/TXZSysManager$MuteAllTool;)V
    .locals 4
    .param p1, "muteAllTool"    # Lcom/txznet/sdk/TXZSysManager$MuteAllTool;

    .prologue
    const/4 v3, 0x0

    .line 198
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/txznet/sdk/TXZSysManager;->TN:Z

    .line 199
    iput-object p1, p0, Lcom/txznet/sdk/TXZSysManager;->Te:Lcom/txznet/sdk/TXZSysManager$MuteAllTool;

    .line 200
    iget-object v0, p0, Lcom/txznet/sdk/TXZSysManager;->Te:Lcom/txznet/sdk/TXZSysManager$MuteAllTool;

    if-nez v0, :cond_0

    .line 201
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.sys.muteall.cleartool"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 219
    :goto_0
    return-void

    .line 205
    :cond_0
    const-string v0, "tool.muteall."

    new-instance v1, Lcom/txznet/sdk/TXZSysManager$2;

    invoke-direct {v1, p0}, Lcom/txznet/sdk/TXZSysManager$2;-><init>(Lcom/txznet/sdk/TXZSysManager;)V

    invoke-static {v0, v1}, Lcom/txznet/sdk/TXZService;->T(Ljava/lang/String;Lcom/txznet/sdk/TXZService$T;)V

    .line 217
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.sys.muteall.settool"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    goto :goto_0
.end method

.method public setScreenSleepTool(Lcom/txznet/sdk/TXZSysManager$ScreenSleepTool;)V
    .locals 4
    .param p1, "screenSleepTool"    # Lcom/txznet/sdk/TXZSysManager$ScreenSleepTool;

    .prologue
    const/4 v3, 0x0

    .line 458
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/txznet/sdk/TXZSysManager;->TW:Z

    .line 459
    iput-object p1, p0, Lcom/txznet/sdk/TXZSysManager;->TJ:Lcom/txznet/sdk/TXZSysManager$ScreenSleepTool;

    .line 460
    iget-object v0, p0, Lcom/txznet/sdk/TXZSysManager;->TJ:Lcom/txznet/sdk/TXZSysManager$ScreenSleepTool;

    if-nez v0, :cond_0

    .line 461
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.sys.screensleep.cleartool"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 478
    :goto_0
    return-void

    .line 465
    :cond_0
    const-string v0, "tool.screensleep."

    new-instance v1, Lcom/txznet/sdk/TXZSysManager$5;

    invoke-direct {v1, p0}, Lcom/txznet/sdk/TXZSysManager$5;-><init>(Lcom/txznet/sdk/TXZSysManager;)V

    invoke-static {v0, v1}, Lcom/txznet/sdk/TXZService;->T(Ljava/lang/String;Lcom/txznet/sdk/TXZService$T;)V

    .line 476
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.sys.screensleep.settool"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    goto :goto_0
.end method

.method public setVolumeMgrTool(Lcom/txznet/sdk/TXZSysManager$VolumeMgrTool;)V
    .locals 4
    .param p1, "volumeMgrTool"    # Lcom/txznet/sdk/TXZSysManager$VolumeMgrTool;

    .prologue
    const/4 v3, 0x0

    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/txznet/sdk/TXZSysManager;->T3:Z

    .line 142
    iput-object p1, p0, Lcom/txznet/sdk/TXZSysManager;->T2:Lcom/txznet/sdk/TXZSysManager$VolumeMgrTool;

    .line 143
    iget-object v0, p0, Lcom/txznet/sdk/TXZSysManager;->T2:Lcom/txznet/sdk/TXZSysManager$VolumeMgrTool;

    if-nez v0, :cond_0

    .line 144
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.sys.volume.cleartool"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 173
    :goto_0
    return-void

    .line 148
    :cond_0
    const-string v0, "tool.volume."

    new-instance v1, Lcom/txznet/sdk/TXZSysManager$1;

    invoke-direct {v1, p0}, Lcom/txznet/sdk/TXZSysManager$1;-><init>(Lcom/txznet/sdk/TXZSysManager;)V

    invoke-static {v0, v1}, Lcom/txznet/sdk/TXZService;->T(Ljava/lang/String;Lcom/txznet/sdk/TXZService$T;)V

    .line 171
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.sys.volume.settool"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    goto :goto_0
.end method

.method public setWakeLockTool(Lcom/txznet/sdk/TXZSysManager$WakeLockTool;)V
    .locals 4
    .param p1, "wakeLockTool"    # Lcom/txznet/sdk/TXZSysManager$WakeLockTool;

    .prologue
    const/4 v3, 0x0

    .line 246
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/txznet/sdk/TXZSysManager;->Tw:Z

    .line 247
    iput-object p1, p0, Lcom/txznet/sdk/TXZSysManager;->Ty:Lcom/txznet/sdk/TXZSysManager$WakeLockTool;

    .line 248
    iget-object v0, p0, Lcom/txznet/sdk/TXZSysManager;->Ty:Lcom/txznet/sdk/TXZSysManager$WakeLockTool;

    if-nez v0, :cond_0

    .line 249
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.sys.wakelock.cleartool"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 270
    :goto_0
    return-void

    .line 253
    :cond_0
    const-string v0, "tool.wakelock."

    new-instance v1, Lcom/txznet/sdk/TXZSysManager$3;

    invoke-direct {v1, p0}, Lcom/txznet/sdk/TXZSysManager$3;-><init>(Lcom/txznet/sdk/TXZSysManager;)V

    invoke-static {v0, v1}, Lcom/txznet/sdk/TXZService;->T(Ljava/lang/String;Lcom/txznet/sdk/TXZService$T;)V

    .line 268
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.sys.wakelock.settool"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    goto :goto_0
.end method

.method public syncAppInfoList([Lcom/txznet/sdk/TXZSysManager$AppInfo;)V
    .locals 8
    .param p1, "appInfos"    # [Lcom/txznet/sdk/TXZSysManager$AppInfo;

    .prologue
    .line 422
    :try_start_0
    new-instance v3, Lcom/T/T/T3;

    invoke-direct {v3}, Lcom/T/T/T3;-><init>()V

    .line 423
    .local v3, "jInfos":Lcom/T/T/T3;
    move-object v0, p1

    .local v0, "arr$":[Lcom/txznet/sdk/TXZSysManager$AppInfo;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v2, v0, v1

    .line 424
    .local v2, "info":Lcom/txznet/sdk/TXZSysManager$AppInfo;
    new-instance v5, Lcom/txznet/comm/TN/T;

    invoke-direct {v5}, Lcom/txznet/comm/TN/T;-><init>()V

    const-string v6, "strAppName"

    iget-object v7, v2, Lcom/txznet/sdk/TXZSysManager$AppInfo;->strAppName:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    move-result-object v5

    const-string v6, "strPackageName"

    iget-object v7, v2, Lcom/txznet/sdk/TXZSysManager$AppInfo;->strPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    move-result-object v5

    invoke-virtual {v5}, Lcom/txznet/comm/TN/T;->T3()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/T/T/T3;->add(Ljava/lang/Object;)Z

    .line 423
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 427
    .end local v2    # "info":Lcom/txznet/sdk/TXZSysManager$AppInfo;
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "syncAppInfoList list="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I

    .line 428
    new-instance v5, Lcom/txznet/comm/TN/T;

    invoke-direct {v5}, Lcom/txznet/comm/TN/T;-><init>()V

    const-string v6, "infos"

    invoke-virtual {v5, v6, v3}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    move-result-object v5

    invoke-virtual {v5}, Lcom/txznet/comm/TN/T;->T2()[B

    move-result-object v5

    iput-object v5, p0, Lcom/txznet/sdk/TXZSysManager;->TR:[B

    .line 429
    invoke-direct {p0}, Lcom/txznet/sdk/TXZSysManager;->T3()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 432
    .end local v0    # "arr$":[Lcom/txznet/sdk/TXZSysManager$AppInfo;
    .end local v1    # "i$":I
    .end local v3    # "jInfos":Lcom/T/T/T3;
    .end local v4    # "len$":I
    :goto_1
    return-void

    .line 430
    :catch_0
    move-exception v5

    goto :goto_1
.end method
