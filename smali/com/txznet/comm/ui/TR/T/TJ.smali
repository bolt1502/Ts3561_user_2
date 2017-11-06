.class public abstract Lcom/txznet/comm/ui/TR/T/TJ;
.super Lcom/txznet/comm/ui/TR/T/TQ;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txznet/comm/ui/TR/T/TJ$T;
    }
.end annotation


# instance fields
.field public T2:I

.field public T3:Lcom/txznet/comm/ui/TR/T/TJ$T;

.field public TN:Ljava/lang/String;

.field public Te:I

.field public Tw:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lcom/txznet/comm/ui/TR/T/TQ;-><init>(I)V

    .line 9
    return-void
.end method


# virtual methods
.method public abstract T(Lcom/txznet/comm/TN/T;)V
.end method

.method public T(Ljava/lang/String;)V
    .locals 5
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 29
    new-instance v0, Lcom/txznet/comm/TN/T;

    invoke-direct {v0, p1}, Lcom/txznet/comm/TN/T;-><init>(Ljava/lang/String;)V

    .line 30
    .local v0, "jsonBuilder":Lcom/txznet/comm/TN/T;
    const-string v1, "listType"

    const-class v2, Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/txznet/comm/ui/TR/T/TJ;->Te:I

    .line 31
    const-string v1, "count"

    const-class v2, Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/txznet/comm/ui/TR/T/TJ;->T2:I

    .line 32
    const-string v1, "action"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/txznet/comm/ui/TR/T/TJ;->TN:Ljava/lang/String;

    .line 33
    const-string v1, "keywords"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/txznet/comm/ui/TR/T/TJ;->Tw:Ljava/lang/String;

    .line 34
    invoke-virtual {p0, v0}, Lcom/txznet/comm/ui/TR/T/TJ;->T3(Lcom/txznet/comm/TN/T;)V

    .line 35
    invoke-virtual {p0, v0}, Lcom/txznet/comm/ui/TR/T/TJ;->T(Lcom/txznet/comm/TN/T;)V

    .line 37
    return-void
.end method

.method public T3(Lcom/txznet/comm/TN/T;)V
    .locals 5
    .param p1, "data"    # Lcom/txznet/comm/TN/T;

    .prologue
    const/4 v4, 0x0

    .line 44
    new-instance v0, Lcom/txznet/comm/ui/TR/T/TJ$T;

    invoke-direct {v0}, Lcom/txznet/comm/ui/TR/T/TJ$T;-><init>()V

    iput-object v0, p0, Lcom/txznet/comm/ui/TR/T/TJ;->T3:Lcom/txznet/comm/ui/TR/T/TJ$T;

    .line 45
    iget-object v1, p0, Lcom/txznet/comm/ui/TR/T/TJ;->T3:Lcom/txznet/comm/ui/TR/T/TJ$T;

    const-string v0, "curPage"

    const-class v2, Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v0, v2, v3}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/txznet/comm/ui/TR/T/TJ$T;->TN:I

    .line 46
    iget-object v1, p0, Lcom/txznet/comm/ui/TR/T/TJ;->T3:Lcom/txznet/comm/ui/TR/T/TJ$T;

    const-string v0, "maxPage"

    const-class v2, Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v0, v2, v3}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/txznet/comm/ui/TR/T/TJ$T;->Te:I

    .line 47
    iget-object v1, p0, Lcom/txznet/comm/ui/TR/T/TJ;->T3:Lcom/txznet/comm/ui/TR/T/TJ$T;

    const-string v0, "prefix"

    const-class v2, Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/txznet/comm/ui/TR/T/TJ$T;->T:Ljava/lang/String;

    .line 48
    iget-object v1, p0, Lcom/txznet/comm/ui/TR/T/TJ;->T3:Lcom/txznet/comm/ui/TR/T/TJ$T;

    const-string v0, "titlefix"

    const-class v2, Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/txznet/comm/ui/TR/T/TJ$T;->T3:Ljava/lang/String;

    .line 49
    iget-object v1, p0, Lcom/txznet/comm/ui/TR/T/TJ;->T3:Lcom/txznet/comm/ui/TR/T/TJ$T;

    const-string v0, "aftfix"

    const-class v2, Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/txznet/comm/ui/TR/T/TJ$T;->T2:Ljava/lang/String;

    .line 50
    return-void
.end method
