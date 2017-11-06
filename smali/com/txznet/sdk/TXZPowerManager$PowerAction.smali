.class public final enum Lcom/txznet/sdk/TXZPowerManager$PowerAction;
.super Ljava/lang/Enum;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txznet/sdk/TXZPowerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PowerAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/txznet/sdk/TXZPowerManager$PowerAction;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum POWER_ACTION_BEFORE_POWER_OFF:Lcom/txznet/sdk/TXZPowerManager$PowerAction;

.field public static final enum POWER_ACTION_BEFORE_SLEEP:Lcom/txznet/sdk/TXZPowerManager$PowerAction;

.field public static final enum POWER_ACTION_POWER_OFF:Lcom/txznet/sdk/TXZPowerManager$PowerAction;

.field public static final enum POWER_ACTION_POWER_ON:Lcom/txznet/sdk/TXZPowerManager$PowerAction;

.field public static final enum POWER_ACTION_SHOCK_WAKEUP:Lcom/txznet/sdk/TXZPowerManager$PowerAction;

.field public static final enum POWER_ACTION_SLEEP:Lcom/txznet/sdk/TXZPowerManager$PowerAction;

.field public static final enum POWER_ACTION_WAKEUP:Lcom/txznet/sdk/TXZPowerManager$PowerAction;

.field private static final synthetic T:[Lcom/txznet/sdk/TXZPowerManager$PowerAction;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 43
    new-instance v0, Lcom/txznet/sdk/TXZPowerManager$PowerAction;

    const-string v1, "POWER_ACTION_POWER_ON"

    invoke-direct {v0, v1, v3}, Lcom/txznet/sdk/TXZPowerManager$PowerAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/txznet/sdk/TXZPowerManager$PowerAction;->POWER_ACTION_POWER_ON:Lcom/txznet/sdk/TXZPowerManager$PowerAction;

    .line 47
    new-instance v0, Lcom/txznet/sdk/TXZPowerManager$PowerAction;

    const-string v1, "POWER_ACTION_BEFORE_SLEEP"

    invoke-direct {v0, v1, v4}, Lcom/txznet/sdk/TXZPowerManager$PowerAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/txznet/sdk/TXZPowerManager$PowerAction;->POWER_ACTION_BEFORE_SLEEP:Lcom/txznet/sdk/TXZPowerManager$PowerAction;

    .line 51
    new-instance v0, Lcom/txznet/sdk/TXZPowerManager$PowerAction;

    const-string v1, "POWER_ACTION_SLEEP"

    invoke-direct {v0, v1, v5}, Lcom/txznet/sdk/TXZPowerManager$PowerAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/txznet/sdk/TXZPowerManager$PowerAction;->POWER_ACTION_SLEEP:Lcom/txznet/sdk/TXZPowerManager$PowerAction;

    .line 55
    new-instance v0, Lcom/txznet/sdk/TXZPowerManager$PowerAction;

    const-string v1, "POWER_ACTION_WAKEUP"

    invoke-direct {v0, v1, v6}, Lcom/txznet/sdk/TXZPowerManager$PowerAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/txznet/sdk/TXZPowerManager$PowerAction;->POWER_ACTION_WAKEUP:Lcom/txznet/sdk/TXZPowerManager$PowerAction;

    .line 59
    new-instance v0, Lcom/txznet/sdk/TXZPowerManager$PowerAction;

    const-string v1, "POWER_ACTION_SHOCK_WAKEUP"

    invoke-direct {v0, v1, v7}, Lcom/txznet/sdk/TXZPowerManager$PowerAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/txznet/sdk/TXZPowerManager$PowerAction;->POWER_ACTION_SHOCK_WAKEUP:Lcom/txznet/sdk/TXZPowerManager$PowerAction;

    .line 63
    new-instance v0, Lcom/txznet/sdk/TXZPowerManager$PowerAction;

    const-string v1, "POWER_ACTION_BEFORE_POWER_OFF"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/txznet/sdk/TXZPowerManager$PowerAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/txznet/sdk/TXZPowerManager$PowerAction;->POWER_ACTION_BEFORE_POWER_OFF:Lcom/txznet/sdk/TXZPowerManager$PowerAction;

    .line 67
    new-instance v0, Lcom/txznet/sdk/TXZPowerManager$PowerAction;

    const-string v1, "POWER_ACTION_POWER_OFF"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/txznet/sdk/TXZPowerManager$PowerAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/txznet/sdk/TXZPowerManager$PowerAction;->POWER_ACTION_POWER_OFF:Lcom/txznet/sdk/TXZPowerManager$PowerAction;

    .line 39
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/txznet/sdk/TXZPowerManager$PowerAction;

    sget-object v1, Lcom/txznet/sdk/TXZPowerManager$PowerAction;->POWER_ACTION_POWER_ON:Lcom/txznet/sdk/TXZPowerManager$PowerAction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/txznet/sdk/TXZPowerManager$PowerAction;->POWER_ACTION_BEFORE_SLEEP:Lcom/txznet/sdk/TXZPowerManager$PowerAction;

    aput-object v1, v0, v4

    sget-object v1, Lcom/txznet/sdk/TXZPowerManager$PowerAction;->POWER_ACTION_SLEEP:Lcom/txznet/sdk/TXZPowerManager$PowerAction;

    aput-object v1, v0, v5

    sget-object v1, Lcom/txznet/sdk/TXZPowerManager$PowerAction;->POWER_ACTION_WAKEUP:Lcom/txznet/sdk/TXZPowerManager$PowerAction;

    aput-object v1, v0, v6

    sget-object v1, Lcom/txznet/sdk/TXZPowerManager$PowerAction;->POWER_ACTION_SHOCK_WAKEUP:Lcom/txznet/sdk/TXZPowerManager$PowerAction;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/txznet/sdk/TXZPowerManager$PowerAction;->POWER_ACTION_BEFORE_POWER_OFF:Lcom/txznet/sdk/TXZPowerManager$PowerAction;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/txznet/sdk/TXZPowerManager$PowerAction;->POWER_ACTION_POWER_OFF:Lcom/txznet/sdk/TXZPowerManager$PowerAction;

    aput-object v2, v0, v1

    sput-object v0, Lcom/txznet/sdk/TXZPowerManager$PowerAction;->T:[Lcom/txznet/sdk/TXZPowerManager$PowerAction;

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
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/txznet/sdk/TXZPowerManager$PowerAction;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 39
    const-class v0, Lcom/txznet/sdk/TXZPowerManager$PowerAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/txznet/sdk/TXZPowerManager$PowerAction;

    return-object v0
.end method

.method public static values()[Lcom/txznet/sdk/TXZPowerManager$PowerAction;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/txznet/sdk/TXZPowerManager$PowerAction;->T:[Lcom/txznet/sdk/TXZPowerManager$PowerAction;

    invoke-virtual {v0}, [Lcom/txznet/sdk/TXZPowerManager$PowerAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/txznet/sdk/TXZPowerManager$PowerAction;

    return-object v0
.end method
