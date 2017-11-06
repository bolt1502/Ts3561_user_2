.class public final enum Lcom/txznet/sdk/TXZResourceManager$RecordWin$RecordStatus;
.super Ljava/lang/Enum;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txznet/sdk/TXZResourceManager$RecordWin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RecordStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/txznet/sdk/TXZResourceManager$RecordWin$RecordStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum STATUS_IDLE:Lcom/txznet/sdk/TXZResourceManager$RecordWin$RecordStatus;

.field public static final enum STATUS_RECOGONIZING:Lcom/txznet/sdk/TXZResourceManager$RecordWin$RecordStatus;

.field public static final enum STATUS_RECORDING:Lcom/txznet/sdk/TXZResourceManager$RecordWin$RecordStatus;

.field private static final synthetic T:[Lcom/txznet/sdk/TXZResourceManager$RecordWin$RecordStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 425
    new-instance v0, Lcom/txznet/sdk/TXZResourceManager$RecordWin$RecordStatus;

    const-string v1, "STATUS_IDLE"

    invoke-direct {v0, v1, v2}, Lcom/txznet/sdk/TXZResourceManager$RecordWin$RecordStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/txznet/sdk/TXZResourceManager$RecordWin$RecordStatus;->STATUS_IDLE:Lcom/txznet/sdk/TXZResourceManager$RecordWin$RecordStatus;

    .line 429
    new-instance v0, Lcom/txznet/sdk/TXZResourceManager$RecordWin$RecordStatus;

    const-string v1, "STATUS_RECORDING"

    invoke-direct {v0, v1, v3}, Lcom/txznet/sdk/TXZResourceManager$RecordWin$RecordStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/txznet/sdk/TXZResourceManager$RecordWin$RecordStatus;->STATUS_RECORDING:Lcom/txznet/sdk/TXZResourceManager$RecordWin$RecordStatus;

    .line 433
    new-instance v0, Lcom/txznet/sdk/TXZResourceManager$RecordWin$RecordStatus;

    const-string v1, "STATUS_RECOGONIZING"

    invoke-direct {v0, v1, v4}, Lcom/txznet/sdk/TXZResourceManager$RecordWin$RecordStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/txznet/sdk/TXZResourceManager$RecordWin$RecordStatus;->STATUS_RECOGONIZING:Lcom/txznet/sdk/TXZResourceManager$RecordWin$RecordStatus;

    .line 421
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/txznet/sdk/TXZResourceManager$RecordWin$RecordStatus;

    sget-object v1, Lcom/txznet/sdk/TXZResourceManager$RecordWin$RecordStatus;->STATUS_IDLE:Lcom/txznet/sdk/TXZResourceManager$RecordWin$RecordStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/txznet/sdk/TXZResourceManager$RecordWin$RecordStatus;->STATUS_RECORDING:Lcom/txznet/sdk/TXZResourceManager$RecordWin$RecordStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/txznet/sdk/TXZResourceManager$RecordWin$RecordStatus;->STATUS_RECOGONIZING:Lcom/txznet/sdk/TXZResourceManager$RecordWin$RecordStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/txznet/sdk/TXZResourceManager$RecordWin$RecordStatus;->T:[Lcom/txznet/sdk/TXZResourceManager$RecordWin$RecordStatus;

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
    .line 421
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/txznet/sdk/TXZResourceManager$RecordWin$RecordStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 421
    const-class v0, Lcom/txznet/sdk/TXZResourceManager$RecordWin$RecordStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/txznet/sdk/TXZResourceManager$RecordWin$RecordStatus;

    return-object v0
.end method

.method public static values()[Lcom/txznet/sdk/TXZResourceManager$RecordWin$RecordStatus;
    .locals 1

    .prologue
    .line 421
    sget-object v0, Lcom/txznet/sdk/TXZResourceManager$RecordWin$RecordStatus;->T:[Lcom/txznet/sdk/TXZResourceManager$RecordWin$RecordStatus;

    invoke-virtual {v0}, [Lcom/txznet/sdk/TXZResourceManager$RecordWin$RecordStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/txznet/sdk/TXZResourceManager$RecordWin$RecordStatus;

    return-object v0
.end method
