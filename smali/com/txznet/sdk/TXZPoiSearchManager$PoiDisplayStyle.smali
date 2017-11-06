.class public Lcom/txznet/sdk/TXZPoiSearchManager$PoiDisplayStyle;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txznet/sdk/TXZPoiSearchManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PoiDisplayStyle"
.end annotation


# instance fields
.field public mPoiResultDisplayWinRecord:Z

.field public mShowQRCodeWhenNoResult:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 527
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 532
    iput-boolean v0, p0, Lcom/txznet/sdk/TXZPoiSearchManager$PoiDisplayStyle;->mPoiResultDisplayWinRecord:Z

    .line 537
    iput-boolean v0, p0, Lcom/txznet/sdk/TXZPoiSearchManager$PoiDisplayStyle;->mShowQRCodeWhenNoResult:Z

    return-void
.end method
