.class public final enum Lcom/txznet/sdk/TXZConfigManager$AsrMode;
.super Ljava/lang/Enum;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txznet/sdk/TXZConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AsrMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/txznet/sdk/TXZConfigManager$AsrMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ASR_MODE_CHAT:Lcom/txznet/sdk/TXZConfigManager$AsrMode;

.field public static final enum ASR_MODE_CONTINUE:Lcom/txznet/sdk/TXZConfigManager$AsrMode;

.field public static final enum ASR_MODE_SINGLE:Lcom/txznet/sdk/TXZConfigManager$AsrMode;

.field private static final synthetic T:[Lcom/txznet/sdk/TXZConfigManager$AsrMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 213
    new-instance v0, Lcom/txznet/sdk/TXZConfigManager$AsrMode;

    const-string v1, "ASR_MODE_CHAT"

    invoke-direct {v0, v1, v2}, Lcom/txznet/sdk/TXZConfigManager$AsrMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/txznet/sdk/TXZConfigManager$AsrMode;->ASR_MODE_CHAT:Lcom/txznet/sdk/TXZConfigManager$AsrMode;

    .line 217
    new-instance v0, Lcom/txznet/sdk/TXZConfigManager$AsrMode;

    const-string v1, "ASR_MODE_SINGLE"

    invoke-direct {v0, v1, v3}, Lcom/txznet/sdk/TXZConfigManager$AsrMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/txznet/sdk/TXZConfigManager$AsrMode;->ASR_MODE_SINGLE:Lcom/txznet/sdk/TXZConfigManager$AsrMode;

    .line 221
    new-instance v0, Lcom/txznet/sdk/TXZConfigManager$AsrMode;

    const-string v1, "ASR_MODE_CONTINUE"

    invoke-direct {v0, v1, v4}, Lcom/txznet/sdk/TXZConfigManager$AsrMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/txznet/sdk/TXZConfigManager$AsrMode;->ASR_MODE_CONTINUE:Lcom/txznet/sdk/TXZConfigManager$AsrMode;

    .line 209
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/txznet/sdk/TXZConfigManager$AsrMode;

    sget-object v1, Lcom/txznet/sdk/TXZConfigManager$AsrMode;->ASR_MODE_CHAT:Lcom/txznet/sdk/TXZConfigManager$AsrMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/txznet/sdk/TXZConfigManager$AsrMode;->ASR_MODE_SINGLE:Lcom/txznet/sdk/TXZConfigManager$AsrMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/txznet/sdk/TXZConfigManager$AsrMode;->ASR_MODE_CONTINUE:Lcom/txznet/sdk/TXZConfigManager$AsrMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/txznet/sdk/TXZConfigManager$AsrMode;->T:[Lcom/txznet/sdk/TXZConfigManager$AsrMode;

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
    .line 209
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/txznet/sdk/TXZConfigManager$AsrMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 209
    const-class v0, Lcom/txznet/sdk/TXZConfigManager$AsrMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/txznet/sdk/TXZConfigManager$AsrMode;

    return-object v0
.end method

.method public static values()[Lcom/txznet/sdk/TXZConfigManager$AsrMode;
    .locals 1

    .prologue
    .line 209
    sget-object v0, Lcom/txznet/sdk/TXZConfigManager$AsrMode;->T:[Lcom/txznet/sdk/TXZConfigManager$AsrMode;

    invoke-virtual {v0}, [Lcom/txznet/sdk/TXZConfigManager$AsrMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/txznet/sdk/TXZConfigManager$AsrMode;

    return-object v0
.end method
