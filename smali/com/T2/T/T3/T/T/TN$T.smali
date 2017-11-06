.class abstract Lcom/T2/T/T3/T/T/TN$T;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/T2/T/T3/T/T/TN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "T"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field T:Lcom/T2/T/T3/T/T/TN$T2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/T2/T/T3/T/T/TN$T2",
            "<TE;>;"
        }
    .end annotation
.end field

.field final synthetic T2:Lcom/T2/T/T3/T/T/TN;

.field T3:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private TN:Lcom/T2/T/T3/T/T/TN$T2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/T2/T/T3/T/T/TN$T2",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/T2/T/T3/T/T/TN;)V
    .locals 2

    .prologue
    .line 1036
    iput-object p1, p0, Lcom/T2/T/T3/T/T/TN$T;->T2:Lcom/T2/T/T3/T/T/TN;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1038
    iget-object v0, p1, Lcom/T2/T/T3/T/T/TN;->T2:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1039
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1041
    :try_start_0
    invoke-virtual {p0}, Lcom/T2/T/T3/T/T/TN$T;->T()Lcom/T2/T/T3/T/T/TN$T2;

    move-result-object v1

    iput-object v1, p0, Lcom/T2/T/T3/T/T/TN$T;->T:Lcom/T2/T/T3/T/T/TN$T2;

    .line 1042
    iget-object v1, p0, Lcom/T2/T/T3/T/T/TN$T;->T:Lcom/T2/T/T3/T/T/TN$T2;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lcom/T2/T/T3/T/T/TN$T;->T3:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1044
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1046
    return-void

    .line 1042
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/T2/T/T3/T/T/TN$T;->T:Lcom/T2/T/T3/T/T/TN$T2;

    iget-object v1, v1, Lcom/T2/T/T3/T/T/TN$T2;->T:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1043
    :catchall_0
    move-exception v1

    .line 1044
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1045
    throw v1
.end method

.method private T3(Lcom/T2/T/T3/T/T/TN$T2;)Lcom/T2/T/T3/T/T/TN$T2;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/T2/T/T3/T/T/TN$T2",
            "<TE;>;)",
            "Lcom/T2/T/T3/T/T/TN$T2",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1056
    .local p1, "n":Lcom/T2/T/T3/T/T/TN$T2;, "Lcom/T2/T/T3/T/T/TN$T2<TE;>;"
    :goto_0
    invoke-virtual {p0, p1}, Lcom/T2/T/T3/T/T/TN$T;->T(Lcom/T2/T/T3/T/T/TN$T2;)Lcom/T2/T/T3/T/T/TN$T2;

    move-result-object v0

    .line 1057
    .local v0, "s":Lcom/T2/T/T3/T/T/TN$T2;, "Lcom/T2/T/T3/T/T/TN$T2<TE;>;"
    if-nez v0, :cond_1

    .line 1058
    const/4 v0, 0x0

    .line 1062
    .end local v0    # "s":Lcom/T2/T/T3/T/T/TN$T2;, "Lcom/T2/T/T3/T/T/TN$T2<TE;>;"
    :cond_0
    :goto_1
    return-object v0

    .line 1059
    .restart local v0    # "s":Lcom/T2/T/T3/T/T/TN$T2;, "Lcom/T2/T/T3/T/T/TN$T2<TE;>;"
    :cond_1
    iget-object v1, v0, Lcom/T2/T/T3/T/T/TN$T2;->T:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 1061
    if-ne v0, p1, :cond_2

    .line 1062
    invoke-virtual {p0}, Lcom/T2/T/T3/T/T/TN$T;->T()Lcom/T2/T/T3/T/T/TN$T2;

    move-result-object v0

    goto :goto_1

    .line 1064
    :cond_2
    move-object p1, v0

    .line 1055
    goto :goto_0
.end method


# virtual methods
.method abstract T()Lcom/T2/T/T3/T/T/TN$T2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/T2/T/T3/T/T/TN$T2",
            "<TE;>;"
        }
    .end annotation
.end method

