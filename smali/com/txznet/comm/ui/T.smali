.class public Lcom/txznet/comm/ui/T;
.super Ljava/lang/Object;
.source "Proguard"


# static fields
.field private static T:Lcom/txznet/comm/ui/T3;

.field private static T2:Lcom/txznet/comm/ui/Tw;

.field private static T3:Lcom/txznet/comm/ui/T2;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static T()Lcom/txznet/comm/ui/T3;
    .locals 3

    .prologue
    .line 9
    invoke-static {}, Lcom/txznet/comm/T3/T;->T3()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 10
    sget-object v0, Lcom/txznet/comm/ui/T;->T:Lcom/txznet/comm/ui/T3;

    if-nez v0, :cond_1

    .line 11
    const-class v1, Lcom/txznet/comm/ui/T;

    monitor-enter v1

    .line 12
    :try_start_0
    sget-object v0, Lcom/txznet/comm/ui/T;->T:Lcom/txznet/comm/ui/T3;

    if-nez v0, :cond_0

    .line 13
    new-instance v0, Lcom/txznet/comm/ui/T3;

    invoke-static {}, Lcom/txznet/comm/T3/T;->T3()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/txznet/comm/ui/T3;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/txznet/comm/ui/T;->T:Lcom/txznet/comm/ui/T3;

    .line 15
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    :cond_1
    sget-object v0, Lcom/txznet/comm/ui/T;->T:Lcom/txznet/comm/ui/T3;

    return-object v0

    .line 15
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static T2()Lcom/txznet/comm/ui/Tw;
    .locals 2

    .prologue
    .line 37
    sget-object v0, Lcom/txznet/comm/ui/T;->T2:Lcom/txznet/comm/ui/Tw;

    if-nez v0, :cond_1

    .line 38
    const-class v1, Lcom/txznet/comm/ui/T;

    monitor-enter v1

    .line 39
    :try_start_0
    sget-object v0, Lcom/txznet/comm/ui/T;->T2:Lcom/txznet/comm/ui/Tw;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/txznet/comm/ui/Tw;

    invoke-direct {v0}, Lcom/txznet/comm/ui/Tw;-><init>()V

    sput-object v0, Lcom/txznet/comm/ui/T;->T2:Lcom/txznet/comm/ui/Tw;

    .line 42
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    :cond_1
    sget-object v0, Lcom/txznet/comm/ui/T;->T2:Lcom/txznet/comm/ui/Tw;

    return-object v0

    .line 42
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static T3()Lcom/txznet/comm/ui/T2;
    .locals 2

    .prologue
    .line 24
    sget-object v0, Lcom/txznet/comm/ui/T;->T3:Lcom/txznet/comm/ui/T2;

    if-nez v0, :cond_1

    .line 25
    const-class v1, Lcom/txznet/comm/ui/T;

    monitor-enter v1

    .line 26
    :try_start_0
    sget-object v0, Lcom/txznet/comm/ui/T;->T3:Lcom/txznet/comm/ui/T2;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/txznet/comm/ui/T2;

    invoke-direct {v0}, Lcom/txznet/comm/ui/T2;-><init>()V

    sput-object v0, Lcom/txznet/comm/ui/T;->T3:Lcom/txznet/comm/ui/T2;

    .line 29
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    :cond_1
    sget-object v0, Lcom/txznet/comm/ui/T;->T3:Lcom/txznet/comm/ui/T2;

    return-object v0

    .line 29
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
