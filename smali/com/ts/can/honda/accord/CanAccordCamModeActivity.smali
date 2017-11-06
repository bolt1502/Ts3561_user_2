.class public Lcom/ts/can/honda/accord/CanAccordCamModeActivity;
.super Lcom/ts/can/CanBaseActivity;
.source "CanAccordCamModeActivity.java"

# interfaces
.implements Lcom/ts/MainUI/UserCallBack;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/canview/CanItemProgressList$onPosChange;
.implements Lcom/ts/canview/CanItemPopupList$onPopItemClick;


# static fields
.field private static final ITEM_MAX:I = 0x6

.field private static final ITEM_MIN:I = 0x1

.field public static final ITEM_MODE_BZ:I = 0x5

.field public static final ITEM_MODE_FJ:I = 0x6

.field public static final ITEM_MODE_GJ:I = 0x4

.field public static final ITEM_MODE_TITLE:I = 0x3

.field public static final ITEM_SCR_COLOR:I = 0x2

.field public static final ITEM_SCR_LIGHT:I = 0x1

.field public static final TAG:Ljava/lang/String; = "CanAccordCamModeActivity"

.field public static final mColorArr:[I


# instance fields
.field protected mBtnBz:Lcom/ts/other/ParamButton;

.field protected mBtnFj:Lcom/ts/other/ParamButton;

.field protected mBtnGj:Lcom/ts/other/ParamButton;

.field protected mImgLight:[Lcom/ts/other/CustomImgView;

.field protected mItemColor:Lcom/ts/canview/CanItemPopupList;

.field protected mItemLight:Lcom/ts/canview/CanItemTextBtnList;

.field protected mItemModeTitle:Lcom/ts/canview/CanItemBlankTextList;

.field protected mManager:Lcom/ts/other/RelativeLayoutManager;

.field protected mModeData:Lcom/lgb/canmodule/CanDataInfo$AccordCamMode;

.field protected mScrData:Lcom/lgb/canmodule/CanDataInfo$AccordScrta;

.field protected mfgJump:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 39
    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 40
    sget v2, Lcom/ts/MainUI/R$string;->can_color_amber:I

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 41
    sget v2, Lcom/ts/MainUI/R$string;->can_color_red:I

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 42
    sget v2, Lcom/ts/MainUI/R$string;->can_color_violet:I

    aput v2, v0, v1

    const/4 v1, 0x3

    .line 43
    sget v2, Lcom/ts/MainUI/R$string;->can_color_blue:I

    aput v2, v0, v1

    .line 38
    sput-object v0, Lcom/ts/can/honda/accord/CanAccordCamModeActivity;->mColorArr:[I

    .line 47
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/ts/can/CanBaseActivity;-><init>()V

    .line 52
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$AccordScrta;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$AccordScrta;-><init>()V

    iput-object v0, p0, Lcom/ts/can/honda/accord/CanAccordCamModeActivity;->mScrData:Lcom/lgb/canmodule/CanDataInfo$AccordScrta;

    .line 53
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$AccordCamMode;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$AccordCamMode;-><init>()V

    iput-object v0, p0, Lcom/ts/can/honda/accord/CanAccordCamModeActivity;->mModeData:Lcom/lgb/canmodule/CanDataInfo$AccordCamMode;

    .line 27
    return-void
.end method

.method private ResetData(Z)V
    .locals 5
    .param p1, "check"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 154
    iget-object v0, p0, Lcom/ts/can/honda/accord/CanAccordCamModeActivity;->mScrData:Lcom/lgb/canmodule/CanDataInfo$AccordScrta;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->AccordGetScrSta(Lcom/lgb/canmodule/CanDataInfo$AccordScrta;)V

    .line 155
    iget-object v0, p0, Lcom/ts/can/honda/accord/CanAccordCamModeActivity;->mScrData:Lcom/lgb/canmodule/CanDataInfo$AccordScrta;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$AccordScrta;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/honda/accord/CanAccordCamModeActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/honda/accord/CanAccordCamModeActivity;->mScrData:Lcom/lgb/canmodule/CanDataInfo$AccordScrta;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$AccordScrta;->Update:I

    invoke-static {v0}, Lcom/ts/can/honda/accord/CanAccordCamModeActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/ts/can/honda/accord/CanAccordCamModeActivity;->mScrData:Lcom/lgb/canmodule/CanDataInfo$AccordScrta;

    iput v2, v0, Lcom/lgb/canmodule/CanDataInfo$AccordScrta;->Update:I

    .line 160
    iget-object v0, p0, Lcom/ts/can/honda/accord/CanAccordCamModeActivity;->mImgLight:[Lcom/ts/other/CustomImgView;

    aget-object v3, v0, v2

    iget-object v0, p0, Lcom/ts/can/honda/accord/CanAccordCamModeActivity;->mScrData:Lcom/lgb/canmodule/CanDataInfo$AccordScrta;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$AccordScrta;->Val:I

    if-gt v0, v1, :cond_5

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/ts/other/CustomImgView;->setSelected(Z)V

    .line 161
    iget-object v0, p0, Lcom/ts/can/honda/accord/CanAccordCamModeActivity;->mImgLight:[Lcom/ts/other/CustomImgView;

    aget-object v3, v0, v1

    iget-object v0, p0, Lcom/ts/can/honda/accord/CanAccordCamModeActivity;->mScrData:Lcom/lgb/canmodule/CanDataInfo$AccordScrta;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$AccordScrta;->Val:I

    if-nez v0, :cond_6

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/ts/other/CustomImgView;->setSelected(Z)V

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/ts/can/honda/accord/CanAccordCamModeActivity;->mModeData:Lcom/lgb/canmodule/CanDataInfo$AccordCamMode;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->AccordGetCamMode(Lcom/lgb/canmodule/CanDataInfo$AccordCamMode;)V

    .line 166
    iget-object v0, p0, Lcom/ts/can/honda/accord/CanAccordCamModeActivity;->mModeData:Lcom/lgb/canmodule/CanDataInfo$AccordCamMode;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$AccordCamMode;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/honda/accord/CanAccordCamModeActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 168
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/ts/can/honda/accord/CanAccordCamModeActivity;->mModeData:Lcom/lgb/canmodule/CanDataInfo$AccordCamMode;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$AccordCamMode;->Update:I

    invoke-static {v0}, Lcom/ts/can/honda/accord/CanAccordCamModeActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 170
    :cond_2
    iget-object v0, p0, Lcom/ts/can/honda/accord/CanAccordCamModeActivity;->mModeData:Lcom/lgb/canmodule/CanDataInfo$AccordCamMode;

    iput v2, v0, Lcom/lgb/canmodule/CanDataInfo$AccordCamMode;->Update:I

    .line 171
    iget-object v3, p0, Lcom/ts/can/honda/accord/CanAccordCamModeActivity;->mBtnGj:Lcom/ts/other/ParamButton;

    iget-object v0, p0, Lcom/ts/can/honda/accord/CanAccordCamModeActivity;->mModeData:Lcom/lgb/canmodule/CanDataInfo$AccordCamMode;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$AccordCamMode;->Mode:I

    if-ne v0, v1, :cond_7

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    .line 172
    iget-object v3, p0, Lcom/ts/can/honda/accord/CanAccordCamModeActivity;->mBtnBz:Lcom/ts/other/ParamButton;

    iget-object v0, p0, Lcom/ts/can/honda/accord/CanAccordCamModeActivity;->mModeData:Lcom/lgb/canmodule/CanDataInfo$AccordCamMode;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$AccordCamMode;->Mode:I

    if-nez v0, :cond_8

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    .line 173
    iget-object v3, p0, Lcom/ts/can/honda/accord/CanAccordCamModeActivity;->mBtnFj:Lcom/ts/other/ParamButton;

    iget-object v0, p0, Lcom/ts/can/honda/accord/CanAccordCamModeActivity;->mModeData:Lcom/lgb/canmodule/CanDataInfo$AccordCamMode;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$AccordCamMode;->Mode:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_9

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    .line 175
    iget-object v3, p0, Lcom/ts/can/honda/accord/CanAccordCamModeActivity;->mBtnGj:Lcom/ts/other/ParamButton;

    iget-object v0, p0, Lcom/ts/can/honda/accord/CanAccordCamModeActivity;->mModeData:Lcom/lgb/canmodule/CanDataInfo$AccordCamMode;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$AccordCamMode;->fgOn:I

    if-ne v0, v1, :cond_a

    move v0, v1

    :goto_5
    invoke-virtual {v3, v0}, Lcom/ts/other/ParamButton;->Show(Z)V

    .line 176
    iget-object v3, p0, Lcom/ts/can/honda/accord/CanAccordCamModeActivity;->mBtnBz:Lcom/ts/other/ParamButton;

    iget-object v0, p0, Lcom/ts/can/honda/accord/CanAccordCamModeActivity;->mModeData:Lcom/lgb/canmodule/CanDataInfo$AccordCamMode;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$AccordCamMode;->fgOn:I

    if-ne v0, v1, :cond_b

    move v0, v1

    :goto_6
    invoke-virtual {v3, v0}, Lcom/ts/other/ParamButton;->Show(Z)V

    .line 177
    iget-object v0, p0, Lcom/ts/can/honda/accord/CanAccordCamModeActivity;->mBtnFj:Lcom/ts/other/ParamButton;

    iget-object v3, p0, Lcom/ts/can/honda/accord/CanAccordCamModeActivity;->mModeData:Lcom/lgb/canmodule/CanDataInfo$AccordCamMode;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$AccordCamMode;->fgOn:I

    if-ne v3, v1, :cond_c

    :goto_7
    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->Show(Z)V

    .line 181
    :cond_3
    iget-boolean v0, p0, Lcom/ts/can/honda/accord/CanAccordCamModeActivity;->mfgJump:Z

    if-eqz v0, :cond_4

    .line 183
    iget-object v0, p0, Lcom/ts/can/honda/accord/CanAccordCamModeActivity;->mModeData:Lcom/lgb/canmodule/CanDataInfo$AccordCamMode;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$AccordCamMode;->fgOn:I

    if-nez v0, :cond_4

    .line 185
    invoke-virtual {p0}, Lcom/ts/can/honda/accord/CanAccordCamModeActivity;->finish()V

    .line 186
    iput-boolean v2, p0, Lcom/ts/can/honda/accord/CanAccordCamModeActivity;->mfgJump:Z

    .line 190
    :cond_4
    return-void

    :cond_5
    move v0, v2

    .line 160
    goto/16 :goto_0

    :cond_6
    move v0, v2

    .line 161
    goto :goto_1

    :cond_7
    move v0, v2

    .line 171
    goto :goto_2

    :cond_8
    move v0, v2

    .line 172
    goto :goto_3

    :cond_9
    move v0, v2

    .line 173
    goto :goto_4

    :cond_a
    move v0, v2

    .line 175
    goto :goto_5

    :cond_b
    move v0, v2

    .line 176
    goto :goto_6

    :cond_c
    move v1, v2

    .line 177
    goto :goto_7
.end method


# virtual methods
.method public AddViewWrapContent(Landroid/widget/RelativeLayout;Landroid/view/View;II)V
    .locals 2
    .param p1, "layout"    # Landroid/widget/RelativeLayout;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    const/4 v1, -0x2

    .line 120
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 121
    .local v0, "rl":Landroid/widget/RelativeLayout$LayoutParams;
    iput p3, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 122
    iput p4, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 123
    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 125
    return-void
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 245
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ts/can/honda/accord/CanAccordCamModeActivity;->ResetData(Z)V

    .line 246
    return-void
.end method

.method public onChanged(II)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "pos"    # I

    .prologue
    .line 253
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v3, 0x40

    .line 200
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 201
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 237
    :goto_0
    :pswitch_0
    return-void

    .line 204
    :pswitch_1
    const/4 v1, 0x0

    .line 205
    .local v1, "light":I
    iget-object v2, p0, Lcom/ts/can/honda/accord/CanAccordCamModeActivity;->mScrData:Lcom/lgb/canmodule/CanDataInfo$AccordScrta;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$AccordScrta;->Val:I

    packed-switch v2, :pswitch_data_1

    .line 218
    :goto_1
    const/16 v2, 0x42

    invoke-static {v2, v1}, Lcom/lgb/canmodule/CanJni;->AccordCarCtrl(II)V

    .line 219
    invoke-static {v1}, Lcom/yyw/ts70xhw/FtSet;->Setlgb1(I)I

    goto :goto_0

    .line 208
    :pswitch_2
    const/4 v1, 0x1

    .line 209
    goto :goto_1

    .line 212
    :pswitch_3
    const/4 v1, 0x2

    .line 213
    goto :goto_1

    .line 223
    .end local v1    # "light":I
    :pswitch_4
    const/4 v2, 0x1

    invoke-static {v3, v2}, Lcom/lgb/canmodule/CanJni;->AccordCarCtrl(II)V

    goto :goto_0

    .line 227
    :pswitch_5
    const/4 v2, 0x0

    invoke-static {v3, v2}, Lcom/lgb/canmodule/CanJni;->AccordCarCtrl(II)V

    goto :goto_0

    .line 231
    :pswitch_6
    const/4 v2, 0x2

    invoke-static {v3, v2}, Lcom/lgb/canmodule/CanJni;->AccordCarCtrl(II)V

    goto :goto_0

    .line 201
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 205
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v5, 0x55

    const/4 v9, 0x2

    const/4 v4, -0x2

    const/16 v8, 0x109

    const/4 v2, 0x0

    .line 70
    invoke-super {p0, p1}, Lcom/ts/can/CanBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_relative:I

    invoke-virtual {p0, v0}, Lcom/ts/can/honda/accord/CanAccordCamModeActivity;->setContentView(I)V

    .line 74
    new-instance v0, Lcom/ts/other/RelativeLayoutManager;

    sget v1, Lcom/ts/MainUI/R$id;->can_comm_layout:I

    invoke-direct {v0, p0, v1}, Lcom/ts/other/RelativeLayoutManager;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/ts/can/honda/accord/CanAccordCamModeActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    .line 76
    new-instance v0, Lcom/ts/canview/CanItemTextBtnList;

    sget v1, Lcom/ts/MainUI/R$string;->can_car_scr_light:I

    invoke-direct {v0, p0, v1}, Lcom/ts/canview/CanItemTextBtnList;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/ts/can/honda/accord/CanAccordCamModeActivity;->mItemLight:Lcom/ts/canview/CanItemTextBtnList;

    .line 77
    iget-object v0, p0, Lcom/ts/can/honda/accord/CanAccordCamModeActivity;->mItemLight:Lcom/ts/canview/CanItemTextBtnList;

    invoke-virtual {v0, v2}, Lcom/ts/canview/CanItemTextBtnList;->ShowArrow(Z)V

    .line 78
    iget-object v0, p0, Lcom/ts/can/honda/accord/CanAccordCamModeActivity;->mItemLight:Lcom/ts/canview/CanItemTextBtnList;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/ts/canview/CanItemTextBtnList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 79
    iget-object v0, p0, Lcom/ts/can/honda/accord/CanAccordCamModeActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordCamModeActivity;->mItemLight:Lcom/ts/canview/CanItemTextBtnList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemTextBtnList;->GetView()Landroid/view/View;

    move-result-object v1

    const/16 v3, 0xa

    invoke-virtual/range {v0 .. v5}, Lcom/ts/other/RelativeLayoutManager;->AddView(Landroid/view/View;IIII)V

    .line 81
    new-array v0, v9, [Lcom/ts/other/CustomImgView;

    iput-object v0, p0, Lcom/ts/can/honda/accord/CanAccordCamModeActivity;->mImgLight:[Lcom/ts/other/CustomImgView;

    .line 82
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget-object v0, p0, Lcom/ts/can/honda/accord/CanAccordCamModeActivity;->mImgLight:[Lcom/ts/other/CustomImgView;

    array-length v0, v0

    if-lt v6, v0, :cond_0

    .line 90
    new-instance v0, Lcom/ts/canview/CanItemPopupList;

    sget v1, Lcom/ts/MainUI/R$string;->can_car_color:I

    sget-object v3, Lcom/ts/can/honda/accord/CanAccordCamModeActivity;->mColorArr:[I

    invoke-direct {v0, p0, v1, v3, p0}, Lcom/ts/canview/CanItemPopupList;-><init>(Landroid/content/Context;I[ILcom/ts/canview/CanItemPopupList$onPopItemClick;)V

    iput-object v0, p0, Lcom/ts/can/honda/accord/CanAccordCamModeActivity;->mItemColor:Lcom/ts/canview/CanItemPopupList;

    .line 91
    iget-object v0, p0, Lcom/ts/can/honda/accord/CanAccordCamModeActivity;->mItemColor:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v0, v9}, Lcom/ts/canview/CanItemPopupList;->SetId(I)V

    .line 92
    iget-object v0, p0, Lcom/ts/can/honda/accord/CanAccordCamModeActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordCamModeActivity;->mItemColor:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemPopupList;->GetView()Landroid/view/View;

    move-result-object v1

    const/16 v3, 0x5f

    invoke-virtual/range {v0 .. v5}, Lcom/ts/other/RelativeLayoutManager;->AddView(Landroid/view/View;IIII)V

    .line 94
    iget-object v0, p0, Lcom/ts/can/honda/accord/CanAccordCamModeActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v1, 0x44

    invoke-virtual {v0, v1, v8}, Lcom/ts/other/RelativeLayoutManager;->AddButton(II)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/honda/accord/CanAccordCamModeActivity;->mBtnGj:Lcom/ts/other/ParamButton;

    .line 95
    iget-object v0, p0, Lcom/ts/can/honda/accord/CanAccordCamModeActivity;->mBtnGj:Lcom/ts/other/ParamButton;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 96
    iget-object v0, p0, Lcom/ts/can/honda/accord/CanAccordCamModeActivity;->mBtnGj:Lcom/ts/other/ParamButton;

    sget v1, Lcom/ts/MainUI/R$drawable;->can_yg_mode_gj_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_yg_mode_gj_dn:I

    invoke-virtual {v0, v1, v3}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 97
    iget-object v0, p0, Lcom/ts/can/honda/accord/CanAccordCamModeActivity;->mBtnGj:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iget-object v0, p0, Lcom/ts/can/honda/accord/CanAccordCamModeActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v1, 0x183

    invoke-virtual {v0, v1, v8}, Lcom/ts/other/RelativeLayoutManager;->AddButton(II)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/honda/accord/CanAccordCamModeActivity;->mBtnBz:Lcom/ts/other/ParamButton;

    .line 100
    iget-object v0, p0, Lcom/ts/can/honda/accord/CanAccordCamModeActivity;->mBtnBz:Lcom/ts/other/ParamButton;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 101
    iget-object v0, p0, Lcom/ts/can/honda/accord/CanAccordCamModeActivity;->mBtnBz:Lcom/ts/other/ParamButton;

    sget v1, Lcom/ts/MainUI/R$drawable;->can_yg_mode_bz_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_yg_mode_bz_dn:I

    invoke-virtual {v0, v1, v3}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 102
    iget-object v0, p0, Lcom/ts/can/honda/accord/CanAccordCamModeActivity;->mBtnBz:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget-object v0, p0, Lcom/ts/can/honda/accord/CanAccordCamModeActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v1, 0x2c1

    invoke-virtual {v0, v1, v8}, Lcom/ts/other/RelativeLayoutManager;->AddButton(II)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/honda/accord/CanAccordCamModeActivity;->mBtnFj:Lcom/ts/other/ParamButton;

    .line 105
    iget-object v0, p0, Lcom/ts/can/honda/accord/CanAccordCamModeActivity;->mBtnFj:Lcom/ts/other/ParamButton;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 106
    iget-object v0, p0, Lcom/ts/can/honda/accord/CanAccordCamModeActivity;->mBtnFj:Lcom/ts/other/ParamButton;

    sget v1, Lcom/ts/MainUI/R$drawable;->can_yg_mode_fj_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_yg_mode_fj_dn:I

    invoke-virtual {v0, v1, v3}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 107
    iget-object v0, p0, Lcom/ts/can/honda/accord/CanAccordCamModeActivity;->mBtnFj:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    invoke-static {p0}, Lcom/ts/can/CanFunc;->IsCanActivityJumped(Landroid/app/Activity;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ts/can/honda/accord/CanAccordCamModeActivity;->mfgJump:Z

    .line 111
    iget-object v0, p0, Lcom/ts/can/honda/accord/CanAccordCamModeActivity;->mBtnGj:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, v2}, Lcom/ts/other/ParamButton;->Show(Z)V

    .line 112
    iget-object v0, p0, Lcom/ts/can/honda/accord/CanAccordCamModeActivity;->mBtnBz:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, v2}, Lcom/ts/other/ParamButton;->Show(Z)V

    .line 113
    iget-object v0, p0, Lcom/ts/can/honda/accord/CanAccordCamModeActivity;->mBtnFj:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, v2}, Lcom/ts/other/ParamButton;->Show(Z)V

    .line 115
    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/ts/can/honda/accord/CanAccordCamModeActivity;->mImgLight:[Lcom/ts/other/CustomImgView;

    new-instance v1, Lcom/ts/other/CustomImgView;

    invoke-direct {v1, p0}, Lcom/ts/other/CustomImgView;-><init>(Landroid/content/Context;)V

    aput-object v1, v0, v6

    .line 85
    iget-object v0, p0, Lcom/ts/can/honda/accord/CanAccordCamModeActivity;->mImgLight:[Lcom/ts/other/CustomImgView;

    aget-object v0, v0, v6

    sget v1, Lcom/ts/MainUI/R$drawable;->conditioning_rect_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->conditioning_rect_dn:I

    invoke-virtual {v0, v1, v3}, Lcom/ts/other/CustomImgView;->setStateDrawable(II)V

    .line 86
    iget-object v0, p0, Lcom/ts/can/honda/accord/CanAccordCamModeActivity;->mItemLight:Lcom/ts/canview/CanItemTextBtnList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemTextBtnList;->GetView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordCamModeActivity;->mImgLight:[Lcom/ts/other/CustomImgView;

    aget-object v1, v1, v6

    mul-int/lit8 v3, v6, 0x28

    add-int/lit16 v3, v3, 0x384

    const/16 v7, 0x23

    invoke-virtual {p0, v0, v1, v3, v7}, Lcom/ts/can/honda/accord/CanAccordCamModeActivity;->AddViewWrapContent(Landroid/widget/RelativeLayout;Landroid/view/View;II)V

    .line 82
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0
.end method

.method public onItem(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "item"    # I

    .prologue
    .line 259
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 261
    const/16 v0, 0x41

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->AccordCarCtrl(II)V

    .line 263
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 140
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 141
    iget-boolean v0, p0, Lcom/ts/can/honda/accord/CanAccordCamModeActivity;->mfgJump:Z

    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {p0}, Lcom/ts/can/honda/accord/CanAccordCamModeActivity;->finish()V

    .line 145
    :cond_0
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onPause()V

    .line 147
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 131
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onResume()V

    .line 132
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 133
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ts/can/honda/accord/CanAccordCamModeActivity;->ResetData(Z)V

    .line 134
    return-void
.end method
