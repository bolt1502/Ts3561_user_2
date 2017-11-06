.class public Lcom/txznet/sdk/TXZPowerManager;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txznet/sdk/TXZPowerManager$1;,
        Lcom/txznet/sdk/TXZPowerManager$PowerAction;
    }
.end annotation


# static fields
.field static T:Ljava/lang/Boolean;

.field private static T3:Lcom/txznet/sdk/TXZPowerManager;


# instance fields
.field private T2:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/txznet/sdk/TXZPowerManager;

    invoke-direct {v0}, Lcom/txznet/sdk/TXZPowerManager;-><init>()V

    sput-object v0, Lcom/txznet/sdk/TXZPowerManager;->T3:Lcom/txznet/sdk/TXZPowerManager;

    .line 113
    const/4 v0, 0x0

    sput-object v0, Lcom/txznet/sdk/TXZPowerManager;->T:Ljava/lang/Boolean;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public static getInstance()Lcom/txznet/sdk/TXZPowerManager;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/txznet/sdk/TXZPowerManager;->T3:Lcom/txznet/sdk/TXZPowerManager;

    return-object v0
.end method


# virtual methods
.method T()V
    .locals 0

    .prologue
    .line 33
    return-void
.end method

.method T3()V
    .locals 5

    .prologue
    .line 157
    iget-object v2, p0, Lcom/txznet/sdk/TXZPowerManager;->T2:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/txznet/sdk/TXZPowerManager;->T2:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 158
    iget-object v3, p0, Lcom/txznet/sdk/TXZPowerManager;->T2:Ljava/util/List;

    monitor-enter v3

    .line 159
    :try_start_0
    iget-object v2, p0, Lcom/txznet/sdk/TXZPowerManager;->T2:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 160
    .local v0, "callback":Ljava/lang/Runnable;
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/Runnable;I)V

    goto :goto_0

    .line 163
    .end local v0    # "callback":Ljava/lang/Runnable;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 162
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/txznet/sdk/TXZPowerManager;->T2:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 163
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public notifyPowerAction(Lcom/txznet/sdk/TXZPowerManager$PowerAction;)V
    .locals 4
    .param p1, "action"    # Lcom/txznet/sdk/TXZPowerManager$PowerAction;

    .prologue
    const/4 v3, 0x0

    .line 77
    if-eqz p1, :cond_0

    .line 78
    sget-object v0, Lcom/txznet/sdk/TXZPowerManager$1;->T:[I

    invoke-virtual {p1}, Lcom/txznet/sdk/TXZPowerManager$PowerAction;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 80
    :pswitch_0
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "comm.power.BEFORE_POWER_OFF"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    goto :goto_0

    .line 84
    :pswitch_1
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "comm.power.BEFORE_SLEEP"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    goto :goto_0

    .line 88
    :pswitch_2
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "comm.power.POWER_OFF"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    goto :goto_0

    .line 92
    :pswitch_3
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "comm.power.POWER_ON"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    goto :goto_0

    .line 96
    :pswitch_4
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "comm.power.SLEEP"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    goto :goto_0

    .line 100
    :pswitch_5
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "comm.power.WAKEUP"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    goto :goto_0

    .line 104
    :pswitch_6
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "comm.power.SHOCK_WAKEUP"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    goto :goto_0

    .line 78
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public reinitTXZ()V
    .locals 3

    .prologue
    .line 132
    const-class v1, Lcom/txznet/sdk/TXZPowerManager;

    monitor-enter v1

    .line 133
    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/txznet/sdk/TXZPowerManager;->T:Ljava/lang/Boolean;

    .line 134
    const/4 v0, 0x0

    sput-boolean v0, Lcom/txznet/sdk/TXZService;->T:Z

    .line 135
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/txznet/comm/T3/T2;->Te:Z

    .line 136
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    invoke-static {}, Lcom/txznet/sdk/TXZConfigManager;->getInstance()Lcom/txznet/sdk/TXZConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txznet/sdk/TXZConfigManager;->T2()V

    .line 138
    return-void

    .line 136
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public reinitTXZ(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "onSucc"    # Ljava/lang/Runnable;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/txznet/sdk/TXZPowerManager;->T2:Ljava/util/List;

    if-nez v0, :cond_0

    .line 146
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/txznet/sdk/TXZPowerManager;->T2:Ljava/util/List;

    .line 148
    :cond_0
    iget-object v1, p0, Lcom/txznet/sdk/TXZPowerManager;->T2:Ljava/util/List;

    monitor-enter v1

    .line 149
    :try_start_0
    iget-object v0, p0, Lcom/txznet/sdk/TXZPowerManager;->T2:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    invoke-virtual {p0}, Lcom/txznet/sdk/TXZPowerManager;->reinitTXZ()V

    .line 152
    return-void

    .line 150
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public releaseTXZ()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 119
    const-class v1, Lcom/txznet/sdk/TXZPowerManager;

    monitor-enter v1

    .line 120
    :try_start_0
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/txznet/comm/T3/T2;->Te:Z

    .line 121
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txznet/comm/T3/T2;->T()V

    .line 122
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/txznet/sdk/TXZPowerManager;->T:Ljava/lang/Boolean;

    .line 123
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "comm.exitTXZ"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 126
    return-void

    .line 123
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
