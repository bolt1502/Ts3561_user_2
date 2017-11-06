.class public Lcom/txznet/comm/ui/TR/T/Te;
.super Lcom/txznet/comm/ui/TR/T/TQ;
.source "Proguard"


# instance fields
.field public T:Lcom/TN/T/Ty/T$T;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/txznet/comm/ui/TR/T/TQ;-><init>(I)V

    .line 10
    return-void
.end method


# virtual methods
.method public T(Ljava/lang/String;)V
    .locals 4
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 12
    new-instance v1, Lcom/TN/T/Ty/T$T;

    invoke-direct {v1}, Lcom/TN/T/Ty/T$T;-><init>()V

    iput-object v1, p0, Lcom/txznet/comm/ui/TR/T/Te;->T:Lcom/TN/T/Ty/T$T;

    .line 13
    new-instance v0, Lcom/txznet/comm/TN/T;

    invoke-direct {v0, p1}, Lcom/txznet/comm/TN/T;-><init>(Ljava/lang/String;)V

    .line 16
    .local v0, "jBuilder":Lcom/txznet/comm/TN/T;
    iget-object v2, p0, Lcom/txznet/comm/ui/TR/T/Te;->T:Lcom/TN/T/Ty/T$T;

    const-string v1, "strName"

    const-class v3, Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v2, Lcom/TN/T/Ty/T$T;->T3:Ljava/lang/String;

    .line 17
    iget-object v2, p0, Lcom/txznet/comm/ui/TR/T/Te;->T:Lcom/TN/T/Ty/T$T;

    const-string v1, "strCode"

    const-class v3, Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v2, Lcom/TN/T/Ty/T$T;->T2:Ljava/lang/String;

    .line 18
    iget-object v2, p0, Lcom/txznet/comm/ui/TR/T/Te;->T:Lcom/TN/T/Ty/T$T;

    const-string v1, "strUrl"

    const-class v3, Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v2, Lcom/TN/T/Ty/T$T;->TN:Ljava/lang/String;

    .line 19
    iget-object v2, p0, Lcom/txznet/comm/ui/TR/T/Te;->T:Lcom/TN/T/Ty/T$T;

    const-string v1, "strCurrentPrice"

    const-class v3, Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v2, Lcom/TN/T/Ty/T$T;->Te:Ljava/lang/String;

    .line 20
    iget-object v2, p0, Lcom/txznet/comm/ui/TR/T/Te;->T:Lcom/TN/T/Ty/T$T;

    const-string v1, "strChangeAmount"

    const-class v3, Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v2, Lcom/TN/T/Ty/T$T;->Tw:Ljava/lang/String;

    .line 21
    iget-object v2, p0, Lcom/txznet/comm/ui/TR/T/Te;->T:Lcom/TN/T/Ty/T$T;

    const-string v1, "strChangeRate"

    const-class v3, Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v2, Lcom/TN/T/Ty/T$T;->Ty:Ljava/lang/String;

    .line 22
    iget-object v2, p0, Lcom/txznet/comm/ui/TR/T/Te;->T:Lcom/TN/T/Ty/T$T;

    const-string v1, "strHighestPrice"

    const-class v3, Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v2, Lcom/TN/T/Ty/T$T;->Tn:Ljava/lang/String;

    .line 23
    iget-object v2, p0, Lcom/txznet/comm/ui/TR/T/Te;->T:Lcom/TN/T/Ty/T$T;

    const-string v1, "strLowestPrice"

    const-class v3, Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v2, Lcom/TN/T/Ty/T$T;->TG:Ljava/lang/String;

    .line 24
    iget-object v2, p0, Lcom/txznet/comm/ui/TR/T/Te;->T:Lcom/TN/T/Ty/T$T;

    const-string v1, "strTradingVolume"

    const-class v3, Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v2, Lcom/TN/T/Ty/T$T;->TR:Ljava/lang/String;

    .line 25
    iget-object v2, p0, Lcom/txznet/comm/ui/TR/T/Te;->T:Lcom/TN/T/Ty/T$T;

    const-string v1, "strYestodayClosePrice"

    const-class v3, Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v2, Lcom/TN/T/Ty/T$T;->TW:Ljava/lang/String;

    .line 26
    iget-object v2, p0, Lcom/txznet/comm/ui/TR/T/Te;->T:Lcom/TN/T/Ty/T$T;

    const-string v1, "strTodayOpenPrice"

    const-class v3, Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v2, Lcom/TN/T/Ty/T$T;->TJ:Ljava/lang/String;

    .line 27
    iget-object v2, p0, Lcom/txznet/comm/ui/TR/T/Te;->T:Lcom/TN/T/Ty/T$T;

    const-string v1, "strUpdateTime"

    const-class v3, Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v2, Lcom/TN/T/Ty/T$T;->TB:Ljava/lang/String;

    .line 28
    return-void
.end method
