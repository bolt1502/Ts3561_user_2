.class public final enum Lcom/txznet/sdk/TXZConfigManager$ConfigJsonKey;
.super Ljava/lang/Enum;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txznet/sdk/TXZConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConfigJsonKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/txznet/sdk/TXZConfigManager$ConfigJsonKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic T:[Lcom/txznet/sdk/TXZConfigManager$ConfigJsonKey;

.field public static final enum asrThreshold:Lcom/txznet/sdk/TXZConfigManager$ConfigJsonKey;

.field public static final enum autoPlayKuwo:Lcom/txznet/sdk/TXZConfigManager$ConfigJsonKey;

.field public static final enum changeGpsStyle:Lcom/txznet/sdk/TXZConfigManager$ConfigJsonKey;

.field public static final enum needPoiMap:Lcom/txznet/sdk/TXZConfigManager$ConfigJsonKey;

.field public static final enum needResetWav:Lcom/txznet/sdk/TXZConfigManager$ConfigJsonKey;

.field public static final enum showOnWindowManager:Lcom/txznet/sdk/TXZConfigManager$ConfigJsonKey;

.field public static final enum wmType:Lcom/txznet/sdk/TXZConfigManager$ConfigJsonKey;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 271
    new-instance v0, Lcom/txznet/sdk/TXZConfigManager$ConfigJsonKey;

    const-string v1, "needPoiMap"

    invoke-direct {v0, v1, v3}, Lcom/txznet/sdk/TXZConfigManager$ConfigJsonKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/txznet/sdk/TXZConfigManager$ConfigJsonKey;->needPoiMap:Lcom/txznet/sdk/TXZConfigManager$ConfigJsonKey;

    .line 275
    new-instance v0, Lcom/txznet/sdk/TXZConfigManager$ConfigJsonKey;

    const-string v1, "autoPlayKuwo"

    invoke-direct {v0, v1, v4}, Lcom/txznet/sdk/TXZConfigManager$ConfigJsonKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/txznet/sdk/TXZConfigManager$ConfigJsonKey;->autoPlayKuwo:Lcom/txznet/sdk/TXZConfigManager$ConfigJsonKey;

    .line 279
    new-instance v0, Lcom/txznet/sdk/TXZConfigManager$ConfigJsonKey;

    const-string v1, "asrThreshold"

    invoke-direct {v0, v1, v5}, Lcom/txznet/sdk/TXZConfigManager$ConfigJsonKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/txznet/sdk/TXZConfigManager$ConfigJsonKey;->asrThreshold:Lcom/txznet/sdk/TXZConfigManager$ConfigJsonKey;

    .line 283
    new-instance v0, Lcom/txznet/sdk/TXZConfigManager$ConfigJsonKey;

    const-string v1, "changeGpsStyle"

    invoke-direct {v0, v1, v6}, Lcom/txznet/sdk/TXZConfigManager$ConfigJsonKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/txznet/sdk/TXZConfigManager$ConfigJsonKey;->changeGpsStyle:Lcom/txznet/sdk/TXZConfigManager$ConfigJsonKey;

    .line 287
    new-instance v0, Lcom/txznet/sdk/TXZConfigManager$ConfigJsonKey;

    const-string v1, "needResetWav"

    invoke-direct {v0, v1, v7}, Lcom/txznet/sdk/TXZConfigManager$ConfigJsonKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/txznet/sdk/TXZConfigManager$ConfigJsonKey;->needResetWav:Lcom/txznet/sdk/TXZConfigManager$ConfigJsonKey;

    .line 291
    new-instance v0, Lcom/txznet/sdk/TXZConfigManager$ConfigJsonKey;

    const-string v1, "showOnWindowManager"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/txznet/sdk/TXZConfigManager$ConfigJsonKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/txznet/sdk/TXZConfigManager$ConfigJsonKey;->showOnWindowManager:Lcom/txznet/sdk/TXZConfigManager$ConfigJsonKey;

    .line 295
    new-instance v0, Lcom/txznet/sdk/TXZConfigManager$ConfigJsonKey;

    const-string v1, "wmType"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/txznet/sdk/TXZConfigManager$ConfigJsonKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/txznet/sdk/TXZConfigManager$ConfigJsonKey;->wmType:Lcom/txznet/sdk/TXZConfigManager$ConfigJsonKey;

    .line 267
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/txznet/sdk/TXZConfigManager$ConfigJsonKey;

    sget-object v1, Lcom/txznet/sdk/TXZConfigManager$ConfigJsonKey;->needPoiMap:Lcom/txznet/sdk/TXZConfigManager$ConfigJsonKey;

    aput-object v1, v0, v3

    sget-object v1, Lcom/txznet/sdk/TXZConfigManager$ConfigJsonKey;->autoPlayKuwo:Lcom/txznet/sdk/TXZConfigManager$ConfigJsonKey;

    aput-object v1, v0, v4

    sget-object v1, Lcom/txznet/sdk/TXZConfigManager$ConfigJsonKey;->asrThreshold:Lcom/txznet/sdk/TXZConfigManager$ConfigJsonKey;

    aput-object v1, v0, v5

    sget-object v1, Lcom/txznet/sdk/TXZConfigManager$ConfigJsonKey;->changeGpsStyle:Lcom/txznet/sdk/TXZConfigManager$ConfigJsonKey;

    aput-object v1, v0, v6

    sget-object v1, Lcom/txznet/sdk/TXZConfigManager$ConfigJsonKey;->needResetWav:Lcom/txznet/sdk/TXZConfigManager$ConfigJsonKey;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/txznet/sdk/TXZConfigManager$ConfigJsonKey;->showOnWindowManager:Lcom/txznet/sdk/TXZConfigManager$ConfigJsonKey;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/txznet/sdk/TXZConfigManager$ConfigJsonKey;->wmType:Lcom/txznet/sdk/TXZConfigManager$ConfigJsonKey;

    aput-object v2, v0, v1

    sput-object v0, Lcom/txznet/sdk/TXZConfigManager$ConfigJsonKey;->T:[Lcom/txznet/sdk/TXZConfigManager$ConfigJsonKey;

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
    .line 267
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/txznet/sdk/TXZConfigManager$ConfigJsonKey;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 267
    const-class v0, Lcom/txznet/sdk/TXZConfigManager$ConfigJsonKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/txznet/sdk/TXZConfigManager$ConfigJsonKey;

    return-object v0
.end method

.method public static values()[Lcom/txznet/sdk/TXZConfigManager$ConfigJsonKey;
    .locals 1

    .prologue
    .line 267
    sget-object v0, Lcom/txznet/sdk/TXZConfigManager$ConfigJsonKey;->T:[Lcom/txznet/sdk/TXZConfigManager$ConfigJsonKey;

    invoke-virtual {v0}, [Lcom/txznet/sdk/TXZConfigManager$ConfigJsonKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/txznet/sdk/TXZConfigManager$ConfigJsonKey;

    return-object v0
.end method
