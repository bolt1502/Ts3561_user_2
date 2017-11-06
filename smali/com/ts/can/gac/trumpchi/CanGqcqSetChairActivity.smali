.class public Lcom/ts/can/gac/trumpchi/CanGqcqSetChairActivity;
.super Lcom/ts/can/gac/trumpchi/CanGqcqBaseActivity;
.source "CanGqcqSetChairActivity.java"

# interfaces
.implements Lcom/ts/MainUI/UserCallBack;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/canview/CanItemProgressList$onPosChange;
.implements Lcom/ts/canview/CanItemPopupList$onPopItemClick;
.implements Landroid/view/View$OnTouchListener;


# static fields
.field public static final ITEM_FJSZY_BTN:I = 0x4

.field public static final ITEM_FJSZY_ZDJR:I = 0x2

.field public static final ITEM_JSZY_BTN:I = 0x3

.field public static final ITEM_JSZY_ZDJR:I = 0x1

.field private static final ITEM_MAX:I = 0x6

.field private static final ITEM_MIN:I = 0x1

.field public static final ITEM_ZNYS:I = 0x6

.field public static final ITEM_ZYYB:I = 0x5

.field public static final TAG:Ljava/lang/String; = "CanGqcqSetChairActivity"


# instance fields
.field private mBtnLtHot:Lcom/ts/other/ParamButton;

.field private mBtnRtHot:Lcom/ts/other/ParamButton;

.field protected mCurLine:I

.field private mItemFjszyjr:Lcom/ts/canview/CanItemPopupList;

.field private mItemJszyjr:Lcom/ts/canview/CanItemPopupList;

.field private mItemZnys:Lcom/ts/canview/CanItemPopupList;

.field private mItemZyyb:Lcom/ts/canview/CanItemPopupList;

