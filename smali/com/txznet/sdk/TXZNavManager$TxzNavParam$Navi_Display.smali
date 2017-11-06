.class public final enum Lcom/txznet/sdk/TXZNavManager$TxzNavParam$Navi_Display;
.super Ljava/lang/Enum;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txznet/sdk/TXZNavManager$TxzNavParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Navi_Display"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/txznet/sdk/TXZNavManager$TxzNavParam$Navi_Display;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic T:[Lcom/txznet/sdk/TXZNavManager$TxzNavParam$Navi_Display;

.field public static final enum TYPE_HUD:Lcom/txznet/sdk/TXZNavManager$TxzNavParam$Navi_Display;

.field public static final enum TYPE_NAVI:Lcom/txznet/sdk/TXZNavManager$TxzNavParam$Navi_Display;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 791
    new-instance v0, Lcom/txznet/sdk/TXZNavManager$TxzNavParam$Navi_Display;

    const-string v1, "TYPE_NAVI"

    invoke-direct {v0, v1, v2}, Lcom/txznet/sdk/TXZNavManager$TxzNavParam$Navi_Display;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/txznet/sdk/TXZNavManager$TxzNavParam$Navi_Display;->TYPE_NAVI:Lcom/txznet/sdk/TXZNavManager$TxzNavParam$Navi_Display;

    new-instance v0, Lcom/txznet/sdk/TXZNavManager$TxzNavParam$Navi_Display;

    const-string v1, "TYPE_HUD"

    invoke-direct {v0, v1, v3}, Lcom/txznet/sdk/TXZNavManager$TxzNavParam$Navi_Display;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/txznet/sdk/TXZNavManager$TxzNavParam$Navi_Display;->TYPE_HUD:Lcom/txznet/sdk/TXZNavManager$TxzNavParam$Navi_Display;

    .line 790
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/txznet/sdk/TXZNavManager$TxzNavParam$Navi_Display;

    sget-object v1, Lcom/txznet/sdk/TXZNavManager$TxzNavParam$Navi_Display;->TYPE_NAVI:Lcom/txznet/sdk/TXZNavManager$TxzNavParam$Navi_Display;

    aput-object v1, v0, v2

    sget-object v1, Lcom/txznet/sdk/TXZNavManager$TxzNavParam$Navi_Display;->TYPE_HUD:Lcom/txznet/sdk/TXZNavManager$TxzNavParam$Navi_Display;

    aput-object v1, v0, v3

    sput-object v0, Lcom/txznet/sdk/TXZNavManager$TxzNavParam$Navi_Display;->T:[Lcom/txznet/sdk/TXZNavManager$TxzNavParam$Navi_Display;

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
    .line 790
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/txznet/sdk/TXZNavManager$TxzNavParam$Navi_Display;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 790
    const-class v0, Lcom/txznet/sdk/TXZNavManager$TxzNavParam$Navi_Display;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/txznet/sdk/TXZNavManager$TxzNavParam$Navi_Display;

    return-object v0
.end method

.method public static values()[Lcom/txznet/sdk/TXZNavManager$TxzNavParam$Navi_Display;
    .locals 1

    .prologue
    .line 790
    sget-object v0, Lcom/txznet/sdk/TXZNavManager$TxzNavParam$Navi_Display;->T:[Lcom/txznet/sdk/TXZNavManager$TxzNavParam$Navi_Display;

    invoke-virtual {v0}, [Lcom/txznet/sdk/TXZNavManager$TxzNavParam$Navi_Display;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/txznet/sdk/TXZNavManager$TxzNavParam$Navi_Display;

    return-object v0
.end method
