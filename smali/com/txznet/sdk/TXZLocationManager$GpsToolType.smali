.class public final enum Lcom/txznet/sdk/TXZLocationManager$GpsToolType;
.super Ljava/lang/Enum;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txznet/sdk/TXZLocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GpsToolType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/txznet/sdk/TXZLocationManager$GpsToolType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AMAP:Lcom/txznet/sdk/TXZLocationManager$GpsToolType;

.field public static final enum QIHOO:Lcom/txznet/sdk/TXZLocationManager$GpsToolType;

.field private static final synthetic T:[Lcom/txznet/sdk/TXZLocationManager$GpsToolType;

.field public static final enum TXZ:Lcom/txznet/sdk/TXZLocationManager$GpsToolType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 131
    new-instance v0, Lcom/txznet/sdk/TXZLocationManager$GpsToolType;

    const-string v1, "TXZ"

    invoke-direct {v0, v1, v2}, Lcom/txznet/sdk/TXZLocationManager$GpsToolType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/txznet/sdk/TXZLocationManager$GpsToolType;->TXZ:Lcom/txznet/sdk/TXZLocationManager$GpsToolType;

    .line 135
    new-instance v0, Lcom/txznet/sdk/TXZLocationManager$GpsToolType;

    const-string v1, "QIHOO"

    invoke-direct {v0, v1, v3}, Lcom/txznet/sdk/TXZLocationManager$GpsToolType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/txznet/sdk/TXZLocationManager$GpsToolType;->QIHOO:Lcom/txznet/sdk/TXZLocationManager$GpsToolType;

    .line 139
    new-instance v0, Lcom/txznet/sdk/TXZLocationManager$GpsToolType;

    const-string v1, "AMAP"

    invoke-direct {v0, v1, v4}, Lcom/txznet/sdk/TXZLocationManager$GpsToolType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/txznet/sdk/TXZLocationManager$GpsToolType;->AMAP:Lcom/txznet/sdk/TXZLocationManager$GpsToolType;

    .line 127
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/txznet/sdk/TXZLocationManager$GpsToolType;

    sget-object v1, Lcom/txznet/sdk/TXZLocationManager$GpsToolType;->TXZ:Lcom/txznet/sdk/TXZLocationManager$GpsToolType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/txznet/sdk/TXZLocationManager$GpsToolType;->QIHOO:Lcom/txznet/sdk/TXZLocationManager$GpsToolType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/txznet/sdk/TXZLocationManager$GpsToolType;->AMAP:Lcom/txznet/sdk/TXZLocationManager$GpsToolType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/txznet/sdk/TXZLocationManager$GpsToolType;->T:[Lcom/txznet/sdk/TXZLocationManager$GpsToolType;

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
    .line 127
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/txznet/sdk/TXZLocationManager$GpsToolType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 127
    const-class v0, Lcom/txznet/sdk/TXZLocationManager$GpsToolType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/txznet/sdk/TXZLocationManager$GpsToolType;

    return-object v0
.end method

.method public static values()[Lcom/txznet/sdk/TXZLocationManager$GpsToolType;
    .locals 1

    .prologue
    .line 127
    sget-object v0, Lcom/txznet/sdk/TXZLocationManager$GpsToolType;->T:[Lcom/txznet/sdk/TXZLocationManager$GpsToolType;

    invoke-virtual {v0}, [Lcom/txznet/sdk/TXZLocationManager$GpsToolType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/txznet/sdk/TXZLocationManager$GpsToolType;

    return-object v0
.end method
