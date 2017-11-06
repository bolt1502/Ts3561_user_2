.class public Lcom/T2/T/T3/T2;
.super Ljava/lang/Object;
.source "Proguard"


# static fields
.field public static final T:Ljava/lang/String;

.field private static volatile Te:Lcom/T2/T/T3/T2;


# instance fields
.field private T2:Lcom/T2/T/T3/Te;

.field private T3:Lcom/T2/T/T3/TN;

.field private final TN:Lcom/T2/T/T3/Te/T;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lcom/T2/T/T3/T2;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/T2/T/T3/T2;->T:Ljava/lang/String;

    .line 66
    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Lcom/T2/T/T3/Te/T3;

    invoke-direct {v0}, Lcom/T2/T/T3/Te/T3;-><init>()V

    iput-object v0, p0, Lcom/T2/T/T3/T2;->TN:Lcom/T2/T/T3/Te/T;

    .line 81
    return-void
.end method

.method public static T()Lcom/T2/T/T3/T2;
    .locals 2

    .prologue
    .line 70
    sget-object v0, Lcom/T2/T/T3/T2;->Te:Lcom/T2/T/T3/T2;

    if-nez v0, :cond_1

    .line 71
    const-class v1, Lcom/T2/T/T3/T2;

    monitor-enter v1

    .line 72
    :try_start_0
    sget-object v0, Lcom/T2/T/T3/T2;->Te:Lcom/T2/T/T3/T2;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Lcom/T2/T/T3/T2;

    invoke-direct {v0}, Lcom/T2/T/T3/T2;-><init>()V

    sput-object v0, Lcom/T2/T/T3/T2;->Te:Lcom/T2/T/T3/T2;

    .line 71
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    :cond_1
    sget-object v0, Lcom/T2/T/T3/T2;->Te:Lcom/T2/T/T3/T2;

    return-object v0

    .line 71
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private Te()V
    .locals 2

    .prologue
    .line 567
    iget-object v0, p0, Lcom/T2/T/T3/T2;->T3:Lcom/T2/T/T3/TN;

    if-nez v0, :cond_0

    .line 568
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ImageLoader must be init with configuration before using"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 570
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized T(Lcom/T2/T/T3/TN;)V
    .locals 2
    .param p1, "configuration"    # Lcom/T2/T/T3/TN;

    .prologue
    .line 92
    monitor-enter p0

    if-nez p1, :cond_0

    .line 93
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ImageLoader configuration can not be initialized with null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 95
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/T2/T/T3/T2;->T3:Lcom/T2/T/T3/TN;

    if-nez v0, :cond_1

    .line 96
    const-string v0, "Initialize ImageLoader with configuration"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/T2/T/T2/T;->T(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    new-instance v0, Lcom/T2/T/T3/Te;

    invoke-direct {v0, p1}, Lcom/T2/T/T3/Te;-><init>(Lcom/T2/T/T3/TN;)V

    iput-object v0, p0, Lcom/T2/T/T3/T2;->T2:Lcom/T2/T/T3/Te;

    .line 98
    iput-object p1, p0, Lcom/T2/T/T3/T2;->T3:Lcom/T2/T/T3/TN;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    :goto_0
    monitor-exit p0

    return-void

    .line 100
    :cond_1
    :try_start_2
    const-string v0, "Try to initialize ImageLoader which had already been initialized before. To re-init ImageLoader with new configuration call ImageLoader.destroy() at first."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/T2/T/T2/T;->T2(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public T2()V
    .locals 1

    .prologue
    .line 588
    invoke-direct {p0}, Lcom/T2/T/T3/T2;->Te()V

    .line 589
    iget-object v0, p0, Lcom/T2/T/T3/T2;->T3:Lcom/T2/T/T3/TN;

    iget-object v0, v0, Lcom/T2/T/T3/TN;->TP:Lcom/T2/T/T/T3/T;

    invoke-interface {v0}, Lcom/T2/T/T/T3/T;->T()V

    .line 590
    return-void
.end method

.method public T3()Z
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/T2/T/T3/T2;->T3:Lcom/T2/T/T3/TN;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public TN()V
    .locals 1

    .prologue
    .line 630
    invoke-direct {p0}, Lcom/T2/T/T3/T2;->Te()V

    .line 631
    iget-object v0, p0, Lcom/T2/T/T3/T2;->T3:Lcom/T2/T/T3/TN;

    iget-object v0, v0, Lcom/T2/T/T3/TN;->Tr:Lcom/T2/T/T/T/T;

    invoke-interface {v0}, Lcom/T2/T/T/T/T;->T()V

    .line 632
    return-void
.end method
