.class public Lcom/txznet/comm/ui/Tw/Tw;
.super Lcom/txznet/comm/ui/Tw/Ty;
.source "Proguard"


# instance fields
.field private TG:Lcom/txznet/comm/ui/T2$T;

.field private TR:Lcom/txznet/comm/ui/Tw$T;

.field private Te:Lcom/txznet/comm/ui/Te/T2;

.field private Tn:Lcom/txznet/comm/ui/T3$T;

.field private Tw:Z

.field private Ty:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/txznet/comm/ui/Tw/Ty;-><init>()V

    .line 149
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/txznet/comm/ui/Tw/Tw;->Tw:Z

    .line 153
    new-instance v0, Lcom/txznet/comm/ui/Tw/Tw$2;

    invoke-direct {v0, p0}, Lcom/txznet/comm/ui/Tw/Tw$2;-><init>(Lcom/txznet/comm/ui/Tw/Tw;)V

    iput-object v0, p0, Lcom/txznet/comm/ui/Tw/Tw;->Tn:Lcom/txznet/comm/ui/T3$T;

    .line 160
    new-instance v0, Lcom/txznet/comm/ui/Tw/Tw$3;

    invoke-direct {v0, p0}, Lcom/txznet/comm/ui/Tw/Tw$3;-><init>(Lcom/txznet/comm/ui/Tw/Tw;)V

    iput-object v0, p0, Lcom/txznet/comm/ui/Tw/Tw;->TG:Lcom/txznet/comm/ui/T2$T;

    .line 167
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/txznet/comm/ui/Tw/Tw;->TR:Lcom/txznet/comm/ui/Tw$T;

    .line 38
    invoke-direct {p0}, Lcom/txznet/comm/ui/Tw/Tw;->Te()V

    .line 39
    return-void
.end method

.method public constructor <init>(ZLcom/txznet/comm/ui/Te/T2;)V
    .locals 1
    .param p1, "fullScreen"    # Z
    .param p2, "winLayout"    # Lcom/txznet/comm/ui/Te/T2;

    .prologue
    .line 47
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/txznet/comm/ui/Tw/Ty;-><init>(ZZLcom/txznet/comm/ui/Te/T2;)V

    .line 149
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/txznet/comm/ui/Tw/Tw;->Tw:Z

    .line 153
    new-instance v0, Lcom/txznet/comm/ui/Tw/Tw$2;

    invoke-direct {v0, p0}, Lcom/txznet/comm/ui/Tw/Tw$2;-><init>(Lcom/txznet/comm/ui/Tw/Tw;)V

    iput-object v0, p0, Lcom/txznet/comm/ui/Tw/Tw;->Tn:Lcom/txznet/comm/ui/T3$T;

    .line 160
    new-instance v0, Lcom/txznet/comm/ui/Tw/Tw$3;

    invoke-direct {v0, p0}, Lcom/txznet/comm/ui/Tw/Tw$3;-><init>(Lcom/txznet/comm/ui/Tw/Tw;)V

    iput-object v0, p0, Lcom/txznet/comm/ui/Tw/Tw;->TG:Lcom/txznet/comm/ui/T2$T;

    .line 167
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/txznet/comm/ui/Tw/Tw;->TR:Lcom/txznet/comm/ui/Tw$T;

    .line 48
    invoke-direct {p0}, Lcom/txznet/comm/ui/Tw/Tw;->Te()V

    .line 49
    return-void
.end method

.method static synthetic T(Lcom/txznet/comm/ui/Tw/Tw;)V
    .locals 0
    .param p0, "x0"    # Lcom/txznet/comm/ui/Tw/Tw;

    .prologue
    .line 32
    invoke-super {p0}, Lcom/txznet/comm/ui/Tw/TG;->dismiss()V

    return-void
.end method

.method static synthetic T2(Lcom/txznet/comm/ui/Tw/Tw;)Lcom/txznet/comm/ui/Te/T2;
    .locals 1
    .param p0, "x0"    # Lcom/txznet/comm/ui/Tw/Tw;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/txznet/comm/ui/Tw/Tw;->Te:Lcom/txznet/comm/ui/Te/T2;

    return-object v0
