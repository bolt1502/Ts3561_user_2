.class Lcom/T2/T/T3/T$T;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/T2/T/T3/T;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "T"
.end annotation


# static fields
.field private static final T:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final T2:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final T3:Ljava/lang/ThreadGroup;

.field private final TN:Ljava/lang/String;

.field private final Te:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 162
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/T2/T/T3/T$T;->T:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;)V
    .locals 2
    .param p1, "threadPriority"    # I
    .param p2, "threadNamePrefix"    # Ljava/lang/String;

    .prologue
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/T2/T/T3/T$T;->T2:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 170
    iput p1, p0, Lcom/T2/T/T3/T$T;->Te:I

    .line 171
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/T2/T/T3/T$T;->T3:Ljava/lang/ThreadGroup;

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/T2/T/T3/T$T;->T:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-thread-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/T2/T/T3/T$T;->TN:Ljava/lang/String;

    .line 173
    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 6
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 177
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/T2/T/T3/T$T;->T3:Ljava/lang/ThreadGroup;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/T2/T/T3/T$T;->TN:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/T2/T/T3/T$T;->T2:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 178
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->isDaemon()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 179
    :cond_0
    iget v1, p0, Lcom/T2/T/T3/T$T;->Te:I

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 180
    return-object v0
.end method
