.class Lcom/ts/bt/BtExe$6;
.super Ljava/lang/Object;
.source "BtExe.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ts/bt/BtExe;->PbSearch(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2482
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4
    .param p1, "o1"    # Ljava/lang/Object;
    .param p2, "o2"    # Ljava/lang/Object;

    .prologue
    .line 2485
    move-object v0, p1

    check-cast v0, Lcom/ts/bt/BtExe$SearchItem;

    .local v0, "t1":Lcom/ts/bt/BtExe$SearchItem;
    move-object v1, p2

    .line 2486
    check-cast v1, Lcom/ts/bt/BtExe$SearchItem;

    .line 2487
    .local v1, "t2":Lcom/ts/bt/BtExe$SearchItem;
    iget v2, v0, Lcom/ts/bt/BtExe$SearchItem;->MatchPos:I

    iget v3, v1, Lcom/ts/bt/BtExe$SearchItem;->MatchPos:I

    sub-int/2addr v2, v3

    return v2
.end method
