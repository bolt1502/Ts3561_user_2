.class Lcom/txznet/txz/util/TN$T;
.super Landroid/os/Handler;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txznet/txz/util/TN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "T"
.end annotation


# instance fields
.field public T:Z

.field T2:[B

.field T3:[B


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 2
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    const/high16 v1, 0x100000

    .line 588
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 584
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/txznet/txz/util/TN$T;->T3:[B

    .line 585
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/txznet/txz/util/TN$T;->T2:[B

    .line 589
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/txznet/txz/util/TN$T;->T:Z

    .line 590
    return-void
.end method
