.class public Lcom/ts/can/bmw/e90/CanE90SetOtherActivity;
.super Lcom/ts/can/CanBaseActivity;
.source "CanE90SetOtherActivity.java"

# interfaces
.implements Lcom/ts/MainUI/UserCallBack;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# static fields
.field public static final ITEM_LTHOT:I = 0x2

.field public static final ITEM_RADAR:I = 0x1

.field public static final ITEM_RTHOT:I = 0x3

.field public static final ITEM_WIND:I = 0x4

.field public static final TAG:Ljava/lang/String; = "CanE90SetOtherActivity"


# instance fields
.field protected mBtnLtHot:Lcom/ts/other/ParamButton;

.field protected mBtnRadar:Lcom/ts/other/ParamButton;

.field protected mBtnRtHot:Lcom/ts/other/ParamButton;

.field protected mBtnWind:Lcom/ts/other/ParamButton;

.field protected mCtrlData:Lcom/lgb/canmodule/CanDataInfo$BMW_CtrlInfo;

.field protected mImgLtHot:[Lcom/ts/other/CustomImgView;

.field protected mImgRtHot:[Lcom/ts/other/CustomImgView;

.field protected mItemRadar:Lcom/ts/canview/CanItemIcoList;

.field protected mManager:Lcom/ts/other/RelativeLayoutManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 25
    invoke-direct {p0}, Lcom/ts/can/CanBaseActivity;-><init>()V

    .line 41
    new-array v0, v1, [Lcom/ts/other/CustomImgView;

    iput-object v0, p0, Lcom/ts/can/bmw/e90/CanE90SetOtherActivity;->mImgLtHot:[Lcom/ts/other/CustomImgView;

    .line 42
    new-array v0, v1, [Lcom/ts/other/CustomImgView;

    iput-object v0, p0, Lcom/ts/can/bmw/e90/CanE90SetOtherActivity;->mImgRtHot:[Lcom/ts/other/CustomImgView;

    .line 45
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$BMW_CtrlInfo;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$BMW_CtrlInfo;-><init>()V

    iput-object v0, p0, Lcom/ts/can/bmw/e90/CanE90SetOtherActivity;->mCtrlData:Lcom/lgb/canmodule/CanDataInfo$BMW_CtrlInfo;

    .line 25
    return-void
.end method

.method private ResetData(Z)V
    .locals 7
    .param p1, "check"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x3

    .line 137
    iget-object v3, p0, Lcom/ts/can/bmw/e90/CanE90SetOtherActivity;->mCtrlData:Lcom/lgb/canmodule/CanDataInfo$BMW_CtrlInfo;

    invoke-static {v3}, Lcom/lgb/canmodule/CanJni;->E90GetCtrlData(Lcom/lgb/canmodule/CanDataInfo$BMW_CtrlInfo;)V

    .line 138
    iget-object v3, p0, Lcom/ts/can/bmw/e90/CanE90SetOtherActivity;->mCtrlData:Lcom/lgb/canmodule/CanDataInfo$BMW_CtrlInfo;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$BMW_CtrlInfo;->UpdateOnce:I

    invoke-static {v3}, Lcom/ts/can/bmw/e90/CanE90SetOtherActivity;->i2b(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 140
    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/ts/can/bmw/e90/CanE90SetOtherActivity;->mCtrlData:Lcom/lgb/canmodule/CanDataInfo$BMW_CtrlInfo;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$BMW_CtrlInfo;->Update:I

    invoke-static {v3}, Lcom/ts/can/bmw/e90/CanE90SetOtherActivity;->i2b(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 142
    :cond_0
    iget-object v3, p0, Lcom/ts/can/bmw/e90/CanE90SetOtherActivity;->mCtrlData:Lcom/lgb/canmodule/CanDataInfo$BMW_CtrlInfo;

    iput v5, v3, Lcom/lgb/canmodule/CanDataInfo$BMW_CtrlInfo;->Update:I

    .line 145
    :cond_1
    iget-object v3, p0, Lcom/ts/can/bmw/e90/CanE90SetOtherActivity;->mCtrlData:Lcom/lgb/canmodule/CanDataInfo$BMW_CtrlInfo;

    iget v1, v3, Lcom/lgb/canmodule/CanDataInfo$BMW_CtrlInfo;->LtHot:I

    .line 146
    .local v1, "lthot":I
    iget-object v3, p0, Lcom/ts/can/bmw/e90/CanE90SetOtherActivity;->mCtrlData:Lcom/lgb/canmodule/CanDataInfo$BMW_CtrlInfo;

    iget v2, v3, Lcom/lgb/canmodule/CanDataInfo$BMW_CtrlInfo;->RtHot:I

    .line 147
    .local v2, "rthot":I
    if-ltz v1, :cond_2

    if-le v1, v4, :cond_3

    .line 149
    :cond_2
    const/4 v1, 0x0

    .line 152
    :cond_3
    if-ltz v2, :cond_4

    if-le v2, v4, :cond_5

    .line 154
    :cond_4
    const/4 v2, 0x0

    .line 157
    :cond_5
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_7

    .line 162
    move v0, v1

    :goto_1
    if-lt v0, v4, :cond_8

    .line 167
    const/4 v0, 0x0

    :goto_2
    if-lt v0, v2, :cond_9

    .line 172
    move v0, v2

    :goto_3
    if-lt v0, v4, :cond_a

    .line 177
    iget-object v3, p0, Lcom/ts/can/bmw/e90/CanE90SetOtherActivity;->mBtnRadar:Lcom/ts/other/ParamButton;

    iget-object v4, p0, Lcom/ts/can/bmw/e90/CanE90SetOtherActivity;->mCtrlData:Lcom/lgb/canmodule/CanDataInfo$BMW_CtrlInfo;

    iget v4, v4, Lcom/lgb/canmodule/CanDataInfo$BMW_CtrlInfo;->fgRadarOn:I

    invoke-virtual {v3, v4}, Lcom/ts/other/ParamButton;->SetSel(I)V

    .line 180
    .end local v0    # "i":I
    .end local v1    # "lthot":I
    .end local v2    # "rthot":I
    :cond_6
    return-void

    .line 159
    .restart local v0    # "i":I
    .restart local v1    # "lthot":I
    .restart local v2    # "rthot":I
    :cond_7
    iget-object v3, p0, Lcom/ts/can/bmw/e90/CanE90SetOtherActivity;->mImgLtHot:[Lcom/ts/other/CustomImgView;

    aget-object v3, v3, v0

    invoke-virtual {v3, v6}, Lcom/ts/other/CustomImgView;->setSelected(Z)V

    .line 157
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 164
    :cond_8
    iget-object v3, p0, Lcom/ts/can/bmw/e90/CanE90SetOtherActivity;->mImgLtHot:[Lcom/ts/other/CustomImgView;

    aget-object v3, v3, v0

    invoke-virtual {v3, v5}, Lcom/ts/other/CustomImgView;->setSelected(Z)V

    .line 162
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 169
    :cond_9
    iget-object v3, p0, Lcom/ts/can/bmw/e90/CanE90SetOtherActivity;->mImgRtHot:[Lcom/ts/other/CustomImgView;

    aget-object v3, v3, v0

    invoke-virtual {v3, v6}, Lcom/ts/other/CustomImgView;->setSelected(Z)V

    .line 167
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 174
    :cond_a
    iget-object v3, p0, Lcom/ts/can/bmw/e90/CanE90SetOtherActivity;->mImgRtHot:[Lcom/ts/other/CustomImgView;

    aget-object v3, v3, v0

    invoke-virtual {v3, v5}, Lcom/ts/other/CustomImgView;->setSelected(Z)V

    .line 172
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method


# virtual methods
.method protected AddBtn(IIIII)Lcom/ts/other/ParamButton;
    .locals 3
    .param p1, "id"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "up"    # I
    .param p5, "dn"    # I

    .prologue
    const/4 v2, 0x0

    .line 114
    iget-object v1, p0, Lcom/ts/can/bmw/e90/CanE90SetOtherActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    invoke-virtual {v1, p2, p3}, Lcom/ts/other/RelativeLayoutManager;->AddButton(II)Lcom/ts/other/ParamButton;

    move-result-object v0

    .line 115
    .local v0, "btn":Lcom/ts/other/ParamButton;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 117
    invoke-virtual {v0, p0}, Lcom/ts/other/ParamButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 118
    invoke-virtual {v0, p4, p5}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 119
    const/16 v1, 0x68

    invoke-virtual {v0, v2, v1, v2, v2}, Lcom/ts/other/ParamButton;->setPadding(IIII)V

    .line 120
    const/high16 v1, 0x41f00000    # 30.0f

    invoke-virtual {v0, v2, v1}, Lcom/ts/other/ParamButton;->setTextSize(IF)V

    .line 121
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setTextColor(I)V

    .line 122
    return-object v0
.end method

.method protected AddTxtLt(IIII)Lcom/ts/other/CustomTextView;
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 127
    iget-object v1, p0, Lcom/ts/can/bmw/e90/CanE90SetOtherActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/ts/other/RelativeLayoutManager;->AddCusText(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v0

    .line 128
    .local v0, "temp":Lcom/ts/other/CustomTextView;
    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->SetPixelSize(I)V

    .line 130
    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setGravity(I)V

    .line 131
    return-object v0
.end method

.method protected KeyDown(I)V
    .locals 1
    .param p1, "key"    # I

    .prologue
    .line 283
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/lgb/canmodule/CanJni;->E90KeySend(II)V

    .line 284
    return-void
.end method

.method protected KeyRel(I)V
    .locals 1
    .param p1, "key"    # I

    .prologue
    .line 288
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/lgb/canmodule/CanJni;->E90KeySend(II)V

    .line 289
    return-void
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 217
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ts/can/bmw/e90/CanE90SetOtherActivity;->ResetData(Z)V

    .line 218
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 190
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 191
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 209
    :pswitch_0
    return-void

    .line 191
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/ts/can/CanBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_relative:I

    invoke-virtual {p0, v0}, Lcom/ts/can/bmw/e90/CanE90SetOtherActivity;->setContentView(I)V

    .line 55
    new-instance v0, Lcom/ts/other/RelativeLayoutManager;

    sget v1, Lcom/ts/MainUI/R$id;->can_comm_layout:I

    invoke-direct {v0, p0, v1}, Lcom/ts/other/RelativeLayoutManager;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/ts/can/bmw/e90/CanE90SetOtherActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    .line 64
    const/16 v2, 0xb7

    .line 65
    .local v2, "x1":I
    const/16 v6, 0x25b

    .line 66
    .local v6, "x2":I
    const/16 v3, 0x46

    .line 67
    .local v3, "y1":I
    const/16 v10, 0x140

    .line 68
    .local v10, "y2":I
    const/4 v1, 0x2

    sget v4, Lcom/ts/MainUI/R$drawable;->can_e90_lthot_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->can_e90_lthot_dn:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/bmw/e90/CanE90SetOtherActivity;->AddBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/bmw/e90/CanE90SetOtherActivity;->mBtnLtHot:Lcom/ts/other/ParamButton;

    .line 69
    const/4 v5, 0x3

    sget v8, Lcom/ts/MainUI/R$drawable;->can_e90_rthot_up:I

    sget v9, Lcom/ts/MainUI/R$drawable;->can_e90_rthot_dn:I

    move-object v4, p0

    move v7, v3

    invoke-virtual/range {v4 .. v9}, Lcom/ts/can/bmw/e90/CanE90SetOtherActivity;->AddBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/bmw/e90/CanE90SetOtherActivity;->mBtnRtHot:Lcom/ts/other/ParamButton;

    .line 70
    const/4 v8, 0x4

    sget v11, Lcom/ts/MainUI/R$drawable;->can_e90_window_up:I

    sget v12, Lcom/ts/MainUI/R$drawable;->can_e90_window_dn:I

    move-object v7, p0

    move v9, v2

    invoke-virtual/range {v7 .. v12}, Lcom/ts/can/bmw/e90/CanE90SetOtherActivity;->AddBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/bmw/e90/CanE90SetOtherActivity;->mBtnWind:Lcom/ts/other/ParamButton;

    .line 71
    const/4 v5, 0x1

    sget v8, Lcom/ts/MainUI/R$drawable;->can_e90_leida_up:I

    sget v9, Lcom/ts/MainUI/R$drawable;->can_e90_leida_dn:I

    move-object v4, p0

    move v7, v10

    invoke-virtual/range {v4 .. v9}, Lcom/ts/can/bmw/e90/CanE90SetOtherActivity;->AddBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/bmw/e90/CanE90SetOtherActivity;->mBtnRadar:Lcom/ts/other/ParamButton;

    .line 73
    iget-object v0, p0, Lcom/ts/can/bmw/e90/CanE90SetOtherActivity;->mBtnRadar:Lcom/ts/other/ParamButton;

    sget v1, Lcom/ts/MainUI/R$string;->title_activity_can_radar:I

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setText(I)V

    .line 74
    iget-object v0, p0, Lcom/ts/can/bmw/e90/CanE90SetOtherActivity;->mBtnWind:Lcom/ts/other/ParamButton;

    sget v1, Lcom/ts/MainUI/R$string;->can_curtain:I

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setText(I)V

    .line 76
    iget-object v0, p0, Lcom/ts/can/bmw/e90/CanE90SetOtherActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v1, 0x125

    const/16 v4, 0x94

    sget v5, Lcom/ts/MainUI/R$drawable;->can_e90_fire:I

    invoke-virtual {v0, v1, v4, v5}, Lcom/ts/other/RelativeLayoutManager;->AddImage(III)Lcom/ts/other/CustomImgView;

    .line 77
    iget-object v0, p0, Lcom/ts/can/bmw/e90/CanE90SetOtherActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v1, 0x2c9

    const/16 v4, 0x94

    sget v5, Lcom/ts/MainUI/R$drawable;->can_e90_fire:I

    invoke-virtual {v0, v1, v4, v5}, Lcom/ts/other/RelativeLayoutManager;->AddImage(III)Lcom/ts/other/CustomImgView;

    .line 80
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    const/4 v0, 0x3

    if-lt v13, v0, :cond_0

    .line 90
    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/ts/can/bmw/e90/CanE90SetOtherActivity;->mImgLtHot:[Lcom/ts/other/CustomImgView;

    iget-object v1, p0, Lcom/ts/can/bmw/e90/CanE90SetOtherActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    mul-int/lit8 v4, v13, 0x27

    add-int/lit16 v4, v4, 0xf5

    const/16 v5, 0xb9

    invoke-virtual {v1, v4, v5}, Lcom/ts/other/RelativeLayoutManager;->AddImage(II)Lcom/ts/other/CustomImgView;

    move-result-object v1

    aput-object v1, v0, v13

    .line 83
    iget-object v0, p0, Lcom/ts/can/bmw/e90/CanE90SetOtherActivity;->mImgLtHot:[Lcom/ts/other/CustomImgView;

    aget-object v0, v0, v13

    sget v1, Lcom/ts/MainUI/R$drawable;->conditioning_rect_up:I

    sget v4, Lcom/ts/MainUI/R$drawable;->conditioning_rect_dn:I

    invoke-virtual {v0, v1, v4}, Lcom/ts/other/CustomImgView;->setStateDrawable(II)V

    .line 86
    iget-object v0, p0, Lcom/ts/can/bmw/e90/CanE90SetOtherActivity;->mImgRtHot:[Lcom/ts/other/CustomImgView;

    iget-object v1, p0, Lcom/ts/can/bmw/e90/CanE90SetOtherActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    mul-int/lit8 v4, v13, 0x27

    add-int/lit16 v4, v4, 0x299

    const/16 v5, 0xb9

    invoke-virtual {v1, v4, v5}, Lcom/ts/other/RelativeLayoutManager;->AddImage(II)Lcom/ts/other/CustomImgView;

    move-result-object v1

    aput-object v1, v0, v13

    .line 87
    iget-object v0, p0, Lcom/ts/can/bmw/e90/CanE90SetOtherActivity;->mImgRtHot:[Lcom/ts/other/CustomImgView;

    aget-object v0, v0, v13

    sget v1, Lcom/ts/MainUI/R$drawable;->conditioning_rect_up:I

    sget v4, Lcom/ts/MainUI/R$drawable;->conditioning_rect_dn:I

    invoke-virtual {v0, v1, v4}, Lcom/ts/other/CustomImgView;->setStateDrawable(II)V

    .line 80
    add-int/lit8 v13, v13, 0x1

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 106
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 107
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onPause()V

    .line 109
    const-string v0, "CanE90SetOtherActivity"

    const-string v1, "-----onPause-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 96
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onResume()V

    .line 97
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 98
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ts/can/bmw/e90/CanE90SetOtherActivity;->ResetData(Z)V

    .line 99
    const-string v0, "CanE90SetOtherActivity"

    const-string v1, "-----onResume-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 224
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 225
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 226
    .local v1, "id":I
    if-nez v0, :cond_1

    .line 228
    const-string v2, "CanE90SetOtherActivity"

    const-string v3, "****ACTION_DOWN*****"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    packed-switch v1, :pswitch_data_0

    .line 278
    :cond_0
    :goto_0
    const/4 v2, 0x0

    return v2

    .line 233
    :pswitch_0
    invoke-virtual {p0, v6}, Lcom/ts/can/bmw/e90/CanE90SetOtherActivity;->KeyDown(I)V

    goto :goto_0

    .line 237
    :pswitch_1
    invoke-virtual {p0, v4}, Lcom/ts/can/bmw/e90/CanE90SetOtherActivity;->KeyDown(I)V

    goto :goto_0

    .line 241
    :pswitch_2
    invoke-virtual {p0, v5}, Lcom/ts/can/bmw/e90/CanE90SetOtherActivity;->KeyDown(I)V

    goto :goto_0

    .line 245
    :pswitch_3
    invoke-virtual {p0, v7}, Lcom/ts/can/bmw/e90/CanE90SetOtherActivity;->KeyDown(I)V

    goto :goto_0

    .line 252
    :cond_1
    if-ne v4, v0, :cond_0

    .line 254
    const-string v2, "CanE90SetOtherActivity"

    const-string v3, "****ACTION_UP*****"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    packed-switch v1, :pswitch_data_1

    goto :goto_0

    .line 259
    :pswitch_4
    invoke-virtual {p0, v6}, Lcom/ts/can/bmw/e90/CanE90SetOtherActivity;->KeyRel(I)V

    goto :goto_0

    .line 263
    :pswitch_5
    invoke-virtual {p0, v4}, Lcom/ts/can/bmw/e90/CanE90SetOtherActivity;->KeyRel(I)V

    goto :goto_0

    .line 267
    :pswitch_6
    invoke-virtual {p0, v5}, Lcom/ts/can/bmw/e90/CanE90SetOtherActivity;->KeyRel(I)V

    goto :goto_0

    .line 271
    :pswitch_7
    invoke-virtual {p0, v7}, Lcom/ts/can/bmw/e90/CanE90SetOtherActivity;->KeyRel(I)V

    goto :goto_0

    .line 230
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 255
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