.field private mLtHotVal:[Lcom/ts/other/CustomImgView;

.field protected mManager:Lcom/ts/other/RelativeLayoutManager;

.field private mRtHotVal:[Lcom/ts/other/CustomImgView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 20
    invoke-direct {p0}, Lcom/ts/can/gac/trumpchi/CanGqcqBaseActivity;-><init>()V

    .line 41
    new-array v0, v1, [Lcom/ts/other/CustomImgView;

    iput-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetChairActivity;->mLtHotVal:[Lcom/ts/other/CustomImgView;

    .line 43
    new-array v0, v1, [Lcom/ts/other/CustomImgView;

    iput-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetChairActivity;->mRtHotVal:[Lcom/ts/other/CustomImgView;

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetChairActivity;->mCurLine:I

    .line 20
    return-void
.end method

.method private ResetData(Z)V
    .locals 8
    .param p1, "check"    # Z

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 103
    invoke-virtual {p0}, Lcom/ts/can/gac/trumpchi/CanGqcqSetChairActivity;->GetSetData()V

    .line 104
    iget-object v3, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetChairActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GS4Set;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$GS4Set;->UpdateOnce:I

    invoke-static {v3}, Lcom/ts/can/gac/trumpchi/CanGqcqSetChairActivity;->i2b(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 106
    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetChairActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GS4Set;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$GS4Set;->Update:I

    invoke-static {v3}, Lcom/ts/can/gac/trumpchi/CanGqcqSetChairActivity;->i2b(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 108
    :cond_0
    iget-object v3, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetChairActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GS4Set;

    iput v5, v3, Lcom/lgb/canmodule/CanDataInfo$GS4Set;->Update:I

    .line 109
    iget-object v3, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetChairActivity;->mItemJszyjr:Lcom/ts/canview/CanItemPopupList;

    iget-object v4, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetChairActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GS4Set;

    iget v4, v4, Lcom/lgb/canmodule/CanDataInfo$GS4Set;->Jszyzdjr:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 110
    iget-object v3, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetChairActivity;->mItemFjszyjr:Lcom/ts/canview/CanItemPopupList;

    iget-object v4, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetChairActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GS4Set;

    iget v4, v4, Lcom/lgb/canmodule/CanDataInfo$GS4Set;->Fjszyzdjr:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 111
    iget-object v3, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetChairActivity;->mItemZyyb:Lcom/ts/canview/CanItemPopupList;

    iget-object v4, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetChairActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GS4Set;

    iget v4, v4, Lcom/lgb/canmodule/CanDataInfo$GS4Set;->Zyyb:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 112
    iget-object v3, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetChairActivity;->mItemZnys:Lcom/ts/canview/CanItemPopupList;

    iget-object v4, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetChairActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GS4Set;

    iget v4, v4, Lcom/lgb/canmodule/CanDataInfo$GS4Set;->Znys:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 114
    iget-object v3, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetChairActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GS4Set;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$GS4Set;->Jswd:I

    and-int/lit8 v1, v3, 0x3

    .line 115
    .local v1, "lthot":I
    iget-object v3, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetChairActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GS4Set;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$GS4Set;->Fjswd:I

    and-int/lit8 v2, v3, 0x3

    .line 118
    .local v2, "rthot":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_2

    .line 123
    move v0, v1

    :goto_1
    if-lt v0, v7, :cond_3

    .line 128
    const/4 v0, 0x0

    :goto_2
    if-lt v0, v2, :cond_4

    .line 133
    move v0, v2

    :goto_3
    if-lt v0, v7, :cond_5

    .line 140
    .end local v0    # "i":I
    .end local v1    # "lthot":I
    .end local v2    # "rthot":I
    :cond_1
    return-void

    .line 120
    .restart local v0    # "i":I
    .restart local v1    # "lthot":I
    .restart local v2    # "rthot":I
    :cond_2
    iget-object v3, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetChairActivity;->mLtHotVal:[Lcom/ts/other/CustomImgView;

    aget-object v3, v3, v0

    invoke-virtual {v3, v6}, Lcom/ts/other/CustomImgView;->setSelected(Z)V

    .line 118
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 125
    :cond_3
    iget-object v3, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetChairActivity;->mLtHotVal:[Lcom/ts/other/CustomImgView;

    aget-object v3, v3, v0

    invoke-virtual {v3, v5}, Lcom/ts/other/CustomImgView;->setSelected(Z)V

    .line 123
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 130
    :cond_4
    iget-object v3, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetChairActivity;->mRtHotVal:[Lcom/ts/other/CustomImgView;

    aget-object v3, v3, v0

    invoke-virtual {v3, v6}, Lcom/ts/other/CustomImgView;->setSelected(Z)V

    .line 128
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 135
    :cond_5
    iget-object v3, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetChairActivity;->mRtHotVal:[Lcom/ts/other/CustomImgView;

    aget-object v3, v3, v0

    invoke-virtual {v3, v5}, Lcom/ts/other/CustomImgView;->setSelected(Z)V

    .line 133
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method


# virtual methods
.method protected AddImgBtn(IIIII)Lcom/ts/other/ParamButton;
    .locals 2
    .param p1, "id"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "up"    # I
    .param p5, "dn"    # I

    .prologue
    .line 235
    iget-object v1, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetChairActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    invoke-virtual {v1, p2, p3}, Lcom/ts/other/RelativeLayoutManager;->AddButton(II)Lcom/ts/other/ParamButton;

    move-result-object v0

    .line 236
    .local v0, "btn":Lcom/ts/other/ParamButton;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 237
    invoke-virtual {v0, p0}, Lcom/ts/other/ParamButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 238
    invoke-virtual {v0, p4, p5}, Lcom/ts/other/ParamButton;->setStateUpDn(II)V

    .line 239
    return-object v0
.end method

.method protected AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;
    .locals 4
    .param p1, "text"    # I
    .param p2, "val"    # [I
    .param p3, "id"    # I

    .prologue
    .line 225
    new-instance v0, Lcom/ts/canview/CanItemPopupList;

    invoke-direct {v0, p0, p1, p2, p0}, Lcom/ts/canview/CanItemPopupList;-><init>(Landroid/content/Context;I[ILcom/ts/canview/CanItemPopupList$onPopItemClick;)V

    .line 226
    .local v0, "item":Lcom/ts/canview/CanItemPopupList;
    invoke-virtual {v0, p3}, Lcom/ts/canview/CanItemPopupList;->SetId(I)V

    .line 227
    iget-object v1, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetChairActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemPopupList;->GetView()Landroid/view/View;

    move-result-object v2

    iget v3, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetChairActivity;->mCurLine:I

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/RelativeLayoutManager;->AddCanItem(Landroid/view/View;I)V

    .line 228
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    .line 229
    iget v1, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetChairActivity;->mCurLine:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetChairActivity;->mCurLine:I

    .line 230
    return-object v0
.end method

.method protected IsHaveItem(I)Z
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 155
    const/4 v0, 0x0

    .line 162
    .local v0, "ret":I
    const/4 v0, 0x1

    .line 163
    invoke-static {v0}, Lcom/ts/can/gac/trumpchi/CanGqcqSetChairActivity;->i2b(I)Z

    move-result v1

    return v1
.end method

.method protected LayoutUI()V
    .locals 2

    .prologue
    .line 147
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x6

    if-le v0, v1, :cond_0

    .line 151
    return-void

    .line 149
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ts/can/gac/trumpchi/CanGqcqSetChairActivity;->ShowItem(I)V

    .line 147
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected ShowItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 170
    invoke-virtual {p0, p1}, Lcom/ts/can/gac/trumpchi/CanGqcqSetChairActivity;->IsHaveItem(I)Z

    move-result v0

    .line 171
    .local v0, "show":Z
    packed-switch p1, :pswitch_data_0

    .line 198
    :goto_0
    :pswitch_0
    return-void

    .line 174
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetChairActivity;->mItemJszyjr:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 178
    :pswitch_2
    iget-object v1, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetChairActivity;->mItemFjszyjr:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 188
    :pswitch_3
    iget-object v1, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetChairActivity;->mItemZyyb:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 192
    :pswitch_4
    iget-object v1, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetChairActivity;->mItemZnys:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 171
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 220
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ts/can/gac/trumpchi/CanGqcqSetChairActivity;->ResetData(Z)V

    .line 221
    return-void
.end method

.method public onChanged(II)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "pos"    # I

    .prologue
    .line 247
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 206
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 212
    .local v0, "id":I
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v11, 0x1e5

    const/4 v1, 0x3

    .line 52
    invoke-super {p0, p1}, Lcom/ts/can/gac/trumpchi/CanGqcqBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_relative:I

    invoke-virtual {p0, v0}, Lcom/ts/can/gac/trumpchi/CanGqcqSetChairActivity;->setContentView(I)V

    .line 56
    new-instance v0, Lcom/ts/other/RelativeLayoutManager;

    sget v2, Lcom/ts/MainUI/R$id;->can_comm_layout:I

    invoke-direct {v0, p0, v2}, Lcom/ts/other/RelativeLayoutManager;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetChairActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    .line 58
    sget v0, Lcom/ts/MainUI/R$string;->can_jszyzdjr:I

    iget-object v2, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetChairActivity;->mSWArr:[I

    const/4 v4, 0x1

    invoke-virtual {p0, v0, v2, v4}, Lcom/ts/can/gac/trumpchi/CanGqcqSetChairActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetChairActivity;->mItemJszyjr:Lcom/ts/canview/CanItemPopupList;

    .line 59
    sget v0, Lcom/ts/MainUI/R$string;->can_fjszyzdjr:I

    iget-object v2, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetChairActivity;->mSWArr:[I

    const/4 v4, 0x2

    invoke-virtual {p0, v0, v2, v4}, Lcom/ts/can/gac/trumpchi/CanGqcqSetChairActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetChairActivity;->mItemFjszyjr:Lcom/ts/canview/CanItemPopupList;

    .line 60
    sget v0, Lcom/ts/MainUI/R$string;->can_chair_yinbing:I

    iget-object v2, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetChairActivity;->mSWArr:[I

    const/4 v4, 0x5

    invoke-virtual {p0, v0, v2, v4}, Lcom/ts/can/gac/trumpchi/CanGqcqSetChairActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetChairActivity;->mItemZyyb:Lcom/ts/canview/CanItemPopupList;

    .line 61
    sget v0, Lcom/ts/MainUI/R$string;->can_chair_smartkey:I

    iget-object v2, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetChairActivity;->mSWArr:[I

    const/4 v4, 0x6

    invoke-virtual {p0, v0, v2, v4}, Lcom/ts/can/gac/trumpchi/CanGqcqSetChairActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetChairActivity;->mItemZnys:Lcom/ts/canview/CanItemPopupList;

    .line 63
    const/16 v3, 0x190

    .line 64
    .local v3, "yHot":I
    const/16 v2, 0xf2

    sget v4, Lcom/ts/MainUI/R$drawable;->can_chairhot_lt_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->can_chairhot_lt_dn:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/gac/trumpchi/CanGqcqSetChairActivity;->AddImgBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetChairActivity;->mBtnLtHot:Lcom/ts/other/ParamButton;

    .line 65
    const/4 v5, 0x4

    const/16 v6, 0x264

    sget v8, Lcom/ts/MainUI/R$drawable;->can_chairhot_rt_up:I

    sget v9, Lcom/ts/MainUI/R$drawable;->can_chairhot_rt_dn:I

    move-object v4, p0

    move v7, v3

    invoke-virtual/range {v4 .. v9}, Lcom/ts/can/gac/trumpchi/CanGqcqSetChairActivity;->AddImgBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetChairActivity;->mBtnRtHot:Lcom/ts/other/ParamButton;

    .line 67
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-lt v10, v1, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/ts/can/gac/trumpchi/CanGqcqSetChairActivity;->LayoutUI()V

    .line 78
    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetChairActivity;->mLtHotVal:[Lcom/ts/other/CustomImgView;

    iget-object v2, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetChairActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    mul-int/lit8 v4, v10, 0x28

    add-int/lit16 v4, v4, 0x10d

    invoke-virtual {v2, v4, v11}, Lcom/ts/other/RelativeLayoutManager;->AddImage(II)Lcom/ts/other/CustomImgView;

    move-result-object v2

    aput-object v2, v0, v10

    .line 70
    iget-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetChairActivity;->mLtHotVal:[Lcom/ts/other/CustomImgView;

    aget-object v0, v0, v10

    sget v2, Lcom/ts/MainUI/R$drawable;->conditioning_rect_up:I

    sget v4, Lcom/ts/MainUI/R$drawable;->conditioning_rect_dn:I

    invoke-virtual {v0, v2, v4}, Lcom/ts/other/CustomImgView;->setStateDrawable(II)V

    .line 72
    iget-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetChairActivity;->mRtHotVal:[Lcom/ts/other/CustomImgView;

    iget-object v2, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetChairActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    mul-int/lit8 v4, v10, 0x28

    add-int/lit16 v4, v4, 0x27f

    invoke-virtual {v2, v4, v11}, Lcom/ts/other/RelativeLayoutManager;->AddImage(II)Lcom/ts/other/CustomImgView;

    move-result-object v2

    aput-object v2, v0, v10

    .line 73
    iget-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetChairActivity;->mRtHotVal:[Lcom/ts/other/CustomImgView;

    aget-object v0, v0, v10

    sget v2, Lcom/ts/MainUI/R$drawable;->conditioning_rect_up:I

    sget v4, Lcom/ts/MainUI/R$drawable;->conditioning_rect_dn:I

    invoke-virtual {v0, v2, v4}, Lcom/ts/other/CustomImgView;->setStateDrawable(II)V

    .line 67
    add-int/lit8 v10, v10, 0x1

    goto :goto_0
.end method

.method public onItem(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "item"    # I

    .prologue
    .line 253
    packed-switch p1, :pswitch_data_0

    .line 275
    :goto_0
    :pswitch_0
    return-void

    .line 256
    :pswitch_1
    const/4 v0, 0x5

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/gac/trumpchi/CanGqcqSetChairActivity;->CarSet(II)V

    goto :goto_0

    .line 260
    :pswitch_2
    const/4 v0, 0x6

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/gac/trumpchi/CanGqcqSetChairActivity;->CarSet(II)V

    goto :goto_0

    .line 264
    :pswitch_3
    const/16 v0, 0x19

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/gac/trumpchi/CanGqcqSetChairActivity;->CarSet(II)V

    goto :goto_0

    .line 268
    :pswitch_4
    const/16 v0, 0x1a

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/gac/trumpchi/CanGqcqSetChairActivity;->CarSet(II)V

    goto :goto_0

    .line 253
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 95
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 96
    invoke-super {p0}, Lcom/ts/can/gac/trumpchi/CanGqcqBaseActivity;->onPause()V

    .line 97
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 84
    invoke-super {p0}, Lcom/ts/can/gac/trumpchi/CanGqcqBaseActivity;->onResume()V

    .line 85
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ts/can/gac/trumpchi/CanGqcqSetChairActivity;->ResetData(Z)V

    .line 88
    const-string v0, "CanGqcqSetChairActivity"

    const-string v1, "-----onResume-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v7, 0x17

    const/16 v6, 0x16

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 281
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 282
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 283
    .local v1, "id":I
    if-nez v0, :cond_1

    .line 285
    const-string v2, "CanGqcqSetChairActivity"

    const-string v3, "****ACTION_DOWN*****"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    packed-switch v1, :pswitch_data_0

    .line 318
    :cond_0
    :goto_0
    return v4

    .line 290
    :pswitch_0
    invoke-virtual {p0, v6, v5}, Lcom/ts/can/gac/trumpchi/CanGqcqSetChairActivity;->CarSet(II)V

    goto :goto_0

    .line 294
    :pswitch_1
    invoke-virtual {p0, v7, v5}, Lcom/ts/can/gac/trumpchi/CanGqcqSetChairActivity;->CarSet(II)V

    goto :goto_0

    .line 301
    :cond_1
    if-ne v5, v0, :cond_0

    .line 304
    packed-switch v1, :pswitch_data_1

    goto :goto_0

    .line 307
    :pswitch_2
    invoke-virtual {p0, v6, v4}, Lcom/ts/can/gac/trumpchi/CanGqcqSetChairActivity;->CarSet(II)V

    goto :goto_0

    .line 311
    :pswitch_3
    invoke-virtual {p0, v7, v4}, Lcom/ts/can/gac/trumpchi/CanGqcqSetChairActivity;->CarSet(II)V

    goto :goto_0

    .line 287
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 304
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