.end method

.method static synthetic T3(Lcom/txznet/comm/ui/Tw/Tw;)V
    .locals 0
    .param p0, "x0"    # Lcom/txznet/comm/ui/Tw/Tw;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/txznet/comm/ui/Tw/Tw;->Ty()V

    return-void
.end method

.method private Te()V
    .locals 4

    .prologue
    const/16 v3, 0x400

    const/4 v2, -0x1

    .line 52
    invoke-virtual {p0}, Lcom/txznet/comm/ui/Tw/Tw;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 53
    invoke-virtual {p0}, Lcom/txznet/comm/ui/Tw/Tw;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x10000040

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 55
    invoke-virtual {p0}, Lcom/txznet/comm/ui/Tw/Tw;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 56
    new-instance v0, Lcom/txznet/comm/ui/Tw/Tw$1;

    invoke-direct {v0, p0}, Lcom/txznet/comm/ui/Tw/Tw$1;-><init>(Lcom/txznet/comm/ui/Tw/Tw;)V

    invoke-virtual {p0, v0}, Lcom/txznet/comm/ui/Tw/Tw;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 64
    new-instance v0, Lcom/txznet/comm/TN/T3;

    invoke-virtual {p0}, Lcom/txznet/comm/ui/Tw/Tw;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/txznet/comm/TN/T3;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/txznet/comm/ui/Tw/Tw;->TN:Lcom/txznet/comm/TN/T3;

    .line 65
    invoke-virtual {p0}, Lcom/txznet/comm/ui/Tw/Tw;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setLayout(II)V

    .line 66
    return-void
.end method

.method private Tw()V
    .locals 0

    .prologue
    .line 200
    return-void
.end method

.method private Ty()V
    .locals 2

    .prologue
    .line 257
    iget-boolean v0, p0, Lcom/txznet/comm/ui/Tw/Tw;->Tw:Z

    if-eqz v0, :cond_1

    .line 258
    invoke-static {}, Lcom/txznet/comm/ui/T;->T2()Lcom/txznet/comm/ui/Tw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txznet/comm/ui/Tw;->T2()V

    .line 259
    invoke-static {}, Lcom/txznet/comm/ui/T;->T()Lcom/txznet/comm/ui/T3;

    move-result-object v0

    iget-object v1, p0, Lcom/txznet/comm/ui/Tw/Tw;->Tn:Lcom/txznet/comm/ui/T3$T;

    invoke-virtual {v0, v1}, Lcom/txznet/comm/ui/T3;->unregisterObserver(Ljava/lang/Object;)V

    .line 260
    invoke-static {}, Lcom/txznet/comm/ui/T;->T3()Lcom/txznet/comm/ui/T2;

    move-result-object v0

    iget-object v1, p0, Lcom/txznet/comm/ui/Tw/Tw;->TG:Lcom/txznet/comm/ui/T2$T;

    invoke-virtual {v0, v1}, Lcom/txznet/comm/ui/T2;->unregisterObserver(Ljava/lang/Object;)V

    .line 261
    iget-object v0, p0, Lcom/txznet/comm/ui/Tw/Tw;->TR:Lcom/txznet/comm/ui/Tw$T;

    if-eqz v0, :cond_0

    .line 262
    invoke-static {}, Lcom/txznet/comm/ui/T;->T2()Lcom/txznet/comm/ui/Tw;

    move-result-object v0

    iget-object v1, p0, Lcom/txznet/comm/ui/Tw/Tw;->TR:Lcom/txznet/comm/ui/Tw$T;

    invoke-virtual {v0, v1}, Lcom/txznet/comm/ui/Tw;->unregisterObserver(Ljava/lang/Object;)V

    .line 264
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/txznet/comm/ui/Tw/Tw;->Tw:Z

    .line 266
    :cond_1
    return-void
.end method


