.class public Lcom/T2/T/T3/T/T/TN;
.super Ljava/util/AbstractQueue;
.source "Proguard"

# interfaces
.implements Lcom/T2/T/T3/T/T/T;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/T2/T/T3/T/T/TN$T;,
        Lcom/T2/T/T3/T/T/TN$T3;,
        Lcom/T2/T/T3/T/T/TN$T2;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractQueue",
        "<TE;>;",
        "Lcom/T2/T/T3/T/T/T",
        "<TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field transient T:Lcom/T2/T/T3/T/T/TN$T2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/T2/T/T3/T/T/TN$T2",
            "<TE;>;"
        }
    .end annotation
.end field

.field final T2:Ljava/util/concurrent/locks/ReentrantLock;

.field transient T3:Lcom/T2/T/T3/T/T/TN$T2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/T2/T/T3/T/T/TN$T2",
            "<TE;>;"
        }
    .end annotation
.end field

.field private transient TN:I

.field private final Te:I

.field private final Tw:Ljava/util/concurrent/locks/Condition;

.field private final Ty:Ljava/util/concurrent/locks/Condition;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 140
    .local p0, "this":Lcom/T2/T/T3/T/T/TN;, "Lcom/T2/T/T3/T/T/TN<TE;>;"
    const v0, 0x7fffffff

    invoke-direct {p0, v0}, Lcom/T2/T/T3/T/T/TN;-><init>(I)V

    .line 141
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "capacity"    # I

    .prologue
    .line 149
    .local p0, "this":Lcom/T2/T/T3/T/T/TN;, "Lcom/T2/T/T3/T/T/TN<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 127
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/T2/T/T3/T/T/TN;->T2:Ljava/util/concurrent/locks/ReentrantLock;

    .line 130
    iget-object v0, p0, Lcom/T2/T/T3/T/T/TN;->T2:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/T2/T/T3/T/T/TN;->Tw:Ljava/util/concurrent/locks/Condition;

    .line 133
    iget-object v0, p0, Lcom/T2/T/T3/T/T/TN;->T2:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/T2/T/T3/T/T/TN;->Ty:Ljava/util/concurrent/locks/Condition;

    .line 150
    if-gtz p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 151
    :cond_0
    iput p1, p0, Lcom/T2/T/T3/T/T/TN;->Te:I

    .line 152
    return-void
.end method

