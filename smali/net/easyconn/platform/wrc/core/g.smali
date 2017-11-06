.class public Lnet/easyconn/platform/wrc/core/g;
.super Ljava/lang/Object;
.source "WrcCheckManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/easyconn/platform/wrc/core/g$b;,
        Lnet/easyconn/platform/wrc/core/g$a;
    }
.end annotation


# static fields
.field private static k:Lnet/easyconn/platform/wrc/core/g;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Landroid/content/BroadcastReceiver;

.field private e:Lnet/easyconn/platform/wrc/core/g$b;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation
.end field

.field private h:J

.field private i:Ljava/util/concurrent/ExecutorService;

.field private j:Ljava/util/concurrent/Semaphore;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lnet/easyconn/platform/wrc/core/g;->j:Ljava/util/concurrent/Semaphore;

    .line 58
    new-instance v0, Lnet/easyconn/platform/wrc/core/g$1;

    invoke-direct {v0, p0}, Lnet/easyconn/platform/wrc/core/g$1;-><init>(Lnet/easyconn/platform/wrc/core/g;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lnet/easyconn/platform/wrc/core/g;->i:Ljava/util/concurrent/ExecutorService;

    .line 64
    return-void
.end method

.method static synthetic a(Lnet/easyconn/platform/wrc/core/g;J)J
    .locals 0

    .prologue
    .line 29
    iput-wide p1, p0, Lnet/easyconn/platform/wrc/core/g;->h:J

    return-wide p1
.end method

.method static synthetic a(Lnet/easyconn/platform/wrc/core/g;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lnet/easyconn/platform/wrc/core/g;->f:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lnet/easyconn/platform/wrc/core/g;)Ljava/util/concurrent/Semaphore;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/g;->j:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static a()Lnet/easyconn/platform/wrc/core/g;
    .locals 2

    .prologue
    .line 69
    sget-object v0, Lnet/easyconn/platform/wrc/core/g;->k:Lnet/easyconn/platform/wrc/core/g;

    if-nez v0, :cond_1

    .line 70
    const-class v1, Lnet/easyconn/platform/wrc/core/g;

    monitor-enter v1

    .line 71
    :try_start_0
    sget-object v0, Lnet/easyconn/platform/wrc/core/g;->k:Lnet/easyconn/platform/wrc/core/g;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lnet/easyconn/platform/wrc/core/g;

    invoke-direct {v0}, Lnet/easyconn/platform/wrc/core/g;-><init>()V

    sput-object v0, Lnet/easyconn/platform/wrc/core/g;->k:Lnet/easyconn/platform/wrc/core/g;

    .line 74
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    :cond_1
    sget-object v0, Lnet/easyconn/platform/wrc/core/g;->k:Lnet/easyconn/platform/wrc/core/g;

    return-object v0

    .line 74
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(Ljava/lang/String;Ljava/util/UUID;I)V
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/g;->a:Landroid/content/Context;

    invoke-static {v0}, Lnet/easyconn/platform/wrc/core/l;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 224
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/g;->i:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/g;->i:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lnet/easyconn/platform/wrc/core/g$3;

    invoke-direct {v1, p0, p1, p3, p2}, Lnet/easyconn/platform/wrc/core/g$3;-><init>(Lnet/easyconn/platform/wrc/core/g;Ljava/lang/String;ILjava/util/UUID;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 253
    :cond_0
    return-void
.end method

.method static synthetic b(Lnet/easyconn/platform/wrc/core/g;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/g;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lnet/easyconn/platform/wrc/core/g;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/g;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lnet/easyconn/platform/wrc/core/g;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/g;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lnet/easyconn/platform/wrc/core/g;)J
    .locals 2

    .prologue
    .line 29
    iget-wide v0, p0, Lnet/easyconn/platform/wrc/core/g;->h:J

    return-wide v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/g;->a:Landroid/content/Context;

    invoke-static {v0}, Lnet/easyconn/platform/wrc/core/l;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    invoke-direct {p0}, Lnet/easyconn/platform/wrc/core/g;->g()V

    .line 144
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/g;->i:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/g;->i:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lnet/easyconn/platform/wrc/core/g$2;

    invoke-direct {v1, p0}, Lnet/easyconn/platform/wrc/core/g$2;-><init>(Lnet/easyconn/platform/wrc/core/g;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    invoke-direct {p0}, Lnet/easyconn/platform/wrc/core/g;->f()V

    goto :goto_0
.end method

.method static synthetic f(Lnet/easyconn/platform/wrc/core/g;)Lnet/easyconn/platform/wrc/core/g$b;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/g;->e:Lnet/easyconn/platform/wrc/core/g$b;

    return-object v0
.end method

.method private f()V
    .locals 4

    .prologue
    .line 256
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/g;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/g;->d:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 258
    new-instance v0, Lnet/easyconn/platform/wrc/core/g$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lnet/easyconn/platform/wrc/core/g$a;-><init>(Lnet/easyconn/platform/wrc/core/g;Lnet/easyconn/platform/wrc/core/g$1;)V

    iput-object v0, p0, Lnet/easyconn/platform/wrc/core/g;->d:Landroid/content/BroadcastReceiver;

    .line 259
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/g;->a:Landroid/content/Context;

    iget-object v1, p0, Lnet/easyconn/platform/wrc/core/g;->d:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 262
    :cond_0
    return-void
.end method

.method private g()V
    .locals 2

    .prologue
    .line 265
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/g;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/g;->d:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/g;->a:Landroid/content/Context;

    iget-object v1, p0, Lnet/easyconn/platform/wrc/core/g;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 268
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/easyconn/platform/wrc/core/g;->d:Landroid/content/BroadcastReceiver;

    .line 271
    :cond_0
    return-void
.end method

.method static synthetic g(Lnet/easyconn/platform/wrc/core/g;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lnet/easyconn/platform/wrc/core/g;->e()V

    return-void
.end method


# virtual methods
.method a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lnet/easyconn/platform/wrc/core/g$b;)V
    .locals 4

    .prologue
    .line 99
    iput-object p1, p0, Lnet/easyconn/platform/wrc/core/g;->a:Landroid/content/Context;

    .line 100
    iput-object p2, p0, Lnet/easyconn/platform/wrc/core/g;->b:Ljava/lang/String;

    .line 101
    iput-object p3, p0, Lnet/easyconn/platform/wrc/core/g;->c:Ljava/lang/String;

    .line 102
    iput-object p4, p0, Lnet/easyconn/platform/wrc/core/g;->e:Lnet/easyconn/platform/wrc/core/g$b;

    .line 104
    invoke-static {}, Lnet/easyconn/platform/wrc/core/i;->a()Lnet/easyconn/platform/wrc/core/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/easyconn/platform/wrc/core/i;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lnet/easyconn/platform/wrc/core/g;->f:Ljava/util/List;

    .line 107
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/g;->a:Landroid/content/Context;

    const-string v1, "net.easyconn.platform.wrc"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 108
    const-string v1, "time"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lnet/easyconn/platform/wrc/core/g;->h:J

    .line 109
    return-void
.end method

.method a(Ljava/lang/String;Ljava/util/UUID;)V
    .locals 3

    .prologue
    .line 122
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/g;->a:Landroid/content/Context;

    if-eqz v0, :cond_2

    .line 123
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/g;->f:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/g;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 124
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/g;->g:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/g;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 125
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/g;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/UUID;

    .line 126
    iget-object v2, p0, Lnet/easyconn/platform/wrc/core/g;->f:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/g;->e:Lnet/easyconn/platform/wrc/core/g$b;

    const/16 v2, 0x2379

    invoke-interface {v0, v2}, Lnet/easyconn/platform/wrc/core/g$b;->a(I)V

    goto :goto_0

    .line 133
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnet/easyconn/platform/wrc/core/g;->a(Ljava/lang/String;Ljava/util/UUID;I)V

    .line 135
    :cond_2
    return-void
.end method

.method a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/UUID;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 112
    iput-object p1, p0, Lnet/easyconn/platform/wrc/core/g;->g:Ljava/util/List;

    .line 114
    invoke-direct {p0}, Lnet/easyconn/platform/wrc/core/g;->e()V

    .line 115
    return-void
.end method

.method b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-direct {p0}, Lnet/easyconn/platform/wrc/core/g;->g()V

    .line 81
    iput-object v1, p0, Lnet/easyconn/platform/wrc/core/g;->a:Landroid/content/Context;

    .line 82
    iput-object v1, p0, Lnet/easyconn/platform/wrc/core/g;->e:Lnet/easyconn/platform/wrc/core/g$b;

    .line 83
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/g;->i:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/g;->i:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 85
    iput-object v1, p0, Lnet/easyconn/platform/wrc/core/g;->i:Ljava/util/concurrent/ExecutorService;

    .line 87
    :cond_0
    return-void
.end method

.method c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/g;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/g;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    :cond_0
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/g;->g:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/g;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 92
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/g;->g:Ljava/util/List;

    .line 95
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/g;->f:Ljava/util/List;

    goto :goto_0
.end method

.method d()V
    .locals 0

    .prologue
    .line 119
    return-void
.end method
