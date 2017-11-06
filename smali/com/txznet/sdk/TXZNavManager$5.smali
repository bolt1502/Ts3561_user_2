.class Lcom/txznet/sdk/TXZNavManager$5;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/txznet/sdk/TXZNavManager$TxzNavParam$TxzNaviTool;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txznet/sdk/TXZNavManager;->setCustomParamsForTxzNavi(Lcom/txznet/sdk/TXZNavManager$TxzNavParam;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic T:Lcom/txznet/sdk/TXZNavManager;


# direct methods
.method constructor <init>(Lcom/txznet/sdk/TXZNavManager;)V
    .locals 0

    .prologue
    .line 812
    iput-object p1, p0, Lcom/txznet/sdk/TXZNavManager$5;->T:Lcom/txznet/sdk/TXZNavManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeNaviType(Lcom/txznet/sdk/TXZNavManager$TxzNavParam$Navi_Display;)V
    .locals 6
    .param p1, "naviType"    # Lcom/txznet/sdk/TXZNavManager$TxzNavParam$Navi_Display;

    .prologue
    .line 816
    const-string v0, "nav"

    .line 817
    .local v0, "type":Ljava/lang/String;
    sget-object v1, Lcom/txznet/sdk/TXZNavManager$TxzNavParam$Navi_Display;->TYPE_HUD:Lcom/txznet/sdk/TXZNavManager$TxzNavParam$Navi_Display;

    if-ne p1, v1, :cond_0

    .line 818
    const-string v0, "hud"

    .line 820
    :cond_0
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v1

    const-string v2, "com.txznet.nav"

    const-string v3, "txz.nav.changeDisplayType"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 822
    return-void
.end method