.method abstract T(Lcom/T2/T/T3/T/T/TN$T2;)Lcom/T2/T/T3/T/T/TN$T2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/T2/T/T3/T/T/TN$T2",
            "<TE;>;)",
            "Lcom/T2/T/T3/T/T/TN$T2",
            "<TE;>;"
        }
    .end annotation
.end method

.method T3()V
    .locals 2

    .prologue
    .line 1072
    iget-object v1, p0, Lcom/T2/T/T3/T/T/TN$T;->T2:Lcom/T2/T/T3/T/T/TN;

    iget-object v0, v1, Lcom/T2/T/T3/T/T/TN;->T2:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1073
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1076
    :try_start_0
    iget-object v1, p0, Lcom/T2/T/T3/T/T/TN$T;->T:Lcom/T2/T/T3/T/T/TN$T2;

    invoke-direct {p0, v1}, Lcom/T2/T/T3/T/T/TN$T;->T3(Lcom/T2/T/T3/T/T/TN$T2;)Lcom/T2/T/T3/T/T/TN$T2;

    move-result-object v1

    iput-object v1, p0, Lcom/T2/T/T3/T/T/TN$T;->T:Lcom/T2/T/T3/T/T/TN$T2;

    .line 1077
    iget-object v1, p0, Lcom/T2/T/T3/T/T/TN$T;->T:Lcom/T2/T/T3/T/T/TN$T2;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lcom/T2/T/T3/T/T/TN$T;->T3:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1079
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1081
    return-void

    .line 1077
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/T2/T/T3/T/T/TN$T;->T:Lcom/T2/T/T3/T/T/TN$T2;

    iget-object v1, v1, Lcom/T2/T/T3/T/T/TN$T2;->T:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1078
    :catchall_0
    move-exception v1

    .line 1079
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1080
    throw v1
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 1084
    iget-object v0, p0, Lcom/T2/T/T3/T/T/TN$T;->T:Lcom/T2/T/T3/T/T/TN$T2;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 1088
    iget-object v1, p0, Lcom/T2/T/T3/T/T/TN$T;->T:Lcom/T2/T/T3/T/T/TN$T2;

    if-nez v1, :cond_0

    .line 1089
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 1090
    :cond_0
    iget-object v1, p0, Lcom/T2/T/T3/T/T/TN$T;->T:Lcom/T2/T/T3/T/T/TN$T2;

    iput-object v1, p0, Lcom/T2/T/T3/T/T/TN$T;->TN:Lcom/T2/T/T3/T/T/TN$T2;

    .line 1091
    iget-object v0, p0, Lcom/T2/T/T3/T/T/TN$T;->T3:Ljava/lang/Object;

    .line 1092
    .local v0, "x":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lcom/T2/T/T3/T/T/TN$T;->T3()V

    .line 1093
    return-object v0
.end method

.method public remove()V
    .locals 3

    .prologue
    .line 1097
    iget-object v1, p0, Lcom/T2/T/T3/T/T/TN$T;->TN:Lcom/T2/T/T3/T/T/TN$T2;

    .line 1098
    .local v1, "n":Lcom/T2/T/T3/T/T/TN$T2;, "Lcom/T2/T/T3/T/T/TN$T2<TE;>;"
    if-nez v1, :cond_0

    .line 1099
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    .line 1100
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/T2/T/T3/T/T/TN$T;->TN:Lcom/T2/T/T3/T/T/TN$T2;

    .line 1101
    iget-object v2, p0, Lcom/T2/T/T3/T/T/TN$T;->T2:Lcom/T2/T/T3/T/T/TN;

    iget-object v0, v2, Lcom/T2/T/T3/T/T/TN;->T2:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1102
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1104
    :try_start_0
    iget-object v2, v1, Lcom/T2/T/T3/T/T/TN$T2;->T:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 1105
    iget-object v2, p0, Lcom/T2/T/T3/T/T/TN$T;->T2:Lcom/T2/T/T3/T/T/TN;

    invoke-virtual {v2, v1}, Lcom/T2/T/T3/T/T/TN;->T(Lcom/T2/T/T3/T/T/TN$T2;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1107
    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1109
    return-void

    .line 1106
    :catchall_0
    move-exception v2

    .line 1107
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1108
    throw v2
.end method
