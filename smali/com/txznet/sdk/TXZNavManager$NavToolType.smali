.class public final enum Lcom/txznet/sdk/TXZNavManager$NavToolType;
.super Ljava/lang/Enum;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txznet/sdk/TXZNavManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NavToolType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/txznet/sdk/TXZNavManager$NavToolType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum NAV_TOOL_BAIDU_MAP:Lcom/txznet/sdk/TXZNavManager$NavToolType;

.field public static final enum NAV_TOOL_BAIDU_NAV:Lcom/txznet/sdk/TXZNavManager$NavToolType;

.field public static final enum NAV_TOOL_BAIDU_NAV_HD:Lcom/txznet/sdk/TXZNavManager$NavToolType;

.field public static final enum NAV_TOOL_GAODE_MAP:Lcom/txznet/sdk/TXZNavManager$NavToolType;

.field public static final enum NAV_TOOL_GAODE_MAP_CAR:Lcom/txznet/sdk/TXZNavManager$NavToolType;

.field public static final enum NAV_TOOL_GAODE_NAV:Lcom/txznet/sdk/TXZNavManager$NavToolType;

.field public static final enum NAV_TOOL_KAILIDE_NAV:Lcom/txznet/sdk/TXZNavManager$NavToolType;

.field public static final enum NAV_TOOL_MX_NAV:Lcom/txznet/sdk/TXZNavManager$NavToolType;

.field public static final enum NAV_TOOL_QIHOO:Lcom/txznet/sdk/TXZNavManager$NavToolType;

.field public static final enum NAV_TOOL_TX:Lcom/txznet/sdk/TXZNavManager$NavToolType;

.field public static final enum NAV_TOOL_TXZ:Lcom/txznet/sdk/TXZNavManager$NavToolType;

