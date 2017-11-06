.class final Lcom/txznet/T2/T$1;
.super Lcom/txznet/txz/util/T/T3;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txznet/T2/T;->T(Ljava/lang/String;Lcom/txznet/T2/T$T;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/txznet/txz/util/T/T3",
        "<",
        "Ljava/lang/String;",
        "Lcom/txznet/T2/T$T;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/txznet/T2/T$T;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lcom/txznet/T2/T$T;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/txznet/txz/util/T/T3;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 22
    iget-object v0, p0, Lcom/txznet/T2/T$1;->TN:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 23
    sget-object v0, Lcom/txznet/T2/T;->T:Ljava/util/Map;

    iget-object v1, p0, Lcom/txznet/T2/T$1;->T2:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    :goto_0
    return-void

    .line 25
    :cond_0
    sget-object v0, Lcom/txznet/T2/T;->T:Ljava/util/Map;

    iget-object v1, p0, Lcom/txznet/T2/T$1;->T2:Ljava/lang/Object;

    iget-object v2, p0, Lcom/txznet/T2/T$1;->TN:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
