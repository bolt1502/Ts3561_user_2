.class public final enum Lcom/txznet/sdk/TXZConfigManager$AsrServiceMode;
.super Ljava/lang/Enum;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txznet/sdk/TXZConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AsrServiceMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/txznet/sdk/TXZConfigManager$AsrServiceMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ASR_SVR_MODE_AUTO:Lcom/txznet/sdk/TXZConfigManager$AsrServiceMode;

.field public static final enum ASR_SVR_MODE_LOCAL:Lcom/txznet/sdk/TXZConfigManager$AsrServiceMode;

.field public static final enum ASR_SVR_MODE_MIX:Lcom/txznet/sdk/TXZConfigManager$AsrServiceMode;

.field public static final enum ASR_SVR_MODE_NET:Lcom/txznet/sdk/TXZConfigManager$AsrServiceMode;

.field private static final synthetic T:[Lcom/txznet/sdk/TXZConfigManager$AsrServiceMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 231
    new-instance v0, Lcom/txznet/sdk/TXZConfigManager$AsrServiceMode;

    const-string v1, "ASR_SVR_MODE_MIX"

    invoke-direct {v0, v1, v2}, Lcom/txznet/sdk/TXZConfigManager$AsrServiceMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/txznet/sdk/TXZConfigManager$AsrServiceMode;->ASR_SVR_MODE_MIX:Lcom/txznet/sdk/TXZConfigManager$AsrServiceMode;

    .line 235
    new-instance v0, Lcom/txznet/sdk/TXZConfigManager$AsrServiceMode;

    const-string v1, "ASR_SVR_MODE_LOCAL"

    invoke-direct {v0, v1, v3}, Lcom/txznet/sdk/TXZConfigManager$AsrServiceMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/txznet/sdk/TXZConfigManager$AsrServiceMode;->ASR_SVR_MODE_LOCAL:Lcom/txznet/sdk/TXZConfigManager$AsrServiceMode;

    .line 239
    new-instance v0, Lcom/txznet/sdk/TXZConfigManager$AsrServiceMode;

    const-string v1, "ASR_SVR_MODE_NET"

    invoke-direct {v0, v1, v4}, Lcom/txznet/sdk/TXZConfigManager$AsrServiceMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/txznet/sdk/TXZConfigManager$AsrServiceMode;->ASR_SVR_MODE_NET:Lcom/txznet/sdk/TXZConfigManager$AsrServiceMode;

    .line 243
    new-instance v0, Lcom/txznet/sdk/TXZConfigManager$AsrServiceMode;

    const-string v1, "ASR_SVR_MODE_AUTO"

    invoke-direct {v0, v1, v5}, Lcom/txznet/sdk/TXZConfigManager$AsrServiceMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/txznet/sdk/TXZConfigManager$AsrServiceMode;->ASR_SVR_MODE_AUTO:Lcom/txznet/sdk/TXZConfigManager$AsrServiceMode;

    .line 227
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/txznet/sdk/TXZConfigManager$AsrServiceMode;

    sget-object v1, Lcom/txznet/sdk/TXZConfigManager$AsrServiceMode;->ASR_SVR_MODE_MIX:Lcom/txznet/sdk/TXZConfigManager$AsrServiceMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/txznet/sdk/TXZConfigManager$AsrServiceMode;->ASR_SVR_MODE_LOCAL:Lcom/txznet/sdk/TXZConfigManager$AsrServiceMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/txznet/sdk/TXZConfigManager$AsrServiceMode;->ASR_SVR_MODE_NET:Lcom/txznet/sdk/TXZConfigManager$AsrServiceMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/txznet/sdk/TXZConfigManager$AsrServiceMode;->ASR_SVR_MODE_AUTO:Lcom/txznet/sdk/TXZConfigManager$AsrServiceMode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/txznet/sdk/TXZConfigManager$AsrServiceMode;->T:[Lcom/txznet/sdk/TXZConfigManager$AsrServiceMode;

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
    .line 227
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/txznet/sdk/TXZConfigManager$AsrServiceMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 227
    const-class v0, Lcom/txznet/sdk/TXZConfigManager$AsrServiceMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/txznet/sdk/TXZConfigManager$AsrServiceMode;

    return-object v0
.end method

.method public static values()[Lcom/txznet/sdk/TXZConfigManager$AsrServiceMode;
    .locals 1

    .prologue
    .line 227
    sget-object v0, Lcom/txznet/sdk/TXZConfigManager$AsrServiceMode;->T:[Lcom/txznet/sdk/TXZConfigManager$AsrServiceMode;

    invoke-virtual {v0}, [Lcom/txznet/sdk/TXZConfigManager$AsrServiceMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/txznet/sdk/TXZConfigManager$AsrServiceMode;

    return-object v0
.end method
