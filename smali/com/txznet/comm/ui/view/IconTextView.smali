.class public Lcom/txznet/comm/ui/view/IconTextView;
.super Landroid/widget/RelativeLayout;
.source "Proguard"

# interfaces
.implements Lcom/txznet/comm/ui/IKeepClass;


# instance fields
.field private T:Landroid/widget/ImageView;

.field private T2:Landroid/widget/TextView;

.field private T3:Landroid/widget/TextView;

.field private TG:F

.field private TN:I

.field private TR:F

.field private Te:I

.field private Tn:Landroid/content/Context;

.field private Tw:Ljava/lang/String;

.field private Ty:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/txznet/comm/ui/view/IconTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/txznet/comm/ui/view/IconTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/high16 v1, 0x41c00000    # 24.0f

    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    iput v1, p0, Lcom/txznet/comm/ui/view/IconTextView;->TG:F

    .line 42
    iput v1, p0, Lcom/txznet/comm/ui/view/IconTextView;->TR:F

    .line 54
    iput-object p1, p0, Lcom/txznet/comm/ui/view/IconTextView;->Tn:Landroid/content/Context;

    .line 55
    const-string v0, "#adb6cc"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/txznet/comm/ui/view/IconTextView;->TN:I

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lcom/txznet/comm/ui/view/IconTextView;->Te:I

    .line 57
    iput v1, p0, Lcom/txznet/comm/ui/view/IconTextView;->TG:F

    .line 58
    iput v1, p0, Lcom/txznet/comm/ui/view/IconTextView;->TR:F

    .line 59
    return-void
.end method


