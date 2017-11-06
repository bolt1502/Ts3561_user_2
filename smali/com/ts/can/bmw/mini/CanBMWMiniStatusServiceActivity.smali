.class public Lcom/ts/can/bmw/mini/CanBMWMiniStatusServiceActivity;
.super Lcom/ts/can/bmw/mini/CanBMWMiniBaseActivity;
.source "CanBMWMiniStatusServiceActivity.java"


# instance fields
.field private mItemNone:Landroid/widget/TextView;

.field private mLayoutArrays:[Landroid/widget/LinearLayout;

.field private mManager:Landroid/widget/RelativeLayout;

.field private mServiceArrays:[Ljava/lang/String;

.field private mServiceIcons:[I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/ts/can/bmw/mini/CanBMWMiniBaseActivity;-><init>()V

    .line 22
    const/16 v0, 0x8

    new-array v0, v0, [Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusServiceActivity;->mLayoutArrays:[Landroid/widget/LinearLayout;

    .line 26
    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/ts/MainUI/R$drawable;->can_mini_ok_icon:I

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 27
    sget v2, Lcom/ts/MainUI/R$drawable;->can_mini_set_icon:I

    aput v2, v0, v1

    const/4 v1, 0x2

    sget v2, Lcom/ts/MainUI/R$drawable;->can_mini_warning_icon:I

    aput v2, v0, v1

    const/4 v1, 0x3

    .line 28
    const v2, 0x106000d

    aput v2, v0, v1

    iput-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusServiceActivity;->mServiceIcons:[I

    .line 16
    return-void
.end method

.method private addIcon(Landroid/widget/LinearLayout;)V
    .locals 3
    .param p1, "layout"    # Landroid/widget/LinearLayout;

    .prologue
    const/4 v2, -0x2

    .line 147
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 148
    .local v0, "icon":Landroid/widget/ImageView;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 150
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v2, 0x10

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 151
    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    return-void
.end method

.method private addServiceItem(III)Landroid/widget/LinearLayout;
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "id"    # I

    .prologue
    const/16 v4, 0xa

    const/4 v3, 0x0

    .line 125
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 126
    .local v0, "layout":Landroid/widget/LinearLayout;
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 127
    sget v2, Lcom/ts/MainUI/R$drawable;->btn_mini_service_item:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 128
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 129
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 131
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 132
    invoke-virtual {v0, v4, v3, v4, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 133
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 134
    const/16 v2, 0x12c

    const/16 v3, 0x3a

    .line 133
    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 135
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iput p1, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 136
    iput p2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 137
    iget-object v2, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusServiceActivity;->mManager:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    invoke-direct {p0, v0}, Lcom/ts/can/bmw/mini/CanBMWMiniStatusServiceActivity;->addIcon(Landroid/widget/LinearLayout;)V

    .line 141
    invoke-direct {p0, v0}, Lcom/ts/can/bmw/mini/CanBMWMiniStatusServiceActivity;->addText(Landroid/widget/LinearLayout;)V

    .line 143
    return-object v0
.end method

.method private addText(Landroid/widget/LinearLayout;)V
    .locals 4
    .param p1, "layout"    # Landroid/widget/LinearLayout;

    .prologue
    const/4 v3, -0x2

    .line 155
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 156
    .local v1, "text":Landroid/widget/TextView;
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 157
    const/high16 v2, 0x41a00000    # 20.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 158
    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 159
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 161
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v2, 0xa

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 162
    const/16 v2, 0x10

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 163
    invoke-virtual {p1, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 164
    return-void
.end method

.method private addTextWithNone()Landroid/widget/TextView;
    .locals 4

    .prologue
    const/4 v3, -0x2

    .line 167
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 168
    .local v1, "text":Landroid/widget/TextView;
    sget v2, Lcom/ts/MainUI/R$string;->can_check_control_none:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 169
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 170
    const/high16 v2, 0x41a00000    # 20.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 171
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 172
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 174
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 175
    iget-object v2, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusServiceActivity;->mManager:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 176
    return-object v1
.end method

.method private getClickedItem(I)Landroid/os/Bundle;
    .locals 5
    .param p1, "id"    # I

    .prologue
    .line 189
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 190
    .local v0, "data":Landroid/os/Bundle;
    const-string v3, "index"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 192
    iget-object v3, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusServiceActivity;->mLayoutArrays:[Landroid/widget/LinearLayout;

    aget-object v3, v3, p1

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 193
    .local v1, "icon":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 194
    const-string v4, "status"

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 197
    :cond_0
    iget-object v3, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusServiceActivity;->mLayoutArrays:[Landroid/widget/LinearLayout;

    aget-object v3, v3, p1

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 198
    .local v2, "text":Landroid/widget/TextView;
    if-eqz v2, :cond_1

    .line 199
    const-string v4, "num"

    invoke-virtual {v2}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 202
    :cond_1
    return-object v0
.end method

.method private setIcon(Landroid/widget/LinearLayout;II)V
    .locals 2
    .param p1, "layout"    # Landroid/widget/LinearLayout;
    .param p2, "resId"    # I
    .param p3, "status"    # I

    .prologue
    .line 109
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 110
    .local v0, "icon":Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 112
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 114
    :cond_0
    return-void
.end method

.method private setText(Landroid/widget/LinearLayout;Ljava/lang/String;I)V
    .locals 2
    .param p1, "layout"    # Landroid/widget/LinearLayout;
    .param p2, "str"    # Ljava/lang/String;
    .param p3, "num"    # I

    .prologue
    .line 117
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 118
    .local v0, "text":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 122
    :cond_0
    return-void
.end method

.method private setVisibility(I)V
    .locals 4
    .param p1, "num"    # I

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 95
    if-nez p1, :cond_2

    .line 96
    iget-object v1, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusServiceActivity;->mItemNone:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 97
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusServiceActivity;->mLayoutArrays:[Landroid/widget/LinearLayout;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 106
    :cond_0
    return-void

    .line 98
    :cond_1
    iget-object v1, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusServiceActivity;->mLayoutArrays:[Landroid/widget/LinearLayout;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 97
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 101
    .end local v0    # "i":I
    :cond_2
    iget-object v1, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusServiceActivity;->mItemNone:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 102
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    if-ge v0, p1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusServiceActivity;->mLayoutArrays:[Landroid/widget/LinearLayout;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private startSubWin(Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 2
    .param p2, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 206
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 207
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 208
    invoke-virtual {p0, v0}, Lcom/ts/can/bmw/mini/CanBMWMiniStatusServiceActivity;->startActivity(Landroid/content/Intent;)V

    .line 209
    invoke-virtual {p0, v1, v1}, Lcom/ts/can/bmw/mini/CanBMWMiniStatusServiceActivity;->overridePendingTransition(II)V

    .line 210
    return-void
.end method


# virtual methods
.method protected AddItemView()V
    .locals 4

    .prologue
    .line 42
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusServiceActivity;->mLayoutArrays:[Landroid/widget/LinearLayout;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 46
    invoke-direct {p0}, Lcom/ts/can/bmw/mini/CanBMWMiniStatusServiceActivity;->addTextWithNone()Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusServiceActivity;->mItemNone:Landroid/widget/TextView;

    .line 47
    return-void

    .line 43
    :cond_0
    iget-object v1, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusServiceActivity;->mLayoutArrays:[Landroid/widget/LinearLayout;

    rem-int/lit8 v2, v0, 0x2

    mul-int/lit16 v2, v2, 0x1cc

    add-int/lit8 v2, v2, 0x78

    div-int/lit8 v3, v0, 0x2

    mul-int/lit8 v3, v3, 0x64

    add-int/lit8 v3, v3, 0x64

    invoke-direct {p0, v2, v3, v0}, Lcom/ts/can/bmw/mini/CanBMWMiniStatusServiceActivity;->addServiceItem(III)Landroid/widget/LinearLayout;

    move-result-object v2

    aput-object v2, v1, v0

    .line 42
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected Query()V
    .locals 1

    .prologue
    .line 91
    const/16 v0, 0x4b

    invoke-virtual {p0, v0}, Lcom/ts/can/bmw/mini/CanBMWMiniStatusServiceActivity;->Query(I)V

    .line 92
    return-void
.end method

.method protected ResetData(Z)V
    .locals 9
    .param p1, "check"    # Z

    .prologue
    const/4 v8, 0x3

    .line 51
    invoke-virtual {p0}, Lcom/ts/can/bmw/mini/CanBMWMiniStatusServiceActivity;->GetMiniService()V

    .line 53
    iget-object v6, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusServiceActivity;->mCarService:Lcom/lgb/canmodule/CanDataInfo$MiniService;

    iget v6, v6, Lcom/lgb/canmodule/CanDataInfo$MiniService;->UpdateOnce:I

    invoke-static {v6}, Lcom/ts/can/bmw/mini/CanBMWMiniStatusServiceActivity;->i2b(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 54
    if-eqz p1, :cond_0

    iget-object v6, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusServiceActivity;->mCarService:Lcom/lgb/canmodule/CanDataInfo$MiniService;

    iget v6, v6, Lcom/lgb/canmodule/CanDataInfo$MiniService;->Update:I

    invoke-static {v6}, Lcom/ts/can/bmw/mini/CanBMWMiniStatusServiceActivity;->i2b(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 55
    :cond_0
    iget-object v6, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusServiceActivity;->mCarService:Lcom/lgb/canmodule/CanDataInfo$MiniService;

    const/4 v7, 0x0

    iput v7, v6, Lcom/lgb/canmodule/CanDataInfo$MiniService;->Update:I

    .line 57
    iget-object v6, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusServiceActivity;->mCarService:Lcom/lgb/canmodule/CanDataInfo$MiniService;

    iget v5, v6, Lcom/lgb/canmodule/CanDataInfo$MiniService;->Num:I

    .line 59
    .local v5, "num":I
    invoke-direct {p0, v5}, Lcom/ts/can/bmw/mini/CanBMWMiniStatusServiceActivity;->setVisibility(I)V

    .line 61
    iget-object v6, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusServiceActivity;->mCarService:Lcom/lgb/canmodule/CanDataInfo$MiniService;

    iget v0, v6, Lcom/lgb/canmodule/CanDataInfo$MiniService;->CurIndex:I

    .line 63
    .local v0, "curIndex":I
    const/4 v6, 0x1

    if-lt v0, v6, :cond_1

    if-gt v0, v5, :cond_1

    .line 66
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v6, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusServiceActivity;->mCarService:Lcom/lgb/canmodule/CanDataInfo$MiniService;

    iget-object v6, v6, Lcom/lgb/canmodule/CanDataInfo$MiniService;->Status:[I

    array-length v6, v6

    if-lt v1, v6, :cond_2

    .line 78
    const/4 v1, 0x0

    :goto_1
    iget-object v6, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusServiceActivity;->mCarService:Lcom/lgb/canmodule/CanDataInfo$MiniService;

    iget-object v6, v6, Lcom/lgb/canmodule/CanDataInfo$MiniService;->Index:[I

    array-length v6, v6

    if-lt v1, v6, :cond_4

    .line 87
    .end local v0    # "curIndex":I
    .end local v1    # "i":I
    .end local v5    # "num":I
    :cond_1
    return-void

    .line 67
    .restart local v0    # "curIndex":I
    .restart local v1    # "i":I
    .restart local v5    # "num":I
    :cond_2
    iget-object v6, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusServiceActivity;->mCarService:Lcom/lgb/canmodule/CanDataInfo$MiniService;

    iget-object v6, v6, Lcom/lgb/canmodule/CanDataInfo$MiniService;->Status:[I

    aget v3, v6, v1

    .line 68
    .local v3, "itemStatus":I
    iget-object v6, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusServiceActivity;->mLayoutArrays:[Landroid/widget/LinearLayout;

    aget-object v4, v6, v1

    .line 70
    .local v4, "layout":Landroid/widget/LinearLayout;
    if-ltz v3, :cond_3

    if-ge v3, v8, :cond_3

    .line 71
    iget-object v6, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusServiceActivity;->mServiceIcons:[I

    aget v6, v6, v3

    invoke-direct {p0, v4, v6, v3}, Lcom/ts/can/bmw/mini/CanBMWMiniStatusServiceActivity;->setIcon(Landroid/widget/LinearLayout;II)V

    .line 66
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 73
    :cond_3
    iget-object v6, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusServiceActivity;->mServiceIcons:[I

    aget v6, v6, v8

    invoke-direct {p0, v4, v6, v8}, Lcom/ts/can/bmw/mini/CanBMWMiniStatusServiceActivity;->setIcon(Landroid/widget/LinearLayout;II)V

    goto :goto_2

    .line 79
    .end local v3    # "itemStatus":I
    .end local v4    # "layout":Landroid/widget/LinearLayout;
    :cond_4
    iget-object v6, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusServiceActivity;->mCarService:Lcom/lgb/canmodule/CanDataInfo$MiniService;

    iget-object v6, v6, Lcom/lgb/canmodule/CanDataInfo$MiniService;->Index:[I

    aget v2, v6, v1

    .line 80
    .local v2, "itemNum":I
    iget-object v6, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusServiceActivity;->mLayoutArrays:[Landroid/widget/LinearLayout;

    aget-object v4, v6, v1

    .line 81
    .restart local v4    # "layout":Landroid/widget/LinearLayout;
    iget-object v6, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusServiceActivity;->mServiceArrays:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-direct {p0, v4, v6, v2}, Lcom/ts/can/bmw/mini/CanBMWMiniStatusServiceActivity;->setText(Landroid/widget/LinearLayout;Ljava/lang/String;I)V

    .line 78
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method protected SetLayoutContainer()V
    .locals 2

    .prologue
    .line 32
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_relative:I

    invoke-virtual {p0, v0}, Lcom/ts/can/bmw/mini/CanBMWMiniStatusServiceActivity;->setContentView(I)V

    .line 33
    sget v0, Lcom/ts/MainUI/R$id;->can_comm_layout:I

    invoke-virtual {p0, v0}, Lcom/ts/can/bmw/mini/CanBMWMiniStatusServiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusServiceActivity;->mManager:Landroid/widget/RelativeLayout;

    .line 35
    invoke-virtual {p0}, Lcom/ts/can/bmw/mini/CanBMWMiniStatusServiceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 36
    sget v1, Lcom/ts/MainUI/R$array;->can_by_service_array:I

    .line 35
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusServiceActivity;->mServiceArrays:[Ljava/lang/String;

    .line 37
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 181
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 183
    .local v1, "id":I
    invoke-direct {p0, v1}, Lcom/ts/can/bmw/mini/CanBMWMiniStatusServiceActivity;->getClickedItem(I)Landroid/os/Bundle;

    move-result-object v0

    .line 185
    .local v0, "data":Landroid/os/Bundle;
    const-class v2, Lcom/ts/can/bmw/mini/CanBMWMiniServiceDetailActivity;

    invoke-direct {p0, v2, v0}, Lcom/ts/can/bmw/mini/CanBMWMiniStatusServiceActivity;->startSubWin(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 186
    return-void
.end method
