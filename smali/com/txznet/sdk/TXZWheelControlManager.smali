.class public Lcom/txznet/sdk/TXZWheelControlManager;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txznet/sdk/TXZWheelControlManager$OnConnectionStatusLinstener;,
        Lcom/txznet/sdk/TXZWheelControlManager$OnTXZGlobalWheelControlListener;,
        Lcom/txznet/sdk/TXZWheelControlManager$OnTXZWheelControlListener;
    }
.end annotation


# static fields
.field private static final T:Lcom/txznet/sdk/TXZWheelControlManager;


# instance fields
.field private T2:Z

.field private T3:Ljava/lang/Boolean;

.field private TN:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/txznet/sdk/TXZWheelControlManager$OnTXZWheelControlListener;",
            ">;"
        }
    .end annotation
.end field

.field private Te:J

.field private Tn:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private Tw:Lcom/txznet/sdk/TXZWheelControlManager$OnConnectionStatusLinstener;

.field private Ty:Lcom/txznet/sdk/TXZWheelControlManager$OnTXZGlobalWheelControlListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/txznet/sdk/TXZWheelControlManager;

    invoke-direct {v0}, Lcom/txznet/sdk/TXZWheelControlManager;-><init>()V

    sput-object v0, Lcom/txznet/sdk/TXZWheelControlManager;->T:Lcom/txznet/sdk/TXZWheelControlManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/txznet/sdk/TXZWheelControlManager;->T3:Ljava/lang/Boolean;

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/txznet/sdk/TXZWheelControlManager;->T2:Z

    .line 36
    return-void
.end method

.method private T(I)Z
    .locals 2
    .param p1, "eventId"    # I

    .prologue
    .line 110
    iget-object v0, p0, Lcom/txznet/sdk/TXZWheelControlManager;->Ty:Lcom/txznet/sdk/TXZWheelControlManager$OnTXZGlobalWheelControlListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/txznet/sdk/TXZWheelControlManager;->Tn:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    :cond_0
    const/4 v0, 0x0

    .line 118
    :goto_0
    return v0

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/txznet/sdk/TXZWheelControlManager;->Tn:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 116
    iget-object v0, p0, Lcom/txznet/sdk/TXZWheelControlManager;->Ty:Lcom/txznet/sdk/TXZWheelControlManager$OnTXZGlobalWheelControlListener;

    invoke-interface {v0, p1}, Lcom/txznet/sdk/TXZWheelControlManager$OnTXZGlobalWheelControlListener;->onKeyEvent(I)V

    .line 118
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getInstance()Lcom/txznet/sdk/TXZWheelControlManager;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/txznet/sdk/TXZWheelControlManager;->T:Lcom/txznet/sdk/TXZWheelControlManager;

    return-object v0
.end method


# virtual methods
.method T()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 44
    iget-object v1, p0, Lcom/txznet/sdk/TXZWheelControlManager;->T3:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 45
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v1

    const-string v2, "com.txznet.txz"

    const-string v3, "comm.wheelcontrol.enable"

    iget-object v4, p0, Lcom/txznet/sdk/TXZWheelControlManager;->T3:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4, v7}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 48
    :cond_0
    iget-object v1, p0, Lcom/txznet/sdk/TXZWheelControlManager;->Tw:Lcom/txznet/sdk/TXZWheelControlManager$OnConnectionStatusLinstener;

    if-eqz v1, :cond_1

    .line 49
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v1

    const-string v2, "com.txznet.txz"

    const-string v3, "comm.wheelcontrol.connectionstatus"

    invoke-virtual {v1, v2, v3, v7, v7}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 52
    :cond_1
    iget-object v1, p0, Lcom/txznet/sdk/TXZWheelControlManager;->TN:Ljava/util/LinkedList;

    if-eqz v1, :cond_2

    .line 53
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v1

    const-string v2, "com.txznet.txz"

    const-string v3, "comm.wheelcontrol.setlistener"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/txznet/sdk/TXZWheelControlManager;->Te:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4, v7}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 56
    :cond_2
    iget-object v1, p0, Lcom/txznet/sdk/TXZWheelControlManager;->Ty:Lcom/txznet/sdk/TXZWheelControlManager$OnTXZGlobalWheelControlListener;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/txznet/sdk/TXZWheelControlManager;->Tn:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 57
    new-instance v0, Lcom/txznet/comm/TN/T;

    invoke-direct {v0}, Lcom/txznet/comm/TN/T;-><init>()V

    .line 58
    .local v0, "jsonBuilder":Lcom/txznet/comm/TN/T;
    const-string v1, "globalevent"

    iget-object v2, p0, Lcom/txznet/sdk/TXZWheelControlManager;->Tn:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    .line 59
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v1

    const-string v2, "com.txznet.txz"

    const-string v3, "comm.wheelcontrol.setgloballistener"

    invoke-virtual {v0}, Lcom/txznet/comm/TN/T;->T2()[B

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4, v7}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 61
    .end local v0    # "jsonBuilder":Lcom/txznet/comm/TN/T;
    :cond_3
    return-void
.end method

