.class public Lcom/txznet/comm/T/T;
.super Ljava/lang/Object;
.source "Proguard"


# static fields
.field private static T3:Lcom/txznet/comm/T/T;


# instance fields
.field private T:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/txznet/comm/T/T;->T:Ljava/util/Stack;

    .line 14
    return-void
.end method

.method public static T()Lcom/txznet/comm/T/T;
    .locals 2

    .prologue
    .line 17
    sget-object v0, Lcom/txznet/comm/T/T;->T3:Lcom/txznet/comm/T/T;

    if-nez v0, :cond_1

    .line 18
    const-class v1, Lcom/txznet/comm/T/T;

    monitor-enter v1

    .line 19
    :try_start_0
    sget-object v0, Lcom/txznet/comm/T/T;->T3:Lcom/txznet/comm/T/T;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lcom/txznet/comm/T/T;

    invoke-direct {v0}, Lcom/txznet/comm/T/T;-><init>()V

    sput-object v0, Lcom/txznet/comm/T/T;->T3:Lcom/txznet/comm/T/T;

    .line 22
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    :cond_1
    sget-object v0, Lcom/txznet/comm/T/T;->T3:Lcom/txznet/comm/T/T;

    return-object v0

    .line 22
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public T(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 28
    if-eqz p1, :cond_0

    .line 29
    iget-object v0, p0, Lcom/txznet/comm/T/T;->T:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    .line 31
    :cond_0
    return-void
.end method

.method public T2()Landroid/app/Activity;
    .locals 3

    .prologue
    .line 75
    const/4 v1, 0x0

    .line 77
    .local v1, "activity":Landroid/app/Activity;
    :try_start_0
    iget-object v2, p0, Lcom/txznet/comm/T/T;->T:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/app/Activity;

    move-object v1, v0
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :goto_0
    return-object v1

    .line 78
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public T3(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/txznet/comm/T/T;->T:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 35
    return-void
.end method

.method public T3()Z
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/txznet/comm/T/T;->T:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
