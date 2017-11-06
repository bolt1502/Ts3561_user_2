.class public Lcom/txznet/comm/T3/T2;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txznet/comm/T3/T2$Tw;,
        Lcom/txznet/comm/T3/T2$T;,
        Lcom/txznet/comm/T3/T2$TN;,
        Lcom/txznet/comm/T3/T2$Te;,
        Lcom/txznet/comm/T3/T2$T3;,
        Lcom/txznet/comm/T3/T2$T2;
    }
.end annotation


# static fields
.field private static TG:I

.field private static Tn:I

.field static Ty:Lcom/txznet/comm/T3/T2;


# instance fields
.field T:Landroid/os/HandlerThread;

.field T2:Lcom/txznet/comm/T3/T2$Te;

.field T3:Lcom/txznet/txz/util/Te;

.field TN:Ljava/lang/String;

.field private TR:I

.field private TW:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/txznet/comm/T3/T2$T;",
            ">;"
        }
    .end annotation
.end field

.field public Te:Z

.field Tw:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/txznet/comm/T3/T2$TN;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v7, 0x3e8

    .line 42
    const/16 v6, 0x7530

    sput v6, Lcom/txznet/comm/T3/T2;->Tn:I

    .line 43
    sput v7, Lcom/txznet/comm/T3/T2;->TG:I

    .line 47
    :try_start_0
    invoke-static {}, Lcom/txznet/comm/T3/T;->T3()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.txznet."

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 48
    const/16 v6, 0xbb8

    sput v6, Lcom/txznet/comm/T3/T2;->Tn:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 53
    :cond_0
    :goto_0
    :try_start_1
    new-instance v1, Ljava/io/File;

    const-string v6, "/etc/txz/txz_service.json"

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 54
    .local v1, "f":Ljava/io/File;
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 55
    .local v2, "in":Ljava/io/FileInputStream;
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    long-to-int v6, v6

    new-array v0, v6, [B

    .line 56
    .local v0, "bs":[B
    const/4 v5, 0x0

    .line 57
    .local v5, "t":I
    :goto_1
    array-length v6, v0

    if-ge v5, v6, :cond_1

    .line 58
    array-length v6, v0

    sub-int/2addr v6, v5

    invoke-virtual {v2, v0, v5, v6}, Ljava/io/FileInputStream;->read([BII)I

    move-result v4

    .line 59
    .local v4, "r":I
    if-gez v4, :cond_2

    .line 63
    .end local v4    # "r":I
    :cond_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 64
    new-instance v3, Lcom/txznet/comm/TN/T;

    invoke-direct {v3, v0}, Lcom/txznet/comm/TN/T;-><init>([B)V

    .line 65
    .local v3, "json":Lcom/txznet/comm/TN/T;
    const-string v6, "DEFAULT_RECONNECT_DELAY"

    const-class v7, Ljava/lang/Integer;

    const/16 v8, 0x3e8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v6, v7, v8}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sput v6, Lcom/txznet/comm/T3/T2;->TG:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 68
    .end local v0    # "bs":[B
    .end local v2    # "in":Ljava/io/FileInputStream;
    .end local v3    # "json":Lcom/txznet/comm/TN/T;
    .end local v5    # "t":I
    :goto_2
    const-string v6, "txz_service"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DEFAULT_RECONNECT_DELAY="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/txznet/comm/T3/T2;->TG:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    new-instance v6, Lcom/txznet/comm/T3/T2;

    invoke-direct {v6}, Lcom/txznet/comm/T3/T2;-><init>()V

    sput-object v6, Lcom/txznet/comm/T3/T2;->Ty:Lcom/txznet/comm/T3/T2;

    return-void

    .line 61
    .restart local v0    # "bs":[B
    .restart local v2    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "r":I
    .restart local v5    # "t":I
    :cond_2
    add-int/2addr v5, v4

    .line 62
    goto :goto_1

    .line 66
    .end local v0    # "bs":[B
    .end local v2    # "in":Ljava/io/FileInputStream;
    .end local v4    # "r":I
    .end local v5    # "t":I
    :catch_0
    move-exception v6

    goto :goto_2

    .line 50
    .end local v1    # "f":Ljava/io/File;
    :catch_1
    move-exception v6

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 430
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object v1, p0, Lcom/txznet/comm/T3/T2;->T2:Lcom/txznet/comm/T3/T2$Te;

    .line 87
    iput-object v1, p0, Lcom/txznet/comm/T3/T2;->TN:Ljava/lang/String;

    .line 213
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/txznet/comm/T3/T2;->Te:Z

    .line 214
    const/4 v1, 0x1

    iput v1, p0, Lcom/txznet/comm/T3/T2;->TR:I

    .line 428
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/txznet/comm/T3/T2;->Tw:Ljava/util/Map;

    .line 527
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/txznet/comm/T3/T2;->TW:Ljava/util/Set;

    .line 431
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "ServiceManagerThread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/txznet/comm/T3/T2;->T:Landroid/os/HandlerThread;

    .line 432
    iget-object v1, p0, Lcom/txznet/comm/T3/T2;->T:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 433
    new-instance v1, Lcom/txznet/comm/T3/T2$1;

    iget-object v2, p0, Lcom/txznet/comm/T3/T2;->T:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/txznet/comm/T3/T2$1;-><init>(Lcom/txznet/comm/T3/T2;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/txznet/comm/T3/T2;->T3:Lcom/txznet/txz/util/Te;

    .line 443
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 444
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 445
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 446
    invoke-static {}, Lcom/txznet/comm/T3/T;->T3()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/txznet/comm/T3/T2$2;

    invoke-direct {v2, p0}, Lcom/txznet/comm/T3/T2$2;-><init>(Lcom/txznet/comm/T3/T2;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 455
    return-void
.end method

.method static synthetic T(Lcom/txznet/comm/T3/T2;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/txznet/comm/T3/T2;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/txznet/comm/T3/T2;->TW:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic T(Lcom/txznet/comm/T3/T2;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/txznet/comm/T3/T2;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/txznet/comm/T3/T2;->T3(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic T(Lcom/txznet/comm/T3/T2;Ljava/lang/String;Ljava/util/List;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/txznet/comm/T3/T2;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/util/List;
    .param p3, "x3"    # Z

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/util/List;Z)V

    return-void
.end method

.method private T(Ljava/lang/String;Ljava/util/List;Z)V
    .locals 9
    .param p1, "serverName"    # Ljava/lang/String;
    .param p3, "needLog"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/txznet/comm/T3/T2$Te;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 374
    .local p2, "requestQueue":Ljava/util/List;, "Ljava/util/List<Lcom/txznet/comm/T3/T2$Te;>;"
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 375
    .local v2, "now":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v0, v7, :cond_4

    .line 376
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/txznet/comm/T3/T2$Te;

    .line 377
    .local v4, "request":Lcom/txznet/comm/T3/T2$Te;
    iget-wide v7, v4, Lcom/txznet/comm/T3/T2$Te;->Te:J

    cmp-long v7, v2, v7

    if-ltz v7, :cond_2

    .line 378
    iget-object v7, v4, Lcom/txznet/comm/T3/T2$Te;->TN:Lcom/txznet/comm/T3/T2$T3;

    if-eqz v7, :cond_0

    .line 379
    iget-object v7, v4, Lcom/txznet/comm/T3/T2$Te;->TN:Lcom/txznet/comm/T3/T2$T3;

    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/txznet/comm/T3/T2$T3;->T2:Z

    .line 380
    iget-object v7, v4, Lcom/txznet/comm/T3/T2$Te;->TN:Lcom/txznet/comm/T3/T2$T3;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/txznet/comm/T3/T2$T3;->T(Lcom/txznet/comm/T3/T2$T2;)V

    .line 383
    :cond_0
    iget-object v7, v4, Lcom/txznet/comm/T3/T2$Te;->T3:Ljava/lang/String;

    const-string v8, "comm.log"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    if-eqz p3, :cond_1

    .line 384
    iget-object v7, v4, Lcom/txznet/comm/T3/T2$Te;->TN:Lcom/txznet/comm/T3/T2$T3;

    if-eqz v7, :cond_3

    iget-object v7, v4, Lcom/txznet/comm/T3/T2$Te;->TN:Lcom/txznet/comm/T3/T2$T3;

    invoke-virtual {v7}, Lcom/txznet/comm/T3/T2$T3;->T()I

    move-result v7

    int-to-long v5, v7

    .line 385
    .local v5, "timeout":J
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[FROM="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/txznet/comm/T3/T;->T3()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",TO="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",CMD="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v4, Lcom/txznet/comm/T3/T2$Te;->T3:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] timeout="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/txznet/comm/T3/T/Te;->TN(Ljava/lang/String;)I

    .line 389
    .end local v5    # "timeout":J
    :cond_1
    add-int/lit8 v1, v0, -0x1

    .end local v0    # "i":I
    .local v1, "i":I
    invoke-interface {p2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v0, v1

    .line 375
    .end local v1    # "i":I
    .restart local v0    # "i":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 384
    :cond_3
    sget v7, Lcom/txznet/comm/T3/T2;->Tn:I

    int-to-long v5, v7

    goto :goto_1

    .line 392
    .end local v4    # "request":Lcom/txznet/comm/T3/T2$Te;
    :cond_4
    return-void
.end method

.method static synthetic T2()I
    .locals 1

    .prologue
    .line 41
    sget v0, Lcom/txznet/comm/T3/T2;->Tn:I

    return v0
.end method

.method public static T3()Lcom/txznet/comm/T3/T2;
    .locals 1

    .prologue
    .line 609
    sget-object v0, Lcom/txznet/comm/T3/T2;->Ty:Lcom/txznet/comm/T3/T2;

    return-object v0
.end method

.method private T3(Ljava/lang/String;)V
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 463
    iget-object v1, p0, Lcom/txznet/comm/T3/T2;->Tw:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 475
    :goto_0
    return-void

    .line 467
    :cond_0
    iget-object v2, p0, Lcom/txznet/comm/T3/T2;->Tw:Ljava/util/Map;

    monitor-enter v2

    .line 468
    :try_start_0
    iget-object v1, p0, Lcom/txznet/comm/T3/T2;->Tw:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/txznet/comm/T3/T2$TN;

    .line 470
    .local v0, "record":Lcom/txznet/comm/T3/T2$TN;
    if-eqz v0, :cond_1

    .line 471
    const-string v1, "logServiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reset ServiceRecord: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/txznet/comm/T3/T2$TN;->TN:Z

    .line 474
    :cond_1
    monitor-exit v2

    goto :goto_0

    .end local v0    # "record":Lcom/txznet/comm/T3/T2$TN;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic TN()I
    .locals 1

    .prologue
    .line 41
    sget v0, Lcom/txznet/comm/T3/T2;->TG:I

    return v0
.end method


# virtual methods
.method public T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I
    .locals 5
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "command"    # Ljava/lang/String;
    .param p3, "data"    # [B
    .param p4, "callback"    # Lcom/txznet/comm/T3/T2$T3;

    .prologue
    .line 658
    iget-boolean v1, p0, Lcom/txznet/comm/T3/T2;->Te:Z

    if-eqz v1, :cond_0

    const-string v1, "txz.camera."

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 659
    const-string v1, "sss"

    const-string v2, "pbh disable send invoke: send invoke"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    const/4 v1, -0x1

    .line 703
    :goto_0
    return v1

    .line 669
    :cond_0
    new-instance v0, Lcom/txznet/comm/T3/T2$Te;

    invoke-direct {v0, p0}, Lcom/txznet/comm/T3/T2$Te;-><init>(Lcom/txznet/comm/T3/T2;)V

    .line 670
    .local v0, "req":Lcom/txznet/comm/T3/T2$Te;
    iget v1, p0, Lcom/txznet/comm/T3/T2;->TR:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/txznet/comm/T3/T2;->TR:I

    iput v1, v0, Lcom/txznet/comm/T3/T2$Te;->T:I

    .line 671
    iput-object p2, v0, Lcom/txznet/comm/T3/T2$Te;->T3:Ljava/lang/String;

    .line 672
    iput-object p3, v0, Lcom/txznet/comm/T3/T2$Te;->T2:[B

    .line 673
    iput-object p4, v0, Lcom/txznet/comm/T3/T2$Te;->TN:Lcom/txznet/comm/T3/T2$T3;

    .line 674
    iget-object v1, v0, Lcom/txznet/comm/T3/T2$Te;->TN:Lcom/txznet/comm/T3/T2$T3;

    if-eqz v1, :cond_1

    .line 675
    iget-object v1, v0, Lcom/txznet/comm/T3/T2$Te;->TN:Lcom/txznet/comm/T3/T2$T3;

    iget v2, v0, Lcom/txznet/comm/T3/T2$Te;->T:I

    iput v2, v1, Lcom/txznet/comm/T3/T2$T3;->TN:I

    .line 676
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-object v3, v0, Lcom/txznet/comm/T3/T2$Te;->TN:Lcom/txznet/comm/T3/T2$T3;

    invoke-virtual {v3}, Lcom/txznet/comm/T3/T2$T3;->T()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/txznet/comm/T3/T2$Te;->Te:J

    .line 680
    :goto_1
    iget-object v1, p0, Lcom/txznet/comm/T3/T2;->T3:Lcom/txznet/txz/util/Te;

    new-instance v2, Lcom/txznet/comm/T3/T2$4;

    invoke-direct {v2, p0, p1, v0, p1}, Lcom/txznet/comm/T3/T2$4;-><init>(Lcom/txznet/comm/T3/T2;Ljava/lang/String;Lcom/txznet/comm/T3/T2$Te;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/txznet/txz/util/Te;->T(Ljava/lang/Runnable;)Z

    .line 703
    iget v1, v0, Lcom/txznet/comm/T3/T2$Te;->T:I

    goto :goto_0

    .line 678
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sget v3, Lcom/txznet/comm/T3/T2;->Tn:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/txznet/comm/T3/T2$Te;->Te:J

    goto :goto_1
.end method

.method public T(Ljava/lang/String;Ljava/lang/String;[B)Lcom/txznet/comm/T3/T2$T2;
    .locals 5
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "command"    # Ljava/lang/String;
    .param p3, "data"    # [B

    .prologue
    const/4 v2, 0x0

    .line 640
    iget-boolean v3, p0, Lcom/txznet/comm/T3/T2;->Te:Z

    if-eqz v3, :cond_1

    const-string v3, "txz.camera."

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 641
    const-string v3, "sss"

    const-string v4, "pbh disable send invoke: send invoke sync"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    :cond_0
    :goto_0
    return-object v2

    .line 644
    :cond_1
    invoke-virtual {p0, p1}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;)Lcom/txznet/txz/T3/T;

    move-result-object v1

    .line 645
    .local v1, "service":Lcom/txznet/txz/T3/T;
    if-eqz v1, :cond_0

    .line 647
    :try_start_0
    new-instance v3, Lcom/txznet/comm/T3/T2$T2;

    invoke-static {}, Lcom/txznet/comm/T3/T;->T3()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v4, p2, p3}, Lcom/txznet/txz/T3/T;->T(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/txznet/comm/T3/T2$T2;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    goto :goto_0

    .line 649
    :catch_0
    move-exception v0

    .line 650
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public T(Ljava/lang/String;)Lcom/txznet/txz/T3/T;
    .locals 5
    .param p1, "serviceName"    # Ljava/lang/String;

    .prologue
    .line 707
    iget-object v3, p0, Lcom/txznet/comm/T3/T2;->Tw:Ljava/util/Map;

    monitor-enter v3

    .line 708
    :try_start_0
    iget-object v2, p0, Lcom/txznet/comm/T3/T2;->Tw:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 709
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 710
    iget-object v2, p0, Lcom/txznet/comm/T3/T2;->Tw:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/txznet/comm/T3/T2$TN;

    .line 711
    .local v1, "record":Lcom/txznet/comm/T3/T2$TN;
    iget-object v2, v1, Lcom/txznet/comm/T3/T2$TN;->T:Lcom/txznet/comm/T3/T2$Tw;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/txznet/comm/T3/T2$TN;->T3:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/txznet/comm/T3/T2$TN;->T3:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 713
    iget-object v2, v1, Lcom/txznet/comm/T3/T2$TN;->T2:Lcom/txznet/txz/T3/T;

    monitor-exit v3

    .line 717
    .end local v1    # "record":Lcom/txznet/comm/T3/T2$TN;
    :goto_0
    return-object v2

    .line 716
    :cond_1
    monitor-exit v3

    .line 717
    const/4 v2, 0x0

    goto :goto_0

    .line 716
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method T(Lcom/txznet/txz/T3/T;Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/Object;
    .locals 6
    .param p1, "connectionInterface"    # Lcom/txznet/txz/T3/T;
    .param p2, "serviceName"    # Ljava/lang/String;
    .param p3, "command"    # Ljava/lang/String;
    .param p4, "data"    # [B

    .prologue
    .line 503
    :try_start_0
    invoke-static {}, Lcom/txznet/comm/T3/T;->T3()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {p1, v3, p3, p4}, Lcom/txznet/txz/T3/T;->T(Ljava/lang/String;Ljava/lang/String;[B)[B
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    .line 518
    :goto_0
    return-object v3

    .line 504
    :catch_0
    move-exception v2

    .line 508
    .local v2, "npe":Ljava/lang/NullPointerException;
    const-string v3, "ServiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[FROM="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/txznet/comm/T3/T;->T3()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",TO="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",CMD="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] NullPointerException"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    .end local v2    # "npe":Ljava/lang/NullPointerException;
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 510
    :catch_1
    move-exception v0

    .line 511
    .local v0, "de":Landroid/os/DeadObjectException;
    const-string v3, "ServiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[FROM="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/txznet/comm/T3/T;->T3()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",TO="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",CMD="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] DeadObjectException"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 513
    .end local v0    # "de":Landroid/os/DeadObjectException;
    :catch_2
    move-exception v1

    .line 514
    .local v1, "e":Ljava/lang/Throwable;
    const-string v3, "ServiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[FROM="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/txznet/comm/T3/T;->T3()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",TO="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",CMD="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] Throwable"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public T()V
    .locals 5

    .prologue
    .line 395
    iget-object v3, p0, Lcom/txznet/comm/T3/T2;->Tw:Ljava/util/Map;

    monitor-enter v3

    .line 396
    :try_start_0
    iget-object v2, p0, Lcom/txznet/comm/T3/T2;->Tw:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 397
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 398
    iget-object v2, p0, Lcom/txznet/comm/T3/T2;->Tw:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/txznet/comm/T3/T2$TN;

    .line 399
    .local v1, "record":Lcom/txznet/comm/T3/T2$TN;
    iget-object v2, v1, Lcom/txznet/comm/T3/T2$TN;->T:Lcom/txznet/comm/T3/T2$Tw;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 401
    :try_start_1
    invoke-virtual {v1}, Lcom/txznet/comm/T3/T2$TN;->T()V

    .line 402
    invoke-static {}, Lcom/txznet/comm/T3/T;->T3()Landroid/content/Context;

    move-result-object v2

    iget-object v4, v1, Lcom/txznet/comm/T3/T2$TN;->T:Lcom/txznet/comm/T3/T2$Tw;

    invoke-virtual {v2, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 403
    :catch_0
    move-exception v2

    goto :goto_0

    .line 407
    .end local v1    # "record":Lcom/txznet/comm/T3/T2$TN;
    :cond_1
    :try_start_2
    monitor-exit v3

    .line 408
    return-void

    .line 407
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public T(Lcom/txznet/comm/T3/T2$T;)V
    .locals 2
    .param p1, "listener"    # Lcom/txznet/comm/T3/T2$T;

    .prologue
    .line 535
    new-instance v0, Lcom/txznet/comm/T3/T2$3;

    invoke-direct {v0, p0, p1}, Lcom/txznet/comm/T3/T2$3;-><init>(Lcom/txznet/comm/T3/T2;Lcom/txznet/comm/T3/T2$T;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/Runnable;I)V

    .line 541
    return-void
.end method

.method public T(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/txznet/comm/T3/T2;->T3:Lcom/txznet/txz/util/Te;

    invoke-virtual {v0, p1}, Lcom/txznet/txz/util/Te;->T3(Ljava/lang/Runnable;)V

    .line 91
    return-void
.end method

.method public T(Ljava/lang/Runnable;I)V
    .locals 3
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "delay"    # I

    .prologue
    .line 94
    iget-object v0, p0, Lcom/txznet/comm/T3/T2;->T3:Lcom/txznet/txz/util/Te;

    int-to-long v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lcom/txznet/txz/util/Te;->T(Ljava/lang/Runnable;J)Z

    .line 95
    return-void
.end method

.method public T(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 6
    .param p1, "remoteServiceName"    # Ljava/lang/String;
    .param p2, "onConnected"    # Ljava/lang/Runnable;

    .prologue
    .line 741
    new-instance v0, Lcom/txznet/comm/T3/T2$5;

    invoke-direct {v0, p0, p2}, Lcom/txznet/comm/T3/T2$5;-><init>(Lcom/txznet/comm/T3/T2;Ljava/lang/Runnable;)V

    .line 751
    .local v0, "callback":Lcom/txznet/comm/T3/T2$T3;
    new-instance v1, Lcom/txznet/comm/T3/T2$6;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/txznet/comm/T3/T2$6;-><init>(Lcom/txznet/comm/T3/T2;Ljava/lang/String;Lcom/txznet/comm/T3/T2$T3;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v1}, Lcom/txznet/comm/T3/T2;->T(Lcom/txznet/comm/T3/T2$T;)V

    .line 771
    invoke-static {}, Lcom/txznet/comm/T3/T;->T3()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/txznet/comm/T3/T2$7;

    invoke-direct {v2, p0, p1, v0}, Lcom/txznet/comm/T3/T2$7;-><init>(Lcom/txznet/comm/T3/T2;Ljava/lang/String;Lcom/txznet/comm/T3/T2$T3;)V

    new-instance v3, Landroid/content/IntentFilter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".onCreateApp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 779
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v1

    const-string v2, ""

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v3, v0}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 780
    return-void
.end method

.method public T(Ljava/lang/String;[B)[B
    .locals 3
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "data"    # [B

    .prologue
    .line 721
    const-string v2, "com.txznet.txz"

    invoke-virtual {p0, v2, p1, p2}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[B)Lcom/txznet/comm/T3/T2$T2;

    move-result-object v1

    .line 722
    .local v1, "sendInvokeSync":Lcom/txznet/comm/T3/T2$T2;
    const/4 v0, 0x0

    .line 723
    .local v0, "result":[B
    if-eqz v1, :cond_0

    .line 724
    invoke-virtual {v1}, Lcom/txznet/comm/T3/T2$T2;->T3()[B

    move-result-object v0

    .line 728
    :goto_0
    return-object v0

    .line 726
    :cond_0
    const-string v2, "\u8bf7\u5148\u521d\u59cb\u5316\u8bed\u97f3\u58f0\u63a7\u5f15\u64ce"

    invoke-static {v2}, Lcom/txznet/comm/T3/T/Te;->TN(Ljava/lang/String;)I

    goto :goto_0
.end method
