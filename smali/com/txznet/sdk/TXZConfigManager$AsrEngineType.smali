.class public final enum Lcom/txznet/sdk/TXZConfigManager$AsrEngineType;
.super Ljava/lang/Enum;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txznet/sdk/TXZConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AsrEngineType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/txznet/sdk/TXZConfigManager$AsrEngineType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ASR_IFLY:Lcom/txznet/sdk/TXZConfigManager$AsrEngineType;

.field public static final enum ASR_YUNZHISHENG:Lcom/txznet/sdk/TXZConfigManager$AsrEngineType;

.field public static final enum NONE:Lcom/txznet/sdk/TXZConfigManager$AsrEngineType;

.field private static final synthetic T:[Lcom/txznet/sdk/TXZConfigManager$AsrEngineType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 195
    new-instance v0, Lcom/txznet/sdk/TXZConfigManager$AsrEngineType;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/txznet/sdk/TXZConfigManager$AsrEngineType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/txznet/sdk/TXZConfigManager$AsrEngineType;->NONE:Lcom/txznet/sdk/TXZConfigManager$AsrEngineType;

    .line 199
    new-instance v0, Lcom/txznet/sdk/TXZConfigManager$AsrEngineType;

    const-string v1, "ASR_IFLY"

    invoke-direct {v0, v1, v3}, Lcom/txznet/sdk/TXZConfigManager$AsrEngineType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/txznet/sdk/TXZConfigManager$AsrEngineType;->ASR_IFLY:Lcom/txznet/sdk/TXZConfigManager$AsrEngineType;

    .line 203
    new-instance v0, Lcom/txznet/sdk/TXZConfigManager$AsrEngineType;

    const-string v1, "ASR_YUNZHISHENG"

    invoke-direct {v0, v1, v4}, Lcom/txznet/sdk/TXZConfigManager$AsrEngineType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/txznet/sdk/TXZConfigManager$AsrEngineType;->ASR_YUNZHISHENG:Lcom/txznet/sdk/TXZConfigManager$AsrEngineType;

    .line 191
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/txznet/sdk/TXZConfigManager$AsrEngineType;

    sget-object v1, Lcom/txznet/sdk/TXZConfigManager$AsrEngineType;->NONE:Lcom/txznet/sdk/TXZConfigManager$AsrEngineType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/txznet/sdk/TXZConfigManager$AsrEngineType;->ASR_IFLY:Lcom/txznet/sdk/TXZConfigManager$AsrEngineType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/txznet/sdk/TXZConfigManager$AsrEngineType;->ASR_YUNZHISHENG:Lcom/txznet/sdk/TXZConfigManager$AsrEngineType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/txznet/sdk/TXZConfigManager$AsrEngineType;->T:[Lcom/txznet/sdk/TXZConfigManager$AsrEngineType;

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
    .line 191
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/txznet/sdk/TXZConfigManager$AsrEngineType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 191
    const-class v0, Lcom/txznet/sdk/TXZConfigManager$AsrEngineType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/txznet/sdk/TXZConfigManager$AsrEngineType;

    return-object v0
.end method

.method public static values()[Lcom/txznet/sdk/TXZConfigManager$AsrEngineType;
    .locals 1

    .prologue
    .line 191
    sget-object v0, Lcom/txznet/sdk/TXZConfigManager$AsrEngineType;->T:[Lcom/txznet/sdk/TXZConfigManager$AsrEngineType;

    invoke-virtual {v0}, [Lcom/txznet/sdk/TXZConfigManager$AsrEngineType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/txznet/sdk/TXZConfigManager$AsrEngineType;

    return-object v0
.end method
