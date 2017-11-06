.class Lcom/T2/T/T3/Te;
.super Ljava/lang/Object;
.source "Proguard"


# instance fields
.field final T:Lcom/T2/T/T3/TN;

.field private T2:Ljava/util/concurrent/Executor;

.field private T3:Ljava/util/concurrent/Executor;

.field private final TG:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private TN:Ljava/util/concurrent/Executor;

.field private final TR:Ljava/lang/Object;

.field private final Te:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final Tn:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final Tw:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/locks/ReentrantLock;",
            ">;"
        }
    .end annotation
.end field

.field private final Ty:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lcom/T2/T/T3/TN;)V
    .locals 2
    .param p1, "configuration"    # Lcom/T2/T/T3/TN;

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/T2/T/T3/Te;->Te:Ljava/util/Map;

    .line 50
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/T2/T/T3/Te;->Tw:Ljava/util/Map;

    .line 52
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/T2/T/T3/Te;->Ty:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 53
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/T2/T/T3/Te;->Tn:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 54
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/T2/T/T3/Te;->TG:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/T2/T/T3/Te;->TR:Ljava/lang/Object;

    .line 59
    iput-object p1, p0, Lcom/T2/T/T3/Te;->T:Lcom/T2/T/T3/TN;

    .line 61
    iget-object v0, p1, Lcom/T2/T/T3/TN;->Ty:Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lcom/T2/T/T3/Te;->T3:Ljava/util/concurrent/Executor;

    .line 62
    iget-object v0, p1, Lcom/T2/T/T3/TN;->Tn:Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lcom/T2/T/T3/Te;->T2:Ljava/util/concurrent/Executor;

    .line 64
    invoke-static {}, Lcom/T2/T/T3/T;->T()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/T2/T/T3/Te;->TN:Ljava/util/concurrent/Executor;

    .line 65
    return-void
.end method
