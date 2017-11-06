.class Lcom/ts/bt/BtExe$5;
.super Ljava/lang/Object;
.source "BtExe.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ts/bt/BtExe;->PbSort(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/bt/BtExe;


# direct methods
.method constructor <init>(Lcom/ts/bt/BtExe;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/bt/BtExe$5;->this$0:Lcom/ts/bt/BtExe;

    .line 2444
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6
    .param p1, "o1"    # Ljava/lang/Object;
    .param p2, "o2"    # Ljava/lang/Object;

    .prologue
    .line 2447
    move-object v0, p1

    check-cast v0, Lcom/ts/bt/BtExe$PbItem;

    .local v0, "pb1":Lcom/ts/bt/BtExe$PbItem;
    move-object v1, p2

    .line 2448
    check-cast v1, Lcom/ts/bt/BtExe$PbItem;

    .line 2450
    .local v1, "pb2":Lcom/ts/bt/BtExe$PbItem;
    iget-object v3, p0, Lcom/ts/bt/BtExe$5;->this$0:Lcom/ts/bt/BtExe;

    iget-object v3, v3, Lcom/ts/bt/BtExe;->mCmp:Ljava/util/Comparator;

    iget-object v4, v0, Lcom/ts/bt/BtExe$PbItem;->pinyin:Ljava/lang/String;

    iget-object v5, v1, Lcom/ts/bt/BtExe$PbItem;->pinyin:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    .line 2451
    .local v2, "res":I
    return v2
.end method
