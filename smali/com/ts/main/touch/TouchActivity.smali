.class public Lcom/ts/main/touch/TouchActivity;
.super Landroid/app/Activity;
.source "TouchActivity.java"


# instance fields
.field bTouch:Z

.field finglueImageView:Landroid/widget/ImageView;

.field touchZB:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ts/main/touch/TouchActivity;->bTouch:Z

    .line 18
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 28
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    sget v0, Lcom/ts/MainUI/R$layout;->activity_touch_main:I

    invoke-virtual {p0, v0}, Lcom/ts/main/touch/TouchActivity;->setContentView(I)V

    .line 31
    sget v0, Lcom/ts/MainUI/R$id;->touch_zuobiao:I

    invoke-virtual {p0, v0}, Lcom/ts/main/touch/TouchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ts/main/touch/TouchActivity;->touchZB:Landroid/widget/TextView;

    .line 32
    sget v0, Lcom/ts/MainUI/R$id;->touch_fingle:I

    invoke-virtual {p0, v0}, Lcom/ts/main/touch/TouchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ts/main/touch/TouchActivity;->finglueImageView:Landroid/widget/ImageView;

    .line 34
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 43
    invoke-static {}, Lcom/ts/main/common/MainSet;->GetInstance()Lcom/ts/main/common/MainSet;

    move-result-object v0

    iget-boolean v0, v0, Lcom/ts/main/common/MainSet;->bCeleb:Z

    if-eqz v0, :cond_0

    .line 45
    const-string v0, "\u5df2\u7ecf\u77eb\u6b63\uff0c\u91cd\u542f\u751f\u6548"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 46
    invoke-virtual {p0}, Lcom/ts/main/touch/TouchActivity;->finish()V

    .line 50
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 51
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x1

    const/16 v8, 0x200

    const/16 v7, 0x12c

    const/4 v6, 0x0

    .line 58
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_5

    .line 62
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v0, v3

    .line 63
    .local v0, "X":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v1, v3

    .line 64
    .local v1, "Y":I
    iget-object v3, p0, Lcom/ts/main/touch/TouchActivity;->touchZB:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "X="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  Y="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " \u539f\u70b9="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetCtXYswap()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetCtXYswap()I

    move-result v3

    if-eqz v3, :cond_0

    .line 67
    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetCtXYswap()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 86
    :cond_0
    :goto_0
    const/4 v2, 0x0

    .line 87
    .local v2, "nWriteData":I
    if-ge v0, v8, :cond_2

    if-ge v1, v7, :cond_2

    .line 89
    const-string v3, "\u539f\u70b9\u5de6\u4e0a"

    invoke-static {p0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 90
    const/4 v2, 0x0

    .line 107
    :cond_1
    :goto_1
    invoke-static {v2}, Lcom/yyw/ts70xhw/FtSet;->SetCtXYswap(I)I

    .line 108
    invoke-static {v6}, Lcom/yyw/ts70xhw/FtSet;->Save(I)I

    .line 109
    iput-boolean v9, p0, Lcom/ts/main/touch/TouchActivity;->bTouch:Z

    .line 110
    invoke-static {}, Lcom/ts/main/common/MainSet;->GetInstance()Lcom/ts/main/common/MainSet;

    move-result-object v3

    iput-boolean v9, v3, Lcom/ts/main/common/MainSet;->bCeleb:Z

    .line 111
    new-instance v3, Lcom/ts/main/touch/TouchActivity$1;

    invoke-direct {v3, p0}, Lcom/ts/main/touch/TouchActivity$1;-><init>(Lcom/ts/main/touch/TouchActivity;)V

    .line 124
    invoke-virtual {v3}, Lcom/ts/main/touch/TouchActivity$1;->start()V

    .line 131
    .end local v0    # "X":I
    .end local v1    # "Y":I
    .end local v2    # "nWriteData":I
    :goto_2
    return v9

    .line 70
    .restart local v0    # "X":I
    .restart local v1    # "Y":I
    :pswitch_0
    rsub-int v1, v1, 0x258

    .line 71
    goto :goto_0

    .line 73
    :pswitch_1
    rsub-int v1, v1, 0x258

    .line 74
    rsub-int v0, v0, 0x400

    .line 75
    goto :goto_0

    .line 77
    :pswitch_2
    rsub-int v0, v0, 0x400

    .line 78
    goto :goto_0

    .line 92
    .restart local v2    # "nWriteData":I
    :cond_2
    if-le v0, v8, :cond_3

    if-ge v1, v7, :cond_3

    .line 94
    const-string v3, "\u539f\u70b9\u53f3\u4e0a"

    invoke-static {p0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 95
    const/4 v2, 0x3

    .line 96
    goto :goto_1

    .line 97
    :cond_3
    if-ge v0, v8, :cond_4

    if-le v1, v7, :cond_4

    .line 99
    const-string v3, "\u539f\u70b9\u5de6\u4e0b"

    invoke-static {p0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 100
    const/4 v2, 0x1

    .line 101
    goto :goto_1

    .line 102
    :cond_4
    if-le v0, v8, :cond_1

    if-le v1, v7, :cond_1

    .line 104
    const-string v3, "\u539f\u70b9\u53f3\u4e0b"

    invoke-static {p0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 105
    const/4 v2, 0x2

    goto :goto_1

    .line 128
    .end local v0    # "X":I
    .end local v1    # "Y":I
    .end local v2    # "nWriteData":I
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    goto :goto_2

    .line 67
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
