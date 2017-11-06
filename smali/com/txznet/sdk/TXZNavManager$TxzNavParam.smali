.class public abstract Lcom/txznet/sdk/TXZNavManager$TxzNavParam;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txznet/sdk/TXZNavManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "TxzNavParam"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txznet/sdk/TXZNavManager$TxzNavParam$TxzNaviTool;,
        Lcom/txznet/sdk/TXZNavManager$TxzNavParam$Navi_Display;
    }
.end annotation


# instance fields
.field public isNeedNaviInfo:Z

.field public mDisplayType:Lcom/txznet/sdk/TXZNavManager$TxzNavParam$Navi_Display;

.field public mGetNaviInfoListener:Lcom/txznet/sdk/TXZNavManager$GetTxzNaviInfoListener;

.field public mIsSupport3D:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 755
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 794
    return-void
.end method


# virtual methods
.method public abstract setNaviToolListener(Lcom/txznet/sdk/TXZNavManager$TxzNavParam$TxzNaviTool;)V
.end method
