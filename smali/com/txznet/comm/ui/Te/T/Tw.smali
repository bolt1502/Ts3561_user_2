.class public Lcom/txznet/comm/ui/Te/T/Tw;
.super Lcom/txznet/comm/ui/Te/T2;
.source "Proguard"


# static fields
.field private static T3:Lcom/txznet/comm/ui/Te/T/Tw;

.field private static final Te:Ljava/lang/String;


# instance fields
.field private T2:Lcom/txznet/comm/ui/Te/T/Ty;

.field private TN:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    new-instance v0, Lcom/txznet/comm/ui/Te/T/Tw;

    invoke-direct {v0}, Lcom/txznet/comm/ui/Te/T/Tw;-><init>()V

    sput-object v0, Lcom/txznet/comm/ui/Te/T/Tw;->T3:Lcom/txznet/comm/ui/Te/T/Tw;

    .line 13
    const-class v0, Lcom/txznet/comm/ui/Te/T/Tw;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/txznet/comm/ui/Te/T/Tw;->Te:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/txznet/comm/ui/Te/T2;-><init>()V

    .line 16
    return-void
.end method

.method public static Te()Lcom/txznet/comm/ui/Te/T/Tw;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/txznet/comm/ui/Te/T/Tw;->T3:Lcom/txznet/comm/ui/Te/T/Tw;

    return-object v0
.end method

.method private Tw()V
    .locals 2

    .prologue
    .line 23
    new-instance v0, Lcom/txznet/comm/ui/Te/T/Ty;

    invoke-direct {v0}, Lcom/txznet/comm/ui/Te/T/Ty;-><init>()V

    iput-object v0, p0, Lcom/txznet/comm/ui/Te/T/Tw;->T2:Lcom/txznet/comm/ui/Te/T/Ty;

    .line 24
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/Tw;->T2:Lcom/txznet/comm/ui/Te/T/Ty;

    invoke-virtual {v0}, Lcom/txznet/comm/ui/Te/T/Ty;->TN()V

    .line 25
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/Tw;->TN:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/Tw;->T2:Lcom/txznet/comm/ui/Te/T/Ty;

    iget-object v1, p0, Lcom/txznet/comm/ui/Te/T/Tw;->TN:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/txznet/comm/ui/Te/T/Ty;->T(Landroid/view/View;)V

    .line 28
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/txznet/comm/ui/Te/T/Tw;->Te:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " createLayout mTrueLayout:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/txznet/comm/ui/Te/T/Tw;->T2:Lcom/txznet/comm/ui/Te/T/Ty;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I

    .line 29
    return-void
.end method


# virtual methods
.method public T(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Ljava/lang/Object;
    .locals 1
    .param p1, "targetView"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "layoutParams"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/Tw;->T2:Lcom/txznet/comm/ui/Te/T/Ty;

    if-nez v0, :cond_0

    .line 49
    const/4 v0, 0x0

    .line 51
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/Tw;->T2:Lcom/txznet/comm/ui/Te/T/Ty;

    invoke-virtual {v0, p1, p2, p3}, Lcom/txznet/comm/ui/Te/T/Ty;->T(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public T()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/Tw;->T2:Lcom/txznet/comm/ui/Te/T/Ty;

    invoke-virtual {v0}, Lcom/txznet/comm/ui/Te/T/Ty;->T()V

    .line 62
    return-void
.end method

.method public T(Landroid/view/View;)V
    .locals 2
    .param p1, "recordView"    # Landroid/view/View;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/txznet/comm/ui/Te/T/Tw;->TN:Landroid/view/View;

    .line 67
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/Tw;->T2:Lcom/txznet/comm/ui/Te/T/Ty;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/Tw;->T2:Lcom/txznet/comm/ui/Te/T/Ty;

    iget-object v1, p0, Lcom/txznet/comm/ui/Te/T/Tw;->TN:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/txznet/comm/ui/Te/T/Ty;->T(Landroid/view/View;)V

    .line 70
    :cond_0
    return-void
.end method

.method public T2()Landroid/view/View;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/Tw;->T2:Lcom/txznet/comm/ui/Te/T/Ty;

    if-nez v0, :cond_0

    .line 75
    invoke-direct {p0}, Lcom/txznet/comm/ui/Te/T/Tw;->Tw()V

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/Tw;->T2:Lcom/txznet/comm/ui/Te/T/Ty;

    invoke-virtual {v0}, Lcom/txznet/comm/ui/Te/T/Ty;->T2()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public T3()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/txznet/comm/ui/Te/T/Tw;->Te:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " release"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I

    .line 39
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/Tw;->T2:Lcom/txznet/comm/ui/Te/T/Ty;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/Tw;->T2:Lcom/txznet/comm/ui/Te/T/Ty;

    invoke-virtual {v0}, Lcom/txznet/comm/ui/Te/T/Ty;->T()V

    .line 41
    iput-object v2, p0, Lcom/txznet/comm/ui/Te/T/Tw;->T2:Lcom/txznet/comm/ui/Te/T/Ty;

    .line 42
    iput-object v2, p0, Lcom/txznet/comm/ui/Te/T/Tw;->TN:Landroid/view/View;

    .line 44
    :cond_0
    return-void
.end method

.method public TN()V
    .locals 0

    .prologue
    .line 56
    invoke-super {p0}, Lcom/txznet/comm/ui/Te/T2;->TN()V

    .line 57
    return-void
.end method