# virtual methods
.method public init()V
    .locals 14

    .prologue
    .line 63
    const-string v4, "icon_textview_layout"

    .line 64
    .local v4, "mLayoutId":Ljava/lang/String;
    const/4 v10, 0x0

    .line 65
    .local v10, "view":Landroid/view/View;
    const/4 v6, 0x0

    .line 66
    .local v6, "tvHeadTopMargin":I
    const/4 v5, 0x0

    .line 67
    .local v5, "tvHeadBottomMargin":I
    const/4 v9, 0x0

    .line 68
    .local v9, "tvTitleTopMargin":I
    const/4 v7, 0x0

    .line 69
    .local v7, "tvTitleBottomMargin":I
    const/4 v1, 0x0

    .line 70
    .local v1, "ivIconWidth":I
    const/4 v0, 0x0

    .line 71
    .local v0, "ivIconHeight":I
    const/4 v8, 0x0

    .line 72
    .local v8, "tvTitleLeftMargin":I
    invoke-static {}, Lcom/txznet/comm/ui/TG/T;->T()I

    move-result v11

    packed-switch v11, :pswitch_data_0

    .line 86
    :goto_0
    sget v11, Lcom/txznet/comm/ui/Tn/Tw;->T5:I

    invoke-static {v11}, Lcom/txznet/comm/ui/Tn/Tw;->T3(I)F

    move-result v11

    float-to-int v6, v11

    .line 87
    sget v11, Lcom/txznet/comm/ui/Tn/Tw;->Tu:I

    invoke-static {v11}, Lcom/txznet/comm/ui/Tn/Tw;->T3(I)F

    move-result v11

    float-to-int v5, v11

    .line 88
    sget v11, Lcom/txznet/comm/ui/Tn/Tw;->Tf:I

    invoke-static {v11}, Lcom/txznet/comm/ui/Tn/Tw;->T3(I)F

    move-result v11

    float-to-int v9, v11

    .line 89
    sget v11, Lcom/txznet/comm/ui/Tn/Tw;->T1:I

    invoke-static {v11}, Lcom/txznet/comm/ui/Tn/Tw;->T3(I)F

    move-result v11

    float-to-int v7, v11

    .line 90
    sget v11, Lcom/txznet/comm/ui/Tn/Tw;->Tg:I

    invoke-static {v11}, Lcom/txznet/comm/ui/Tn/Tw;->T(I)F

    move-result v11

    float-to-int v8, v11

    .line 91
    sget v11, Lcom/txznet/comm/ui/Tn/Tw;->TF:I

    invoke-static {v11}, Lcom/txznet/comm/ui/Tn/Tw;->T3(I)F

    move-result v11

    float-to-int v1, v11

    .line 92
    sget v11, Lcom/txznet/comm/ui/Tn/Tw;->Tt:I

    invoke-static {v11}, Lcom/txznet/comm/ui/Tn/Tw;->T3(I)F

    move-result v11

    float-to-int v0, v11

    .line 93
    invoke-static {v4}, Lcom/txznet/comm/ui/TG/T3;->T3(Ljava/lang/String;)Landroid/view/View;

    move-result-object v10

    .line 94
    const-string v11, "itv_icon_iv"

    invoke-static {v11, v10}, Lcom/txznet/comm/ui/TG/T3;->T(Ljava/lang/String;Landroid/view/View;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    iput-object v11, p0, Lcom/txznet/comm/ui/view/IconTextView;->T:Landroid/widget/ImageView;

    .line 95
    const-string v11, "itv_title_tv"

    invoke-static {v11, v10}, Lcom/txznet/comm/ui/TG/T3;->T(Ljava/lang/String;Landroid/view/View;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Lcom/txznet/comm/ui/view/IconTextView;->T3:Landroid/widget/TextView;

    .line 96
    const-string v11, "itv_head_tv"

    invoke-static {v11, v10}, Lcom/txznet/comm/ui/TG/T3;->T(Ljava/lang/String;Landroid/view/View;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Lcom/txznet/comm/ui/view/IconTextView;->T2:Landroid/widget/TextView;

    .line 97
    iget-object v11, p0, Lcom/txznet/comm/ui/view/IconTextView;->T2:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 98
    .local v2, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iput v6, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 99
    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 100
    iget-object v11, p0, Lcom/txznet/comm/ui/view/IconTextView;->T2:Landroid/widget/TextView;

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    iget-object v11, p0, Lcom/txznet/comm/ui/view/IconTextView;->T3:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .end local v2    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 103
    .restart local v2    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iput v9, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 104
    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 105
    iput v8, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 106
    iget-object v11, p0, Lcom/txznet/comm/ui/view/IconTextView;->T3:Landroid/widget/TextView;

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 108
    iget-object v11, p0, Lcom/txznet/comm/ui/view/IconTextView;->T:Landroid/widget/ImageView;

    invoke-virtual {v11}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .end local v2    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 109
    .restart local v2    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 110
    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 111
    iget-object v11, p0, Lcom/txznet/comm/ui/view/IconTextView;->T:Landroid/widget/ImageView;

    invoke-virtual {v11, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    invoke-static {}, Lcom/txznet/comm/ui/TG/T;->T()I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_1

    const/4 v11, 0x1

    :goto_1
    invoke-static {}, Lcom/txznet/comm/ui/TG/T;->T()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_2

    const/4 v12, 0x1

    :goto_2
    or-int/2addr v11, v12

    if-eqz v11, :cond_0

    .line 114
    iget-object v11, p0, Lcom/txznet/comm/ui/view/IconTextView;->T:Landroid/widget/ImageView;

    invoke-virtual {v11}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 115
    .local v3, "mIconImageViewParent":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .end local v2    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 116
    .restart local v2    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    const-string v11, "y16"

    invoke-static {v11}, Lcom/txznet/comm/ui/TG/T3;->TN(Ljava/lang/String;)F

    move-result v11

    float-to-int v11, v11

    iput v11, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 117
    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    .end local v3    # "mIconImageViewParent":Landroid/view/View;
    :cond_0
    iget-object v11, p0, Lcom/txznet/comm/ui/view/IconTextView;->T3:Landroid/widget/TextView;

    iget-object v12, p0, Lcom/txznet/comm/ui/view/IconTextView;->Tw:Ljava/lang/String;

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v11, p0, Lcom/txznet/comm/ui/view/IconTextView;->T3:Landroid/widget/TextView;

    iget v12, p0, Lcom/txznet/comm/ui/view/IconTextView;->TN:I

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 123
    iget-object v11, p0, Lcom/txznet/comm/ui/view/IconTextView;->T3:Landroid/widget/TextView;

    const/4 v12, 0x0

    iget v13, p0, Lcom/txznet/comm/ui/view/IconTextView;->TG:F

    invoke-virtual {v11, v12, v13}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 125
    iget-object v11, p0, Lcom/txznet/comm/ui/view/IconTextView;->T2:Landroid/widget/TextView;

    iget-object v12, p0, Lcom/txznet/comm/ui/view/IconTextView;->Ty:Ljava/lang/String;

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v11, p0, Lcom/txznet/comm/ui/view/IconTextView;->T2:Landroid/widget/TextView;

    iget v12, p0, Lcom/txznet/comm/ui/view/IconTextView;->TN:I

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 127
    iget-object v11, p0, Lcom/txznet/comm/ui/view/IconTextView;->T2:Landroid/widget/TextView;

    const/4 v12, 0x0

    iget v13, p0, Lcom/txznet/comm/ui/view/IconTextView;->TR:F

    invoke-virtual {v11, v12, v13}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 129
    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v12, -0x1

    const/4 v13, -0x1

    invoke-direct {v11, v12, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v10, v11}, Lcom/txznet/comm/ui/view/IconTextView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    return-void

    .line 75
    .end local v2    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :pswitch_0
    const-string v4, "icon_textview_layout_normal"

    .line 76
    goto/16 :goto_0

    .line 78
    :pswitch_1
    const-string v4, "icon_textview_layout_large"

    .line 79
    goto/16 :goto_0

    .line 81
    :pswitch_2
    const-string v4, "icon_textview_layout_car"

    .line 82
    goto/16 :goto_0

    .line 113
    .restart local v2    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    const/4 v11, 0x0

    goto :goto_1

    :cond_2
    const/4 v12, 0x0

    goto :goto_2

    .line 72
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/txznet/comm/ui/view/IconTextView;->T:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 147
    return-void
.end method

.method public setHead(Ljava/lang/String;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/String;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/txznet/comm/ui/view/IconTextView;->Ty:Ljava/lang/String;

    .line 155
    iget-object v0, p0, Lcom/txznet/comm/ui/view/IconTextView;->T2:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/txznet/comm/ui/view/IconTextView;->Ty:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    return-void
.end method

.method public setHeadColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 173
    iget-object v0, p0, Lcom/txznet/comm/ui/view/IconTextView;->T2:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 174
    return-void
.end method

.method public setHeadSize(F)V
    .locals 2
    .param p1, "size"    # F

    .prologue
    .line 164
    iput p1, p0, Lcom/txznet/comm/ui/view/IconTextView;->TR:F

    .line 165
    iget-object v0, p0, Lcom/txznet/comm/ui/view/IconTextView;->T2:Landroid/widget/TextView;

    iget v1, p0, Lcom/txznet/comm/ui/view/IconTextView;->TR:F

    invoke-static {v0, v1}, Lcom/txznet/comm/TN/TN;->T(Landroid/widget/TextView;F)V

    .line 166
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/String;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/txznet/comm/ui/view/IconTextView;->Tw:Ljava/lang/String;

    .line 151
    iget-object v0, p0, Lcom/txznet/comm/ui/view/IconTextView;->T3:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/txznet/comm/ui/view/IconTextView;->Tw:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    return-void
.end method

.method public setTitleColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 169
    iget-object v0, p0, Lcom/txznet/comm/ui/view/IconTextView;->T3:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 170
    return-void
.end method

.method public setTitleSize(F)V
    .locals 2
    .param p1, "size"    # F

    .prologue
    .line 159
    iput p1, p0, Lcom/txznet/comm/ui/view/IconTextView;->TG:F

    .line 160
    iget-object v0, p0, Lcom/txznet/comm/ui/view/IconTextView;->T3:Landroid/widget/TextView;

    iget v1, p0, Lcom/txznet/comm/ui/view/IconTextView;->TG:F

    invoke-static {v0, v1}, Lcom/txznet/comm/TN/TN;->T(Landroid/widget/TextView;F)V

    .line 161
    return-void
.end method