# virtual methods
.method protected varargs T([Ljava/lang/Object;)Landroid/view/View;
    .locals 2
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 87
    array-length v1, p1

    if-lez v1, :cond_0

    .line 88
    const/4 v1, 0x0

    aget-object v1, p1, v1

    check-cast v1, Lcom/txznet/comm/ui/Te/T2;

    iput-object v1, p0, Lcom/txznet/comm/ui/Tw/Tw;->Te:Lcom/txznet/comm/ui/Te/T2;

    .line 90
    :cond_0
    iget-object v1, p0, Lcom/txznet/comm/ui/Tw/Tw;->Te:Lcom/txznet/comm/ui/Te/T2;

    if-nez v1, :cond_1

    .line 93
    invoke-static {}, Lcom/txznet/comm/ui/Te/T/Tw;->Te()Lcom/txznet/comm/ui/Te/T/Tw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/txznet/comm/ui/Te/T/Tw;->TN()V

    .line 94
    invoke-static {}, Lcom/txznet/comm/ui/Te/T/Tw;->Te()Lcom/txznet/comm/ui/Te/T/Tw;

    move-result-object v1

    iput-object v1, p0, Lcom/txznet/comm/ui/Tw/Tw;->Te:Lcom/txznet/comm/ui/Te/T2;

    .line 96
    :cond_1
    const/4 v0, 0x0

    .line 97
    .local v0, "windowView":Landroid/view/View;
    iget-object v1, p0, Lcom/txznet/comm/ui/Tw/Tw;->Te:Lcom/txznet/comm/ui/Te/T2;

    if-eqz v1, :cond_2

    .line 98
    iget-object v1, p0, Lcom/txznet/comm/ui/Tw/Tw;->Te:Lcom/txznet/comm/ui/Te/T2;

    invoke-virtual {v1}, Lcom/txznet/comm/ui/Te/T2;->T2()Landroid/view/View;

    move-result-object v0

    .line 100
    :cond_2
    return-object v0
.end method

.method public T()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 117
    const-string v0, "[UI2.0] init RecordWin2True"

    invoke-static {v0}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I

    .line 118
    invoke-virtual {p0}, Lcom/txznet/comm/ui/Tw/Tw;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 119
    invoke-virtual {p0}, Lcom/txznet/comm/ui/Tw/Tw;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/txznet/comm/ui/TG/T;->T(Landroid/view/View;)V

    .line 120
    invoke-virtual {p0}, Lcom/txznet/comm/ui/Tw/Tw;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/txznet/comm/ui/TG/T;->Te(Landroid/view/View;)V

    .line 122
    return-void
.end method

.method public T(Lcom/txznet/comm/ui/Te/T2;)V
    .locals 5
    .param p1, "winLayout"    # Lcom/txznet/comm/ui/Te/T2;

    .prologue
    const/4 v4, -0x1

    .line 125
    const-string v2, "[UI2.0] update winLayout"

    invoke-static {v2}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I

    .line 126
    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/txznet/comm/ui/Tw/Tw;->Te:Lcom/txznet/comm/ui/Te/T2;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 127
    iput-object p1, p0, Lcom/txznet/comm/ui/Tw/Tw;->Te:Lcom/txznet/comm/ui/Te/T2;

    .line 128
    iget-object v2, p0, Lcom/txznet/comm/ui/Tw/Tw;->Te:Lcom/txznet/comm/ui/Te/T2;

    invoke-virtual {v2}, Lcom/txznet/comm/ui/Te/T2;->T2()Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/txznet/comm/ui/Tw/Tw;->T:Landroid/view/View;

    .line 129
    iget-object v2, p0, Lcom/txznet/comm/ui/Tw/Tw;->T:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 130
    .local v0, "viewParent":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    .line 131
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 132
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "viewParent":Landroid/view/ViewParent;
    iget-object v2, p0, Lcom/txznet/comm/ui/Tw/Tw;->T:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 135
    :cond_0
    iget-boolean v2, p0, Lcom/txznet/comm/ui/Tw/Tw;->T3:Z

    if-eqz v2, :cond_2

    .line 136
    iget-object v2, p0, Lcom/txznet/comm/ui/Tw/Tw;->T:Landroid/view/View;

    const/16 v3, 0x504

    invoke-virtual {v2, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 138
    invoke-virtual {p0}, Lcom/txznet/comm/ui/Tw/Tw;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 139
    .local v1, "windowAttributes":Landroid/view/WindowManager$LayoutParams;
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v2, v2, 0x400

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 143
    .end local v1    # "windowAttributes":Landroid/view/WindowManager$LayoutParams;
    :goto_0
    iget-object v2, p0, Lcom/txznet/comm/ui/Tw/Tw;->T:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/txznet/comm/ui/Tw/Tw;->setContentView(Landroid/view/View;)V

    .line 144
    invoke-virtual {p0}, Lcom/txznet/comm/ui/Tw/Tw;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v4, v4}, Landroid/view/Window;->setLayout(II)V

    .line 146
    :cond_1
    return-void

    .line 141
    :cond_2
    iget-object v2, p0, Lcom/txznet/comm/ui/Tw/Tw;->T:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0
.end method

.method public T(Lcom/txznet/comm/ui/Tw$T;)V
    .locals 0
    .param p1, "observer"    # Lcom/txznet/comm/ui/Tw$T;

    .prologue
    .line 253
    iput-object p1, p0, Lcom/txznet/comm/ui/Tw/Tw;->TR:Lcom/txznet/comm/ui/Tw$T;

    .line 254
    return-void
.end method

.method public T(Ljava/lang/Float;)V
    .locals 3
    .param p1, "winBgAlpha"    # Ljava/lang/Float;

    .prologue
    .line 106
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWinBgAlpha:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/txznet/comm/T3/T/Te;->T3(Ljava/lang/String;)I

    .line 109
    if-eqz p1, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/txznet/comm/ui/Tw/Tw;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 111
    .local v0, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 112
    invoke-virtual {p0}, Lcom/txznet/comm/ui/Tw/Tw;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0
.end method

.method public T(Z)V
    .locals 2
    .param p1, "isFullScreen"    # Z

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/txznet/comm/ui/Tw/Tw;->T3:Z

    if-ne v0, p1, :cond_0

    .line 77
    :goto_0
    return-void

    .line 73
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setIsFullScreenDialog:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected T2()V
    .locals 1

    .prologue
    .line 233
    invoke-static {}, Lcom/txznet/comm/ui/T;->T2()Lcom/txznet/comm/ui/Tw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txznet/comm/ui/Tw;->T3()V

    .line 234
    return-void
.end method

.method public T3()V
    .locals 3

    .prologue
    .line 269
    iget-object v1, p0, Lcom/txznet/comm/ui/Tw/Tw;->Te:Lcom/txznet/comm/ui/Te/T2;

    invoke-virtual {v1}, Lcom/txznet/comm/ui/Te/T2;->T3()V

    .line 270
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/txznet/comm/ui/Tw/Tw;->T:Landroid/view/View;

    .line 271
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/txznet/comm/ui/Tw/Tw;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 272
    .local v0, "textView":Landroid/widget/TextView;
    invoke-virtual {p0, v0}, Lcom/txznet/comm/ui/Tw/Tw;->setContentView(Landroid/view/View;)V

    .line 273
    iget-boolean v1, p0, Lcom/txznet/comm/ui/Tw/Tw;->Tw:Z

    if-eqz v1, :cond_1

    .line 274
    invoke-static {}, Lcom/txznet/comm/ui/T;->T()Lcom/txznet/comm/ui/T3;

    move-result-object v1

    iget-object v2, p0, Lcom/txznet/comm/ui/Tw/Tw;->Tn:Lcom/txznet/comm/ui/T3$T;

    invoke-virtual {v1, v2}, Lcom/txznet/comm/ui/T3;->unregisterObserver(Ljava/lang/Object;)V

    .line 275
    invoke-static {}, Lcom/txznet/comm/ui/T;->T3()Lcom/txznet/comm/ui/T2;

    move-result-object v1

    iget-object v2, p0, Lcom/txznet/comm/ui/Tw/Tw;->TG:Lcom/txznet/comm/ui/T2$T;

    invoke-virtual {v1, v2}, Lcom/txznet/comm/ui/T2;->unregisterObserver(Ljava/lang/Object;)V

    .line 276
    iget-object v1, p0, Lcom/txznet/comm/ui/Tw/Tw;->TR:Lcom/txznet/comm/ui/Tw$T;

    if-eqz v1, :cond_0

    .line 277
    invoke-static {}, Lcom/txznet/comm/ui/T;->T2()Lcom/txznet/comm/ui/Tw;

    move-result-object v1

    iget-object v2, p0, Lcom/txznet/comm/ui/Tw/Tw;->TR:Lcom/txznet/comm/ui/Tw$T;

    invoke-virtual {v1, v2}, Lcom/txznet/comm/ui/Tw;->unregisterObserver(Ljava/lang/Object;)V

    .line 279
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/txznet/comm/ui/Tw/Tw;->Tw:Z

    .line 281
    :cond_1
    invoke-static {}, Lcom/T2/T/T3/T2;->T()Lcom/T2/T/T3/T2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/T2/T/T3/T2;->T3()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 282
    invoke-static {}, Lcom/T2/T/T3/T2;->T()Lcom/T2/T/T3/T2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/T2/T/T3/T2;->TN()V

    .line 283
    invoke-static {}, Lcom/T2/T/T3/T2;->T()Lcom/T2/T/T3/T2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/T2/T/T3/T2;->T2()V

    .line 285
    :cond_2
    invoke-static {}, Lcom/txznet/comm/ui/TG/T3;->T()V

    .line 286
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 287
    return-void
.end method

.method protected TN()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 238
    invoke-static {}, Lcom/txznet/comm/ui/T;->T2()Lcom/txznet/comm/ui/Tw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/txznet/comm/ui/Tw;->T()V

    .line 239
    iget-object v1, p0, Lcom/txznet/comm/ui/Tw/Tw;->T:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 240
    iget-boolean v1, p0, Lcom/txznet/comm/ui/Tw/Tw;->T3:Z

    if-eqz v1, :cond_1

    .line 241
    iget-object v1, p0, Lcom/txznet/comm/ui/Tw/Tw;->T:Landroid/view/View;

    const/16 v2, 0x504

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 243
    invoke-virtual {p0}, Lcom/txznet/comm/ui/Tw/Tw;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 244
    .local v0, "windowAttributes":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x400

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 249
    .end local v0    # "windowAttributes":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/txznet/comm/ui/Tw/Tw;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Landroid/view/Window;->setLayout(II)V

    .line 250
    return-void

    .line 246
    :cond_1
    iget-object v1, p0, Lcom/txznet/comm/ui/Tw/Tw;->T:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0
.end method

.method public dismiss()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 204
    const-string v0, "RecordWin2True dismiss"

    invoke-static {v0}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I

    .line 205
    invoke-static {}, Lcom/txznet/comm/T3/T/T;->Te()V

    .line 206
    iget-boolean v0, p0, Lcom/txznet/comm/ui/Tw/Tw;->Ty:Z

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/txznet/comm/ui/Tw/Tw;->TN:Lcom/txznet/comm/TN/T3;

    invoke-virtual {v0}, Lcom/txznet/comm/TN/T3;->T3()V

    .line 208
    iput-boolean v3, p0, Lcom/txznet/comm/ui/Tw/Tw;->Ty:Z

    .line 210
    :cond_0
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.record.ui.event.dismiss"

    invoke-virtual {v0, v1, v2, v4, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 211
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 212
    new-instance v0, Lcom/txznet/comm/ui/Tw/Tw$4;

    invoke-direct {v0, p0}, Lcom/txznet/comm/ui/Tw/Tw$4;-><init>(Lcom/txznet/comm/ui/Tw/Tw;)V

    invoke-static {v0, v3}, Lcom/txznet/comm/ui/TN;->T(Ljava/lang/Runnable;I)V

    .line 229
    :cond_1
    :goto_0
    return-void

    .line 223
    :cond_2
    invoke-super {p0}, Lcom/txznet/comm/ui/Tw/Ty;->dismiss()V

    .line 224
    invoke-direct {p0}, Lcom/txznet/comm/ui/Tw/Tw;->Ty()V

    .line 225
    iget-object v0, p0, Lcom/txznet/comm/ui/Tw/Tw;->Te:Lcom/txznet/comm/ui/Te/T2;

    if-eqz v0, :cond_1

    .line 226
    iget-object v0, p0, Lcom/txznet/comm/ui/Tw/Tw;->Te:Lcom/txznet/comm/ui/Te/T2;

    invoke-virtual {v0}, Lcom/txznet/comm/ui/Te/T2;->T()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onKeyDown:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I

    .line 82
    invoke-static {}, Lcom/txznet/comm/ui/Tw/Te;->T3()Lcom/txznet/comm/ui/Tw/Te;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/txznet/comm/ui/Tw/Te;->T(I)Z

    move-result v0

    return v0
.end method

.method public show()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 171
    const-string v1, "RecordWin2True show"

    invoke-static {v1}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I

    .line 172
    iget-boolean v1, p0, Lcom/txznet/comm/ui/Tw/Tw;->Tw:Z

    if-nez v1, :cond_0

    .line 173
    iput-boolean v3, p0, Lcom/txznet/comm/ui/Tw/Tw;->Tw:Z

    .line 174
    invoke-static {}, Lcom/txznet/comm/ui/T;->T()Lcom/txznet/comm/ui/T3;

    move-result-object v1

    iget-object v2, p0, Lcom/txznet/comm/ui/Tw/Tw;->Tn:Lcom/txznet/comm/ui/T3$T;

    invoke-virtual {v1, v2}, Lcom/txznet/comm/ui/T3;->registerObserver(Ljava/lang/Object;)V

    .line 175
    invoke-static {}, Lcom/txznet/comm/ui/T;->T3()Lcom/txznet/comm/ui/T2;

    move-result-object v1

    iget-object v2, p0, Lcom/txznet/comm/ui/Tw/Tw;->TG:Lcom/txznet/comm/ui/T2$T;

    invoke-virtual {v1, v2}, Lcom/txznet/comm/ui/T2;->registerObserver(Ljava/lang/Object;)V

    .line 176
    iget-object v1, p0, Lcom/txznet/comm/ui/Tw/Tw;->TR:Lcom/txznet/comm/ui/Tw$T;

    if-eqz v1, :cond_0

    .line 178
    :try_start_0
    invoke-static {}, Lcom/txznet/comm/ui/T;->T2()Lcom/txznet/comm/ui/Tw;

    move-result-object v1

    iget-object v2, p0, Lcom/txznet/comm/ui/Tw/Tw;->TR:Lcom/txznet/comm/ui/Tw$T;

    invoke-virtual {v1, v2}, Lcom/txznet/comm/ui/Tw;->registerObserver(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/txznet/comm/ui/Tw/Tw;->Ty:Z

    if-nez v1, :cond_2

    .line 185
    iget-object v1, p0, Lcom/txznet/comm/ui/Tw/Tw;->TN:Lcom/txznet/comm/TN/T3;

    if-nez v1, :cond_1

    .line 186
    new-instance v1, Lcom/txznet/comm/TN/T3;

    invoke-virtual {p0}, Lcom/txznet/comm/ui/Tw/Tw;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/txznet/comm/TN/T3;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/txznet/comm/ui/Tw/Tw;->TN:Lcom/txznet/comm/TN/T3;

    .line 188
    :cond_1
    iget-object v1, p0, Lcom/txznet/comm/ui/Tw/Tw;->TN:Lcom/txznet/comm/TN/T3;

    invoke-virtual {v1}, Lcom/txznet/comm/TN/T3;->T()V

    .line 189
    iput-boolean v3, p0, Lcom/txznet/comm/ui/Tw/Tw;->Ty:Z

    .line 191
    :cond_2
    invoke-virtual {p0}, Lcom/txznet/comm/ui/Tw/Tw;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/txznet/comm/ui/TG/T;->Te(Landroid/view/View;)V

    .line 192
    invoke-virtual {p0}, Lcom/txznet/comm/ui/Tw/Tw;->getWindow()Landroid/view/Window;

    move-result-object v1

    const-string v2, "dialog_bg"

    invoke-static {v2}, Lcom/txznet/comm/ui/TG/T3;->T2(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 193
    invoke-super {p0}, Lcom/txznet/comm/ui/Tw/Ty;->show()V

    .line 194
    invoke-direct {p0}, Lcom/txznet/comm/ui/Tw/Tw;->Tw()V

    .line 195
    return-void

    .line 179
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
