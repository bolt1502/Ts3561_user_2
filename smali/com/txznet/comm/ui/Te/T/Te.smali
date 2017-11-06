.class public Lcom/txznet/comm/ui/Te/T/Te;
.super Lcom/txznet/comm/ui/Te/T2;
.source "Proguard"


# instance fields
.field private T2:Landroid/widget/RelativeLayout;

.field private T3:Landroid/widget/LinearLayout$LayoutParams;

.field private TG:Landroid/widget/FrameLayout;

.field private TN:Landroid/widget/LinearLayout$LayoutParams;

.field private TR:Landroid/widget/LinearLayout$LayoutParams;

.field private Te:Lcom/txznet/comm/ui/Te/T/T;

.field private Tn:Landroid/widget/RelativeLayout$LayoutParams;

.field private Tw:Landroid/widget/RelativeLayout$LayoutParams;

.field private Ty:Lcom/txznet/comm/ui/Te/T/T2;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/txznet/comm/ui/Te/T2;-><init>()V

    return-void
.end method

.method static synthetic T(Lcom/txznet/comm/ui/Te/T/Te;)Lcom/txznet/comm/ui/Te/T/T2;
    .locals 1
    .param p0, "x0"    # Lcom/txznet/comm/ui/Te/T/Te;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/Te;->Ty:Lcom/txznet/comm/ui/Te/T/T2;

    return-object v0
.end method

.method static synthetic T3(Lcom/txznet/comm/ui/Te/T/Te;)Lcom/txznet/comm/ui/Te/T/T;
    .locals 1
    .param p0, "x0"    # Lcom/txznet/comm/ui/Te/T/Te;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/Te;->Te:Lcom/txznet/comm/ui/Te/T/T;

    return-object v0
.end method


