.class public Lcom/txznet/comm/ui/Te/T/Ty;
.super Lcom/txznet/comm/ui/Te/T2;
.source "Proguard"


# instance fields
.field private T2:Landroid/widget/FrameLayout;

.field private T3:Landroid/widget/LinearLayout$LayoutParams;

.field private TG:Landroid/widget/FrameLayout;

.field private TN:Landroid/widget/LinearLayout$LayoutParams;

.field private TR:Landroid/widget/LinearLayout$LayoutParams;

.field private Te:Lcom/txznet/comm/ui/Te/T/T;

.field private Tn:Landroid/widget/FrameLayout$LayoutParams;

.field private Tw:Landroid/widget/FrameLayout$LayoutParams;

.field private Ty:Lcom/txznet/comm/ui/Te/T/T2;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/txznet/comm/ui/Te/T2;-><init>()V

    return-void
.end method


# virtual methods
.method public T(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Ljava/lang/Object;
    .locals 4
    .param p1, "targetView"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "layoutParams"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addView:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addView:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/txznet/comm/ui/Te/T/Ty;->T2()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 63
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 45
    :sswitch_0
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/Ty;->Te:Lcom/txznet/comm/ui/Te/T/T;

    invoke-virtual {v0}, Lcom/txznet/comm/ui/Te/T/T;->T()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 46
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/Ty;->Ty:Lcom/txznet/comm/ui/Te/T/T2;

    invoke-virtual {v0}, Lcom/txznet/comm/ui/Te/T/T2;->T()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 47
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/Ty;->Ty:Lcom/txznet/comm/ui/Te/T/T2;

    invoke-virtual {v0}, Lcom/txznet/comm/ui/Te/T/T2;->T3()V

    .line 48
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/Ty;->Te:Lcom/txznet/comm/ui/Te/T/T;

    invoke-virtual {v0, p2}, Lcom/txznet/comm/ui/Te/T/T;->T(Landroid/view/View;)V

    goto :goto_0

    .line 51
    :sswitch_1
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/Ty;->Ty:Lcom/txznet/comm/ui/Te/T/T2;

    invoke-virtual {v0}, Lcom/txznet/comm/ui/Te/T/T2;->T3()V

    .line 52
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/Ty;->Ty:Lcom/txznet/comm/ui/Te/T/T2;

    invoke-virtual {v0, p2}, Lcom/txznet/comm/ui/Te/T/T2;->T(Landroid/view/View;)V

    .line 53
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/Ty;->Te:Lcom/txznet/comm/ui/Te/T/T;

    invoke-virtual {v0}, Lcom/txznet/comm/ui/Te/T/T;->T()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 54
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/Ty;->Ty:Lcom/txznet/comm/ui/Te/T/T2;

    invoke-virtual {v0}, Lcom/txznet/comm/ui/Te/T/T2;->T()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 57
    :sswitch_2
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/Ty;->TG:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 58
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/Ty;->TG:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 43
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
        0x1e -> :sswitch_2
    .end sparse-switch
.end method

.method public T()V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/Ty;->Ty:Lcom/txznet/comm/ui/Te/T/T2;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/Ty;->Te:Lcom/txznet/comm/ui/Te/T/T;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/Ty;->Ty:Lcom/txznet/comm/ui/Te/T/T2;

    invoke-virtual {v0}, Lcom/txznet/comm/ui/Te/T/T2;->T3()V

    .line 115
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/Ty;->Te:Lcom/txznet/comm/ui/Te/T/T;

    invoke-virtual {v0}, Lcom/txznet/comm/ui/Te/T/T;->T3()V

    .line 117
    :cond_0
    return-void
.end method

.method public T(Landroid/view/View;)V
    .locals 2
    .param p1, "recordView"    # Landroid/view/View;

    .prologue
    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addView:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I

    .line 122
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/Ty;->TG:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/Ty;->TG:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 124
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/Ty;->TG:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 126
    :cond_0
    return-void
.end method

.method public T3()V
    .locals 0

    .prologue
    .line 131
    return-void
.end method

.method public TN()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 70
    invoke-super {p0}, Lcom/txznet/comm/ui/Te/T2;->TN()V

    .line 71
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/Ty;->T:Landroid/widget/LinearLayout;

    if-nez v0, :cond_1

    .line 73
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/txznet/comm/T3/T;->T3()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/txznet/comm/ui/Te/T/Ty;->T:Landroid/widget/LinearLayout;

    .line 74
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/txznet/comm/ui/Te/T/Ty;->T3:Landroid/widget/LinearLayout$LayoutParams;

    .line 76
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/Ty;->T:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/txznet/comm/ui/Te/T/Ty;->T3:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/Ty;->T:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 78
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/Ty;->T:Landroid/widget/LinearLayout;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    .line 81
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-static {}, Lcom/txznet/comm/T3/T;->T3()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/txznet/comm/ui/Te/T/Ty;->TG:Landroid/widget/FrameLayout;

    .line 82
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v4, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iput-object v0, p0, Lcom/txznet/comm/ui/Te/T/Ty;->TR:Landroid/widget/LinearLayout$LayoutParams;

    .line 83
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/Ty;->T:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/txznet/comm/ui/Te/T/Ty;->TG:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/txznet/comm/ui/Te/T/Ty;->TR:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-static {}, Lcom/txznet/comm/T3/T;->T3()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/txznet/comm/ui/Te/T/Ty;->T2:Landroid/widget/FrameLayout;

    .line 87
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-direct {v0, v4, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iput-object v0, p0, Lcom/txznet/comm/ui/Te/T/Ty;->TN:Landroid/widget/LinearLayout$LayoutParams;

    .line 88
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/Ty;->T2:Landroid/widget/FrameLayout;

    const-string v1, "x24"

    invoke-static {v1}, Lcom/txznet/comm/ui/TG/T3;->TN(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    const-string v2, "x24"

    invoke-static {v2}, Lcom/txznet/comm/ui/TG/T3;->TN(Ljava/lang/String;)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v4, v2, v4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 91
    new-instance v0, Lcom/txznet/comm/ui/Te/T/T;

    invoke-static {}, Lcom/txznet/comm/T3/T;->T3()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/txznet/comm/ui/Te/T/T;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/txznet/comm/ui/Te/T/Ty;->Te:Lcom/txznet/comm/ui/Te/T/T;

    .line 92
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/txznet/comm/ui/Te/T/Ty;->Tw:Landroid/widget/FrameLayout$LayoutParams;

    .line 94
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/Ty;->T2:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/txznet/comm/ui/Te/T/Ty;->Te:Lcom/txznet/comm/ui/Te/T/T;

    invoke-virtual {v1}, Lcom/txznet/comm/ui/Te/T/T;->T()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/txznet/comm/ui/Te/T/Ty;->Tw:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    new-instance v0, Lcom/txznet/comm/ui/Te/T/T2;

    invoke-static {}, Lcom/txznet/comm/T3/T;->T3()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/txznet/comm/ui/Te/T/T2;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/txznet/comm/ui/Te/T/Ty;->Ty:Lcom/txznet/comm/ui/Te/T/T2;

    .line 98
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/txznet/comm/ui/Te/T/Ty;->Tn:Landroid/widget/FrameLayout$LayoutParams;

    .line 100
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/Ty;->T2:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/txznet/comm/ui/Te/T/Ty;->Ty:Lcom/txznet/comm/ui/Te/T/T2;

    invoke-virtual {v1}, Lcom/txznet/comm/ui/Te/T/T2;->T()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/txznet/comm/ui/Te/T/Ty;->Tn:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/Ty;->T:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/txznet/comm/ui/Te/T/Ty;->T2:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/txznet/comm/ui/Te/T/Ty;->TN:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/Ty;->T2:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/Ty;->T2:Landroid/widget/FrameLayout;

    const-string v1, "x24"

    invoke-static {v1}, Lcom/txznet/comm/ui/TG/T3;->TN(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    const-string v2, "x24"

    invoke-static {v2}, Lcom/txznet/comm/ui/TG/T3;->TN(Ljava/lang/String;)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v4, v2, v4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    goto :goto_0
.end method
