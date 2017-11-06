.class Lnet/easyconn/platform/wrc/core/j;
.super Ljava/lang/Object;
.source "WrcOperator.java"


# static fields
.field private static final a:Z

.field private static d:Lnet/easyconn/platform/wrc/core/j;


# instance fields
.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/os/Handler;

.field private e:Landroid/content/Context;

.field private f:Lnet/easyconn/platform/wrc/core/b;

.field private g:Z

.field private h:Lnet/easyconn/platform/wrc/core/WrcDevice;

.field private i:Lnet/easyconn/platform/wrc/core/b/b;

.field private j:Lnet/easyconn/platform/wrc/core/b/a;

.field private k:Lnet/easyconn/platform/wrc/core/g;

.field private l:Lnet/easyconn/platform/wrc/core/WrcManager$ScanCallback;

.field private m:Lnet/easyconn/platform/wrc/core/WrcManager$WrcCallback;

.field private n:Lnet/easyconn/platform/wrc/core/WrcManager$OtaCallback;

.field private o:Lnet/easyconn/platform/wrc/core/a/c;

.field private p:Lnet/easyconn/platform/wrc/core/a/a;

.field private q:Lnet/easyconn/platform/wrc/core/a/b;

.field private r:Lnet/easyconn/platform/wrc/core/g$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lnet/easyconn/platform/wrc/core/j;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    new-instance v0, Lnet/easyconn/platform/wrc/core/j$1;

    invoke-direct {v0, p0}, Lnet/easyconn/platform/wrc/core/j$1;-><init>(Lnet/easyconn/platform/wrc/core/j;)V

    iput-object v0, p0, Lnet/easyconn/platform/wrc/core/j;->o:Lnet/easyconn/platform/wrc/core/a/c;

    .line 279
    new-instance v0, Lnet/easyconn/platform/wrc/core/j$2;

    invoke-direct {v0, p0}, Lnet/easyconn/platform/wrc/core/j$2;-><init>(Lnet/easyconn/platform/wrc/core/j;)V

    iput-object v0, p0, Lnet/easyconn/platform/wrc/core/j;->p:Lnet/easyconn/platform/wrc/core/a/a;

    .line 413
    new-instance v0, Lnet/easyconn/platform/wrc/core/j$3;

    invoke-direct {v0, p0}, Lnet/easyconn/platform/wrc/core/j$3;-><init>(Lnet/easyconn/platform/wrc/core/j;)V

    iput-object v0, p0, Lnet/easyconn/platform/wrc/core/j;->q:Lnet/easyconn/platform/wrc/core/a/b;

    .line 445
    new-instance v0, Lnet/easyconn/platform/wrc/core/j$4;

    invoke-direct {v0, p0}, Lnet/easyconn/platform/wrc/core/j$4;-><init>(Lnet/easyconn/platform/wrc/core/j;)V

    iput-object v0, p0, Lnet/easyconn/platform/wrc/core/j;->r:Lnet/easyconn/platform/wrc/core/g$b;

    .line 39
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/j;->c:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lnet/easyconn/platform/wrc/core/j;->c:Landroid/os/Handler;

    .line 42
    :cond_0
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/j;->b:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/easyconn/platform/wrc/core/j;->b:Ljava/util/Map;

    .line 45
    :cond_1
    return-void
.end method

.method static synthetic a(Lnet/easyconn/platform/wrc/core/j;Lnet/easyconn/platform/wrc/core/WrcDevice;)Lnet/easyconn/platform/wrc/core/WrcDevice;
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lnet/easyconn/platform/wrc/core/j;->h:Lnet/easyconn/platform/wrc/core/WrcDevice;

    return-object p1
.end method

.method static synthetic a(Lnet/easyconn/platform/wrc/core/j;)Lnet/easyconn/platform/wrc/core/WrcManager$ScanCallback;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/j;->l:Lnet/easyconn/platform/wrc/core/WrcManager$ScanCallback;

    return-object v0
.end method

.method static a()Lnet/easyconn/platform/wrc/core/j;
    .locals 2

    .prologue
    .line 50
    sget-object v0, Lnet/easyconn/platform/wrc/core/j;->d:Lnet/easyconn/platform/wrc/core/j;

    if-nez v0, :cond_1

    .line 51
    const-class v1, Lnet/easyconn/platform/wrc/core/j;

    monitor-enter v1

    .line 52
    :try_start_0
    sget-object v0, Lnet/easyconn/platform/wrc/core/j;->d:Lnet/easyconn/platform/wrc/core/j;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lnet/easyconn/platform/wrc/core/j;

    invoke-direct {v0}, Lnet/easyconn/platform/wrc/core/j;-><init>()V

    sput-object v0, Lnet/easyconn/platform/wrc/core/j;->d:Lnet/easyconn/platform/wrc/core/j;

    .line 55
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    :cond_1
    sget-object v0, Lnet/easyconn/platform/wrc/core/j;->d:Lnet/easyconn/platform/wrc/core/j;

    return-object v0

    .line 55
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lnet/easyconn/platform/wrc/core/j;Z)Z
    .locals 0

    .prologue
    .line 27
    iput-boolean p1, p0, Lnet/easyconn/platform/wrc/core/j;->g:Z

    return p1