# virtual methods
.method public T(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Ljava/lang/Object;
    .locals 3
    .param p1, "targetView"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "layoutParams"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 60
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 44
    :sswitch_0
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/Te;->Te:Lcom/txznet/comm/ui/Te/T/T;

    invoke-virtual {v0}, Lcom/txznet/comm/ui/Te/T/T;->T()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 45
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/Te;->Ty:Lcom/txznet/comm/ui/Te/T/T2;

    invoke-virtual {v0}, Lcom/txznet/comm/ui/Te/T/T2;->T()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 46
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/Te;->Te:Lcom/txznet/comm/ui/Te/T/T;

    invoke-virtual {v0, p2}, Lcom/txznet/comm/ui/Te/T/T;->T(Landroid/view/View;)V

    goto :goto_0

    .line 49
    :sswitch_1
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/Te;->Ty:Lcom/txznet/comm/ui/Te/T/T2;

    invoke-virtual {v0}, Lcom/txznet/comm/ui/Te/T/T2;->T3()V

    .line 50
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/Te;->Ty:Lcom/txznet/comm/ui/Te/T/T2;

    invoke-virtual {v0, p2}, Lcom/txznet/comm/ui/Te/T/T2;->T(Landroid/view/View;)V

    .line 51
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/Te;->Te:Lcom/txznet/comm/ui/Te/T/T;

    invoke-virtual {v0}, Lcom/txznet/comm/ui/Te/T/T;->T()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 52
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/Te;->Ty:Lcom/txznet/comm/ui/Te/T/T2;

    invoke-virtual {v0}, Lcom/txznet/comm/ui/Te/T/T2;->T()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 55
    :sswitch_2
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/Te;->TG:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 56
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/Te;->TG:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 42
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
        0x1e -> :sswitch_2
    .end sparse-switch
.end method

.method public T()V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/Te;->Ty:Lcom/txznet/comm/ui/Te/T/T2;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/Te;->Te:Lcom/txznet/comm/ui/Te/T/T;

    if-eqz v0, :cond_0

    .line 108
    new-instance v0, Lcom/txznet/comm/ui/Te/T/Te$1;

    invoke-direct {v0, p0}, Lcom/txznet/comm/ui/Te/T/Te$1;-><init>(Lcom/txznet/comm/ui/Te/T/Te;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/txznet/comm/ui/TN;->T(Ljava/lang/Runnable;I)V

    .line 116
    :cond_0
    return-void
.end method

.method public T(Landroid/view/View;)V
    .locals 1
    .param p1, "recordView"    # Landroid/view/View;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/Te;->TG:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/Te;->TG:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 122
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/Te;->TG:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 124
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

    .line 66
    invoke-super {p0}, Lcom/txznet/comm/ui/Te/T2;->TN()V

    .line 67
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/Te;->T:Landroid/widget/LinearLayout;

    if-nez v0, :cond_1

    .line 69
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/txznet/comm/T3/T;->T3()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/txznet/comm/ui/Te/T/Te;->T:Landroid/widget/LinearLayout;

    .line 70
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/txznet/comm/ui/Te/T/Te;->T3:Landroid/widget/LinearLayout$LayoutParams;

    .line 72
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/Te;->T:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/txznet/comm/ui/Te/T/Te;->T3:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/Te;->T:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 76
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/txznet/comm/T3/T;->T3()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/txznet/comm/ui/Te/T/Te;->T2:Landroid/widget/RelativeLayout;

    .line 77
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v3, v4, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iput-object v0, p0, Lcom/txznet/comm/ui/Te/T/Te;->TN:Landroid/widget/LinearLayout$LayoutParams;

    .line 78
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/Te;->T2:Landroid/widget/RelativeLayout;

    const-string v1, "x24"

    invoke-static {v1}, Lcom/txznet/comm/ui/TG/T3;->TN(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    const-string v2, "x24"

    invoke-static {v2}, Lcom/txznet/comm/ui/TG/T3;->TN(Ljava/lang/String;)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v4, v2, v4}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 81
    new-instance v0, Lcom/txznet/comm/ui/Te/T/T;

    invoke-static {}, Lcom/txznet/comm/T3/T;->T3()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/txznet/comm/ui/Te/T/T;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/txznet/comm/ui/Te/T/Te;->Te:Lcom/txznet/comm/ui/Te/T/T;

    .line 82
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/txznet/comm/ui/Te/T/Te;->Tw:Landroid/widget/RelativeLayout$LayoutParams;

    .line 84
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/Te;->T2:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/txznet/comm/ui/Te/T/Te;->Te:Lcom/txznet/comm/ui/Te/T/T;

    invoke-virtual {v1}, Lcom/txznet/comm/ui/Te/T/T;->T()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/txznet/comm/ui/Te/T/Te;->Tw:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    new-instance v0, Lcom/txznet/comm/ui/Te/T/T2;

    invoke-static {}, Lcom/txznet/comm/T3/T;->T3()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/txznet/comm/ui/Te/T/T2;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/txznet/comm/ui/Te/T/Te;->Ty:Lcom/txznet/comm/ui/Te/T/T2;

    .line 87
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/txznet/comm/ui/Te/T/Te;->Tn:Landroid/widget/RelativeLayout$LayoutParams;

    .line 89
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/Te;->T2:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/txznet/comm/ui/Te/T/Te;->Ty:Lcom/txznet/comm/ui/Te/T/T2;

    invoke-virtual {v1}, Lcom/txznet/comm/ui/Te/T/T2;->T()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/txznet/comm/ui/Te/T/Te;->Tn:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/Te;->T:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/txznet/comm/ui/Te/T/Te;->T2:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/txznet/comm/ui/Te/T/Te;->TN:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-static {}, Lcom/txznet/comm/T3/T;->T3()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/txznet/comm/ui/Te/T/Te;->TG:Landroid/widget/FrameLayout;

    .line 95
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const-string v1, "y80"

    invoke-static {v1}, Lcom/txznet/comm/ui/TG/T3;->TN(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    invoke-direct {v0, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/txznet/comm/ui/Te/T/Te;->TR:Landroid/widget/LinearLayout$LayoutParams;

    .line 97
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/Te;->T:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/txznet/comm/ui/Te/T/Te;->TG:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/txznet/comm/ui/Te/T/Te;->TR:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/Te;->T2:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/Te;->T2:Landroid/widget/RelativeLayout;

    const-string v1, "x24"

    invoke-static {v1}, Lcom/txznet/comm/ui/TG/T3;->TN(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    const-string v2, "x24"

    invoke-static {v2}, Lcom/txznet/comm/ui/TG/T3;->TN(Ljava/lang/String;)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v4, v2, v4}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    goto :goto_0
.end method
