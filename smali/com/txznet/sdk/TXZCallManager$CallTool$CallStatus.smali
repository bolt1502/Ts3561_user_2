.class public final enum Lcom/txznet/sdk/TXZCallManager$CallTool$CallStatus;
.super Ljava/lang/Enum;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txznet/sdk/TXZCallManager$CallTool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CallStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/txznet/sdk/TXZCallManager$CallTool$CallStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CALL_STATUS_IDLE:Lcom/txznet/sdk/TXZCallManager$CallTool$CallStatus;

.field public static final enum CALL_STATUS_OFFHOOK:Lcom/txznet/sdk/TXZCallManager$CallTool$CallStatus;

.field public static final enum CALL_STATUS_RINGING:Lcom/txznet/sdk/TXZCallManager$CallTool$CallStatus;

.field private static final synthetic T:[Lcom/txznet/sdk/TXZCallManager$CallTool$CallStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 228
    new-instance v0, Lcom/txznet/sdk/TXZCallManager$CallTool$CallStatus;

    const-string v1, "CALL_STATUS_IDLE"

    invoke-direct {v0, v1, v2}, Lcom/txznet/sdk/TXZCallManager$CallTool$CallStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/txznet/sdk/TXZCallManager$CallTool$CallStatus;->CALL_STATUS_IDLE:Lcom/txznet/sdk/TXZCallManager$CallTool$CallStatus;

    .line 232
    new-instance v0, Lcom/txznet/sdk/TXZCallManager$CallTool$CallStatus;

    const-string v1, "CALL_STATUS_RINGING"

    invoke-direct {v0, v1, v3}, Lcom/txznet/sdk/TXZCallManager$CallTool$CallStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/txznet/sdk/TXZCallManager$CallTool$CallStatus;->CALL_STATUS_RINGING:Lcom/txznet/sdk/TXZCallManager$CallTool$CallStatus;

    .line 236
    new-instance v0, Lcom/txznet/sdk/TXZCallManager$CallTool$CallStatus;

    const-string v1, "CALL_STATUS_OFFHOOK"

    invoke-direct {v0, v1, v4}, Lcom/txznet/sdk/TXZCallManager$CallTool$CallStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/txznet/sdk/TXZCallManager$CallTool$CallStatus;->CALL_STATUS_OFFHOOK:Lcom/txznet/sdk/TXZCallManager$CallTool$CallStatus;

    .line 224
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/txznet/sdk/TXZCallManager$CallTool$CallStatus;

    sget-object v1, Lcom/txznet/sdk/TXZCallManager$CallTool$CallStatus;->CALL_STATUS_IDLE:Lcom/txznet/sdk/TXZCallManager$CallTool$CallStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/txznet/sdk/TXZCallManager$CallTool$CallStatus;->CALL_STATUS_RINGING:Lcom/txznet/sdk/TXZCallManager$CallTool$CallStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/txznet/sdk/TXZCallManager$CallTool$CallStatus;->CALL_STATUS_OFFHOOK:Lcom/txznet/sdk/TXZCallManager$CallTool$CallStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/txznet/sdk/TXZCallManager$CallTool$CallStatus;->T:[Lcom/txznet/sdk/TXZCallManager$CallTool$CallStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 224
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/txznet/sdk/TXZCallManager$CallTool$CallStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 224
    const-class v0, Lcom/txznet/sdk/TXZCallManager$CallTool$CallStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/txznet/sdk/TXZCallManager$CallTool$CallStatus;

    return-object v0
.end method

.method public static values()[Lcom/txznet/sdk/TXZCallManager$CallTool$CallStatus;
    .locals 1

    .prologue
    .line 224
    sget-object v0, Lcom/txznet/sdk/TXZCallManager$CallTool$CallStatus;->T:[Lcom/txznet/sdk/TXZCallManager$CallTool$CallStatus;

    invoke-virtual {v0}, [Lcom/txznet/sdk/TXZCallManager$CallTool$CallStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/txznet/sdk/TXZCallManager$CallTool$CallStatus;

    return-object v0
.end method
