.class public Lcom/ts/can/jiangling/CanJlBaseActivity;
.super Lcom/ts/can/CanBaseActivity;
.source "CanJlBaseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final ITEM_STA:I = 0x1

.field public static final ITEM_WARN:I = 0x2

.field public static final TAG:Ljava/lang/String; = "CanJlBaseActivity"


# instance fields
.field protected mBtnStatus:Lcom/ts/other/ParamButton;

.field protected mBtnWarn:Lcom/ts/other/ParamButton;

.field protected mItemWarn:[Lcom/ts/can/jiangling/CanJianglingItem;

.field protected mManager:Lcom/ts/other/RelativeLayoutManager;

.field protected mStaManager:Lcom/ts/canview/CanScrollList;

.field protected mSvSta:Landroid/widget/ScrollView;

.field protected mSvWarn:Landroid/widget/ScrollView;

.field protected mWarnData:Lcom/lgb/canmodule/CanDataInfo$JL_WARN_ENTER;

.field protected mWarnManager:Lcom/ts/canview/CanScrollList;

.field protected mWarnNum:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/ts/can/CanBaseActivity;-><init>()V

    .line 35
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$JL_WARN_ENTER;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$JL_WARN_ENTER;-><init>()V

    iput-object v0, p0, Lcom/ts/can/jiangling/CanJlBaseActivity;->mWarnData:Lcom/lgb/canmodule/CanDataInfo$JL_WARN_ENTER;

    .line 37
    const/16 v0, 0x1e

    new-array v0, v0, [Lcom/ts/can/jiangling/CanJianglingItem;

    iput-object v0, p0, Lcom/ts/can/jiangling/CanJlBaseActivity;->mItemWarn:[Lcom/ts/can/jiangling/CanJianglingItem;

    .line 19
    return-void
.end method


# virtual methods
.method public AddStaLine(Ljava/lang/String;)Lcom/ts/can/jiangling/CanJianglingItem;
    .locals 5
    .param p1, "strTitle"    # Ljava/lang/String;

    .prologue
    .line 170
    new-instance v0, Lcom/ts/can/jiangling/CanJianglingItem;

    invoke-direct {v0, p0}, Lcom/ts/can/jiangling/CanJianglingItem;-><init>(Landroid/content/Context;)V

    .line 171
    .local v0, "item":Lcom/ts/can/jiangling/CanJianglingItem;
    invoke-virtual {v0, p1}, Lcom/ts/can/jiangling/CanJianglingItem;->SetText(Ljava/lang/String;)V

    .line 172
    invoke-virtual {v0}, Lcom/ts/can/jiangling/CanJianglingItem;->GetTitleTv()Lcom/ts/other/CustomTextView;

    move-result-object v1

    const v2, -0xff0001

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomTextView;->setTextColor(I)V

    .line 173
    invoke-virtual {v0}, Lcom/ts/can/jiangling/CanJianglingItem;->GetValTv()Lcom/ts/other/CustomTextView;

    move-result-object v1

    const v2, -0xffff01

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomTextView;->setTextColor(I)V

    .line 174
    iget-object v1, p0, Lcom/ts/can/jiangling/CanJlBaseActivity;->mStaManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/can/jiangling/CanJianglingItem;->GetView()Landroid/widget/RelativeLayout;

    move-result-object v2

    const/16 v3, 0x2ac

    const/16 v4, 0x39

    invoke-virtual {v1, v2, v3, v4}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;II)V

    .line 175
    return-object v0
.end method

.method public AddWarn(ILjava/lang/String;)V
    .locals 4
    .param p1, "val"    # I
    .param p2, "strWarn"    # Ljava/lang/String;

    .prologue
    .line 191
    if-eqz p1, :cond_0

    .line 193
    iget v0, p0, Lcom/ts/can/jiangling/CanJlBaseActivity;->mWarnNum:I

    iget-object v1, p0, Lcom/ts/can/jiangling/CanJlBaseActivity;->mItemWarn:[Lcom/ts/can/jiangling/CanJianglingItem;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 195
    iget-object v0, p0, Lcom/ts/can/jiangling/CanJlBaseActivity;->mItemWarn:[Lcom/ts/can/jiangling/CanJianglingItem;

    iget v1, p0, Lcom/ts/can/jiangling/CanJlBaseActivity;->mWarnNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p2}, Lcom/ts/can/jiangling/CanJianglingItem;->SetText(Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/ts/can/jiangling/CanJlBaseActivity;->mWarnManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/jiangling/CanJlBaseActivity;->mItemWarn:[Lcom/ts/can/jiangling/CanJianglingItem;

    iget v2, p0, Lcom/ts/can/jiangling/CanJlBaseActivity;->mWarnNum:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/ts/can/jiangling/CanJianglingItem;->GetView()Landroid/widget/RelativeLayout;

    move-result-object v1

    const/16 v2, 0x2ac

    const/16 v3, 0x39

    invoke-virtual {v0, v1, v2, v3}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;II)V

    .line 197
    iget v0, p0, Lcom/ts/can/jiangling/CanJlBaseActivity;->mWarnNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ts/can/jiangling/CanJlBaseActivity;->mWarnNum:I

    .line 200
    :cond_0
    return-void
.end method

.method public AddWarn(Ljava/lang/String;)V
    .locals 4
    .param p1, "strWarn"    # Ljava/lang/String;

    .prologue
    .line 180
    iget v0, p0, Lcom/ts/can/jiangling/CanJlBaseActivity;->mWarnNum:I

    iget-object v1, p0, Lcom/ts/can/jiangling/CanJlBaseActivity;->mItemWarn:[Lcom/ts/can/jiangling/CanJianglingItem;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 182
    iget-object v0, p0, Lcom/ts/can/jiangling/CanJlBaseActivity;->mItemWarn:[Lcom/ts/can/jiangling/CanJianglingItem;

    iget v1, p0, Lcom/ts/can/jiangling/CanJlBaseActivity;->mWarnNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/ts/can/jiangling/CanJianglingItem;->SetText(Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/ts/can/jiangling/CanJlBaseActivity;->mWarnManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/jiangling/CanJlBaseActivity;->mItemWarn:[Lcom/ts/can/jiangling/CanJianglingItem;

    iget v2, p0, Lcom/ts/can/jiangling/CanJlBaseActivity;->mWarnNum:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/ts/can/jiangling/CanJianglingItem;->GetView()Landroid/widget/RelativeLayout;

    move-result-object v1

    const/16 v2, 0x2ac

    const/16 v3, 0x39

    invoke-virtual {v0, v1, v2, v3}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;II)V

    .line 184
    iget v0, p0, Lcom/ts/can/jiangling/CanJlBaseActivity;->mWarnNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ts/can/jiangling/CanJlBaseActivity;->mWarnNum:I

    .line 186
    :cond_0
    return-void
.end method

.method public AddWarn2(ILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "val"    # I
    .param p2, "strWarn1"    # Ljava/lang/String;
    .param p3, "strWarn2"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x2ac

    const/16 v3, 0x39

    .line 204
    if-eqz p1, :cond_0

    .line 206
    iget v0, p0, Lcom/ts/can/jiangling/CanJlBaseActivity;->mWarnNum:I

    iget-object v1, p0, Lcom/ts/can/jiangling/CanJlBaseActivity;->mItemWarn:[Lcom/ts/can/jiangling/CanJianglingItem;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 208
    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    .line 210
    iget-object v0, p0, Lcom/ts/can/jiangling/CanJlBaseActivity;->mItemWarn:[Lcom/ts/can/jiangling/CanJianglingItem;

    iget v1, p0, Lcom/ts/can/jiangling/CanJlBaseActivity;->mWarnNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p2}, Lcom/ts/can/jiangling/CanJianglingItem;->SetText(Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcom/ts/can/jiangling/CanJlBaseActivity;->mWarnManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/jiangling/CanJlBaseActivity;->mItemWarn:[Lcom/ts/can/jiangling/CanJianglingItem;

    iget v2, p0, Lcom/ts/can/jiangling/CanJlBaseActivity;->mWarnNum:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/ts/can/jiangling/CanJianglingItem;->GetView()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v3}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;II)V

    .line 212
    iget v0, p0, Lcom/ts/can/jiangling/CanJlBaseActivity;->mWarnNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ts/can/jiangling/CanJlBaseActivity;->mWarnNum:I

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 214
    :cond_1
    const/4 v0, 0x2

    if-ne v0, p1, :cond_0

    .line 216
    iget-object v0, p0, Lcom/ts/can/jiangling/CanJlBaseActivity;->mItemWarn:[Lcom/ts/can/jiangling/CanJianglingItem;

    iget v1, p0, Lcom/ts/can/jiangling/CanJlBaseActivity;->mWarnNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p3}, Lcom/ts/can/jiangling/CanJianglingItem;->SetText(Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/ts/can/jiangling/CanJlBaseActivity;->mWarnManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/jiangling/CanJlBaseActivity;->mItemWarn:[Lcom/ts/can/jiangling/CanJianglingItem;

    iget v2, p0, Lcom/ts/can/jiangling/CanJlBaseActivity;->mWarnNum:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/ts/can/jiangling/CanJianglingItem;->GetView()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v3}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;II)V

    .line 218
    iget v0, p0, Lcom/ts/can/jiangling/CanJlBaseActivity;->mWarnNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ts/can/jiangling/CanJlBaseActivity;->mWarnNum:I

    goto :goto_0
.end method

.method protected RemoveAllWarn()V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/ts/can/jiangling/CanJlBaseActivity;->mWarnManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanScrollList;->RemoveAllViews()V

    .line 148
    const/4 v0, 0x0

    iput v0, p0, Lcom/ts/can/jiangling/CanJlBaseActivity;->mWarnNum:I

    .line 149
    return-void
.end method

.method public ShowHide(Landroid/view/View;I)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "show"    # I

    .prologue
    .line 165
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/ts/can/jiangling/CanJlBaseActivity;->ShowHide(Landroid/view/View;Z)V

    .line 166
    return-void

    .line 165
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ShowHide(Landroid/view/View;Z)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "show"    # Z

    .prologue
    .line 153
    if-eqz p2, :cond_0

    .line 155
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 161
    :goto_0
    return-void

    .line 159
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected ShowStatus(Z)V
    .locals 4
    .param p1, "show"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 127
    iget-object v0, p0, Lcom/ts/can/jiangling/CanJlBaseActivity;->mSvSta:Landroid/widget/ScrollView;

    invoke-virtual {p0, v0, p1}, Lcom/ts/can/jiangling/CanJlBaseActivity;->ShowHide(Landroid/view/View;Z)V

    .line 128
    iget-object v3, p0, Lcom/ts/can/jiangling/CanJlBaseActivity;->mSvWarn:Landroid/widget/ScrollView;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v3, v0}, Lcom/ts/can/jiangling/CanJlBaseActivity;->ShowHide(Landroid/view/View;Z)V

    .line 129
    iget-object v0, p0, Lcom/ts/can/jiangling/CanJlBaseActivity;->mBtnStatus:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, p1}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    .line 130
    iget-object v0, p0, Lcom/ts/can/jiangling/CanJlBaseActivity;->mBtnWarn:Lcom/ts/other/ParamButton;

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    .line 131
    return-void

    :cond_0
    move v0, v2

    .line 128
    goto :goto_0

    :cond_1
    move v1, v2

    .line 130
    goto :goto_1
.end method

.method public UpdateStatus(I)V
    .locals 2
    .param p1, "num"    # I

    .prologue
    .line 135
    if-lez p1, :cond_0

    .line 137
    iget-object v0, p0, Lcom/ts/can/jiangling/CanJlBaseActivity;->mBtnWarn:Lcom/ts/other/ParamButton;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setTextColor(I)V

    .line 143
    :goto_0
    return-void

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/ts/can/jiangling/CanJlBaseActivity;->mBtnWarn:Lcom/ts/other/ParamButton;

    const v1, -0xbbbbbc

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setTextColor(I)V

    goto :goto_0
.end method

.method public UpdateWarn(Z)V
    .locals 1
    .param p1, "chk"    # Z

    .prologue
    .line 227
    iget-object v0, p0, Lcom/ts/can/jiangling/CanJlBaseActivity;->mWarnData:Lcom/lgb/canmodule/CanDataInfo$JL_WARN_ENTER;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->JLGetWarn(Lcom/lgb/canmodule/CanDataInfo$JL_WARN_ENTER;)V

    .line 228
    return-void
.end method

.method public UpdateWarnNum(I)V
    .locals 0
    .param p1, "num"    # I

    .prologue
    .line 232
    invoke-virtual {p0, p1}, Lcom/ts/can/jiangling/CanJlBaseActivity;->UpdateStatus(I)V

    .line 233
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 112
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 118
    .local v0, "id":I
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v8, 0x5c

    const/16 v7, 0x51

    const/4 v6, 0x2

    const/high16 v5, 0x42200000    # 40.0f

    const/4 v4, 0x0

    .line 44
    invoke-super {p0, p1}, Lcom/ts/can/CanBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    sget v1, Lcom/ts/MainUI/R$layout;->activity_can_jiangling_base:I

    invoke-virtual {p0, v1}, Lcom/ts/can/jiangling/CanJlBaseActivity;->setContentView(I)V

    .line 48
    new-instance v1, Lcom/ts/other/RelativeLayoutManager;

    sget v2, Lcom/ts/MainUI/R$id;->can_comm_layout:I

    invoke-direct {v1, p0, v2}, Lcom/ts/other/RelativeLayoutManager;-><init>(Landroid/app/Activity;I)V

    iput-object v1, p0, Lcom/ts/can/jiangling/CanJlBaseActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    .line 49
    iget-object v1, p0, Lcom/ts/can/jiangling/CanJlBaseActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x60

    const/16 v3, 0x10b

    invoke-virtual {v1, v4, v2, v3, v8}, Lcom/ts/other/RelativeLayoutManager;->AddButton(IIII)Lcom/ts/other/ParamButton;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/jiangling/CanJlBaseActivity;->mBtnWarn:Lcom/ts/other/ParamButton;

    .line 50
    iget-object v1, p0, Lcom/ts/can/jiangling/CanJlBaseActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x10b

    invoke-virtual {v1, v4, v6, v2, v8}, Lcom/ts/other/RelativeLayoutManager;->AddButton(IIII)Lcom/ts/other/ParamButton;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/jiangling/CanJlBaseActivity;->mBtnStatus:Lcom/ts/other/ParamButton;

    .line 51
    iget-object v1, p0, Lcom/ts/can/jiangling/CanJlBaseActivity;->mBtnWarn:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_jl_xx_icon_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_jl_xx_icon_dn:I

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 54
    iget-object v1, p0, Lcom/ts/can/jiangling/CanJlBaseActivity;->mBtnWarn:Lcom/ts/other/ParamButton;

    const-string v2, "\u6545\u969c"

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v1, p0, Lcom/ts/can/jiangling/CanJlBaseActivity;->mBtnWarn:Lcom/ts/other/ParamButton;

    invoke-virtual {v1, v4, v5}, Lcom/ts/other/ParamButton;->setTextSize(IF)V

    .line 56
    iget-object v1, p0, Lcom/ts/can/jiangling/CanJlBaseActivity;->mBtnStatus:Lcom/ts/other/ParamButton;

    invoke-virtual {v1, v4, v5}, Lcom/ts/other/ParamButton;->setTextSize(IF)V

    .line 57
    iget-object v1, p0, Lcom/ts/can/jiangling/CanJlBaseActivity;->mBtnStatus:Lcom/ts/other/ParamButton;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setTextColor(I)V

    .line 58
    iget-object v1, p0, Lcom/ts/can/jiangling/CanJlBaseActivity;->mBtnWarn:Lcom/ts/other/ParamButton;

    const v2, -0x777778

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setTextColor(I)V

    .line 60
    iget-object v1, p0, Lcom/ts/can/jiangling/CanJlBaseActivity;->mBtnStatus:Lcom/ts/other/ParamButton;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 61
    iget-object v1, p0, Lcom/ts/can/jiangling/CanJlBaseActivity;->mBtnWarn:Lcom/ts/other/ParamButton;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 64
    new-instance v1, Lcom/ts/canview/CanScrollList;

    sget v2, Lcom/ts/MainUI/R$id;->line_sta:I

    invoke-direct {v1, p0, v2, v7}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;II)V

    iput-object v1, p0, Lcom/ts/can/jiangling/CanJlBaseActivity;->mStaManager:Lcom/ts/canview/CanScrollList;

    .line 65
    new-instance v1, Lcom/ts/canview/CanScrollList;

    sget v2, Lcom/ts/MainUI/R$id;->line_warn:I

    invoke-direct {v1, p0, v2, v7}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;II)V

    iput-object v1, p0, Lcom/ts/can/jiangling/CanJlBaseActivity;->mWarnManager:Lcom/ts/canview/CanScrollList;

    .line 67
    sget v1, Lcom/ts/MainUI/R$id;->scr_sta:I

    invoke-virtual {p0, v1}, Lcom/ts/can/jiangling/CanJlBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, p0, Lcom/ts/can/jiangling/CanJlBaseActivity;->mSvSta:Landroid/widget/ScrollView;

    .line 68
    sget v1, Lcom/ts/MainUI/R$id;->scr_warn:I

    invoke-virtual {p0, v1}, Lcom/ts/can/jiangling/CanJlBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, p0, Lcom/ts/can/jiangling/CanJlBaseActivity;->mSvWarn:Landroid/widget/ScrollView;

    .line 71
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/ts/can/jiangling/CanJlBaseActivity;->mItemWarn:[Lcom/ts/can/jiangling/CanJianglingItem;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 82
    return-void

    .line 73
    :cond_0
    iget-object v1, p0, Lcom/ts/can/jiangling/CanJlBaseActivity;->mItemWarn:[Lcom/ts/can/jiangling/CanJianglingItem;

    new-instance v2, Lcom/ts/can/jiangling/CanJianglingItem;

    invoke-direct {v2, p0}, Lcom/ts/can/jiangling/CanJianglingItem;-><init>(Landroid/content/Context;)V

    aput-object v2, v1, v0

    .line 76
    iget-object v1, p0, Lcom/ts/can/jiangling/CanJlBaseActivity;->mItemWarn:[Lcom/ts/can/jiangling/CanJianglingItem;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/ts/can/jiangling/CanJianglingItem;->GetTitleTv()Lcom/ts/other/CustomTextView;

    move-result-object v1

    const/high16 v2, -0x10000

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomTextView;->setTextColor(I)V

    .line 71
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 97
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onPause()V

    .line 99
    const-string v0, "CanJlBaseActivity"

    const-string v1, "-----onPause-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 88
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onResume()V

    .line 89
    const-string v0, "CanJlBaseActivity"

    const-string v1, "-----onResume-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/jiangling/CanJlBaseActivity;->ShowStatus(Z)V

    .line 91
    return-void
.end method
