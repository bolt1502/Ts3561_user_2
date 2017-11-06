.class public Lcom/txznet/comm/ui/Tw/T2;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/txznet/comm/ui/Tw/T;


# instance fields
.field T:Ljava/lang/Runnable;

.field private T2:Ljava/lang/Object;

.field private T3:Lcom/txznet/comm/ui/Tw/Tw;

.field private TN:Ljava/lang/Boolean;

.field private Te:Ljava/lang/Float;

.field private Tw:Lcom/txznet/comm/ui/Te/T2;

.field private Ty:Lcom/txznet/comm/ui/Tw$T;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/txznet/comm/ui/Tw/T2;->T2:Ljava/lang/Object;

    .line 21
    iput-object v1, p0, Lcom/txznet/comm/ui/Tw/T2;->TN:Ljava/lang/Boolean;

    .line 22
    iput-object v1, p0, Lcom/txznet/comm/ui/Tw/T2;->Te:Ljava/lang/Float;

    .line 23
    iput-object v1, p0, Lcom/txznet/comm/ui/Tw/T2;->Tw:Lcom/txznet/comm/ui/Te/T2;

    .line 24
    iput-object v1, p0, Lcom/txznet/comm/ui/Tw/T2;->Ty:Lcom/txznet/comm/ui/Tw$T;

    .line 71
    new-instance v0, Lcom/txznet/comm/ui/Tw/T2$1;

    invoke-direct {v0, p0}, Lcom/txznet/comm/ui/Tw/T2$1;-><init>(Lcom/txznet/comm/ui/Tw/T2;)V

    iput-object v0, p0, Lcom/txznet/comm/ui/Tw/T2;->T:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic T(Lcom/txznet/comm/ui/Tw/T2;)Lcom/txznet/comm/ui/Tw/Tw;
    .locals 1
    .param p0, "x0"    # Lcom/txznet/comm/ui/Tw/T2;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/txznet/comm/ui/Tw/T2;->T3:Lcom/txznet/comm/ui/Tw/Tw;

    return-object v0
.end method

.method private T(Ljava/lang/String;)V
    .locals 2
    .param p1, "log"    # Ljava/lang/String;

    .prologue
    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RecordWin2Impl1:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I

    .line 29
    return-void
.end method

