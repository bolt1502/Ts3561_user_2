.class public Lcom/txznet/sdk/TXZNetDataProvider;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txznet/sdk/TXZNetDataProvider$T;,
        Lcom/txznet/sdk/TXZNetDataProvider$NetDataCallback;
    }
.end annotation


# static fields
.field private static T:Lcom/txznet/sdk/TXZNetDataProvider;


# instance fields
.field private T3:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/txznet/sdk/TXZNetDataProvider$T;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/txznet/sdk/TXZNetDataProvider;->T3:Ljava/util/Map;

    .line 21
    return-void
.end method

.method static synthetic T(Lcom/txznet/sdk/TXZNetDataProvider;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/txznet/sdk/TXZNetDataProvider;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/txznet/sdk/TXZNetDataProvider;->T3:Ljava/util/Map;

    return-object v0
.end method

.method public static getInstance()Lcom/txznet/sdk/TXZNetDataProvider;
    .locals 2

    .prologue
    .line 24
    sget-object v0, Lcom/txznet/sdk/TXZNetDataProvider;->T:Lcom/txznet/sdk/TXZNetDataProvider;

    if-nez v0, :cond_1

    .line 25
    const-class v1, Lcom/txznet/sdk/TXZNetDataProvider;

    monitor-enter v1

    .line 26
    :try_start_0
    sget-object v0, Lcom/txznet/sdk/TXZNetDataProvider;->T:Lcom/txznet/sdk/TXZNetDataProvider;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/txznet/sdk/TXZNetDataProvider;

    invoke-direct {v0}, Lcom/txznet/sdk/TXZNetDataProvider;-><init>()V

    sput-object v0, Lcom/txznet/sdk/TXZNetDataProvider;->T:Lcom/txznet/sdk/TXZNetDataProvider;

    .line 29
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    :cond_1
    sget-object v0, Lcom/txznet/sdk/TXZNetDataProvider;->T:Lcom/txznet/sdk/TXZNetDataProvider;

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


# virtual methods
.method public getTrafficControlInfo(Lcom/txznet/sdk/TXZNetDataProvider$NetDataCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/txznet/sdk/TXZNetDataProvider$NetDataCallback",
            "<",
            "Lcom/txznet/sdk/bean/TrafficControlData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 106
    .local p1, "callback":Lcom/txznet/sdk/TXZNetDataProvider$NetDataCallback;, "Lcom/txznet/sdk/TXZNetDataProvider$NetDataCallback<Lcom/txznet/sdk/bean/TrafficControlData;>;"
    const-string v0, "cur"

    invoke-virtual {p0, v0, p1}, Lcom/txznet/sdk/TXZNetDataProvider;->getTrafficControlInfo(Ljava/lang/String;Lcom/txznet/sdk/TXZNetDataProvider$NetDataCallback;)V

    .line 107
    return-void
.end method

.method public getTrafficControlInfo(Ljava/lang/String;Lcom/txznet/sdk/TXZNetDataProvider$NetDataCallback;)V
    .locals 8
    .param p1, "city"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/txznet/sdk/TXZNetDataProvider$NetDataCallback",
            "<",
            "Lcom/txznet/sdk/bean/TrafficControlData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 115
    .local p2, "callback":Lcom/txznet/sdk/TXZNetDataProvider$NetDataCallback;, "Lcom/txznet/sdk/TXZNetDataProvider$NetDataCallback<Lcom/txznet/sdk/bean/TrafficControlData;>;"
    new-instance v0, Lcom/txznet/comm/TN/T;

    invoke-direct {v0}, Lcom/txznet/comm/TN/T;-><init>()V

    .line 116
    .local v0, "doc":Lcom/txznet/comm/TN/T;
    const-string v3, "city"

    invoke-virtual {v0, v3, p1}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    .line 117
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v3

    const-string v4, "com.txznet.txz"

    const-string v5, "comm.netdata.req.traffic"

    invoke-virtual {v0}, Lcom/txznet/comm/TN/T;->T2()[B

    move-result-object v6

    new-instance v7, Lcom/txznet/sdk/TXZNetDataProvider$2;

    invoke-direct {v7, p0, p2}, Lcom/txznet/sdk/TXZNetDataProvider$2;-><init>(Lcom/txznet/sdk/TXZNetDataProvider;Lcom/txznet/sdk/TXZNetDataProvider$NetDataCallback;)V

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    move-result v1

    .line 139
    .local v1, "localTaskId":I
    if-eqz p2, :cond_0

    .line 140
    iget-object v4, p0, Lcom/txznet/sdk/TXZNetDataProvider;->T3:Ljava/util/Map;

    monitor-enter v4

    .line 141
    :try_start_0
    new-instance v2, Lcom/txznet/sdk/TXZNetDataProvider$T;

    invoke-direct {v2}, Lcom/txznet/sdk/TXZNetDataProvider$T;-><init>()V

    .line 142
    .local v2, "remoteTask":Lcom/txznet/sdk/TXZNetDataProvider$T;
    iput-object p2, v2, Lcom/txznet/sdk/TXZNetDataProvider$T;->T3:Lcom/txznet/sdk/TXZNetDataProvider$NetDataCallback;

    .line 143
    iget-object v3, p0, Lcom/txznet/sdk/TXZNetDataProvider;->T3:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    monitor-exit v4

    .line 146
    .end local v2    # "remoteTask":Lcom/txznet/sdk/TXZNetDataProvider$T;
    :cond_0
    return-void

    .line 144
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getWeatherInfo(Lcom/txznet/sdk/TXZNetDataProvider$NetDataCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/txznet/sdk/TXZNetDataProvider$NetDataCallback",
            "<",
            "Lcom/txznet/sdk/bean/WeatherData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p1, "callback":Lcom/txznet/sdk/TXZNetDataProvider$NetDataCallback;, "Lcom/txznet/sdk/TXZNetDataProvider$NetDataCallback<Lcom/txznet/sdk/bean/WeatherData;>;"
    const-string v0, "cur"

    invoke-virtual {p0, v0, p1}, Lcom/txznet/sdk/TXZNetDataProvider;->getWeatherInfo(Ljava/lang/String;Lcom/txznet/sdk/TXZNetDataProvider$NetDataCallback;)V

    .line 58
    return-void
.end method

.method public getWeatherInfo(Ljava/lang/String;Lcom/txznet/sdk/TXZNetDataProvider$NetDataCallback;)V
    .locals 8
    .param p1, "city"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/txznet/sdk/TXZNetDataProvider$NetDataCallback",
            "<",
            "Lcom/txznet/sdk/bean/WeatherData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p2, "callback":Lcom/txznet/sdk/TXZNetDataProvider$NetDataCallback;, "Lcom/txznet/sdk/TXZNetDataProvider$NetDataCallback<Lcom/txznet/sdk/bean/WeatherData;>;"
    new-instance v0, Lcom/txznet/comm/TN/T;

    invoke-direct {v0}, Lcom/txznet/comm/TN/T;-><init>()V

    .line 69
    .local v0, "doc":Lcom/txznet/comm/TN/T;
    const-string v3, "city"

    invoke-virtual {v0, v3, p1}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    .line 70
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v3

    const-string v4, "com.txznet.txz"

    const-string v5, "comm.netdata.req.weather"

    invoke-virtual {v0}, Lcom/txznet/comm/TN/T;->T2()[B

    move-result-object v6

    new-instance v7, Lcom/txznet/sdk/TXZNetDataProvider$1;

    invoke-direct {v7, p0, p2}, Lcom/txznet/sdk/TXZNetDataProvider$1;-><init>(Lcom/txznet/sdk/TXZNetDataProvider;Lcom/txznet/sdk/TXZNetDataProvider$NetDataCallback;)V

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    move-result v1

    .line 91
    .local v1, "localTaskId":I
    if-eqz p2, :cond_0

    .line 92
    iget-object v4, p0, Lcom/txznet/sdk/TXZNetDataProvider;->T3:Ljava/util/Map;

    monitor-enter v4

    .line 93
    :try_start_0
    new-instance v2, Lcom/txznet/sdk/TXZNetDataProvider$T;

    invoke-direct {v2}, Lcom/txznet/sdk/TXZNetDataProvider$T;-><init>()V

    .line 94
    .local v2, "remoteTask":Lcom/txznet/sdk/TXZNetDataProvider$T;
    iput-object p2, v2, Lcom/txznet/sdk/TXZNetDataProvider$T;->T3:Lcom/txznet/sdk/TXZNetDataProvider$NetDataCallback;

    .line 95
    iget-object v3, p0, Lcom/txznet/sdk/TXZNetDataProvider;->T3:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    monitor-exit v4

    .line 98
    .end local v2    # "remoteTask":Lcom/txznet/sdk/TXZNetDataProvider$T;
    :cond_0
    return-void

    .line 96
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public notifyCallback(Ljava/lang/String;[B)[B
    .locals 12
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "data"    # [B

    .prologue
    .line 149
    iget-object v9, p0, Lcom/txznet/sdk/TXZNetDataProvider;->T3:Ljava/util/Map;

    monitor-enter v9

    .line 150
    :try_start_0
    iget-object v8, p0, Lcom/txznet/sdk/TXZNetDataProvider;->T3:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 151
    .local v4, "key":Ljava/lang/Integer;
    iget-object v8, p0, Lcom/txznet/sdk/TXZNetDataProvider;->T3:Ljava/util/Map;

    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/txznet/sdk/TXZNetDataProvider$T;

    .line 152
    .local v6, "remoteTask":Lcom/txznet/sdk/TXZNetDataProvider$T;
    if-eqz v6, :cond_0

    iget-object v8, v6, Lcom/txznet/sdk/TXZNetDataProvider$T;->T3:Lcom/txznet/sdk/TXZNetDataProvider$NetDataCallback;

    if-eqz v8, :cond_0

    .line 153
    new-instance v0, Lcom/txznet/comm/TN/T;

    invoke-direct {v0, p2}, Lcom/txznet/comm/TN/T;-><init>([B)V

    .line 154
    .local v0, "doc":Lcom/txznet/comm/TN/T;
    const-string v8, "rc"

    const-class v10, Ljava/lang/Integer;

    invoke-virtual {v0, v8, v10}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 155
    .local v5, "rc":I
    const-string v8, "taskId"

    const-class v10, Ljava/lang/Integer;

    invoke-virtual {v0, v8, v10}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 156
    .local v7, "remoteTaskId":I
    iget v8, v6, Lcom/txznet/sdk/TXZNetDataProvider$T;->T:I

    if-ne v8, v7, :cond_0

    .line 157
    if-nez v5, :cond_4

    .line 158
    const-string v8, "weather"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 159
    const-string v8, "data"

    const-class v10, Ljava/lang/String;

    invoke-virtual {v0, v8, v10}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 160
    .local v3, "jData":Ljava/lang/String;
    new-instance v8, Lcom/txznet/sdk/TXZNetDataProvider$3;

    invoke-direct {v8, p0, v6, v3}, Lcom/txznet/sdk/TXZNetDataProvider$3;-><init>(Lcom/txznet/sdk/TXZNetDataProvider;Lcom/txznet/sdk/TXZNetDataProvider$T;Ljava/lang/String;)V

    const-wide/16 v10, 0x0

    invoke-static {v8, v10, v11}, Lcom/txznet/T/T;->T3(Ljava/lang/Runnable;J)V

    .line 177
    .end local v3    # "jData":Ljava/lang/String;
    :cond_1
    :goto_0
    iget-object v8, p0, Lcom/txznet/sdk/TXZNetDataProvider;->T3:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    .end local v0    # "doc":Lcom/txznet/comm/TN/T;
    .end local v4    # "key":Ljava/lang/Integer;
    .end local v5    # "rc":I
    .end local v6    # "remoteTask":Lcom/txznet/sdk/TXZNetDataProvider$T;
    .end local v7    # "remoteTaskId":I
    :cond_2
    monitor-exit v9

    .line 183
    const/4 v8, 0x0

    return-object v8

    .line 165
    .restart local v0    # "doc":Lcom/txznet/comm/TN/T;
    .restart local v4    # "key":Ljava/lang/Integer;
    .restart local v5    # "rc":I
    .restart local v6    # "remoteTask":Lcom/txznet/sdk/TXZNetDataProvider$T;
    .restart local v7    # "remoteTaskId":I
    :cond_3
    const-string v8, "traffic"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 166
    const-string v8, "data"

    const-class v10, Ljava/lang/String;

    invoke-virtual {v0, v8, v10}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 167
    .restart local v3    # "jData":Ljava/lang/String;
    new-instance v8, Lcom/txznet/sdk/TXZNetDataProvider$4;

    invoke-direct {v8, p0, v6, v3}, Lcom/txznet/sdk/TXZNetDataProvider$4;-><init>(Lcom/txznet/sdk/TXZNetDataProvider;Lcom/txznet/sdk/TXZNetDataProvider$T;Ljava/lang/String;)V

    const-wide/16 v10, 0x0

    invoke-static {v8, v10, v11}, Lcom/txznet/T/T;->T3(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 182
    .end local v0    # "doc":Lcom/txznet/comm/TN/T;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "jData":Ljava/lang/String;
    .end local v4    # "key":Ljava/lang/Integer;
    .end local v5    # "rc":I
    .end local v6    # "remoteTask":Lcom/txznet/sdk/TXZNetDataProvider$T;
    .end local v7    # "remoteTaskId":I
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 174
    .restart local v0    # "doc":Lcom/txznet/comm/TN/T;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v4    # "key":Ljava/lang/Integer;
    .restart local v5    # "rc":I
    .restart local v6    # "remoteTask":Lcom/txznet/sdk/TXZNetDataProvider$T;
    .restart local v7    # "remoteTaskId":I
    :cond_4
    :try_start_1
    const-string v8, "errorCode"

    const-class v10, Ljava/lang/Integer;

    invoke-virtual {v0, v8, v10}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 175
    .local v1, "errCode":I
    iget-object v8, v6, Lcom/txznet/sdk/TXZNetDataProvider$T;->T3:Lcom/txznet/sdk/TXZNetDataProvider$NetDataCallback;

    invoke-interface {v8, v1}, Lcom/txznet/sdk/TXZNetDataProvider$NetDataCallback;->onError(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
