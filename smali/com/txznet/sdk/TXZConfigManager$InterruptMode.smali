.class public final enum Lcom/txznet/sdk/TXZConfigManager$InterruptMode;
.super Ljava/lang/Enum;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txznet/sdk/TXZConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "InterruptMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/txznet/sdk/TXZConfigManager$InterruptMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum INTERRUPT_MODE_DEFAULT:Lcom/txznet/sdk/TXZConfigManager$InterruptMode;

.field public static final enum INTERRUPT_MODE_ORDER:Lcom/txznet/sdk/TXZConfigManager$InterruptMode;

.field private static final synthetic T:[Lcom/txznet/sdk/TXZConfigManager$InterruptMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 306
    new-instance v0, Lcom/txznet/sdk/TXZConfigManager$InterruptMode;

    const-string v1, "INTERRUPT_MODE_DEFAULT"

    invoke-direct {v0, v1, v2}, Lcom/txznet/sdk/TXZConfigManager$InterruptMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/txznet/sdk/TXZConfigManager$InterruptMode;->INTERRUPT_MODE_DEFAULT:Lcom/txznet/sdk/TXZConfigManager$InterruptMode;

    .line 310
    new-instance v0, Lcom/txznet/sdk/TXZConfigManager$InterruptMode;

    const-string v1, "INTERRUPT_MODE_ORDER"

    invoke-direct {v0, v1, v3}, Lcom/txznet/sdk/TXZConfigManager$InterruptMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/txznet/sdk/TXZConfigManager$InterruptMode;->INTERRUPT_MODE_ORDER:Lcom/txznet/sdk/TXZConfigManager$InterruptMode;

    .line 302
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/txznet/sdk/TXZConfigManager$InterruptMode;

    sget-object v1, Lcom/txznet/sdk/TXZConfigManager$InterruptMode;->INTERRUPT_MODE_DEFAULT:Lcom/txznet/sdk/TXZConfigManager$InterruptMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/txznet/sdk/TXZConfigManager$InterruptMode;->INTERRUPT_MODE_ORDER:Lcom/txznet/sdk/TXZConfigManager$InterruptMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/txznet/sdk/TXZConfigManager$InterruptMode;->T:[Lcom/txznet/sdk/TXZConfigManager$InterruptMode;

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
    .line 302
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/txznet/sdk/TXZConfigManager$InterruptMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 302
    const-class v0, Lcom/txznet/sdk/TXZConfigManager$InterruptMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/txznet/sdk/TXZConfigManager$InterruptMode;

    return-object v0
.end method

.method public static values()[Lcom/txznet/sdk/TXZConfigManager$InterruptMode;
    .locals 1

    .prologue
    .line 302
    sget-object v0, Lcom/txznet/sdk/TXZConfigManager$InterruptMode;->T:[Lcom/txznet/sdk/TXZConfigManager$InterruptMode;

    invoke-virtual {v0}, [Lcom/txznet/sdk/TXZConfigManager$InterruptMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/txznet/sdk/TXZConfigManager$InterruptMode;

    return-object v0
.end method
