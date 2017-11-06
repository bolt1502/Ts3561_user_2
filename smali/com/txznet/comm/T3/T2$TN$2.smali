.class Lcom/txznet/comm/T3/T2$TN$2;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txznet/comm/T3/T2$TN;->T()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic T:Lcom/txznet/comm/T3/T2$TN;


# direct methods
.method constructor <init>(Lcom/txznet/comm/T3/T2$TN;)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lcom/txznet/comm/T3/T2$TN$2;->T:Lcom/txznet/comm/T3/T2$TN;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 243
    iget-object v2, p0, Lcom/txznet/comm/T3/T2$TN$2;->T:Lcom/txznet/comm/T3/T2$TN;

    iget-object v2, v2, Lcom/txznet/comm/T3/T2$TN;->T2:Lcom/txznet/txz/T3/T;

    if-eqz v2, :cond_2

    .line 244
    iget-object v2, p0, Lcom/txznet/comm/T3/T2$TN$2;->T:Lcom/txznet/comm/T3/T2$TN;

    iget-object v2, v2, Lcom/txznet/comm/T3/T2$TN;->Tn:Lcom/txznet/comm/T3/T2;

    invoke-static {v2}, Lcom/txznet/comm/T3/T2;->T(Lcom/txznet/comm/T3/T2;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/txznet/comm/T3/T2$T;

    .line 245
    .local v1, "listener":Lcom/txznet/comm/T3/T2$T;
    iget-object v2, p0, Lcom/txznet/comm/T3/T2$TN$2;->T:Lcom/txznet/comm/T3/T2$TN;

    iget-object v2, v2, Lcom/txznet/comm/T3/T2$TN;->T3:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/txznet/comm/T3/T2$T;->T(Ljava/lang/String;)V

    goto :goto_0

    .line 247
    .end local v1    # "listener":Lcom/txznet/comm/T3/T2$T;
    :cond_0
    iget-object v2, p0, Lcom/txznet/comm/T3/T2$TN$2;->T:Lcom/txznet/comm/T3/T2$TN;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/txznet/comm/T3/T2$TN;->T2:Lcom/txznet/txz/T3/T;

    .line 248
    iget-object v2, p0, Lcom/txznet/comm/T3/T2$TN$2;->T:Lcom/txznet/comm/T3/T2$TN;

    invoke-static {}, Lcom/txznet/comm/T3/T2;->TN()I

    move-result v3

    iput v3, v2, Lcom/txznet/comm/T3/T2$TN;->Tw:I

    .line 249
    iget-object v2, p0, Lcom/txznet/comm/T3/T2$TN$2;->T:Lcom/txznet/comm/T3/T2$TN;

    iget v2, v2, Lcom/txznet/comm/T3/T2$TN;->Tw:I

    if-lez v2, :cond_1

    .line 250
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v2

    iget-object v3, p0, Lcom/txznet/comm/T3/T2$TN$2;->T:Lcom/txznet/comm/T3/T2$TN;

    iget-object v3, v3, Lcom/txznet/comm/T3/T2$TN;->Ty:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/Runnable;)V

    .line 251
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v2

    iget-object v3, p0, Lcom/txznet/comm/T3/T2$TN$2;->T:Lcom/txznet/comm/T3/T2$TN;

    iget-object v3, v3, Lcom/txznet/comm/T3/T2$TN;->Ty:Ljava/lang/Runnable;

    iget-object v4, p0, Lcom/txznet/comm/T3/T2$TN$2;->T:Lcom/txznet/comm/T3/T2$TN;

    iget v4, v4, Lcom/txznet/comm/T3/T2$TN;->Tw:I

    invoke-virtual {v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/Runnable;I)V

    .line 253
    :cond_1
    iget-object v2, p0, Lcom/txznet/comm/T3/T2$TN$2;->T:Lcom/txznet/comm/T3/T2$TN;

    invoke-virtual {v2}, Lcom/txznet/comm/T3/T2$TN;->T3()V

    .line 255
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_2
    return-void
.end method
