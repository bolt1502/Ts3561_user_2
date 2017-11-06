.class public Lcom/txznet/T2/T;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txznet/T2/T$T;
    }
.end annotation


# static fields
.field public static T:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/txznet/T2/T$T;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/txznet/T2/T;->T:Ljava/util/Map;

    return-void
.end method

.method public static T(Ljava/lang/String;Lcom/txznet/T2/T$T;)V
    .locals 3
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "processor"    # Lcom/txznet/T2/T$T;

    .prologue
    .line 18
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    new-instance v1, Lcom/txznet/T2/T$1;

    invoke-direct {v1, p0, p1}, Lcom/txznet/T2/T$1;-><init>(Ljava/lang/String;Lcom/txznet/T2/T$T;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/Runnable;I)V

    .line 28
    return-void
.end method
