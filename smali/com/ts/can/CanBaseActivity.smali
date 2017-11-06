.class public Lcom/ts/can/CanBaseActivity;
.super Landroid/app/Activity;
.source "CanBaseActivity.java"


# static fields
.field public static final DEBUG:Z = true

.field public static final FALSE:I = 0x0

.field public static final TAG:Ljava/lang/String; = "CanBaseActivity"

.field public static final TRUE:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static GetTickCount()J
    .locals 2

    .prologue
    .line 143
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method protected static i2b(I)Z
    .locals 1
    .param p0, "val"    # I

    .prologue
    .line 42
    if-nez p0, :cond_0

    .line 44
    const/4 v0, 0x0

    .line 47
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected static int2Bool(I)Z
    .locals 1
    .param p0, "val"    # I

    .prologue
    .line 32
    if-nez p0, :cond_0

    .line 34
    const/4 v0, 0x0

    .line 37
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public Neg(I)I
    .locals 1
    .param p1, "val"    # I

    .prologue
    .line 169
    if-nez p1, :cond_0

    .line 171
    const/4 v0, 0x1

    .line 174
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected SetCommBtn(Lcom/ts/other/ParamButton;I)V
    .locals 3
    .param p1, "btn"    # Lcom/ts/other/ParamButton;
    .param p2, "text"    # I

    .prologue
    const/4 v2, 0x0

    .line 186
    sget v0, Lcom/ts/MainUI/R$drawable;->fuel_consumption_rect_up:I

    sget v1, Lcom/ts/MainUI/R$drawable;->fuel_consumption_rect_dn:I

    invoke-virtual {p1, v0, v1}, Lcom/ts/other/ParamButton;->setStateUpDn(II)V

    .line 187
    if-eqz p2, :cond_0

    .line 189
    invoke-virtual {p1, p2}, Lcom/ts/other/ParamButton;->setText(I)V

    .line 192
    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p1, v2, v0, v2, v2}, Lcom/ts/other/ParamButton;->setPadding(IIII)V

    .line 193
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/ts/other/ParamButton;->setTextColor(I)V

    .line 194
    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Lcom/ts/other/ParamButton;->setGravity(I)V

    .line 195
    const/high16 v0, 0x42000000    # 32.0f

    invoke-virtual {p1, v2, v0}, Lcom/ts/other/ParamButton;->setTextSize(IF)V

    .line 196
    return-void
.end method

.method protected SetCommBtn(Lcom/ts/other/ParamButton;IILandroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "btn"    # Lcom/ts/other/ParamButton;
    .param p2, "text"    # I
    .param p3, "id"    # I
    .param p4, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 179
    invoke-virtual {p0, p1, p2}, Lcom/ts/can/CanBaseActivity;->SetCommBtn(Lcom/ts/other/ParamButton;I)V

    .line 180
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 181
    invoke-virtual {p1, p4}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    return-void
.end method

.method public Sleep(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 159
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :goto_0
    return-void

    .line 161
    :catch_0
    move-exception v0

    .line 163
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public enterSubWin(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 52
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 53
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 54
    invoke-virtual {p0, v0}, Lcom/ts/can/CanBaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 56
    invoke-virtual {p0, v1, v1}, Lcom/ts/can/CanBaseActivity;->overridePendingTransition(II)V

    .line 57
    return-void
.end method

.method public getCurrentActivityName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 201
    const-string v2, "activity"

    invoke-virtual {p0, v2}, Lcom/ts/can/CanBaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 202
    .local v0, "activityManager":Landroid/app/ActivityManager;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 203
    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 204
    .local v1, "runningActivity":Ljava/lang/String;
    return-object v1
.end method

.method public setIvDrawable(Landroid/widget/ImageView;I)V
    .locals 1
    .param p1, "iv"    # Landroid/widget/ImageView;
    .param p2, "resId"    # I

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/ts/can/CanBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 139
    return-void
.end method

.method public setIvSel(Landroid/widget/ImageView;I)V
    .locals 1
    .param p1, "iv"    # Landroid/widget/ImageView;
    .param p2, "val"    # I

    .prologue
    .line 90
    invoke-static {p2}, Lcom/ts/can/CanBaseActivity;->int2Bool(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 98
    :goto_0
    return-void

    .line 96
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_0
.end method

.method public setIvShow(Landroid/widget/ImageView;I)V
    .locals 1
    .param p1, "iv"    # Landroid/widget/ImageView;
    .param p2, "val"    # I

    .prologue
    .line 102
    invoke-static {p2}, Lcom/ts/can/CanBaseActivity;->int2Bool(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 110
    :goto_0
    return-void

    .line 108
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setIvStateDrawable(Landroid/widget/ImageView;II)V
    .locals 8
    .param p1, "iv"    # Landroid/widget/ImageView;
    .param p2, "normal"    # I
    .param p3, "selected"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x1

    const/4 v4, -0x1

    const/4 v6, 0x0

    .line 74
    invoke-virtual {p0}, Lcom/ts/can/CanBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 75
    .local v2, "res":Landroid/content/res/Resources;
    new-instance v3, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 76
    .local v3, "sd":Landroid/graphics/drawable/StateListDrawable;
    if-ne p2, v4, :cond_0

    move-object v0, v1

    .line 77
    .local v0, "iNormal":Landroid/graphics/drawable/Drawable;
    :goto_0
    if-ne p3, v4, :cond_1

    .line 81
    .local v1, "iSelected":Landroid/graphics/drawable/Drawable;
    :goto_1
    new-array v4, v7, [I

    const v5, 0x10100a1

    aput v5, v4, v6

    invoke-virtual {v3, v4, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 82
    new-array v4, v7, [I

    const v5, 0x101009e

    aput v5, v4, v6

    invoke-virtual {v3, v4, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 83
    new-array v4, v6, [I

    invoke-virtual {v3, v4, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 84
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 86
    return-void

    .line 76
    .end local v0    # "iNormal":Landroid/graphics/drawable/Drawable;
    .end local v1    # "iSelected":Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 77
    .restart local v0    # "iNormal":Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-virtual {v2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_1
.end method

.method protected setViewPos(Landroid/widget/RelativeLayout;Landroid/view/View;IIII)V
    .locals 2
    .param p1, "layout"    # Landroid/widget/RelativeLayout;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "w"    # I
    .param p6, "h"    # I

    .prologue
    .line 148
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, p5, p6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 149
    .local v0, "rl":Landroid/widget/RelativeLayout$LayoutParams;
    iput p3, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 150
    add-int/lit8 v1, p4, -0x3c

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 151
    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 153
    return-void
.end method

.method public setViewShow(Landroid/view/View;I)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "val"    # I

    .prologue
    .line 114
    invoke-static {p2}, Lcom/ts/can/CanBaseActivity;->int2Bool(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 122
    :goto_0
    return-void

    .line 120
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setViewShow(Landroid/view/View;Z)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "show"    # Z

    .prologue
    .line 126
    if-eqz p2, :cond_0

    .line 128
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 134
    :goto_0
    return-void

    .line 132
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected showFlg(Landroid/widget/ImageView;III)V
    .locals 1
    .param p1, "iv"    # Landroid/widget/ImageView;
    .param p2, "val"    # I
    .param p3, "onImg"    # I
    .param p4, "offImg"    # I

    .prologue
    .line 62
    invoke-static {p2}, Lcom/ts/can/CanBaseActivity;->int2Bool(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/ts/can/CanBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 70
    :goto_0
    return-void

    .line 68
    :cond_0
    invoke-virtual {p0}, Lcom/ts/can/CanBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
