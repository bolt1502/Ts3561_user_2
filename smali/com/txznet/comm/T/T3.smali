.class public Lcom/txznet/comm/T/T3;
.super Lcom/txznet/comm/T/Te;
.source "Proguard"


# instance fields
.field private T:Z

.field private T3:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/txznet/comm/T/Te;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/txznet/comm/T/T3;->T:Z

    return-void
.end method

.method public static T2()Z
    .locals 2

    .prologue
    .line 90
    const-string v0, "REL"

    const-string v1, "REL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    const/4 v0, 0x0

    .line 93
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private TN()V
    .locals 9

    .prologue
    .line 117
    :try_start_0
    iget-object v6, p0, Lcom/txznet/comm/T/T3;->T3:Landroid/widget/TextView;

    if-eqz v6, :cond_0

    .line 147
    :goto_0
    return-void

    .line 120
    :cond_0
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/txznet/comm/T/T3;->T3:Landroid/widget/TextView;

    .line 121
    invoke-virtual {p0}, Lcom/txznet/comm/T/T3;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {p0}, Lcom/txznet/comm/T/T3;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 122
    .local v2, "info":Landroid/content/pm/PackageInfo;
    const-string v4, "\u672a\u77e5\u7248\u672c"

    .line 123
    .local v4, "verInfo":Ljava/lang/String;
    const-string v6, "DEV"

    const-string v7, "REL"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 124
    const-string v4, "\u5f00\u53d1\u7248\u672c"

    .line 129
    :cond_1
    :goto_1
    iget-object v7, p0, Lcom/txznet/comm/T/T3;->T3:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u6b64\u7248\u672c\u4e3a"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-nez v2, :cond_3

    const-string v6, ""

    :goto_2
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v6, p0, Lcom/txznet/comm/T/T3;->T3:Landroid/widget/TextView;

    const/high16 v7, 0x41800000    # 16.0f

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 131
    iget-object v6, p0, Lcom/txznet/comm/T/T3;->T3:Landroid/widget/TextView;

    const-string v7, "#ccffffff"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 132
    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v3}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 133
    .local v3, "mLp":Landroid/view/WindowManager$LayoutParams;
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 134
    .local v5, "w":I
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 135
    .local v1, "h":I
    iget-object v6, p0, Lcom/txznet/comm/T/T3;->T3:Landroid/widget/TextView;

    invoke-virtual {v6, v5, v1}, Landroid/widget/TextView;->measure(II)V

    .line 136
    iget-object v6, p0, Lcom/txznet/comm/T/T3;->T3:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v6

    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 137
    iget-object v6, p0, Lcom/txznet/comm/T/T3;->T3:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 138
    const/16 v6, 0x28

    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 139
    const/4 v6, 0x1

    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 140
    const/16 v6, 0x33

    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 141
    const/16 v6, 0xa

    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 142
    const/16 v6, 0xa

    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 143
    invoke-virtual {p0}, Lcom/txznet/comm/T/T3;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    iget-object v7, p0, Lcom/txznet/comm/T/T3;->T3:Landroid/widget/TextView;

    invoke-interface {v6, v7, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 144
    .end local v1    # "h":I
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    .end local v3    # "mLp":Landroid/view/WindowManager$LayoutParams;
    .end local v4    # "verInfo":Ljava/lang/String;
    .end local v5    # "w":I
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Ljava/lang/Exception;
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/txznet/comm/T/T3;->T3:Landroid/widget/TextView;

    goto/16 :goto_0

    .line 126
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "info":Landroid/content/pm/PackageInfo;
    .restart local v4    # "verInfo":Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v6, "NEW"

    const-string v7, "REL"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 127
    const-string v4, "\u6f14\u793a\u7248\u672c"

    goto/16 :goto_1

    .line 129
    :cond_3
    iget-object v6, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method


# virtual methods
.method public T()V
    .locals 0

    .prologue
    .line 36
    return-void
.end method

.method public T3()V
    .locals 0

    .prologue
    .line 42
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 28
    invoke-static {}, Lcom/txznet/comm/T/TN;->T()Lcom/txznet/comm/T/TN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txznet/comm/T/TN;->T3()V

    .line 29
    invoke-super {p0, p1}, Lcom/txznet/comm/T/Te;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 6

    .prologue
    .line 70
    invoke-static {}, Lcom/txznet/T/T;->T()Landroid/app/Application;

    move-result-object v0

    .line 72
    .local v0, "app":Landroid/app/Application;
    if-eqz v0, :cond_0

    .line 74
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "mResources"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 75
    .local v2, "f":Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 76
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/Resources;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .local v3, "r":Landroid/content/res/Resources;
    if-eqz v3, :cond_0

    .line 83
    .end local v2    # "f":Ljava/lang/reflect/Field;
    .end local v3    # "r":Landroid/content/res/Resources;
    :goto_0
    return-object v3

    .line 79
    :catch_0
    move-exception v1

    .line 80
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 83
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-super {p0}, Lcom/txznet/comm/T/Te;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/txznet/comm/T/T3;->T3:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/txznet/comm/T/T3;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/txznet/comm/T/T3;->T3:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/txznet/comm/T/T3;->T3:Landroid/widget/TextView;

    .line 110
    :cond_0
    invoke-super {p0}, Lcom/txznet/comm/T/Te;->onPause()V

    .line 111
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 98
    invoke-super {p0}, Lcom/txznet/comm/T/Te;->onResume()V

    .line 99
    invoke-static {}, Lcom/txznet/comm/T/T3;->T2()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    invoke-direct {p0}, Lcom/txznet/comm/T/T3;->TN()V

    .line 102
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "newFocus"    # Z

    .prologue
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " onWindowFocusChanged: from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/txznet/comm/T/T3;->T:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I

    .line 57
    iget-boolean v0, p0, Lcom/txznet/comm/T/T3;->T:Z

    if-eq v0, p1, :cond_0

    .line 58
    iput-boolean p1, p0, Lcom/txznet/comm/T/T3;->T:Z

    .line 59
    iget-boolean v0, p0, Lcom/txznet/comm/T/T3;->T:Z

    if-eqz v0, :cond_1

    .line 60
    invoke-virtual {p0}, Lcom/txznet/comm/T/T3;->T()V

    .line 65
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/txznet/comm/T/Te;->onWindowFocusChanged(Z)V

    .line 66
    return-void

    .line 62
    :cond_1
    invoke-virtual {p0}, Lcom/txznet/comm/T/T3;->T3()V

    goto :goto_0
.end method