.method public enableWheelControl(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    .line 128
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/txznet/sdk/TXZWheelControlManager;->T3:Ljava/lang/Boolean;

    .line 129
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "comm.wheelcontrol.enable"

    iget-object v3, p0, Lcom/txznet/sdk/TXZWheelControlManager;->T3:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 130
    return-void
.end method

.method public isWheelControlConnected()Z
    .locals 1

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/txznet/sdk/TXZWheelControlManager;->T2:Z

    return v0
.end method

.method public notifyCallback(Ljava/lang/String;[B)[B
    .locals 7
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "data"    # [B

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 65
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WheelControl : notify callback: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I

    .line 66
    if-nez p2, :cond_1

    .line 67
    const-string v3, "WheelControl : data == null"

    invoke-static {v3}, Lcom/txznet/comm/T3/T/Te;->TN(Ljava/lang/String;)I

    .line 106
    :cond_0
    :goto_0
    return-object v6

    .line 71
    :cond_1
    const-string v3, "txz.wheelcontrol.notify.connected"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 72
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p2}, Ljava/lang/String;-><init>([B)V

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 73
    .local v0, "connected":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WheelControl : connection state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I

    .line 74
    iput-boolean v0, p0, Lcom/txznet/sdk/TXZWheelControlManager;->T2:Z

    .line 76
    iget-object v3, p0, Lcom/txznet/sdk/TXZWheelControlManager;->Tw:Lcom/txznet/sdk/TXZWheelControlManager$OnConnectionStatusLinstener;

    if-eqz v3, :cond_0

    .line 77
    iget-object v3, p0, Lcom/txznet/sdk/TXZWheelControlManager;->Tw:Lcom/txznet/sdk/TXZWheelControlManager$OnConnectionStatusLinstener;

    invoke-interface {v3, v0}, Lcom/txznet/sdk/TXZWheelControlManager$OnConnectionStatusLinstener;->isConnected(Z)V

    goto :goto_0

    .line 82
    .end local v0    # "connected":Z
    :cond_2
    const-string v3, "txz.wheelcontrol.notify.event"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 83
    new-instance v2, Lcom/txznet/comm/TN/T;

    invoke-direct {v2, p2}, Lcom/txznet/comm/TN/T;-><init>([B)V

    .line 84
    .local v2, "jsonBuilder":Lcom/txznet/comm/TN/T;
    if-eqz v2, :cond_0

    .line 85
    const-string v3, "evnetid"

    const-class v4, Ljava/lang/Integer;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 86
    .local v1, "eventId":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WheelControl : onKeyEvent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I

    .line 87
    if-eqz v1, :cond_0

    .line 88
    iget-object v3, p0, Lcom/txznet/sdk/TXZWheelControlManager;->TN:Ljava/util/LinkedList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/txznet/sdk/TXZWheelControlManager;->TN:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 89
    iget-object v3, p0, Lcom/txznet/sdk/TXZWheelControlManager;->TN:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/txznet/sdk/TXZWheelControlManager$OnTXZWheelControlListener;

    invoke-interface {v3, v1}, Lcom/txznet/sdk/TXZWheelControlManager$OnTXZWheelControlListener;->onKeyEvent(I)V

    goto/16 :goto_0

    .line 96
    .end local v1    # "eventId":I
    .end local v2    # "jsonBuilder":Lcom/txznet/comm/TN/T;
    :cond_3
    const-string v3, "txz.wheelcontrol.notify.globalevent"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 97
    new-instance v2, Lcom/txznet/comm/TN/T;

    invoke-direct {v2, p2}, Lcom/txznet/comm/TN/T;-><init>([B)V

    .line 98
    .restart local v2    # "jsonBuilder":Lcom/txznet/comm/TN/T;
    if-eqz v2, :cond_0

    .line 99
    const-string v3, "evnetid"

    const-class v4, Ljava/lang/Integer;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 100
    .restart local v1    # "eventId":I
    if-eqz v1, :cond_0

    .line 101
    invoke-direct {p0, v1}, Lcom/txznet/sdk/TXZWheelControlManager;->T(I)Z

    goto/16 :goto_0
.end method

.method public regGlobalEvent(I)Z
    .locals 2
    .param p1, "eventId"    # I

    .prologue
    const/4 v0, 0x0

    .line 213
    iget-object v1, p0, Lcom/txznet/sdk/TXZWheelControlManager;->Ty:Lcom/txznet/sdk/TXZWheelControlManager$OnTXZGlobalWheelControlListener;

    if-eqz v1, :cond_0

    .line 236
    :goto_0
    return v0

    .line 218
    :cond_0
    iget-object v1, p0, Lcom/txznet/sdk/TXZWheelControlManager;->Tn:Ljava/util/HashSet;

    if-nez v1, :cond_1

    .line 219
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/txznet/sdk/TXZWheelControlManager;->Tn:Ljava/util/HashSet;

    .line 221
    :cond_1
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 234
    :pswitch_1
    iget-object v0, p0, Lcom/txznet/sdk/TXZWheelControlManager;->Tn:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 221
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public registerWheelControlListener(Lcom/txznet/sdk/TXZWheelControlManager$OnTXZWheelControlListener;)V
    .locals 6
    .param p1, "listener"    # Lcom/txznet/sdk/TXZWheelControlManager$OnTXZWheelControlListener;

    .prologue
    .line 157
    if-nez p1, :cond_0

    .line 172
    :goto_0
    return-void

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/txznet/sdk/TXZWheelControlManager;->TN:Ljava/util/LinkedList;

    if-nez v0, :cond_1

    .line 162
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/txznet/sdk/TXZWheelControlManager;->TN:Ljava/util/LinkedList;

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/txznet/sdk/TXZWheelControlManager;->TN:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 166
    iget-object v0, p0, Lcom/txznet/sdk/TXZWheelControlManager;->TN:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 168
    :cond_2
    iget-object v0, p0, Lcom/txznet/sdk/TXZWheelControlManager;->TN:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 170
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/txznet/sdk/TXZWheelControlManager;->Te:J

    .line 171
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "comm.wheelcontrol.setlistener"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/txznet/sdk/TXZWheelControlManager;->Te:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    goto :goto_0
.end method

.method public removeGlobalWheelControlListener()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 265
    iput-object v3, p0, Lcom/txznet/sdk/TXZWheelControlManager;->Ty:Lcom/txznet/sdk/TXZWheelControlManager$OnTXZGlobalWheelControlListener;

    .line 266
    iput-object v3, p0, Lcom/txznet/sdk/TXZWheelControlManager;->Tn:Ljava/util/HashSet;

    .line 267
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "comm.wheelcontrol.removegloballistener"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 268
    return-void
.end method

.method public scanLEDevice(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    const/4 v3, 0x0

    .line 134
    if-eqz p1, :cond_0

    .line 135
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "comm.wheelcontrol.startlescan"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 139
    :goto_0
    return-void

    .line 137
    :cond_0
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "comm.wheelcontrol.stoplescan"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    goto :goto_0
.end method

.method public setConnectionStatusLinstener(Lcom/txznet/sdk/TXZWheelControlManager$OnConnectionStatusLinstener;)V
    .locals 4
    .param p1, "listener"    # Lcom/txznet/sdk/TXZWheelControlManager$OnConnectionStatusLinstener;

    .prologue
    const/4 v3, 0x0

    .line 142
    iput-object p1, p0, Lcom/txznet/sdk/TXZWheelControlManager;->Tw:Lcom/txznet/sdk/TXZWheelControlManager$OnConnectionStatusLinstener;

    .line 143
    if-nez p1, :cond_0

    .line 148
    :goto_0
    return-void

    .line 146
    :cond_0
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "comm.wheelcontrol.connectionstatus"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    goto :goto_0
.end method

.method public setGlobalWheelControlListener(Lcom/txznet/sdk/TXZWheelControlManager$OnTXZGlobalWheelControlListener;)Z
    .locals 6
    .param p1, "listener"    # Lcom/txznet/sdk/TXZWheelControlManager$OnTXZGlobalWheelControlListener;

    .prologue
    const/4 v1, 0x0

    .line 245
    if-nez p1, :cond_1

    .line 260
    :cond_0
    :goto_0
    return v1

    .line 248
    :cond_1
    iget-object v2, p0, Lcom/txznet/sdk/TXZWheelControlManager;->Tn:Ljava/util/HashSet;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/txznet/sdk/TXZWheelControlManager;->Tn:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 252
    iget-object v2, p0, Lcom/txznet/sdk/TXZWheelControlManager;->Ty:Lcom/txznet/sdk/TXZWheelControlManager$OnTXZGlobalWheelControlListener;

    if-nez v2, :cond_0

    .line 255
    iput-object p1, p0, Lcom/txznet/sdk/TXZWheelControlManager;->Ty:Lcom/txznet/sdk/TXZWheelControlManager$OnTXZGlobalWheelControlListener;

    .line 257
    new-instance v0, Lcom/txznet/comm/TN/T;

    invoke-direct {v0}, Lcom/txznet/comm/TN/T;-><init>()V

    .line 258
    .local v0, "jsonBuilder":Lcom/txznet/comm/TN/T;
    const-string v1, "globalevent"

    iget-object v2, p0, Lcom/txznet/sdk/TXZWheelControlManager;->Tn:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    .line 259
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v1

    const-string v2, "com.txznet.txz"

    const-string v3, "comm.wheelcontrol.setgloballistener"

    invoke-virtual {v0}, Lcom/txznet/comm/TN/T;->T2()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 260
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public unregisterWheelControlListener(Lcom/txznet/sdk/TXZWheelControlManager$OnTXZWheelControlListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/txznet/sdk/TXZWheelControlManager$OnTXZWheelControlListener;

    .prologue
    const/4 v3, 0x0

    .line 180
    if-nez p1, :cond_1

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/txznet/sdk/TXZWheelControlManager;->TN:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/txznet/sdk/TXZWheelControlManager;->TN:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/txznet/sdk/TXZWheelControlManager;->TN:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 190
    iget-object v0, p0, Lcom/txznet/sdk/TXZWheelControlManager;->TN:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "comm.wheelcontrol.removelistener"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    goto :goto_0
.end method