.end method

.method static synthetic b(Lnet/easyconn/platform/wrc/core/j;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/j;->c:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic c(Lnet/easyconn/platform/wrc/core/j;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/j;->b:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic d(Lnet/easyconn/platform/wrc/core/j;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/j;->e:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic e(Lnet/easyconn/platform/wrc/core/j;)Lnet/easyconn/platform/wrc/core/b/b;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/j;->i:Lnet/easyconn/platform/wrc/core/b/b;

    return-object v0
.end method

.method static synthetic f(Lnet/easyconn/platform/wrc/core/j;)Lnet/easyconn/platform/wrc/core/WrcManager$WrcCallback;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/j;->m:Lnet/easyconn/platform/wrc/core/WrcManager$WrcCallback;

    return-object v0
.end method

.method static synthetic g(Lnet/easyconn/platform/wrc/core/j;)Lnet/easyconn/platform/wrc/core/g;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/j;->k:Lnet/easyconn/platform/wrc/core/g;

    return-object v0
.end method

.method static synthetic h(Lnet/easyconn/platform/wrc/core/j;)Lnet/easyconn/platform/wrc/core/WrcDevice;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/j;->h:Lnet/easyconn/platform/wrc/core/WrcDevice;

    return-object v0
.end method

.method static synthetic i(Lnet/easyconn/platform/wrc/core/j;)Lnet/easyconn/platform/wrc/core/b/a;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/j;->j:Lnet/easyconn/platform/wrc/core/b/a;

    return-object v0
.end method

.method private declared-synchronized j()V
    .locals 3

    .prologue
    .line 221
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/j;->f:Lnet/easyconn/platform/wrc/core/b;

    if-nez v0, :cond_0

    .line 222
    new-instance v0, Lnet/easyconn/platform/wrc/core/b;

    invoke-direct {v0, p0}, Lnet/easyconn/platform/wrc/core/b;-><init>(Lnet/easyconn/platform/wrc/core/j;)V

    iput-object v0, p0, Lnet/easyconn/platform/wrc/core/j;->f:Lnet/easyconn/platform/wrc/core/b;

    .line 223
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 224
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 225
    iget-object v1, p0, Lnet/easyconn/platform/wrc/core/j;->e:Landroid/content/Context;

    iget-object v2, p0, Lnet/easyconn/platform/wrc/core/j;->f:Lnet/easyconn/platform/wrc/core/b;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    :cond_0
    monitor-exit p0

    return-void

    .line 221
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private k()V
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/j;->f:Lnet/easyconn/platform/wrc/core/b;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/j;->e:Landroid/content/Context;

    iget-object v1, p0, Lnet/easyconn/platform/wrc/core/j;->f:Lnet/easyconn/platform/wrc/core/b;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 233
    :cond_0
    return-void
.end method


# virtual methods
.method a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 93
    iput-object p1, p0, Lnet/easyconn/platform/wrc/core/j;->e:Landroid/content/Context;

    .line 94
    invoke-direct {p0}, Lnet/easyconn/platform/wrc/core/j;->j()V

    .line 96
    invoke-static {}, Lnet/easyconn/platform/wrc/core/g;->a()Lnet/easyconn/platform/wrc/core/g;

    move-result-object v0

    iput-object v0, p0, Lnet/easyconn/platform/wrc/core/j;->k:Lnet/easyconn/platform/wrc/core/g;

    .line 97
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/j;->k:Lnet/easyconn/platform/wrc/core/g;

    iget-object v1, p0, Lnet/easyconn/platform/wrc/core/j;->e:Landroid/content/Context;

    iget-object v2, p0, Lnet/easyconn/platform/wrc/core/j;->r:Lnet/easyconn/platform/wrc/core/g$b;

    invoke-virtual {v0, v1, p2, p3, v2}, Lnet/easyconn/platform/wrc/core/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lnet/easyconn/platform/wrc/core/g$b;)V

    .line 98
    return-void
.end method

.method a(Ljava/lang/String;Lnet/easyconn/platform/wrc/core/WrcManager$OtaCallback;)V
    .locals 0

    .prologue
    .line 181
    iput-object p2, p0, Lnet/easyconn/platform/wrc/core/j;->n:Lnet/easyconn/platform/wrc/core/WrcManager$OtaCallback;

    .line 182
    return-void
.end method

.method declared-synchronized a(Lnet/easyconn/platform/wrc/core/WrcDevice;Lnet/easyconn/platform/wrc/core/WrcManager$WrcCallback;)V
    .locals 3

    .prologue
    .line 163
    monitor-enter p0

    :try_start_0
    iput-object p2, p0, Lnet/easyconn/platform/wrc/core/j;->m:Lnet/easyconn/platform/wrc/core/WrcManager$WrcCallback;

    .line 164
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/j;->h:Lnet/easyconn/platform/wrc/core/WrcDevice;

    if-eqz v0, :cond_1

    .line 165
    const/4 v0, 0x4

    invoke-interface {p2, v0}, Lnet/easyconn/platform/wrc/core/WrcManager$WrcCallback;->onError(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 168
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lnet/easyconn/platform/wrc/core/j;->g:Z

    if-nez v0, :cond_0

    .line 171
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/easyconn/platform/wrc/core/j;->g:Z

    .line 173
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/j;->j:Lnet/easyconn/platform/wrc/core/b/a;

    if-nez v0, :cond_2

    .line 174
    invoke-static {}, Lnet/easyconn/platform/wrc/core/h;->a()Lnet/easyconn/platform/wrc/core/h;

    move-result-object v0

    iput-object v0, p0, Lnet/easyconn/platform/wrc/core/j;->j:Lnet/easyconn/platform/wrc/core/b/a;

    .line 177
    :cond_2
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/j;->j:Lnet/easyconn/platform/wrc/core/b/a;

    iget-object v1, p0, Lnet/easyconn/platform/wrc/core/j;->e:Landroid/content/Context;

    iget-object v2, p0, Lnet/easyconn/platform/wrc/core/j;->p:Lnet/easyconn/platform/wrc/core/a/a;

    invoke-interface {v0, v1, p1, v2}, Lnet/easyconn/platform/wrc/core/b/a;->a(Landroid/content/Context;Lnet/easyconn/platform/wrc/core/WrcDevice;Lnet/easyconn/platform/wrc/core/a/a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 163
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method a(Lnet/easyconn/platform/wrc/core/WrcManager$ScanCallback;)V
    .locals 2

    .prologue
    .line 137
    iput-object p1, p0, Lnet/easyconn/platform/wrc/core/j;->l:Lnet/easyconn/platform/wrc/core/WrcManager$ScanCallback;

    .line 138
    if-eqz p1, :cond_0

    .line 139
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/j;->k:Lnet/easyconn/platform/wrc/core/g;

    invoke-interface {p1}, Lnet/easyconn/platform/wrc/core/WrcManager$ScanCallback;->getUuidFilter()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/easyconn/platform/wrc/core/g;->a(Ljava/util/List;)V

    .line 141
    :cond_0
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/j;->b:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 142
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/j;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 144
    :cond_1
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/j;->h:Lnet/easyconn/platform/wrc/core/WrcDevice;

    if-nez v0, :cond_3

    .line 145
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/j;->e:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lnet/easyconn/platform/wrc/core/j;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 146
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/j;->i:Lnet/easyconn/platform/wrc/core/b/b;

    if-nez v0, :cond_2

    .line 147
    sget-boolean v0, Lnet/easyconn/platform/wrc/core/j;->a:Z

    if-eqz v0, :cond_4

    .line 148
    new-instance v0, Lnet/easyconn/platform/wrc/core/e;

    invoke-direct {v0}, Lnet/easyconn/platform/wrc/core/e;-><init>()V

    iput-object v0, p0, Lnet/easyconn/platform/wrc/core/j;->i:Lnet/easyconn/platform/wrc/core/b/b;

    .line 153
    :cond_2
    :goto_0
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/j;->i:Lnet/easyconn/platform/wrc/core/b/b;

    iget-object v1, p0, Lnet/easyconn/platform/wrc/core/j;->o:Lnet/easyconn/platform/wrc/core/a/c;

    invoke-interface {v0, v1}, Lnet/easyconn/platform/wrc/core/b/b;->a(Lnet/easyconn/platform/wrc/core/a/c;)V

    .line 160
    :cond_3
    :goto_1
    return-void

    .line 150
    :cond_4
    new-instance v0, Lnet/easyconn/platform/wrc/core/f;

    invoke-direct {v0}, Lnet/easyconn/platform/wrc/core/f;-><init>()V

    iput-object v0, p0, Lnet/easyconn/platform/wrc/core/j;->i:Lnet/easyconn/platform/wrc/core/b/b;

    goto :goto_0

    .line 155
    :cond_5
    if-eqz p1, :cond_3

    .line 156
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lnet/easyconn/platform/wrc/core/WrcManager$ScanCallback;->onScanError(I)V

    goto :goto_1
.end method

.method a(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 101
    invoke-static {p1}, Lnet/easyconn/platform/wrc/core/l;->a(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method b()Z
    .locals 1

    .prologue
    .line 105
    invoke-static {}, Lnet/easyconn/platform/wrc/core/l;->a()Z

    move-result v0

    return v0
.end method

.method c()V
    .locals 0

    .prologue
    .line 109
    invoke-static {}, Lnet/easyconn/platform/wrc/core/l;->b()V

    .line 110
    return-void
.end method

.method d()V
    .locals 0

    .prologue
    .line 113
    invoke-static {}, Lnet/easyconn/platform/wrc/core/l;->c()V

    .line 114
    return-void
.end method

.method e()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/j;->i:Lnet/easyconn/platform/wrc/core/b/b;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/j;->i:Lnet/easyconn/platform/wrc/core/b/b;

    invoke-interface {v0}, Lnet/easyconn/platform/wrc/core/b/b;->b()V

    .line 120
    :cond_0
    return-void
.end method

.method f()Z
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/j;->h:Lnet/easyconn/platform/wrc/core/WrcDevice;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method g()Z
    .locals 1

    .prologue
    .line 127
    iget-boolean v0, p0, Lnet/easyconn/platform/wrc/core/j;->g:Z

    return v0
.end method

.method h()V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/j;->j:Lnet/easyconn/platform/wrc/core/b/a;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/j;->j:Lnet/easyconn/platform/wrc/core/b/a;

    invoke-interface {v0}, Lnet/easyconn/platform/wrc/core/b/a;->b()V

    .line 134
    :cond_0
    return-void
.end method

.method declared-synchronized i()V
    .locals 2

    .prologue
    .line 185
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/j;->c:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/j;->c:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 188
    :cond_0
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/j;->e:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 189
    invoke-direct {p0}, Lnet/easyconn/platform/wrc/core/j;->k()V

    .line 191
    :cond_1
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/j;->i:Lnet/easyconn/platform/wrc/core/b/b;

    if-eqz v0, :cond_2

    .line 192
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/j;->i:Lnet/easyconn/platform/wrc/core/b/b;

    invoke-interface {v0}, Lnet/easyconn/platform/wrc/core/b/b;->c()V

    .line 193
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/easyconn/platform/wrc/core/j;->i:Lnet/easyconn/platform/wrc/core/b/b;

    .line 195
    :cond_2
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/j;->j:Lnet/easyconn/platform/wrc/core/b/a;

    if-eqz v0, :cond_3

    .line 196
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/j;->j:Lnet/easyconn/platform/wrc/core/b/a;

    invoke-interface {v0}, Lnet/easyconn/platform/wrc/core/b/a;->c()V

    .line 197
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/easyconn/platform/wrc/core/j;->j:Lnet/easyconn/platform/wrc/core/b/a;

    .line 199
    :cond_3
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/j;->k:Lnet/easyconn/platform/wrc/core/g;

    if-eqz v0, :cond_4

    .line 200
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/j;->k:Lnet/easyconn/platform/wrc/core/g;

    invoke-virtual {v0}, Lnet/easyconn/platform/wrc/core/g;->b()V

    .line 203
    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/easyconn/platform/wrc/core/j;->l:Lnet/easyconn/platform/wrc/core/WrcManager$ScanCallback;

    .line 204
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/easyconn/platform/wrc/core/j;->m:Lnet/easyconn/platform/wrc/core/WrcManager$WrcCallback;

    .line 205
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/easyconn/platform/wrc/core/j;->n:Lnet/easyconn/platform/wrc/core/WrcManager$OtaCallback;

    .line 206
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/easyconn/platform/wrc/core/j;->o:Lnet/easyconn/platform/wrc/core/a/c;

    .line 207
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/easyconn/platform/wrc/core/j;->p:Lnet/easyconn/platform/wrc/core/a/a;

    .line 208
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/easyconn/platform/wrc/core/j;->q:Lnet/easyconn/platform/wrc/core/a/b;

    .line 209
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/easyconn/platform/wrc/core/j;->g:Z

    .line 210
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/easyconn/platform/wrc/core/j;->h:Lnet/easyconn/platform/wrc/core/WrcDevice;

    .line 212
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/j;->b:Ljava/util/Map;

    if-eqz v0, :cond_5

    .line 213
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/j;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 214
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/easyconn/platform/wrc/core/j;->b:Ljava/util/Map;

    .line 217
    :cond_5
    const/4 v0, 0x0

    sput-object v0, Lnet/easyconn/platform/wrc/core/j;->d:Lnet/easyconn/platform/wrc/core/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    monitor-exit p0

    return-void

    .line 185
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
