.class public Lcom/txznet/comm/ui/Te/T/T2;
.super Lcom/txznet/comm/ui/Te/T;
.source "Proguard"


# instance fields
.field T:Z

.field private T2:Landroid/widget/RelativeLayout$LayoutParams;

.field private T3:Landroid/widget/RelativeLayout;

.field private TN:Landroid/content/Context;

.field private Te:Ljava/lang/reflect/Field;

.field private Tw:Ljava/lang/reflect/Field;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, -0x1

    .line 22
    invoke-direct {p0}, Lcom/txznet/comm/ui/Te/T;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/txznet/comm/ui/Te/T/T2;->T:Z

    .line 23
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/txznet/comm/ui/Te/T/T2;->T3:Landroid/widget/RelativeLayout;

    .line 24
    iput-object p1, p0, Lcom/txznet/comm/ui/Te/T/T2;->TN:Landroid/content/Context;

    .line 25
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/txznet/comm/ui/Te/T/T2;->T2:Landroid/widget/RelativeLayout$LayoutParams;

    .line 26
    return-void
.end method


# virtual methods
.method public T()Landroid/view/View;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/T2;->T3:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public T(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ssssssss addView :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I

    .line 34
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/T2;->T3:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/txznet/comm/ui/Te/T/T2;->T2:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, p1, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 37
    return-void
.end method

.method public T3()V
    .locals 4

    .prologue
    .line 57
    const-string v1, "removeAllViews"

    invoke-static {v1}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I

    .line 58
    iget-object v1, p0, Lcom/txznet/comm/ui/Te/T/T2;->T3:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 59
    iget-object v1, p0, Lcom/txznet/comm/ui/Te/T/T2;->Te:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/txznet/comm/ui/Te/T/T2;->Tw:Ljava/lang/reflect/Field;

    if-nez v1, :cond_1

    .line 61
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/txznet/comm/ui/Te/T/T2;->T3:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "mSortedVerticalChildren"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    iput-object v1, p0, Lcom/txznet/comm/ui/Te/T/T2;->Te:Ljava/lang/reflect/Field;

    .line 62
    iget-object v1, p0, Lcom/txznet/comm/ui/Te/T/T2;->Te:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 63
    iget-object v1, p0, Lcom/txznet/comm/ui/Te/T/T2;->T3:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "mSortedHorizontalChildren"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    iput-object v1, p0, Lcom/txznet/comm/ui/Te/T/T2;->Tw:Ljava/lang/reflect/Field;

    .line 64
    iget-object v1, p0, Lcom/txznet/comm/ui/Te/T/T2;->Tw:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :cond_1
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/txznet/comm/ui/Te/T/T2;->Te:Ljava/lang/reflect/Field;

    iget-object v2, p0, Lcom/txznet/comm/ui/Te/T/T2;->T3:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 71
    iget-object v1, p0, Lcom/txznet/comm/ui/Te/T/T2;->Tw:Ljava/lang/reflect/Field;

    iget-object v2, p0, Lcom/txznet/comm/ui/Te/T/T2;->T3:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 75
    :goto_1
    return-void

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0

    .line 72
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