.method private T2(Lcom/T2/T/T3/T/T/TN$T2;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/T2/T/T3/T/T/TN$T2",
            "<TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 207
    .local p0, "this":Lcom/T2/T/T3/T/T/TN;, "Lcom/T2/T/T3/T/T/TN<TE;>;"
    .local p1, "node":Lcom/T2/T/T3/T/T/TN$T2;, "Lcom/T2/T/T3/T/T/TN$T2<TE;>;"
    iget v1, p0, Lcom/T2/T/T3/T/T/TN;->TN:I

    iget v2, p0, Lcom/T2/T/T3/T/T/TN;->Te:I

    if-lt v1, v2, :cond_0

    .line 208
    const/4 v1, 0x0

    .line 218
    :goto_0
    return v1

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/T2/T/T3/T/T/TN;->T3:Lcom/T2/T/T3/T/T/TN$T2;

    .line 210
    .local v0, "l":Lcom/T2/T/T3/T/T/TN$T2;, "Lcom/T2/T/T3/T/T/TN$T2<TE;>;"
    iput-object v0, p1, Lcom/T2/T/T3/T/T/TN$T2;->T3:Lcom/T2/T/T3/T/T/TN$T2;

    .line 211
    iput-object p1, p0, Lcom/T2/T/T3/T/T/TN;->T3:Lcom/T2/T/T3/T/T/TN$T2;

    .line 212
    iget-object v1, p0, Lcom/T2/T/T3/T/T/TN;->T:Lcom/T2/T/T3/T/T/TN$T2;

    if-nez v1, :cond_1

    .line 213
    iput-object p1, p0, Lcom/T2/T/T3/T/T/TN;->T:Lcom/T2/T/T3/T/T/TN$T2;

    .line 216
    :goto_1
    iget v1, p0, Lcom/T2/T/T3/T/T/TN;->TN:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/T2/T/T3/T/T/TN;->TN:I

    .line 217
    iget-object v1, p0, Lcom/T2/T/T3/T/T/TN;->Tw:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 218
    const/4 v1, 0x1

    goto :goto_0

    .line 215
    :cond_1
    iput-object p1, v0, Lcom/T2/T/T3/T/T/TN$T2;->T2:Lcom/T2/T/T3/T/T/TN$T2;

    goto :goto_1
.end method

.method private T3(Lcom/T2/T/T3/T/T/TN$T2;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/T2/T/T3/T/T/TN$T2",
            "<TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 188
    .local p0, "this":Lcom/T2/T/T3/T/T/TN;, "Lcom/T2/T/T3/T/T/TN<TE;>;"
    .local p1, "node":Lcom/T2/T/T3/T/T/TN$T2;, "Lcom/T2/T/T3/T/T/TN$T2<TE;>;"
    iget v1, p0, Lcom/T2/T/T3/T/T/TN;->TN:I

    iget v2, p0, Lcom/T2/T/T3/T/T/TN;->Te:I

    if-lt v1, v2, :cond_0

    .line 189
    const/4 v1, 0x0

    .line 199
    :goto_0
    return v1

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/T2/T/T3/T/T/TN;->T:Lcom/T2/T/T3/T/T/TN$T2;

    .line 191
    .local v0, "f":Lcom/T2/T/T3/T/T/TN$T2;, "Lcom/T2/T/T3/T/T/TN$T2<TE;>;"
    iput-object v0, p1, Lcom/T2/T/T3/T/T/TN$T2;->T2:Lcom/T2/T/T3/T/T/TN$T2;

    .line 192
    iput-object p1, p0, Lcom/T2/T/T3/T/T/TN;->T:Lcom/T2/T/T3/T/T/TN$T2;

    .line 193
    iget-object v1, p0, Lcom/T2/T/T3/T/T/TN;->T3:Lcom/T2/T/T3/T/T/TN$T2;

    if-nez v1, :cond_1

    .line 194
    iput-object p1, p0, Lcom/T2/T/T3/T/T/TN;->T3:Lcom/T2/T/T3/T/T/TN$T2;

    .line 197
    :goto_1
    iget v1, p0, Lcom/T2/T/T3/T/T/TN;->TN:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/T2/T/T3/T/T/TN;->TN:I

    .line 198
    iget-object v1, p0, Lcom/T2/T/T3/T/T/TN;->Tw:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 199
    const/4 v1, 0x1

    goto :goto_0

    .line 196
    :cond_1
    iput-object p1, v0, Lcom/T2/T/T3/T/T/TN$T2;->T3:Lcom/T2/T/T3/T/T/TN$T2;

    goto :goto_1
.end method

.method private Tw()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/T2/T/T3/T/T/TN;, "Lcom/T2/T/T3/T/T/TN<TE;>;"
    const/4 v3, 0x0

    .line 226
    iget-object v0, p0, Lcom/T2/T/T3/T/T/TN;->T:Lcom/T2/T/T3/T/T/TN$T2;

    .line 227
    .local v0, "f":Lcom/T2/T/T3/T/T/TN$T2;, "Lcom/T2/T/T3/T/T/TN$T2<TE;>;"
    if-nez v0, :cond_0

    move-object v1, v3

    .line 240
    :goto_0
    return-object v1

    .line 229
    :cond_0
    iget-object v2, v0, Lcom/T2/T/T3/T/T/TN$T2;->T2:Lcom/T2/T/T3/T/T/TN$T2;

    .line 230
    .local v2, "n":Lcom/T2/T/T3/T/T/TN$T2;, "Lcom/T2/T/T3/T/T/TN$T2<TE;>;"
    iget-object v1, v0, Lcom/T2/T/T3/T/T/TN$T2;->T:Ljava/lang/Object;

    .line 231
    .local v1, "item":Ljava/lang/Object;, "TE;"
    iput-object v3, v0, Lcom/T2/T/T3/T/T/TN$T2;->T:Ljava/lang/Object;

    .line 232
    iput-object v0, v0, Lcom/T2/T/T3/T/T/TN$T2;->T2:Lcom/T2/T/T3/T/T/TN$T2;

    .line 233
    iput-object v2, p0, Lcom/T2/T/T3/T/T/TN;->T:Lcom/T2/T/T3/T/T/TN$T2;

    .line 234
    if-nez v2, :cond_1

    .line 235
    iput-object v3, p0, Lcom/T2/T/T3/T/T/TN;->T3:Lcom/T2/T/T3/T/T/TN$T2;

    .line 238
    :goto_1
    iget v3, p0, Lcom/T2/T/T3/T/T/TN;->TN:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/T2/T/T3/T/T/TN;->TN:I

    .line 239
    iget-object v3, p0, Lcom/T2/T/T3/T/T/TN;->Ty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Condition;->signal()V

    goto :goto_0

    .line 237
    :cond_1
    iput-object v3, v2, Lcom/T2/T/T3/T/T/TN$T2;->T3:Lcom/T2/T/T3/T/T/TN$T2;

    goto :goto_1
.end method

.method private Ty()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/T2/T/T3/T/T/TN;, "Lcom/T2/T/T3/T/T/TN<TE;>;"
    const/4 v3, 0x0

    .line 248
    iget-object v1, p0, Lcom/T2/T/T3/T/T/TN;->T3:Lcom/T2/T/T3/T/T/TN$T2;

    .line 249
    .local v1, "l":Lcom/T2/T/T3/T/T/TN$T2;, "Lcom/T2/T/T3/T/T/TN$T2<TE;>;"
    if-nez v1, :cond_0

    move-object v0, v3

    .line 262
    :goto_0
    return-object v0

    .line 251
    :cond_0
    iget-object v2, v1, Lcom/T2/T/T3/T/T/TN$T2;->T3:Lcom/T2/T/T3/T/T/TN$T2;

    .line 252
    .local v2, "p":Lcom/T2/T/T3/T/T/TN$T2;, "Lcom/T2/T/T3/T/T/TN$T2<TE;>;"
    iget-object v0, v1, Lcom/T2/T/T3/T/T/TN$T2;->T:Ljava/lang/Object;

    .line 253
    .local v0, "item":Ljava/lang/Object;, "TE;"
    iput-object v3, v1, Lcom/T2/T/T3/T/T/TN$T2;->T:Ljava/lang/Object;

    .line 254
    iput-object v1, v1, Lcom/T2/T/T3/T/T/TN$T2;->T3:Lcom/T2/T/T3/T/T/TN$T2;

    .line 255
    iput-object v2, p0, Lcom/T2/T/T3/T/T/TN;->T3:Lcom/T2/T/T3/T/T/TN$T2;

    .line 256
    if-nez v2, :cond_1

    .line 257
    iput-object v3, p0, Lcom/T2/T/T3/T/T/TN;->T:Lcom/T2/T/T3/T/T/TN$T2;

    .line 260
    :goto_1
    iget v3, p0, Lcom/T2/T/T3/T/T/TN;->TN:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/T2/T/T3/T/T/TN;->TN:I

    .line 261
    iget-object v3, p0, Lcom/T2/T/T3/T/T/TN;->Ty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Condition;->signal()V

    goto :goto_0

    .line 259
    :cond_1
    iput-object v3, v2, Lcom/T2/T/T3/T/T/TN$T2;->T2:Lcom/T2/T/T3/T/T/TN$T2;

    goto :goto_1
.end method


# virtual methods
.method public T()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 421
    .local p0, "this":Lcom/T2/T/T3/T/T/TN;, "Lcom/T2/T/T3/T/T/TN<TE;>;"
    invoke-virtual {p0}, Lcom/T2/T/T3/T/T/TN;->T3()Ljava/lang/Object;

    move-result-object v0

    .line 422
    .local v0, "x":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_0

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 423
    :cond_0
    return-object v0
.end method

.method public T(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 6
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 483
    .local p0, "this":Lcom/T2/T/T3/T/T/TN;, "Lcom/T2/T/T3/T/T/TN<TE;>;"
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v1

    .line 484
    .local v1, "nanos":J
    iget-object v0, p0, Lcom/T2/T/T3/T/T/TN;->T2:Ljava/util/concurrent/locks/ReentrantLock;

    .line 485
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 488
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/T2/T/T3/T/T/TN;->Tw()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .local v3, "x":Ljava/lang/Object;, "TE;"
    if-eqz v3, :cond_0

    .line 495
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 493
    .end local v3    # "x":Ljava/lang/Object;, "TE;"
    :goto_1
    return-object v3

    .line 489
    .restart local v3    # "x":Ljava/lang/Object;, "TE;"
    :cond_0
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-gtz v4, :cond_1

    .line 495
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 490
    const/4 v3, 0x0

    goto :goto_1

    .line 491
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/T2/T/T3/T/T/TN;->Tw:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v4, v1, v2}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v1

    goto :goto_0

    .line 494
    .end local v3    # "x":Ljava/lang/Object;, "TE;"
    :catchall_0
    move-exception v4

    .line 495
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 496
    throw v4
.end method

.method T(Lcom/T2/T/T3/T/T/TN$T2;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/T2/T/T3/T/T/TN$T2",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 270
    .local p0, "this":Lcom/T2/T/T3/T/T/TN;, "Lcom/T2/T/T3/T/T/TN<TE;>;"
    .local p1, "x":Lcom/T2/T/T3/T/T/TN$T2;, "Lcom/T2/T/T3/T/T/TN$T2<TE;>;"
    iget-object v1, p1, Lcom/T2/T/T3/T/T/TN$T2;->T3:Lcom/T2/T/T3/T/T/TN$T2;

    .line 271
    .local v1, "p":Lcom/T2/T/T3/T/T/TN$T2;, "Lcom/T2/T/T3/T/T/TN$T2<TE;>;"
    iget-object v0, p1, Lcom/T2/T/T3/T/T/TN$T2;->T2:Lcom/T2/T/T3/T/T/TN$T2;

    .line 272
    .local v0, "n":Lcom/T2/T/T3/T/T/TN$T2;, "Lcom/T2/T/T3/T/T/TN$T2<TE;>;"
    if-nez v1, :cond_0

    .line 273
    invoke-direct {p0}, Lcom/T2/T/T3/T/T/TN;->Tw()Ljava/lang/Object;

    .line 285
    :goto_0
    return-void

    .line 274
    :cond_0
    if-nez v0, :cond_1

    .line 275
    invoke-direct {p0}, Lcom/T2/T/T3/T/T/TN;->Ty()Ljava/lang/Object;

    goto :goto_0

    .line 277
    :cond_1
    iput-object v0, v1, Lcom/T2/T/T3/T/T/TN$T2;->T2:Lcom/T2/T/T3/T/T/TN$T2;

    .line 278
    iput-object v1, v0, Lcom/T2/T/T3/T/T/TN$T2;->T3:Lcom/T2/T/T3/T/T/TN$T2;

    .line 279
    const/4 v2, 0x0

    iput-object v2, p1, Lcom/T2/T/T3/T/T/TN$T2;->T:Ljava/lang/Object;

    .line 282
    iget v2, p0, Lcom/T2/T/T3/T/T/TN;->TN:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/T2/T/T3/T/T/TN;->TN:I

    .line 283
    iget-object v2, p0, Lcom/T2/T/T3/T/T/TN;->Ty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->signal()V

    goto :goto_0
.end method

.method public T(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 303
    .local p0, "this":Lcom/T2/T/T3/T/T/TN;, "Lcom/T2/T/T3/T/T/TN<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Lcom/T2/T/T3/T/T/TN;->T2(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 304
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Deque full"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 305
    :cond_0
    return-void
.end method

.method public T(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    .locals 6
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 400
    .local p0, "this":Lcom/T2/T/T3/T/T/TN;, "Lcom/T2/T/T3/T/T/TN<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-nez p1, :cond_0

    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 401
    :cond_0
    new-instance v3, Lcom/T2/T/T3/T/T/TN$T2;

    invoke-direct {v3, p1}, Lcom/T2/T/T3/T/T/TN$T2;-><init>(Ljava/lang/Object;)V

    .line 402
    .local v3, "node":Lcom/T2/T/T3/T/T/TN$T2;, "Lcom/T2/T/T3/T/T/TN$T2<TE;>;"
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v1

    .line 403
    .local v1, "nanos":J
    iget-object v0, p0, Lcom/T2/T/T3/T/T/TN;->T2:Ljava/util/concurrent/locks/ReentrantLock;

    .line 404
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 406
    :goto_0
    :try_start_0
    invoke-direct {p0, v3}, Lcom/T2/T/T3/T/T/TN;->T2(Lcom/T2/T/T3/T/T/TN$T2;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 413
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 411
    const/4 v4, 0x1

    :goto_1
    return v4

    .line 407
    :cond_1
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-gtz v4, :cond_2

    .line 413
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 408
    const/4 v4, 0x0

    goto :goto_1

    .line 409
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/T2/T/T3/T/T/TN;->Ty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v4, v1, v2}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v1

    goto :goto_0

    .line 412
    :catchall_0
    move-exception v4

    .line 413
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 414
    throw v4
.end method

.method public T2()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 456
    .local p0, "this":Lcom/T2/T/T3/T/T/TN;, "Lcom/T2/T/T3/T/T/TN<TE;>;"
    iget-object v0, p0, Lcom/T2/T/T3/T/T/TN;->T2:Ljava/util/concurrent/locks/ReentrantLock;

    .line 457
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 460
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/T2/T/T3/T/T/TN;->Tw()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .local v1, "x":Ljava/lang/Object;, "TE;"
    if-eqz v1, :cond_0

    .line 464
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 462
    return-object v1

    .line 461
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/T2/T/T3/T/T/TN;->Tw:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 463
    .end local v1    # "x":Ljava/lang/Object;, "TE;"
    :catchall_0
    move-exception v2

    .line 464
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 465
    throw v2
.end method

.method public T2(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 326
    .local p0, "this":Lcom/T2/T/T3/T/T/TN;, "Lcom/T2/T/T3/T/T/TN<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 327
    :cond_0
    new-instance v1, Lcom/T2/T/T3/T/T/TN$T2;

    invoke-direct {v1, p1}, Lcom/T2/T/T3/T/T/TN$T2;-><init>(Ljava/lang/Object;)V

    .line 328
    .local v1, "node":Lcom/T2/T/T3/T/T/TN$T2;, "Lcom/T2/T/T3/T/T/TN$T2<TE;>;"
    iget-object v0, p0, Lcom/T2/T/T3/T/T/TN;->T2:Ljava/util/concurrent/locks/ReentrantLock;

    .line 329
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 331
    :try_start_0
    invoke-direct {p0, v1}, Lcom/T2/T/T3/T/T/TN;->T2(Lcom/T2/T/T3/T/T/TN$T2;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 333
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 331
    return v2

    .line 332
    :catchall_0
    move-exception v2

    .line 333
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 334
    throw v2
.end method

.method public T3()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 436
    .local p0, "this":Lcom/T2/T/T3/T/T/TN;, "Lcom/T2/T/T3/T/T/TN<TE;>;"
    iget-object v0, p0, Lcom/T2/T/T3/T/T/TN;->T2:Ljava/util/concurrent/locks/ReentrantLock;

    .line 437
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 439
    :try_start_0
    invoke-direct {p0}, Lcom/T2/T/T3/T/T/TN;->Tw()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 441
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 439
    return-object v1

    .line 440
    :catchall_0
    move-exception v1

    .line 441
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 442
    throw v1
.end method

.method public T3(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 311
    .local p0, "this":Lcom/T2/T/T3/T/T/TN;, "Lcom/T2/T/T3/T/T/TN<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 312
    :cond_0
    new-instance v1, Lcom/T2/T/T3/T/T/TN$T2;

    invoke-direct {v1, p1}, Lcom/T2/T/T3/T/T/TN$T2;-><init>(Ljava/lang/Object;)V

    .line 313
    .local v1, "node":Lcom/T2/T/T3/T/T/TN$T2;, "Lcom/T2/T/T3/T/T/TN$T2<TE;>;"
    iget-object v0, p0, Lcom/T2/T/T3/T/T/TN;->T2:Ljava/util/concurrent/locks/ReentrantLock;

    .line 314
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 316
    :try_start_0
    invoke-direct {p0, v1}, Lcom/T2/T/T3/T/T/TN;->T3(Lcom/T2/T/T3/T/T/TN$T2;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 318
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 316
    return v2

    .line 317
    :catchall_0
    move-exception v2

    .line 318
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 319
    throw v2
.end method

.method public TN()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 521
    .local p0, "this":Lcom/T2/T/T3/T/T/TN;, "Lcom/T2/T/T3/T/T/TN<TE;>;"
    invoke-virtual {p0}, Lcom/T2/T/T3/T/T/TN;->Te()Ljava/lang/Object;

    move-result-object v0

    .line 522
    .local v0, "x":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_0

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 523
    :cond_0
    return-object v0
.end method

.method public TN(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 359
    .local p0, "this":Lcom/T2/T/T3/T/T/TN;, "Lcom/T2/T/T3/T/T/TN<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 360
    :cond_0
    new-instance v1, Lcom/T2/T/T3/T/T/TN$T2;

    invoke-direct {v1, p1}, Lcom/T2/T/T3/T/T/TN$T2;-><init>(Ljava/lang/Object;)V

    .line 361
    .local v1, "node":Lcom/T2/T/T3/T/T/TN$T2;, "Lcom/T2/T/T3/T/T/TN$T2<TE;>;"
    iget-object v0, p0, Lcom/T2/T/T3/T/T/TN;->T2:Ljava/util/concurrent/locks/ReentrantLock;

    .line 362
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 364
    :goto_0
    :try_start_0
    invoke-direct {p0, v1}, Lcom/T2/T/T3/T/T/TN;->T2(Lcom/T2/T/T3/T/T/TN$T2;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    .line 367
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 369
    return-void

    .line 365
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/T2/T/T3/T/T/TN;->Ty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 366
    :catchall_0
    move-exception v2

    .line 367
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 368
    throw v2
.end method

.method public Te()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 536
    .local p0, "this":Lcom/T2/T/T3/T/T/TN;, "Lcom/T2/T/T3/T/T/TN<TE;>;"
    iget-object v0, p0, Lcom/T2/T/T3/T/T/TN;->T2:Ljava/util/concurrent/locks/ReentrantLock;

    .line 537
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 539
    :try_start_0
    iget-object v1, p0, Lcom/T2/T/T3/T/T/TN;->T:Lcom/T2/T/T3/T/T/TN$T2;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 541
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 539
    return-object v1

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/T2/T/T3/T/T/TN;->T:Lcom/T2/T/T3/T/T/TN$T2;

    iget-object v1, v1, Lcom/T2/T/T3/T/T/TN$T2;->T:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 540
    :catchall_0
    move-exception v1

    .line 541
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 542
    throw v1
.end method

.method public Te(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/T2/T/T3/T/T/TN;, "Lcom/T2/T/T3/T/T/TN<TE;>;"
    const/4 v2, 0x0

    .line 556
    if-nez p1, :cond_0

    .line 566
    :goto_0
    return v2

    .line 557
    :cond_0
    iget-object v0, p0, Lcom/T2/T/T3/T/T/TN;->T2:Ljava/util/concurrent/locks/ReentrantLock;

    .line 558
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 560
    :try_start_0
    iget-object v1, p0, Lcom/T2/T/T3/T/T/TN;->T:Lcom/T2/T/T3/T/T/TN$T2;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v1, "p":Lcom/T2/T/T3/T/T/TN$T2;, "Lcom/T2/T/T3/T/T/TN$T2<TE;>;"
    :goto_1
    if-nez v1, :cond_1

    .line 568
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 561
    :cond_1
    :try_start_1
    iget-object v3, v1, Lcom/T2/T/T3/T/T/TN$T2;->T:Ljava/lang/Object;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 562
    invoke-virtual {p0, v1}, Lcom/T2/T/T3/T/T/TN;->T(Lcom/T2/T/T3/T/T/TN$T2;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 568
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 563
    const/4 v2, 0x1

    goto :goto_0

    .line 560
    :cond_2
    :try_start_2
    iget-object v1, v1, Lcom/T2/T/T3/T/T/TN$T2;->T2:Lcom/T2/T/T3/T/T/TN$T2;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 567
    .end local v1    # "p":Lcom/T2/T/T3/T/T/TN$T2;, "Lcom/T2/T/T3/T/T/TN$T2<TE;>;"
    :catchall_0
    move-exception v2

    .line 568
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 569
    throw v2
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 603
    .local p0, "this":Lcom/T2/T/T3/T/T/TN;, "Lcom/T2/T/T3/T/T/TN<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Lcom/T2/T/T3/T/T/TN;->T(Ljava/lang/Object;)V

    .line 604
    const/4 v0, 0x1

    return v0
.end method

.method public clear()V
    .locals 4

    .prologue
    .line 957
    .local p0, "this":Lcom/T2/T/T3/T/T/TN;, "Lcom/T2/T/T3/T/T/TN<TE;>;"
    iget-object v1, p0, Lcom/T2/T/T3/T/T/TN;->T2:Ljava/util/concurrent/locks/ReentrantLock;

    .line 958
    .local v1, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 960
    :try_start_0
    iget-object v0, p0, Lcom/T2/T/T3/T/T/TN;->T:Lcom/T2/T/T3/T/T/TN$T2;

    .local v0, "f":Lcom/T2/T/T3/T/T/TN$T2;, "Lcom/T2/T/T3/T/T/TN$T2<TE;>;"
    :goto_0
    if-nez v0, :cond_0

    .line 967
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/T2/T/T3/T/T/TN;->T3:Lcom/T2/T/T3/T/T/TN$T2;

    iput-object v3, p0, Lcom/T2/T/T3/T/T/TN;->T:Lcom/T2/T/T3/T/T/TN$T2;

    .line 968
    const/4 v3, 0x0

    iput v3, p0, Lcom/T2/T/T3/T/T/TN;->TN:I

    .line 969
    iget-object v3, p0, Lcom/T2/T/T3/T/T/TN;->Ty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 971
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 973
    return-void

    .line 961
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    iput-object v3, v0, Lcom/T2/T/T3/T/T/TN$T2;->T:Ljava/lang/Object;

    .line 962
    iget-object v2, v0, Lcom/T2/T/T3/T/T/TN$T2;->T2:Lcom/T2/T/T3/T/T/TN$T2;

    .line 963
    .local v2, "n":Lcom/T2/T/T3/T/T/TN$T2;, "Lcom/T2/T/T3/T/T/TN$T2<TE;>;"
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/T2/T/T3/T/T/TN$T2;->T3:Lcom/T2/T/T3/T/T/TN$T2;

    .line 964
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/T2/T/T3/T/T/TN$T2;->T2:Lcom/T2/T/T3/T/T/TN$T2;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 965
    move-object v0, v2

    goto :goto_0

    .line 970
    .end local v0    # "f":Lcom/T2/T/T3/T/T/TN$T2;, "Lcom/T2/T/T3/T/T/TN$T2<TE;>;"
    .end local v2    # "n":Lcom/T2/T/T3/T/T/TN$T2;, "Lcom/T2/T/T3/T/T/TN$T2<TE;>;"
    :catchall_0
    move-exception v3

    .line 971
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 972
    throw v3
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/T2/T/T3/T/T/TN;, "Lcom/T2/T/T3/T/T/TN<TE;>;"
    const/4 v2, 0x0

    .line 792
    if-nez p1, :cond_0

    .line 799
    :goto_0
    return v2

    .line 793
    :cond_0
    iget-object v0, p0, Lcom/T2/T/T3/T/T/TN;->T2:Ljava/util/concurrent/locks/ReentrantLock;

    .line 794
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 796
    :try_start_0
    iget-object v1, p0, Lcom/T2/T/T3/T/T/TN;->T:Lcom/T2/T/T3/T/T/TN$T2;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v1, "p":Lcom/T2/T/T3/T/T/TN$T2;, "Lcom/T2/T/T3/T/T/TN$T2<TE;>;"
    :goto_1
    if-nez v1, :cond_1

    .line 801
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 797
    :cond_1
    :try_start_1
    iget-object v3, v1, Lcom/T2/T/T3/T/T/TN$T2;->T:Ljava/lang/Object;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-eqz v3, :cond_2

    .line 801
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 798
    const/4 v2, 0x1

    goto :goto_0

    .line 796
    :cond_2
    :try_start_2
    iget-object v1, v1, Lcom/T2/T/T3/T/T/TN$T2;->T2:Lcom/T2/T/T3/T/T/TN$T2;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 800
    .end local v1    # "p":Lcom/T2/T/T3/T/T/TN$T2;, "Lcom/T2/T/T3/T/T/TN$T2<TE;>;"
    :catchall_0
    move-exception v2

    .line 801
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 802
    throw v2
.end method

.method public drainTo(Ljava/util/Collection;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<-TE;>;)I"
        }
    .end annotation

    .prologue
    .line 703
    .local p0, "this":Lcom/T2/T/T3/T/T/TN;, "Lcom/T2/T/T3/T/T/TN<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<-TE;>;"
    const v0, 0x7fffffff

    invoke-virtual {p0, p1, v0}, Lcom/T2/T/T3/T/T/TN;->drainTo(Ljava/util/Collection;I)I

    move-result v0

    return v0
.end method

.method public drainTo(Ljava/util/Collection;I)I
    .locals 4
    .param p2, "maxElements"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<-TE;>;I)I"
        }
    .end annotation

    .prologue
    .line 713
    .local p0, "this":Lcom/T2/T/T3/T/T/TN;, "Lcom/T2/T/T3/T/T/TN<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<-TE;>;"
    if-nez p1, :cond_0

    .line 714
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 715
    :cond_0
    if-ne p1, p0, :cond_1

    .line 716
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 717
    :cond_1
    iget-object v1, p0, Lcom/T2/T/T3/T/T/TN;->T2:Ljava/util/concurrent/locks/ReentrantLock;

    .line 718
    .local v1, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 720
    :try_start_0
    iget v3, p0, Lcom/T2/T/T3/T/T/TN;->TN:I

    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 721
    .local v2, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v2, :cond_2

    .line 727
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 725
    return v2

    .line 722
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/T2/T/T3/T/T/TN;->T:Lcom/T2/T/T3/T/T/TN$T2;

    iget-object v3, v3, Lcom/T2/T/T3/T/T/TN$T2;->T:Ljava/lang/Object;

    invoke-interface {p1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 723
    invoke-direct {p0}, Lcom/T2/T/T3/T/T/TN;->Tw()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 721
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 726
    .end local v0    # "i":I
    .end local v2    # "n":I
    :catchall_0
    move-exception v3

    .line 727
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 728
    throw v3
.end method

.method public element()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 668
    .local p0, "this":Lcom/T2/T/T3/T/T/TN;, "Lcom/T2/T/T3/T/T/TN<TE;>;"
    invoke-virtual {p0}, Lcom/T2/T/T3/T/T/TN;->TN()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 989
    .local p0, "this":Lcom/T2/T/T3/T/T/TN;, "Lcom/T2/T/T3/T/T/TN<TE;>;"
    new-instance v0, Lcom/T2/T/T3/T/T/TN$T3;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/T2/T/T3/T/T/TN$T3;-><init>(Lcom/T2/T/T3/T/T/TN;Lcom/T2/T/T3/T/T/TN$T3;)V

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 611
    .local p0, "this":Lcom/T2/T/T3/T/T/TN;, "Lcom/T2/T/T3/T/T/TN<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Lcom/T2/T/T3/T/T/TN;->T2(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    .locals 1
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 628
    .local p0, "this":Lcom/T2/T/T3/T/T/TN;, "Lcom/T2/T/T3/T/T/TN<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/T2/T/T3/T/T/TN;->T(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    return v0
.end method

.method public peek()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 672
    .local p0, "this":Lcom/T2/T/T3/T/T/TN;, "Lcom/T2/T/T3/T/T/TN<TE;>;"
    invoke-virtual {p0}, Lcom/T2/T/T3/T/T/TN;->Te()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public poll()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 646
    .local p0, "this":Lcom/T2/T/T3/T/T/TN;, "Lcom/T2/T/T3/T/T/TN<TE;>;"
    invoke-virtual {p0}, Lcom/T2/T/T3/T/T/TN;->T3()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 654
    .local p0, "this":Lcom/T2/T/T3/T/T/TN;, "Lcom/T2/T/T3/T/T/TN<TE;>;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/T2/T/T3/T/T/TN;->T(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 619
    .local p0, "this":Lcom/T2/T/T3/T/T/TN;, "Lcom/T2/T/T3/T/T/TN<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Lcom/T2/T/T3/T/T/TN;->TN(Ljava/lang/Object;)V

    .line 620
    return-void
.end method

.method public remainingCapacity()I
    .locals 3

    .prologue
    .line 687
    .local p0, "this":Lcom/T2/T/T3/T/T/TN;, "Lcom/T2/T/T3/T/T/TN<TE;>;"
    iget-object v0, p0, Lcom/T2/T/T3/T/T/TN;->T2:Ljava/util/concurrent/locks/ReentrantLock;

    .line 688
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 690
    :try_start_0
    iget v1, p0, Lcom/T2/T/T3/T/T/TN;->Te:I

    iget v2, p0, Lcom/T2/T/T3/T/T/TN;->TN:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v1, v2

    .line 692
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 690
    return v1

    .line 691
    :catchall_0
    move-exception v1

    .line 692
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 693
    throw v1
.end method

.method public remove()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 642
    .local p0, "this":Lcom/T2/T/T3/T/T/TN;, "Lcom/T2/T/T3/T/T/TN<TE;>;"
    invoke-virtual {p0}, Lcom/T2/T/T3/T/T/TN;->T()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 765
    .local p0, "this":Lcom/T2/T/T3/T/T/TN;, "Lcom/T2/T/T3/T/T/TN<TE;>;"
    invoke-virtual {p0, p1}, Lcom/T2/T/T3/T/T/TN;->Te(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 774
    .local p0, "this":Lcom/T2/T/T3/T/T/TN;, "Lcom/T2/T/T3/T/T/TN<TE;>;"
    iget-object v0, p0, Lcom/T2/T/T3/T/T/TN;->T2:Ljava/util/concurrent/locks/ReentrantLock;

    .line 775
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 777
    :try_start_0
    iget v1, p0, Lcom/T2/T/T3/T/T/TN;->TN:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 779
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 777
    return v1

    .line 778
    :catchall_0
    move-exception v1

    .line 779
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 780
    throw v1
.end method

.method public take()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 650
    .local p0, "this":Lcom/T2/T/T3/T/T/TN;, "Lcom/T2/T/T3/T/T/TN<TE;>;"
    invoke-virtual {p0}, Lcom/T2/T/T3/T/T/TN;->T2()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 6

    .prologue
    .line 860
    .local p0, "this":Lcom/T2/T/T3/T/T/TN;, "Lcom/T2/T/T3/T/T/TN<TE;>;"
    iget-object v3, p0, Lcom/T2/T/T3/T/T/TN;->T2:Ljava/util/concurrent/locks/ReentrantLock;

    .line 861
    .local v3, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 863
    :try_start_0
    iget v5, p0, Lcom/T2/T/T3/T/T/TN;->TN:I

    new-array v0, v5, [Ljava/lang/Object;

    .line 864
    .local v0, "a":[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 865
    .local v1, "k":I
    iget-object v4, p0, Lcom/T2/T/T3/T/T/TN;->T:Lcom/T2/T/T3/T/T/TN$T2;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v4, "p":Lcom/T2/T/T3/T/T/TN$T2;, "Lcom/T2/T/T3/T/T/TN$T2<TE;>;"
    move v2, v1

    .end local v1    # "k":I
    .local v2, "k":I
    :goto_0
    if-nez v4, :cond_0

    .line 869
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 867
    return-object v0

    .line 866
    :cond_0
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "k":I
    .restart local v1    # "k":I
    :try_start_1
    iget-object v5, v4, Lcom/T2/T/T3/T/T/TN$T2;->T:Ljava/lang/Object;

    aput-object v5, v0, v2

    .line 865
    iget-object v4, v4, Lcom/T2/T/T3/T/T/TN$T2;->T2:Lcom/T2/T/T3/T/T/TN$T2;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v1

    .end local v1    # "k":I
    .restart local v2    # "k":I
    goto :goto_0

    .line 868
    .end local v0    # "a":[Ljava/lang/Object;
    .end local v2    # "k":I
    .end local v4    # "p":Lcom/T2/T/T3/T/T/TN$T2;, "Lcom/T2/T/T3/T/T/TN$T2<TE;>;"
    :catchall_0
    move-exception v5

    .line 869
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 870
    throw v5
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 7
    .param p1, "a"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 911
    .local p0, "this":Lcom/T2/T/T3/T/T/TN;, "Lcom/T2/T/T3/T/T/TN<TE;>;"
    iget-object v3, p0, Lcom/T2/T/T3/T/T/TN;->T2:Ljava/util/concurrent/locks/ReentrantLock;

    .line 912
    .local v3, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 914
    :try_start_0
    array-length v5, p1

    iget v6, p0, Lcom/T2/T/T3/T/T/TN;->TN:I

    if-ge v5, v6, :cond_0

    .line 916
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v5

    iget v6, p0, Lcom/T2/T/T3/T/T/TN;->TN:I

    .line 915
    invoke-static {v5, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, [Ljava/lang/Object;

    move-object p1, v0

    .line 918
    :cond_0
    const/4 v1, 0x0

    .line 919
    .local v1, "k":I
    iget-object v4, p0, Lcom/T2/T/T3/T/T/TN;->T:Lcom/T2/T/T3/T/T/TN$T2;

    .local v4, "p":Lcom/T2/T/T3/T/T/TN$T2;, "Lcom/T2/T/T3/T/T/TN$T2<TE;>;"
    move v2, v1

    .end local v1    # "k":I
    .local v2, "k":I
    :goto_0
    if-nez v4, :cond_2

    .line 921
    array-length v5, p1

    if-le v5, v2, :cond_1

    .line 922
    const/4 v5, 0x0

    aput-object v5, p1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 925
    :cond_1
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 923
    return-object p1

    .line 920
    :cond_2
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "k":I
    .restart local v1    # "k":I
    :try_start_1
    iget-object v5, v4, Lcom/T2/T/T3/T/T/TN$T2;->T:Ljava/lang/Object;

    aput-object v5, p1, v2

    .line 919
    iget-object v4, v4, Lcom/T2/T/T3/T/T/TN$T2;->T2:Lcom/T2/T/T3/T/T/TN$T2;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v1

    .end local v1    # "k":I
    .restart local v2    # "k":I
    goto :goto_0

    .line 924
    .end local v2    # "k":I
    .end local v4    # "p":Lcom/T2/T/T3/T/T/TN$T2;, "Lcom/T2/T/T3/T/T/TN$T2<TE;>;"
    :catchall_0
    move-exception v5

    .line 925
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 926
    throw v5
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 930
    .local p0, "this":Lcom/T2/T/T3/T/T/TN;, "Lcom/T2/T/T3/T/T/TN<TE;>;"
    iget-object v1, p0, Lcom/T2/T/T3/T/T/TN;->T2:Ljava/util/concurrent/locks/ReentrantLock;

    .line 931
    .local v1, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 933
    :try_start_0
    iget-object v2, p0, Lcom/T2/T/T3/T/T/TN;->T:Lcom/T2/T/T3/T/T/TN$T2;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 934
    .local v2, "p":Lcom/T2/T/T3/T/T/TN$T2;, "Lcom/T2/T/T3/T/T/TN$T2<TE;>;"
    if-nez v2, :cond_0

    .line 948
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 935
    const-string v4, "[]"

    .line 944
    :goto_0
    return-object v4

    .line 937
    :cond_0
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 938
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/16 v4, 0x5b

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 940
    :goto_1
    iget-object v0, v2, Lcom/T2/T/T3/T/T/TN$T2;->T:Ljava/lang/Object;

    .line 941
    .local v0, "e":Ljava/lang/Object;, "TE;"
    if-ne v0, p0, :cond_1

    const-string v0, "(this Collection)"

    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    :cond_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 942
    iget-object v2, v2, Lcom/T2/T/T3/T/T/TN$T2;->T2:Lcom/T2/T/T3/T/T/TN$T2;

    .line 943
    if-nez v2, :cond_2

    .line 944
    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 948
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 945
    :cond_2
    const/16 v4, 0x2c

    :try_start_2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 947
    .end local v2    # "p":Lcom/T2/T/T3/T/T/TN$T2;, "Lcom/T2/T/T3/T/T/TN$T2<TE;>;"
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v4

    .line 948
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 949
    throw v4
.end method
