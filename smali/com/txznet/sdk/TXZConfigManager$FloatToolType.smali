.class public final enum Lcom/txznet/sdk/TXZConfigManager$FloatToolType;
.super Ljava/lang/Enum;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txznet/sdk/TXZConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FloatToolType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/txznet/sdk/TXZConfigManager$FloatToolType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum FLOAT_NONE:Lcom/txznet/sdk/TXZConfigManager$FloatToolType;

.field public static final enum FLOAT_NORMAL:Lcom/txznet/sdk/TXZConfigManager$FloatToolType;

.field public static final enum FLOAT_TOP:Lcom/txznet/sdk/TXZConfigManager$FloatToolType;

.field private static final synthetic T:[Lcom/txznet/sdk/TXZConfigManager$FloatToolType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 253
    new-instance v0, Lcom/txznet/sdk/TXZConfigManager$FloatToolType;

    const-string v1, "FLOAT_TOP"

    invoke-direct {v0, v1, v2}, Lcom/txznet/sdk/TXZConfigManager$FloatToolType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/txznet/sdk/TXZConfigManager$FloatToolType;->FLOAT_TOP:Lcom/txznet/sdk/TXZConfigManager$FloatToolType;

    .line 257
    new-instance v0, Lcom/txznet/sdk/TXZConfigManager$FloatToolType;

    const-string v1, "FLOAT_NORMAL"

    invoke-direct {v0, v1, v3}, Lcom/txznet/sdk/TXZConfigManager$FloatToolType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/txznet/sdk/TXZConfigManager$FloatToolType;->FLOAT_NORMAL:Lcom/txznet/sdk/TXZConfigManager$FloatToolType;

    .line 261
    new-instance v0, Lcom/txznet/sdk/TXZConfigManager$FloatToolType;

    const-string v1, "FLOAT_NONE"

    invoke-direct {v0, v1, v4}, Lcom/txznet/sdk/TXZConfigManager$FloatToolType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/txznet/sdk/TXZConfigManager$FloatToolType;->FLOAT_NONE:Lcom/txznet/sdk/TXZConfigManager$FloatToolType;

    .line 249
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/txznet/sdk/TXZConfigManager$FloatToolType;

    sget-object v1, Lcom/txznet/sdk/TXZConfigManager$FloatToolType;->FLOAT_TOP:Lcom/txznet/sdk/TXZConfigManager$FloatToolType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/txznet/sdk/TXZConfigManager$FloatToolType;->FLOAT_NORMAL:Lcom/txznet/sdk/TXZConfigManager$FloatToolType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/txznet/sdk/TXZConfigManager$FloatToolType;->FLOAT_NONE:Lcom/txznet/sdk/TXZConfigManager$FloatToolType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/txznet/sdk/TXZConfigManager$FloatToolType;->T:[Lcom/txznet/sdk/TXZConfigManager$FloatToolType;

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
    .line 249
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/txznet/sdk/TXZConfigManager$FloatToolType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 249
    const-class v0, Lcom/txznet/sdk/TXZConfigManager$FloatToolType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/txznet/sdk/TXZConfigManager$FloatToolType;

    return-object v0
.end method

.method public static values()[Lcom/txznet/sdk/TXZConfigManager$FloatToolType;
    .locals 1

    .prologue
    .line 249
    sget-object v0, Lcom/txznet/sdk/TXZConfigManager$FloatToolType;->T:[Lcom/txznet/sdk/TXZConfigManager$FloatToolType;

    invoke-virtual {v0}, [Lcom/txznet/sdk/TXZConfigManager$FloatToolType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/txznet/sdk/TXZConfigManager$FloatToolType;

    return-object v0
.end method