.method private T2()V
    .locals 1

    .prologue
    .line 55
    const-string v0, "releaseWinRecord"

    invoke-direct {p0, v0}, Lcom/txznet/comm/ui/Tw/T2;->T(Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/txznet/comm/ui/Tw/T2;->T3:Lcom/txznet/comm/ui/Tw/Tw;

    if-eqz v0, :cond_1

    .line 57
    iget-object v0, p0, Lcom/txznet/comm/ui/Tw/T2;->T3:Lcom/txznet/comm/ui/Tw/Tw;

    invoke-virtual {v0}, Lcom/txznet/comm/ui/Tw/Tw;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/txznet/comm/ui/Tw/T2;->T3:Lcom/txznet/comm/ui/Tw/Tw;

    invoke-virtual {v0}, Lcom/txznet/comm/ui/Tw/Tw;->dismiss()V

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/txznet/comm/ui/Tw/T2;->T3:Lcom/txznet/comm/ui/Tw/Tw;

    invoke-virtual {v0}, Lcom/txznet/comm/ui/Tw/Tw;->T3()V

    .line 61
    invoke-static {}, Lcom/txznet/comm/ui/Te/TN;->T()Lcom/txznet/comm/ui/Te/TN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txznet/comm/ui/Te/TN;->Tw()V

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/txznet/comm/ui/Tw/T2;->T3:Lcom/txznet/comm/ui/Tw/Tw;

    .line 64
    :cond_1
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 65
    return-void
.end method

.method private T3()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 36
    iget-object v2, p0, Lcom/txznet/comm/ui/Tw/T2;->Tw:Lcom/txznet/comm/ui/Te/T2;

    if-eqz v2, :cond_3

    .line 37
    new-instance v2, Lcom/txznet/comm/ui/Tw/Tw;

    iget-object v3, p0, Lcom/txznet/comm/ui/Tw/T2;->TN:Ljava/lang/Boolean;

    if-nez v3, :cond_2

    :goto_0
    iget-object v3, p0, Lcom/txznet/comm/ui/Tw/T2;->Tw:Lcom/txznet/comm/ui/Te/T2;

    invoke-direct {v2, v1, v3}, Lcom/txznet/comm/ui/Tw/Tw;-><init>(ZLcom/txznet/comm/ui/Te/T2;)V

    iput-object v2, p0, Lcom/txznet/comm/ui/Tw/T2;->T3:Lcom/txznet/comm/ui/Tw/Tw;

    .line 43
    :goto_1
    iget-object v1, p0, Lcom/txznet/comm/ui/Tw/T2;->Ty:Lcom/txznet/comm/ui/Tw$T;

    if-eqz v1, :cond_0

    .line 44
    iget-object v1, p0, Lcom/txznet/comm/ui/Tw/T2;->T3:Lcom/txznet/comm/ui/Tw/Tw;

    iget-object v2, p0, Lcom/txznet/comm/ui/Tw/T2;->Ty:Lcom/txznet/comm/ui/Tw$T;

    invoke-virtual {v1, v2}, Lcom/txznet/comm/ui/Tw/Tw;->T(Lcom/txznet/comm/ui/Tw$T;)V

    .line 46
    :cond_0
    iget-object v1, p0, Lcom/txznet/comm/ui/Tw/T2;->Te:Ljava/lang/Float;

    if-eqz v1, :cond_1

    .line 47
    iget-object v1, p0, Lcom/txznet/comm/ui/Tw/T2;->T3:Lcom/txznet/comm/ui/Tw/Tw;

    iget-object v2, p0, Lcom/txznet/comm/ui/Tw/T2;->Te:Ljava/lang/Float;

    invoke-virtual {v1, v2}, Lcom/txznet/comm/ui/Tw/Tw;->T(Ljava/lang/Float;)V

    .line 49
    :cond_1
    return-void

    .line 37
    :cond_2
    iget-object v1, p0, Lcom/txznet/comm/ui/Tw/T2;->TN:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0

    .line 39
    :cond_3
    invoke-static {}, Lcom/txznet/comm/ui/Te/T/Tw;->Te()Lcom/txznet/comm/ui/Te/T/Tw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/txznet/comm/ui/Te/T/Tw;->TN()V

    .line 40
    invoke-static {}, Lcom/txznet/comm/ui/Te/T/Tw;->Te()Lcom/txznet/comm/ui/Te/T/Tw;

    move-result-object v0

    .line 41
    .local v0, "winLayout":Lcom/txznet/comm/ui/Te/T2;
    new-instance v2, Lcom/txznet/comm/ui/Tw/Tw;

    iget-object v3, p0, Lcom/txznet/comm/ui/Tw/T2;->TN:Ljava/lang/Boolean;

    if-nez v3, :cond_4

    :goto_2
    invoke-direct {v2, v1, v0}, Lcom/txznet/comm/ui/Tw/Tw;-><init>(ZLcom/txznet/comm/ui/Te/T2;)V

    iput-object v2, p0, Lcom/txznet/comm/ui/Tw/T2;->T3:Lcom/txznet/comm/ui/Tw/Tw;

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/txznet/comm/ui/Tw/T2;->TN:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_2
.end method

.method static synthetic T3(Lcom/txznet/comm/ui/Tw/T2;)V
    .locals 0
    .param p0, "x0"    # Lcom/txznet/comm/ui/Tw/T2;

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/txznet/comm/ui/Tw/T2;->T2()V

    return-void
.end method


# virtual methods
.method public T()V
    .locals 2

    .prologue
    .line 82
    iget-object v1, p0, Lcom/txznet/comm/ui/Tw/T2;->T2:Ljava/lang/Object;

    monitor-enter v1

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/txznet/comm/ui/Tw/T2;->T3:Lcom/txznet/comm/ui/Tw/Tw;

    if-nez v0, :cond_0

    .line 84
    invoke-direct {p0}, Lcom/txznet/comm/ui/Tw/T2;->T3()V

    .line 86
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    iget-object v0, p0, Lcom/txznet/comm/ui/Tw/T2;->T3:Lcom/txznet/comm/ui/Tw/Tw;

    invoke-virtual {v0}, Lcom/txznet/comm/ui/Tw/Tw;->T()V

    .line 88
    iget-object v0, p0, Lcom/txznet/comm/ui/Tw/T2;->T:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/txznet/comm/ui/TN;->T(Ljava/lang/Runnable;)V

    .line 89
    iget-object v0, p0, Lcom/txznet/comm/ui/Tw/T2;->T:Ljava/lang/Runnable;

    const/16 v1, 0x1388

    invoke-static {v0, v1}, Lcom/txznet/comm/ui/TN;->T(Ljava/lang/Runnable;I)V

    .line 90
    return-void

    .line 86
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public T(Lcom/txznet/comm/ui/Te/T2;)V
    .locals 2
    .param p1, "winLayout"    # Lcom/txznet/comm/ui/Te/T2;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/txznet/comm/ui/Tw/T2;->Tw:Lcom/txznet/comm/ui/Te/T2;

    .line 115
    iget-object v0, p0, Lcom/txznet/comm/ui/Tw/T2;->T3:Lcom/txznet/comm/ui/Tw/Tw;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/txznet/comm/ui/Tw/T2;->T3:Lcom/txznet/comm/ui/Tw/Tw;

    iget-object v1, p0, Lcom/txznet/comm/ui/Tw/T2;->Tw:Lcom/txznet/comm/ui/Te/T2;

    invoke-virtual {v0, v1}, Lcom/txznet/comm/ui/Tw/Tw;->T(Lcom/txznet/comm/ui/Te/T2;)V

    .line 118
    :cond_0
    return-void
.end method

.method public T(Z)V
    .locals 1
    .param p1, "isFullScreen"    # Z

    .prologue
    .line 100
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/txznet/comm/ui/Tw/T2;->TN:Ljava/lang/Boolean;

    .line 101
    iget-object v0, p0, Lcom/txznet/comm/ui/Tw/T2;->T3:Lcom/txznet/comm/ui/Tw/Tw;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/txznet/comm/ui/Tw/T2;->T3:Lcom/txznet/comm/ui/Tw/Tw;

    invoke-virtual {v0, p1}, Lcom/txznet/comm/ui/Tw/Tw;->T(Z)V

    .line 104
    :cond_0
    return-void
.end method

.method public dismiss()V
    .locals 3

    .prologue
    .line 133
    iget-object v1, p0, Lcom/txznet/comm/ui/Tw/T2;->T2:Ljava/lang/Object;

    monitor-enter v1

    .line 134
    :try_start_0
    iget-object v0, p0, Lcom/txznet/comm/ui/Tw/T2;->T3:Lcom/txznet/comm/ui/Tw/Tw;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/txznet/comm/ui/Tw/T2;->T3:Lcom/txznet/comm/ui/Tw/Tw;

    invoke-virtual {v0}, Lcom/txznet/comm/ui/Tw/Tw;->dismiss()V

    .line 136
    iget-object v0, p0, Lcom/txznet/comm/ui/Tw/T2;->T:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/txznet/comm/ui/TN;->T(Ljava/lang/Runnable;)V

    .line 137
    iget-object v0, p0, Lcom/txznet/comm/ui/Tw/T2;->T:Ljava/lang/Runnable;

    const/16 v2, 0x1388

    invoke-static {v0, v2}, Lcom/txznet/comm/ui/TN;->T(Ljava/lang/Runnable;I)V

    .line 139
    :cond_0
    monitor-exit v1

    .line 140
    return-void

    .line 139
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/txznet/comm/ui/Tw/T2;->T3:Lcom/txznet/comm/ui/Tw/Tw;

    if-nez v0, :cond_0

    .line 94
    const/4 v0, 0x0

    .line 96
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/txznet/comm/ui/Tw/T2;->T3:Lcom/txznet/comm/ui/Tw/Tw;

    invoke-virtual {v0}, Lcom/txznet/comm/ui/Tw/Tw;->isShowing()Z

    move-result v0

    goto :goto_0
.end method

.method public show()V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/txznet/comm/ui/Tw/T2;->T:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/txznet/comm/ui/TN;->T(Ljava/lang/Runnable;)V

    .line 123
    iget-object v1, p0, Lcom/txznet/comm/ui/Tw/T2;->T2:Ljava/lang/Object;

    monitor-enter v1

    .line 124
    :try_start_0
    iget-object v0, p0, Lcom/txznet/comm/ui/Tw/T2;->T3:Lcom/txznet/comm/ui/Tw/Tw;

    if-nez v0, :cond_0

    .line 125
    invoke-static {}, Lcom/txznet/comm/ui/Te/TN;->T()Lcom/txznet/comm/ui/Te/TN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txznet/comm/ui/Te/TN;->TN()V

    .line 126
    invoke-direct {p0}, Lcom/txznet/comm/ui/Tw/T2;->T3()V

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/txznet/comm/ui/Tw/T2;->T3:Lcom/txznet/comm/ui/Tw/Tw;

    invoke-virtual {v0}, Lcom/txznet/comm/ui/Tw/Tw;->show()V

    .line 129
    monitor-exit v1

    .line 130
    return-void

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
