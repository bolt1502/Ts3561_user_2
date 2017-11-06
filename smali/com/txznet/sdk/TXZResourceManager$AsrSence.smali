.class public final enum Lcom/txznet/sdk/TXZResourceManager$AsrSence;
.super Ljava/lang/Enum;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txznet/sdk/TXZResourceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AsrSence"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/txznet/sdk/TXZResourceManager$AsrSence;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CallSence:Lcom/txznet/sdk/TXZResourceManager$AsrSence;

.field public static final enum PoiSence:Lcom/txznet/sdk/TXZResourceManager$AsrSence;

.field private static final synthetic T:[Lcom/txznet/sdk/TXZResourceManager$AsrSence;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 918
    new-instance v0, Lcom/txznet/sdk/TXZResourceManager$AsrSence;

    const-string v1, "PoiSence"

    invoke-direct {v0, v1, v2}, Lcom/txznet/sdk/TXZResourceManager$AsrSence;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/txznet/sdk/TXZResourceManager$AsrSence;->PoiSence:Lcom/txznet/sdk/TXZResourceManager$AsrSence;

    .line 919
    new-instance v0, Lcom/txznet/sdk/TXZResourceManager$AsrSence;

    const-string v1, "CallSence"

    invoke-direct {v0, v1, v3}, Lcom/txznet/sdk/TXZResourceManager$AsrSence;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/txznet/sdk/TXZResourceManager$AsrSence;->CallSence:Lcom/txznet/sdk/TXZResourceManager$AsrSence;

    .line 917
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/txznet/sdk/TXZResourceManager$AsrSence;

    sget-object v1, Lcom/txznet/sdk/TXZResourceManager$AsrSence;->PoiSence:Lcom/txznet/sdk/TXZResourceManager$AsrSence;

    aput-object v1, v0, v2

    sget-object v1, Lcom/txznet/sdk/TXZResourceManager$AsrSence;->CallSence:Lcom/txznet/sdk/TXZResourceManager$AsrSence;

    aput-object v1, v0, v3

    sput-object v0, Lcom/txznet/sdk/TXZResourceManager$AsrSence;->T:[Lcom/txznet/sdk/TXZResourceManager$AsrSence;

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
    .line 917
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/txznet/sdk/TXZResourceManager$AsrSence;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 917
    const-class v0, Lcom/txznet/sdk/TXZResourceManager$AsrSence;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/txznet/sdk/TXZResourceManager$AsrSence;

    return-object v0
.end method

.method public static values()[Lcom/txznet/sdk/TXZResourceManager$AsrSence;
    .locals 1

    .prologue
    .line 917
    sget-object v0, Lcom/txznet/sdk/TXZResourceManager$AsrSence;->T:[Lcom/txznet/sdk/TXZResourceManager$AsrSence;

    invoke-virtual {v0}, [Lcom/txznet/sdk/TXZResourceManager$AsrSence;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/txznet/sdk/TXZResourceManager$AsrSence;

    return-object v0
.end method
