.class public Lcom/ts/can/faw/CanB70_14CarInfoActivity;
.super Lcom/ts/can/CanBaseActivity;
.source "CanB70_14CarInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/MainUI/UserCallBack;
.implements Lcom/ts/canview/CanItemProgressList$onPosChange;
.implements Lcom/ts/canview/CanItemPopupList$onPopItemClick;


# static fields
.field public static final ID_HOUR_DEC:I = 0x11

.field public static final ID_HOUR_INC:I = 0x10

.field public static final ID_MIN_DEC:I = 0x13

.field public static final ID_MIN_INC:I = 0x12

.field public static final ITEM_FMT:I = 0x3

.field public static final ITEM_HOUR:I = 0x1

.field private static final ITEM_MAX:I = 0x3

.field private static final ITEM_MIN:I = 0x1

.field public static final ITEM_MINUTE:I = 0x2

.field public static final TAG:Ljava/lang/String; = "CanB70_14CarInfoActivity"

.field private static final mFmtArr:[I


# instance fields
.field private mItemHour:Lcom/ts/canview/CanItemTextBtnList;

.field private mItemMinute:Lcom/ts/canview/CanItemTextBtnList;

.field private mManager:Lcom/ts/canview/CanScrollList;

.field private mbLayout:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 42
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 43
    sget v2, Lcom/ts/MainUI/R$string;->can24_hours:I

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 44
    sget v2, Lcom/ts/MainUI/R$string;->can12_hours:I

    aput v2, v0, v1

    .line 41
    sput-object v0, Lcom/ts/can/faw/CanB70_14CarInfoActivity;->mFmtArr:[I

    .line 45
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/ts/can/CanBaseActivity;-><init>()V

    return-void
.end method

.method private AddTextBtn(II)Lcom/ts/canview/CanItemTextBtnList;
    .locals 3
    .param p1, "text"    # I
    .param p2, "id"    # I

    .prologue
    .line 207
    new-instance v0, Lcom/ts/canview/CanItemTextBtnList;

    invoke-direct {v0, p0, p1}, Lcom/ts/canview/CanItemTextBtnList;-><init>(Landroid/content/Context;I)V

    .line 208
    .local v0, "btn":Lcom/ts/canview/CanItemTextBtnList;
    invoke-virtual {v0, p0, p2}, Lcom/ts/canview/CanItemTextBtnList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 209
    iget-object v1, p0, Lcom/ts/can/faw/CanB70_14CarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemTextBtnList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 211
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemTextBtnList;->ShowArrow(Z)V

    .line 212
    return-object v0
.end method


# virtual methods
.method protected AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;
    .locals 3
    .param p1, "resId"    # I
    .param p2, "Id"    # I

    .prologue
    .line 217
    new-instance v0, Lcom/ts/canview/CanItemSwitchList;

    invoke-direct {v0, p0, p1}, Lcom/ts/canview/CanItemSwitchList;-><init>(Landroid/content/Context;I)V

    .line 218
    .local v0, "item":Lcom/ts/canview/CanItemSwitchList;
    invoke-virtual {v0, p0, p2}, Lcom/ts/canview/CanItemSwitchList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 219
    iget-object v1, p0, Lcom/ts/can/faw/CanB70_14CarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemSwitchList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 220
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    .line 221
    return-object v0
.end method

.method public AddDecButton(Landroid/view/ViewGroup;I)Lcom/ts/other/ParamButton;
    .locals 3
    .param p1, "p"    # Landroid/view/ViewGroup;
    .param p2, "id"    # I

    .prologue
    .line 188
    new-instance v0, Lcom/ts/other/ParamButton;

    invoke-direct {v0, p0}, Lcom/ts/other/ParamButton;-><init>(Landroid/content/Context;)V

    .line 189
    .local v0, "btn":Lcom/ts/other/ParamButton;
    sget v1, Lcom/ts/MainUI/R$drawable;->can_seekbar_dec_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_seekbar_dec_dn:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/ParamButton;->setStateUpDn(II)V

    .line 190
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 191
    invoke-virtual {v0, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    const/16 v1, 0x2f3

    const/4 v2, 0x5

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/ts/can/faw/CanB70_14CarInfoActivity;->AddViewWrapContent(Landroid/view/ViewGroup;Landroid/view/View;II)V

    .line 193
    return-object v0
.end method

.method public AddIncButton(Landroid/view/ViewGroup;I)Lcom/ts/other/ParamButton;
    .locals 3
    .param p1, "p"    # Landroid/view/ViewGroup;
    .param p2, "id"    # I

    .prologue
    .line 178
    new-instance v0, Lcom/ts/other/ParamButton;

    invoke-direct {v0, p0}, Lcom/ts/other/ParamButton;-><init>(Landroid/content/Context;)V

    .line 179
    .local v0, "btn":Lcom/ts/other/ParamButton;
    sget v1, Lcom/ts/MainUI/R$drawable;->can_seekbar_inc_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_seekbar_inc_dn:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/ParamButton;->setStateUpDn(II)V

    .line 180
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 181
    invoke-virtual {v0, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    const/16 v1, 0x39d

    const/4 v2, 0x5

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/ts/can/faw/CanB70_14CarInfoActivity;->AddViewWrapContent(Landroid/view/ViewGroup;Landroid/view/View;II)V

    .line 183
    return-object v0
.end method

.method protected AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;
    .locals 3
    .param p1, "text"    # I
    .param p2, "val"    # [I
    .param p3, "id"    # I

    .prologue
    .line 237
    new-instance v0, Lcom/ts/canview/CanItemPopupList;

    invoke-direct {v0, p0, p1, p2, p0}, Lcom/ts/canview/CanItemPopupList;-><init>(Landroid/content/Context;I[ILcom/ts/canview/CanItemPopupList$onPopItemClick;)V

    .line 238
    .local v0, "item":Lcom/ts/canview/CanItemPopupList;
    invoke-virtual {v0, p3}, Lcom/ts/canview/CanItemPopupList;->SetId(I)V

    .line 239
    iget-object v1, p0, Lcom/ts/can/faw/CanB70_14CarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemPopupList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 241
    return-object v0
.end method

.method protected AddProgressItem(II)Lcom/ts/canview/CanItemProgressList;
    .locals 3
    .param p1, "resId"    # I
    .param p2, "Id"    # I

    .prologue
    .line 228
    new-instance v0, Lcom/ts/canview/CanItemProgressList;

    invoke-direct {v0, p0, p1}, Lcom/ts/canview/CanItemProgressList;-><init>(Landroid/content/Context;I)V

    .line 229
    .local v0, "item":Lcom/ts/canview/CanItemProgressList;
    invoke-virtual {v0, p2, p0}, Lcom/ts/canview/CanItemProgressList;->SetIdCallBack(ILcom/ts/canview/CanItemProgressList$onPosChange;)V

    .line 231
    iget-object v1, p0, Lcom/ts/can/faw/CanB70_14CarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemProgressList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 232
    return-object v0
.end method

.method public AddViewWrapContent(Landroid/view/ViewGroup;Landroid/view/View;II)V
    .locals 2
    .param p1, "p"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    const/4 v1, -0x2

    .line 198
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 199
    .local v0, "rl":Landroid/widget/RelativeLayout$LayoutParams;
    iput p3, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 200
    iput p4, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 201
    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 202
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 203
    return-void
.end method

.method protected InitUI()V
    .locals 3

    .prologue
    .line 124
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/faw/CanB70_14CarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 127
    sget v0, Lcom/ts/MainUI/R$string;->can_hour:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/ts/can/faw/CanB70_14CarInfoActivity;->AddTextBtn(II)Lcom/ts/canview/CanItemTextBtnList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/faw/CanB70_14CarInfoActivity;->mItemHour:Lcom/ts/canview/CanItemTextBtnList;

    .line 128
    sget v0, Lcom/ts/MainUI/R$string;->can_min:I

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/ts/can/faw/CanB70_14CarInfoActivity;->AddTextBtn(II)Lcom/ts/canview/CanItemTextBtnList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/faw/CanB70_14CarInfoActivity;->mItemMinute:Lcom/ts/canview/CanItemTextBtnList;

    .line 129
    sget v0, Lcom/ts/MainUI/R$string;->can_time_format:I

    sget-object v1, Lcom/ts/can/faw/CanB70_14CarInfoActivity;->mFmtArr:[I

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/faw/CanB70_14CarInfoActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    .line 131
    iget-object v0, p0, Lcom/ts/can/faw/CanB70_14CarInfoActivity;->mItemHour:Lcom/ts/canview/CanItemTextBtnList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemTextBtnList;->GetView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/16 v1, 0x10

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/faw/CanB70_14CarInfoActivity;->AddIncButton(Landroid/view/ViewGroup;I)Lcom/ts/other/ParamButton;

    .line 132
    iget-object v0, p0, Lcom/ts/can/faw/CanB70_14CarInfoActivity;->mItemMinute:Lcom/ts/canview/CanItemTextBtnList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemTextBtnList;->GetView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/16 v1, 0x12

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/faw/CanB70_14CarInfoActivity;->AddIncButton(Landroid/view/ViewGroup;I)Lcom/ts/other/ParamButton;

    .line 133
    iget-object v0, p0, Lcom/ts/can/faw/CanB70_14CarInfoActivity;->mItemHour:Lcom/ts/canview/CanItemTextBtnList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemTextBtnList;->GetView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/16 v1, 0x11

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/faw/CanB70_14CarInfoActivity;->AddDecButton(Landroid/view/ViewGroup;I)Lcom/ts/other/ParamButton;

    .line 134
    iget-object v0, p0, Lcom/ts/can/faw/CanB70_14CarInfoActivity;->mItemMinute:Lcom/ts/canview/CanItemTextBtnList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemTextBtnList;->GetView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/16 v1, 0x13

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/faw/CanB70_14CarInfoActivity;->AddDecButton(Landroid/view/ViewGroup;I)Lcom/ts/other/ParamButton;

    .line 138
    return-void
.end method

.method protected IsHaveItem(I)Z
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 152
    const/4 v0, 0x0

    .line 159
    .local v0, "ret":I
    invoke-static {v0}, Lcom/ts/can/faw/CanB70_14CarInfoActivity;->i2b(I)Z

    move-result v1

    return v1
.end method

.method protected LayoutUI()V
    .locals 2

    .prologue
    .line 144
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    .line 148
    return-void

    .line 146
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ts/can/faw/CanB70_14CarInfoActivity;->ShowItem(I)V

    .line 144
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected QueryData()V
    .locals 0

    .prologue
    .line 100
    return-void
.end method

.method protected ResetData(Z)V
    .locals 0
    .param p1, "check"    # Z

    .prologue
    .line 95
    return-void
.end method

.method protected ShowItem(I)V
    .locals 1
    .param p1, "item"    # I

    .prologue
    .line 166
    invoke-virtual {p0, p1}, Lcom/ts/can/faw/CanB70_14CarInfoActivity;->IsHaveItem(I)Z

    move-result v0

    .line 174
    .local v0, "show":Z
    return-void
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 277
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/faw/CanB70_14CarInfoActivity;->ResetData(Z)V

    .line 278
    return-void
.end method

.method public onChanged(II)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "pos"    # I

    .prologue
    .line 285
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 248
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 249
    .local v0, "item":I
    packed-switch v0, :pswitch_data_0

    .line 270
    :goto_0
    return-void

    .line 252
    :pswitch_0
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/lgb/canmodule/CanJni;->B70TimeSet(I)V

    goto :goto_0

    .line 256
    :pswitch_1
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/lgb/canmodule/CanJni;->B70TimeSet(I)V

    goto :goto_0

    .line 260
    :pswitch_2
    const/4 v1, 0x3

    invoke-static {v1}, Lcom/lgb/canmodule/CanJni;->B70TimeSet(I)V

    goto :goto_0

    .line 264
    :pswitch_3
    const/4 v1, 0x4

    invoke-static {v1}, Lcom/lgb/canmodule/CanJni;->B70TimeSet(I)V

    goto :goto_0

    .line 249
    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/ts/can/CanBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/faw/CanB70_14CarInfoActivity;->setContentView(I)V

    .line 62
    invoke-virtual {p0}, Lcom/ts/can/faw/CanB70_14CarInfoActivity;->InitUI()V

    .line 63
    return-void
.end method

.method public onItem(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "item"    # I

    .prologue
    .line 291
    const/4 v0, 0x3

    if-ne v0, p1, :cond_0

    .line 293
    invoke-static {p2}, Lcom/lgb/canmodule/CanJni;->B70TimeFormat(I)V

    .line 295
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 118
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 119
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onPause()V

    .line 120
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 105
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onResume()V

    .line 106
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 107
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/faw/CanB70_14CarInfoActivity;->ResetData(Z)V

    .line 108
    invoke-virtual {p0}, Lcom/ts/can/faw/CanB70_14CarInfoActivity;->QueryData()V

    .line 110
    const-string v0, "CanB70_14CarInfoActivity"

    const-string v1, "-----onResume-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    return-void
.end method
