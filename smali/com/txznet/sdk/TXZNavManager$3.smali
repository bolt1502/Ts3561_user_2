.class Lcom/txznet/sdk/TXZNavManager$3;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/txznet/sdk/TXZService$T;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txznet/sdk/TXZNavManager;->T3()V
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
    .line 317
    iput-object p1, p0, Lcom/txznet/sdk/TXZNavManager$3;->T:Lcom/txznet/sdk/TXZNavManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public T(Ljava/lang/String;Ljava/lang/String;[B)[B
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "command"    # Ljava/lang/String;
    .param p3, "data"    # [B

    .prologue
    const/4 v3, 0x0

    .line 321
    iget-object v2, p0, Lcom/txznet/sdk/TXZNavManager$3;->T:Lcom/txznet/sdk/TXZNavManager;

    invoke-static {v2}, Lcom/txznet/sdk/TXZNavManager;->T3(Lcom/txznet/sdk/TXZNavManager;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/txznet/sdk/TXZNavManager$3;->T:Lcom/txznet/sdk/TXZNavManager;

    invoke-static {v2}, Lcom/txznet/sdk/TXZNavManager;->T3(Lcom/txznet/sdk/TXZNavManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_1

    .line 360
    :cond_0
    return-object v3

    .line 324
    :cond_1
    const-string v2, "enter"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 325
    iget-object v2, p0, Lcom/txznet/sdk/TXZNavManager$3;->T:Lcom/txznet/sdk/TXZNavManager;

    invoke-static {v2}, Lcom/txznet/sdk/TXZNavManager;->T3(Lcom/txznet/sdk/TXZNavManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/txznet/sdk/TXZNavManager$NavStatusListener;

    .line 326
    .local v1, "listener":Lcom/txznet/sdk/TXZNavManager$NavStatusListener;
    invoke-interface {v1}, Lcom/txznet/sdk/TXZNavManager$NavStatusListener;->onEnter()V

    goto :goto_0

    .line 330
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lcom/txznet/sdk/TXZNavManager$NavStatusListener;
    :cond_2
    const-string v2, "exit"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 331
    iget-object v2, p0, Lcom/txznet/sdk/TXZNavManager$3;->T:Lcom/txznet/sdk/TXZNavManager;

    invoke-static {v2}, Lcom/txznet/sdk/TXZNavManager;->T3(Lcom/txznet/sdk/TXZNavManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/txznet/sdk/TXZNavManager$NavStatusListener;

    .line 332
    .restart local v1    # "listener":Lcom/txznet/sdk/TXZNavManager$NavStatusListener;
    invoke-interface {v1}, Lcom/txznet/sdk/TXZNavManager$NavStatusListener;->onExit()V

    goto :goto_1

    .line 336
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lcom/txznet/sdk/TXZNavManager$NavStatusListener;
    :cond_3
    const-string v2, "foreground"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 337
    iget-object v2, p0, Lcom/txznet/sdk/TXZNavManager$3;->T:Lcom/txznet/sdk/TXZNavManager;

    invoke-static {v2}, Lcom/txznet/sdk/TXZNavManager;->T3(Lcom/txznet/sdk/TXZNavManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/txznet/sdk/TXZNavManager$NavStatusListener;

    .line 338
    .restart local v1    # "listener":Lcom/txznet/sdk/TXZNavManager$NavStatusListener;
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/txznet/sdk/TXZNavManager$NavStatusListener;->onForeground(Z)V

    goto :goto_2

    .line 342
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lcom/txznet/sdk/TXZNavManager$NavStatusListener;
    :cond_4
    const-string v2, "background"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 343
    iget-object v2, p0, Lcom/txznet/sdk/TXZNavManager$3;->T:Lcom/txznet/sdk/TXZNavManager;

    invoke-static {v2}, Lcom/txznet/sdk/TXZNavManager;->T3(Lcom/txznet/sdk/TXZNavManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/txznet/sdk/TXZNavManager$NavStatusListener;

    .line 344
    .restart local v1    # "listener":Lcom/txznet/sdk/TXZNavManager$NavStatusListener;
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/txznet/sdk/TXZNavManager$NavStatusListener;->onForeground(Z)V

    goto :goto_3

    .line 348
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lcom/txznet/sdk/TXZNavManager$NavStatusListener;
    :cond_5
    const-string v2, "start"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 349
    iget-object v2, p0, Lcom/txznet/sdk/TXZNavManager$3;->T:Lcom/txznet/sdk/TXZNavManager;

    invoke-static {v2}, Lcom/txznet/sdk/TXZNavManager;->T3(Lcom/txznet/sdk/TXZNavManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/txznet/sdk/TXZNavManager$NavStatusListener;

    .line 350
    .restart local v1    # "listener":Lcom/txznet/sdk/TXZNavManager$NavStatusListener;
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p3}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v1, v2}, Lcom/txznet/sdk/TXZNavManager$NavStatusListener;->onStart(Ljava/lang/String;)V

    goto :goto_4

    .line 354
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lcom/txznet/sdk/TXZNavManager$NavStatusListener;
    :cond_6
    const-string v2, "end"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 355
    iget-object v2, p0, Lcom/txznet/sdk/TXZNavManager$3;->T:Lcom/txznet/sdk/TXZNavManager;

    invoke-static {v2}, Lcom/txznet/sdk/TXZNavManager;->T3(Lcom/txznet/sdk/TXZNavManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/txznet/sdk/TXZNavManager$NavStatusListener;

    .line 356
    .restart local v1    # "listener":Lcom/txznet/sdk/TXZNavManager$NavStatusListener;
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p3}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v1, v2}, Lcom/txznet/sdk/TXZNavManager$NavStatusListener;->onEnd(Ljava/lang/String;)V

    goto :goto_5
.end method
