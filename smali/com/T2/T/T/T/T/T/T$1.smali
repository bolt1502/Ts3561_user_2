.class Lcom/T2/T/T/T/T/T/T$1;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/T2/T/T/T/T/T/T;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic T:Lcom/T2/T/T/T/T/T/T;


# direct methods
.method constructor <init>(Lcom/T2/T/T/T/T/T/T;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/T2/T/T/T/T/T/T$1;->T:Lcom/T2/T/T/T/T/T/T;

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public T()Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 167
    iget-object v1, p0, Lcom/T2/T/T/T/T/T/T$1;->T:Lcom/T2/T/T/T/T/T/T;

    monitor-enter v1

    .line 168
    :try_start_0
    iget-object v0, p0, Lcom/T2/T/T/T/T/T/T$1;->T:Lcom/T2/T/T/T/T/T/T;

    invoke-static {v0}, Lcom/T2/T/T/T/T/T/T;->T(Lcom/T2/T/T/T/T/T/T;)Ljava/io/Writer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 169
    monitor-exit v1

    .line 178
    :goto_0
    return-object v3

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/T2/T/T/T/T/T/T$1;->T:Lcom/T2/T/T/T/T/T/T;

    invoke-static {v0}, Lcom/T2/T/T/T/T/T/T;->T3(Lcom/T2/T/T/T/T/T/T;)V

    .line 172
    iget-object v0, p0, Lcom/T2/T/T/T/T/T/T$1;->T:Lcom/T2/T/T/T/T/T/T;

    invoke-static {v0}, Lcom/T2/T/T/T/T/T/T;->T2(Lcom/T2/T/T/T/T/T/T;)V

    .line 173
    iget-object v0, p0, Lcom/T2/T/T/T/T/T/T$1;->T:Lcom/T2/T/T/T/T/T/T;

    invoke-static {v0}, Lcom/T2/T/T/T/T/T/T;->TN(Lcom/T2/T/T/T/T/T/T;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/T2/T/T/T/T/T/T$1;->T:Lcom/T2/T/T/T/T/T/T;

    invoke-static {v0}, Lcom/T2/T/T/T/T/T/T;->Te(Lcom/T2/T/T/T/T/T/T;)V

    .line 175
    iget-object v0, p0, Lcom/T2/T/T/T/T/T/T$1;->T:Lcom/T2/T/T/T/T/T/T;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/T2/T/T/T/T/T/T;->T(Lcom/T2/T/T/T/T/T/T;I)V

    .line 167
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/T2/T/T/T/T/T/T$1;->T()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
