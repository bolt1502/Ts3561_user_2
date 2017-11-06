.class public abstract Lcom/txznet/sdk/TXZAsrManager$AsrComplexSelectCallback;
.super Lcom/txznet/comm/T3/T/T$T;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txznet/sdk/TXZAsrManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AsrComplexSelectCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 576
    invoke-direct {p0}, Lcom/txznet/comm/T3/T/T$T;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic addCommand(Ljava/lang/String;[Ljava/lang/String;)Lcom/txznet/comm/T3/T/T$T;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # [Ljava/lang/String;

    .prologue
    .line 576
    invoke-virtual {p0, p1, p2}, Lcom/txznet/sdk/TXZAsrManager$AsrComplexSelectCallback;->addCommand(Ljava/lang/String;[Ljava/lang/String;)Lcom/txznet/sdk/TXZAsrManager$AsrComplexSelectCallback;

    move-result-object v0

    return-object v0
.end method

.method public varargs addCommand(Ljava/lang/String;[Ljava/lang/String;)Lcom/txznet/sdk/TXZAsrManager$AsrComplexSelectCallback;
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "cmds"    # [Ljava/lang/String;

    .prologue
    .line 587
    invoke-super {p0, p1, p2}, Lcom/txznet/comm/T3/T/T$T;->addCommand(Ljava/lang/String;[Ljava/lang/String;)Lcom/txznet/comm/T3/T/T$T;

    .line 588
    return-object p0
.end method

.method public bridge synthetic addIndex(I[Ljava/lang/String;)Lcom/txznet/comm/T3/T/T$T;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # [Ljava/lang/String;

    .prologue
    .line 576
    invoke-virtual {p0, p1, p2}, Lcom/txznet/sdk/TXZAsrManager$AsrComplexSelectCallback;->addIndex(I[Ljava/lang/String;)Lcom/txznet/sdk/TXZAsrManager$AsrComplexSelectCallback;

    move-result-object v0

    return-object v0
.end method

.method public varargs addIndex(I[Ljava/lang/String;)Lcom/txznet/sdk/TXZAsrManager$AsrComplexSelectCallback;
    .locals 0
    .param p1, "index"    # I
    .param p2, "cmds"    # [Ljava/lang/String;

    .prologue
    .line 600
    invoke-super {p0, p1, p2}, Lcom/txznet/comm/T3/T/T$T;->addIndex(I[Ljava/lang/String;)Lcom/txznet/comm/T3/T/T$T;

    .line 601
    return-object p0
.end method

.method public abstract getTaskId()Ljava/lang/String;
.end method

.method public abstract needAsrState()Z
.end method

.method public onCommandSelected(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "command"    # Ljava/lang/String;

    .prologue
    .line 614
    invoke-super {p0, p1, p2}, Lcom/txznet/comm/T3/T/T$T;->onCommandSelected(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    return-void
.end method

.method public onIndexSelected(Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .param p2, "command"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 627
    .local p1, "indexs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-super {p0, p1, p2}, Lcom/txznet/comm/T3/T/T$T;->onIndexSelected(Ljava/util/List;Ljava/lang/String;)V

    .line 628
    return-void
.end method