.field private static final synthetic T:[Lcom/txznet/sdk/TXZNavManager$NavToolType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 377
    new-instance v0, Lcom/txznet/sdk/TXZNavManager$NavToolType;

    const-string v1, "NAV_TOOL_TXZ"

    invoke-direct {v0, v1, v3}, Lcom/txznet/sdk/TXZNavManager$NavToolType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/txznet/sdk/TXZNavManager$NavToolType;->NAV_TOOL_TXZ:Lcom/txznet/sdk/TXZNavManager$NavToolType;

    .line 381
    new-instance v0, Lcom/txznet/sdk/TXZNavManager$NavToolType;

    const-string v1, "NAV_TOOL_BAIDU_MAP"

    invoke-direct {v0, v1, v4}, Lcom/txznet/sdk/TXZNavManager$NavToolType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/txznet/sdk/TXZNavManager$NavToolType;->NAV_TOOL_BAIDU_MAP:Lcom/txznet/sdk/TXZNavManager$NavToolType;

    .line 385
    new-instance v0, Lcom/txznet/sdk/TXZNavManager$NavToolType;

    const-string v1, "NAV_TOOL_BAIDU_NAV"

    invoke-direct {v0, v1, v5}, Lcom/txznet/sdk/TXZNavManager$NavToolType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/txznet/sdk/TXZNavManager$NavToolType;->NAV_TOOL_BAIDU_NAV:Lcom/txznet/sdk/TXZNavManager$NavToolType;

    .line 389
    new-instance v0, Lcom/txznet/sdk/TXZNavManager$NavToolType;

    const-string v1, "NAV_TOOL_BAIDU_NAV_HD"

    invoke-direct {v0, v1, v6}, Lcom/txznet/sdk/TXZNavManager$NavToolType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/txznet/sdk/TXZNavManager$NavToolType;->NAV_TOOL_BAIDU_NAV_HD:Lcom/txznet/sdk/TXZNavManager$NavToolType;

    .line 393
    new-instance v0, Lcom/txznet/sdk/TXZNavManager$NavToolType;

    const-string v1, "NAV_TOOL_GAODE_MAP"

    invoke-direct {v0, v1, v7}, Lcom/txznet/sdk/TXZNavManager$NavToolType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/txznet/sdk/TXZNavManager$NavToolType;->NAV_TOOL_GAODE_MAP:Lcom/txznet/sdk/TXZNavManager$NavToolType;

    .line 397
    new-instance v0, Lcom/txznet/sdk/TXZNavManager$NavToolType;

    const-string v1, "NAV_TOOL_GAODE_MAP_CAR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/txznet/sdk/TXZNavManager$NavToolType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/txznet/sdk/TXZNavManager$NavToolType;->NAV_TOOL_GAODE_MAP_CAR:Lcom/txznet/sdk/TXZNavManager$NavToolType;

    .line 401
    new-instance v0, Lcom/txznet/sdk/TXZNavManager$NavToolType;

    const-string v1, "NAV_TOOL_GAODE_NAV"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/txznet/sdk/TXZNavManager$NavToolType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/txznet/sdk/TXZNavManager$NavToolType;->NAV_TOOL_GAODE_NAV:Lcom/txznet/sdk/TXZNavManager$NavToolType;

    .line 405
    new-instance v0, Lcom/txznet/sdk/TXZNavManager$NavToolType;

    const-string v1, "NAV_TOOL_KAILIDE_NAV"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/txznet/sdk/TXZNavManager$NavToolType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/txznet/sdk/TXZNavManager$NavToolType;->NAV_TOOL_KAILIDE_NAV:Lcom/txznet/sdk/TXZNavManager$NavToolType;

    .line 409
    new-instance v0, Lcom/txznet/sdk/TXZNavManager$NavToolType;

    const-string v1, "NAV_TOOL_MX_NAV"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/txznet/sdk/TXZNavManager$NavToolType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/txznet/sdk/TXZNavManager$NavToolType;->NAV_TOOL_MX_NAV:Lcom/txznet/sdk/TXZNavManager$NavToolType;

    .line 413
    new-instance v0, Lcom/txznet/sdk/TXZNavManager$NavToolType;

    const-string v1, "NAV_TOOL_QIHOO"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/txznet/sdk/TXZNavManager$NavToolType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/txznet/sdk/TXZNavManager$NavToolType;->NAV_TOOL_QIHOO:Lcom/txznet/sdk/TXZNavManager$NavToolType;

    .line 417
    new-instance v0, Lcom/txznet/sdk/TXZNavManager$NavToolType;

    const-string v1, "NAV_TOOL_TX"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/txznet/sdk/TXZNavManager$NavToolType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/txznet/sdk/TXZNavManager$NavToolType;->NAV_TOOL_TX:Lcom/txznet/sdk/TXZNavManager$NavToolType;

    .line 373
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/txznet/sdk/TXZNavManager$NavToolType;

    sget-object v1, Lcom/txznet/sdk/TXZNavManager$NavToolType;->NAV_TOOL_TXZ:Lcom/txznet/sdk/TXZNavManager$NavToolType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/txznet/sdk/TXZNavManager$NavToolType;->NAV_TOOL_BAIDU_MAP:Lcom/txznet/sdk/TXZNavManager$NavToolType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/txznet/sdk/TXZNavManager$NavToolType;->NAV_TOOL_BAIDU_NAV:Lcom/txznet/sdk/TXZNavManager$NavToolType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/txznet/sdk/TXZNavManager$NavToolType;->NAV_TOOL_BAIDU_NAV_HD:Lcom/txznet/sdk/TXZNavManager$NavToolType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/txznet/sdk/TXZNavManager$NavToolType;->NAV_TOOL_GAODE_MAP:Lcom/txznet/sdk/TXZNavManager$NavToolType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/txznet/sdk/TXZNavManager$NavToolType;->NAV_TOOL_GAODE_MAP_CAR:Lcom/txznet/sdk/TXZNavManager$NavToolType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/txznet/sdk/TXZNavManager$NavToolType;->NAV_TOOL_GAODE_NAV:Lcom/txznet/sdk/TXZNavManager$NavToolType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/txznet/sdk/TXZNavManager$NavToolType;->NAV_TOOL_KAILIDE_NAV:Lcom/txznet/sdk/TXZNavManager$NavToolType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/txznet/sdk/TXZNavManager$NavToolType;->NAV_TOOL_MX_NAV:Lcom/txznet/sdk/TXZNavManager$NavToolType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/txznet/sdk/TXZNavManager$NavToolType;->NAV_TOOL_QIHOO:Lcom/txznet/sdk/TXZNavManager$NavToolType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/txznet/sdk/TXZNavManager$NavToolType;->NAV_TOOL_TX:Lcom/txznet/sdk/TXZNavManager$NavToolType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/txznet/sdk/TXZNavManager$NavToolType;->T:[Lcom/txznet/sdk/TXZNavManager$NavToolType;

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
    .line 373
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/txznet/sdk/TXZNavManager$NavToolType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 373
    const-class v0, Lcom/txznet/sdk/TXZNavManager$NavToolType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/txznet/sdk/TXZNavManager$NavToolType;

    return-object v0
.end method

.method public static values()[Lcom/txznet/sdk/TXZNavManager$NavToolType;
    .locals 1

    .prologue
    .line 373
    sget-object v0, Lcom/txznet/sdk/TXZNavManager$NavToolType;->T:[Lcom/txznet/sdk/TXZNavManager$NavToolType;

    invoke-virtual {v0}, [Lcom/txznet/sdk/TXZNavManager$NavToolType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/txznet/sdk/TXZNavManager$NavToolType;

    return-object v0
.end method
