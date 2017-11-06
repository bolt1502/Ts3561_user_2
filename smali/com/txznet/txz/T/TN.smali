.class public Lcom/txznet/txz/T/TN;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txznet/txz/T/TN$T;
    }
.end annotation


# static fields
.field static final T:Ljava/util/concurrent/locks/ReadWriteLock;

.field public static T2:I

.field static T3:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/txznet/txz/T/TN$T;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>(Z)V

    sput-object v0, Lcom/txznet/txz/T/TN;->T:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/txznet/txz/T/TN;->T3:Ljava/util/Map;

    .line 36
    const/4 v0, 0x1

    sput v0, Lcom/txznet/txz/T/TN;->T2:I

    .line 53
    invoke-static {}, Lcom/txznet/comm/T3/T/Te;->T()V

    .line 54
    invoke-static {}, Lcom/txznet/comm/T3/T/Tw;->T()V

    .line 55
    invoke-static {}, Lcom/txznet/comm/T3/T/TP;->T()V

    .line 56
    invoke-static {}, Lcom/txznet/comm/T3/T/T2;->T()V

    .line 57
    invoke-static {}, Lcom/txznet/comm/T3/T/T;->Tw()V

    .line 59
    return-void
.end method

.method public static T(Ljava/lang/String;Lcom/txznet/txz/T/TN$T;)V
    .locals 1
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "proc"    # Lcom/txznet/txz/T/TN$T;

    .prologue
    .line 31
    sget-object v0, Lcom/txznet/txz/T/TN;->T:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 32
    sget-object v0, Lcom/txznet/txz/T/TN;->T3:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lcom/txznet/txz/T/TN;->T:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 34
    return-void
.end method
