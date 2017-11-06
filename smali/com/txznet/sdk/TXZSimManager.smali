.class public Lcom/txznet/sdk/TXZSimManager;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txznet/sdk/TXZSimManager$SimTool;
    }
.end annotation


# static fields
.field private static T:Lcom/txznet/sdk/TXZSimManager;


# instance fields
.field private T2:Z

.field private T3:Lcom/txznet/sdk/TXZSimManager$SimTool;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    new-instance v0, Lcom/txznet/sdk/TXZSimManager;

    invoke-direct {v0}, Lcom/txznet/sdk/TXZSimManager;-><init>()V

    sput-object v0, Lcom/txznet/sdk/TXZSimManager;->T:Lcom/txznet/sdk/TXZSimManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method static synthetic T(Lcom/txznet/sdk/TXZSimManager;)Lcom/txznet/sdk/TXZSimManager$SimTool;
    .locals 1
    .param p0, "x0"    # Lcom/txznet/sdk/TXZSimManager;

    .prologue
    .line 8
    iget-object v0, p0, Lcom/txznet/sdk/TXZSimManager;->T3:Lcom/txznet/sdk/TXZSimManager$SimTool;

    return-object v0
.end method

.method public static getInstance()Lcom/txznet/sdk/TXZSimManager;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/txznet/sdk/TXZSimManager;->T:Lcom/txznet/sdk/TXZSimManager;

    return-object v0
.end method


# virtual methods
.method public onReconnectTXZ()V
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/txznet/sdk/TXZSimManager;->T2:Z

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/txznet/sdk/TXZSimManager;->T3:Lcom/txznet/sdk/TXZSimManager$SimTool;

    invoke-virtual {p0, v0}, Lcom/txznet/sdk/TXZSimManager;->setSimTool(Lcom/txznet/sdk/TXZSimManager$SimTool;)V

    .line 29
    :cond_0
    return-void
.end method

.method public setSimTool(Lcom/txznet/sdk/TXZSimManager$SimTool;)V
    .locals 4
    .param p1, "tool"    # Lcom/txznet/sdk/TXZSimManager$SimTool;

    .prologue
    const/4 v3, 0x0

    .line 68
    iput-object p1, p0, Lcom/txznet/sdk/TXZSimManager;->T3:Lcom/txznet/sdk/TXZSimManager$SimTool;

    .line 70
    if-nez p1, :cond_0

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/txznet/sdk/TXZSimManager;->T2:Z

    .line 72
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.sim.tool.clear"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 100
    :goto_0
    return-void

    .line 76
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/txznet/sdk/TXZSimManager;->T2:Z

    .line 77
    const-string v0, "tool.sim."

    new-instance v1, Lcom/txznet/sdk/TXZSimManager$1;

    invoke-direct {v1, p0}, Lcom/txznet/sdk/TXZSimManager$1;-><init>(Lcom/txznet/sdk/TXZSimManager;)V

    invoke-static {v0, v1}, Lcom/txznet/sdk/TXZService;->T(Ljava/lang/String;Lcom/txznet/sdk/TXZService$T;)V

    .line 99
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.sim.tool.set"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    goto :goto_0
.end method
