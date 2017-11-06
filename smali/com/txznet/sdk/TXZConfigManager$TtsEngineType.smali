.class public final enum Lcom/txznet/sdk/TXZConfigManager$TtsEngineType;
.super Ljava/lang/Enum;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txznet/sdk/TXZConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TtsEngineType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/txznet/sdk/TXZConfigManager$TtsEngineType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum NONE:Lcom/txznet/sdk/TXZConfigManager$TtsEngineType;

.field private static final synthetic T:[Lcom/txznet/sdk/TXZConfigManager$TtsEngineType;

.field public static final enum TTS_IFLY:Lcom/txznet/sdk/TXZConfigManager$TtsEngineType;

.field public static final enum TTS_SYSTEM:Lcom/txznet/sdk/TXZConfigManager$TtsEngineType;

.field public static final enum TTS_YUNZHISHENG:Lcom/txznet/sdk/TXZConfigManager$TtsEngineType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 172
    new-instance v0, Lcom/txznet/sdk/TXZConfigManager$TtsEngineType;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/txznet/sdk/TXZConfigManager$TtsEngineType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/txznet/sdk/TXZConfigManager$TtsEngineType;->NONE:Lcom/txznet/sdk/TXZConfigManager$TtsEngineType;

    .line 176
    new-instance v0, Lcom/txznet/sdk/TXZConfigManager$TtsEngineType;

    const-string v1, "TTS_IFLY"

    invoke-direct {v0, v1, v3}, Lcom/txznet/sdk/TXZConfigManager$TtsEngineType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/txznet/sdk/TXZConfigManager$TtsEngineType;->TTS_IFLY:Lcom/txznet/sdk/TXZConfigManager$TtsEngineType;

    .line 180
    new-instance v0, Lcom/txznet/sdk/TXZConfigManager$TtsEngineType;

    const-string v1, "TTS_YUNZHISHENG"

    invoke-direct {v0, v1, v4}, Lcom/txznet/sdk/TXZConfigManager$TtsEngineType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/txznet/sdk/TXZConfigManager$TtsEngineType;->TTS_YUNZHISHENG:Lcom/txznet/sdk/TXZConfigManager$TtsEngineType;

    .line 184
    new-instance v0, Lcom/txznet/sdk/TXZConfigManager$TtsEngineType;

    const-string v1, "TTS_SYSTEM"

    invoke-direct {v0, v1, v5}, Lcom/txznet/sdk/TXZConfigManager$TtsEngineType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/txznet/sdk/TXZConfigManager$TtsEngineType;->TTS_SYSTEM:Lcom/txznet/sdk/TXZConfigManager$TtsEngineType;

    .line 168
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/txznet/sdk/TXZConfigManager$TtsEngineType;

    sget-object v1, Lcom/txznet/sdk/TXZConfigManager$TtsEngineType;->NONE:Lcom/txznet/sdk/TXZConfigManager$TtsEngineType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/txznet/sdk/TXZConfigManager$TtsEngineType;->TTS_IFLY:Lcom/txznet/sdk/TXZConfigManager$TtsEngineType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/txznet/sdk/TXZConfigManager$TtsEngineType;->TTS_YUNZHISHENG:Lcom/txznet/sdk/TXZConfigManager$TtsEngineType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/txznet/sdk/TXZConfigManager$TtsEngineType;->TTS_SYSTEM:Lcom/txznet/sdk/TXZConfigManager$TtsEngineType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/txznet/sdk/TXZConfigManager$TtsEngineType;->T:[Lcom/txznet/sdk/TXZConfigManager$TtsEngineType;

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
    .line 168
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/txznet/sdk/TXZConfigManager$TtsEngineType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 168
    const-class v0, Lcom/txznet/sdk/TXZConfigManager$TtsEngineType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/txznet/sdk/TXZConfigManager$TtsEngineType;

    return-object v0
.end method

.method public static values()[Lcom/txznet/sdk/TXZConfigManager$TtsEngineType;
    .locals 1

    .prologue
    .line 168
    sget-object v0, Lcom/txznet/sdk/TXZConfigManager$TtsEngineType;->T:[Lcom/txznet/sdk/TXZConfigManager$TtsEngineType;

    invoke-virtual {v0}, [Lcom/txznet/sdk/TXZConfigManager$TtsEngineType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/txznet/sdk/TXZConfigManager$TtsEngineType;

    return-object v0
.end method
