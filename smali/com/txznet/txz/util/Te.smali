.class public Lcom/txznet/txz/util/Te;
.super Ljava/lang/Object;
.source "Proguard"


# static fields
.field protected static T2:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/txznet/txz/util/Te;",
            ">;>;"
        }
    .end annotation
.end field

.field public static T3:I

.field protected static TN:J


# instance fields
.field Te:Ljava/lang/Thread;

.field Tw:Landroid/os/Handler;

.field Ty:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    const/16 v0, 0x2710

    sput v0, Lcom/txznet/txz/util/Te;->T3:I

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/txznet/txz/util/Te;->T2:Ljava/util/List;

    .line 23
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/txznet/txz/util/Te;->TN:J

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 3
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/txznet/txz/util/Te;->Ty:J

    .line 122
    invoke-virtual {p1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/txznet/txz/util/Te;->Te:Ljava/lang/Thread;

    .line 123
    new-instance v0, Lcom/txznet/txz/util/Te$1;

    invoke-direct {v0, p0, p1}, Lcom/txznet/txz/util/Te$1;-><init>(Lcom/txznet/txz/util/Te;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/txznet/txz/util/Te;->Tw:Landroid/os/Handler;

    .line 132
    sget-object v1, Lcom/txznet/txz/util/Te;->T2:Ljava/util/List;

    monitor-enter v1

    .line 133
    :try_start_0
    sget-object v0, Lcom/txznet/txz/util/Te;->T2:Ljava/util/List;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    monitor-exit v1

    .line 135
    return-void

    .line 134
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public T()V
    .locals 2

    .prologue
    .line 195
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/txznet/txz/util/Te;->Ty:J

    .line 196
    return-void
.end method

.method public T(Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 172
    return-void
.end method

.method public T(Ljava/lang/Runnable;)Z
    .locals 3
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 155
    iget-object v1, p0, Lcom/txznet/txz/util/Te;->Tw:Landroid/os/Handler;

    new-instance v2, Lcom/txznet/txz/util/Te$4;

    invoke-direct {v2, p0}, Lcom/txznet/txz/util/Te$4;-><init>(Lcom/txznet/txz/util/Te;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 161
    iget-object v1, p0, Lcom/txznet/txz/util/Te;->Tw:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    .line 162
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/txznet/txz/util/Te;->Tw:Landroid/os/Handler;

    new-instance v2, Lcom/txznet/txz/util/Te$5;

    invoke-direct {v2, p0}, Lcom/txznet/txz/util/Te$5;-><init>(Lcom/txznet/txz/util/Te;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 168
    return v0
.end method

.method public T(Ljava/lang/Runnable;J)Z
    .locals 3
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "delayMillis"    # J

    .prologue
    .line 138
    iget-object v1, p0, Lcom/txznet/txz/util/Te;->Tw:Landroid/os/Handler;

    new-instance v2, Lcom/txznet/txz/util/Te$2;

    invoke-direct {v2, p0}, Lcom/txznet/txz/util/Te$2;-><init>(Lcom/txznet/txz/util/Te;)V

    invoke-virtual {v1, v2, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 144
    iget-object v1, p0, Lcom/txznet/txz/util/Te;->Tw:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    .line 145
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/txznet/txz/util/Te;->Tw:Landroid/os/Handler;

    new-instance v2, Lcom/txznet/txz/util/Te$3;

    invoke-direct {v2, p0}, Lcom/txznet/txz/util/Te$3;-><init>(Lcom/txznet/txz/util/Te;)V

    invoke-virtual {v1, v2, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 151
    return v0
.end method

.method public T3(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 175
    iget-object v0, p0, Lcom/txznet/txz/util/Te;->Tw:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 176
    return-void
.end method
