.class public Lcom/txznet/comm/ui/TN;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txznet/comm/ui/TN$T;
    }
.end annotation


# static fields
.field protected static T:Landroid/os/HandlerThread;

.field private static T2:Lcom/txznet/comm/ui/TN;

.field protected static T3:Lcom/txznet/txz/util/Te;

.field private static TN:Lcom/txznet/txz/util/Te;


# instance fields
.field private Te:Lcom/txznet/comm/ui/TN$T;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Lcom/txznet/comm/ui/TN;

    invoke-direct {v0}, Lcom/txznet/comm/ui/TN;-><init>()V

    sput-object v0, Lcom/txznet/comm/ui/TN;->T2:Lcom/txznet/comm/ui/TN;

    .line 39
    new-instance v0, Lcom/txznet/txz/util/Te;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/txznet/txz/util/Te;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/txznet/comm/ui/TN;->TN:Lcom/txznet/txz/util/Te;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method static synthetic T(Lcom/txznet/comm/ui/TN;)Lcom/txznet/comm/ui/TN$T;
    .locals 1
    .param p0, "x0"    # Lcom/txznet/comm/ui/TN;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/txznet/comm/ui/TN;->Te:Lcom/txznet/comm/ui/TN$T;

    return-object v0
.end method

.method public static T()Lcom/txznet/comm/ui/TN;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/txznet/comm/ui/TN;->T2:Lcom/txznet/comm/ui/TN;

    return-object v0
.end method

.method public static T(Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 50
    sget-object v0, Lcom/txznet/comm/ui/TN;->TN:Lcom/txznet/txz/util/Te;

    if-eqz v0, :cond_0

    .line 51
    sget-object v0, Lcom/txznet/comm/ui/TN;->TN:Lcom/txznet/txz/util/Te;

    invoke-virtual {v0, p0}, Lcom/txznet/txz/util/Te;->T3(Ljava/lang/Runnable;)V

    .line 53
    :cond_0
    return-void
.end method

.method public static T(Ljava/lang/Runnable;I)V
    .locals 3
    .param p0, "r"    # Ljava/lang/Runnable;
    .param p1, "delay"    # I

    .prologue
    .line 42
    if-lez p1, :cond_0

    .line 43
    sget-object v0, Lcom/txznet/comm/ui/TN;->TN:Lcom/txznet/txz/util/Te;

    int-to-long v1, p1

    invoke-virtual {v0, p0, v1, v2}, Lcom/txznet/txz/util/Te;->T(Ljava/lang/Runnable;J)Z

    .line 47
    :goto_0
    return-void

    .line 45
    :cond_0
    sget-object v0, Lcom/txznet/comm/ui/TN;->TN:Lcom/txznet/txz/util/Te;

    invoke-virtual {v0, p0}, Lcom/txznet/txz/util/Te;->T(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static T(Ljava/lang/Runnable;J)V
    .locals 2
    .param p0, "r"    # Ljava/lang/Runnable;
    .param p1, "delay"    # J

    .prologue
    .line 59
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 60
    sget-object v0, Lcom/txznet/comm/ui/TN;->T3:Lcom/txznet/txz/util/Te;

    invoke-virtual {v0, p0, p1, p2}, Lcom/txznet/txz/util/Te;->T(Ljava/lang/Runnable;J)Z

    .line 64
    :goto_0
    return-void

    .line 62
    :cond_0
    sget-object v0, Lcom/txznet/comm/ui/TN;->T3:Lcom/txznet/txz/util/Te;

    invoke-virtual {v0, p0}, Lcom/txznet/txz/util/Te;->T(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public T(Lcom/txznet/comm/ui/TN$T;)V
    .locals 2
    .param p1, "listener"    # Lcom/txznet/comm/ui/TN$T;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/txznet/comm/ui/TN;->Te:Lcom/txznet/comm/ui/TN$T;

    .line 92
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "UI2Back"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/txznet/comm/ui/TN;->T:Landroid/os/HandlerThread;

    .line 93
    sget-object v0, Lcom/txznet/comm/ui/TN;->T:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 94
    new-instance v0, Lcom/txznet/txz/util/Te;

    sget-object v1, Lcom/txznet/comm/ui/TN;->T:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/txznet/txz/util/Te;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/txznet/comm/ui/TN;->T3:Lcom/txznet/txz/util/Te;

    .line 96
    invoke-static {}, Lcom/txznet/comm/T3/T;->T3()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/txznet/comm/TN/T/T;->T(Landroid/content/Context;)V

    .line 97
    invoke-virtual {p0}, Lcom/txznet/comm/ui/TN;->T3()V

    .line 98
    return-void
.end method

.method public T3()V
    .locals 3

    .prologue
    .line 108
    const-string v0, "#####UI2.0####### initNormal"

    invoke-static {v0}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I

    .line 110
    invoke-static {}, Lcom/txznet/comm/ui/Ty/T;->T3()Lcom/txznet/comm/ui/Ty/T;

    move-result-object v0

    new-instance v1, Lcom/txznet/comm/ui/TN$1;

    invoke-direct {v1, p0}, Lcom/txznet/comm/ui/TN$1;-><init>(Lcom/txznet/comm/ui/TN;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/ui/Ty/T;->T(Lcom/txznet/comm/ui/Ty/T$T;Z)V

    .line 172
    return-void
.end method

.method public T3(Lcom/txznet/comm/ui/TN$T;)V
    .locals 1
    .param p1, "listener"    # Lcom/txznet/comm/ui/TN$T;

    .prologue
    .line 101
    const-string v0, "initBySDK"

    invoke-static {v0}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I

    .line 102
    invoke-virtual {p0, p1}, Lcom/txznet/comm/ui/TN;->T(Lcom/txznet/comm/ui/TN$T;)V

    .line 103
    return-void
.end method
