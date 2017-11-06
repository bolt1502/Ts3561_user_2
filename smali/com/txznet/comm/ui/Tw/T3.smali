.class public Lcom/txznet/comm/ui/Tw/T3;
.super Ljava/lang/Object;
.source "Proguard"


# static fields
.field private static T:Lcom/txznet/comm/ui/Tw/T3;


# instance fields
.field private T3:Lcom/txznet/comm/ui/Tw/T;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    new-instance v0, Lcom/txznet/comm/ui/Tw/T3;

    invoke-direct {v0}, Lcom/txznet/comm/ui/Tw/T3;-><init>()V

    sput-object v0, Lcom/txznet/comm/ui/Tw/T3;->T:Lcom/txznet/comm/ui/Tw/T3;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Lcom/txznet/comm/ui/Tw/T2;

    invoke-direct {v0}, Lcom/txznet/comm/ui/Tw/T2;-><init>()V

    iput-object v0, p0, Lcom/txznet/comm/ui/Tw/T3;->T3:Lcom/txznet/comm/ui/Tw/T;

    .line 15
    return-void
.end method

.method public static T()Lcom/txznet/comm/ui/Tw/T3;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/txznet/comm/ui/Tw/T3;->T:Lcom/txznet/comm/ui/Tw/T3;

    return-object v0
.end method


# virtual methods
.method public T(Lcom/txznet/comm/ui/Te/T2;)V
    .locals 1
    .param p1, "winLayout"    # Lcom/txznet/comm/ui/Te/T2;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/txznet/comm/ui/Tw/T3;->T3:Lcom/txznet/comm/ui/Tw/T;

    invoke-interface {v0, p1}, Lcom/txznet/comm/ui/Tw/T;->T(Lcom/txznet/comm/ui/Te/T2;)V

    .line 42
    return-void
.end method

.method public T(Z)V
    .locals 1
    .param p1, "isFullScreen"    # Z

    .prologue
    .line 30
    iget-object v0, p0, Lcom/txznet/comm/ui/Tw/T3;->T3:Lcom/txznet/comm/ui/Tw/T;

    invoke-interface {v0, p1}, Lcom/txznet/comm/ui/Tw/T;->T(Z)V

    .line 31
    iget-object v0, p0, Lcom/txznet/comm/ui/Tw/T3;->T3:Lcom/txznet/comm/ui/Tw/T;

    instance-of v0, v0, Lcom/txznet/comm/ui/Tw/TN;

    if-eqz v0, :cond_0

    .line 32
    invoke-static {}, Lcom/txznet/comm/ui/Tw/TN;->T3()Lcom/txznet/comm/ui/Tw/TN;

    move-result-object v0

    iput-object v0, p0, Lcom/txznet/comm/ui/Tw/T3;->T3:Lcom/txznet/comm/ui/Tw/T;

    .line 34
    :cond_0
    return-void
.end method

.method public T2()Z
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/txznet/comm/ui/Tw/T3;->T3:Lcom/txznet/comm/ui/Tw/T;

    invoke-interface {v0}, Lcom/txznet/comm/ui/Tw/T;->isShowing()Z

    move-result v0

    return v0
.end method

.method public T3()V
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/txznet/comm/ui/Tw/T3;->T3:Lcom/txznet/comm/ui/Tw/T;

    invoke-interface {v0}, Lcom/txznet/comm/ui/Tw/T;->T()V

    .line 23
    return-void
.end method

.method public TN()V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/txznet/comm/ui/Tw/T3;->T3:Lcom/txznet/comm/ui/Tw/T;

    invoke-interface {v0}, Lcom/txznet/comm/ui/Tw/T;->show()V

    .line 47
    return-void
.end method

.method public Te()V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/txznet/comm/ui/Tw/T3;->T3:Lcom/txznet/comm/ui/Tw/T;

    invoke-interface {v0}, Lcom/txznet/comm/ui/Tw/T;->dismiss()V

    .line 51
    return-void
.end method
