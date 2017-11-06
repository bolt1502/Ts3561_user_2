.class public Lcom/ts/can/zotye/x7/CanZotyetX7ACActivity;
.super Lcom/ts/can/CanBaseActivity;
.source "CanZotyetX7ACActivity.java"

# interfaces
.implements Lcom/ts/MainUI/UserCallBack;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/canview/CanItemProgressList$onPosChange;
.implements Landroid/view/View$OnTouchListener;


# static fields
.field public static final ITEM_AC:I = 0xb

.field public static final ITEM_FORE_WIND:I = 0x8

.field public static final ITEM_LOOP_IN:I = 0x7

.field public static final ITEM_LOOP_OUT:I = 0xa

.field public static final ITEM_LTEMP_DEC:I = 0x2

.field public static final ITEM_LTEMP_INC:I = 0x1

.field public static final ITEM_MODE:I = 0x4

.field public static final ITEM_PWR:I = 0x3

.field public static final ITEM_REAR_WIND:I = 0x9

.field public static final ITEM_WIND_DEC:I = 0x5

.field public static final ITEM_WIND_INC:I = 0x6

.field public static final TAG:Ljava/lang/String; = "CanZotyetX7ACActivity"

.field protected static mIsAC:Z

.field protected static mfgJump:Z


# instance fields
.field private mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

.field private mBtnAC:Lcom/ts/other/ParamButton;

.field private mBtnForeWind:Lcom/ts/other/ParamButton;

.field private mBtnLoopIn:Lcom/ts/other/ParamButton;

.field private mBtnLoopOut:Lcom/ts/other/ParamButton;

.field private mBtnLtTempDec:Lcom/ts/other/ParamButton;

.field private mBtnLtTempInc:Lcom/ts/other/ParamButton;

.field private mBtnMode:Lcom/ts/other/ParamButton;

.field private mBtnOff:Lcom/ts/other/ParamButton;

.field private mBtnRearWind:Lcom/ts/other/ParamButton;

.field private mBtnWindDec:Lcom/ts/other/ParamButton;

.field private mBtnWindInc:Lcom/ts/other/ParamButton;

.field private mIvWindAuto:Lcom/ts/other/CustomImgView;

.field private mIvWindDirectAuto:Lcom/ts/other/CustomImgView;

.field private mIvWindDn:Lcom/ts/other/CustomImgView;

.field private mIvWindPx:Lcom/ts/other/CustomImgView;

.field private mIvWindUp:Lcom/ts/other/CustomImgView;

.field protected mManager:Lcom/ts/other/RelativeLayoutManager;

.field private mTvLtTemp:Lcom/ts/other/CustomTextView;

.field private mWindProg:Lcom/ts/canview/MyProgressBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/ts/can/CanBaseActivity;-><init>()V

    return-void
.end method

.method private ResetData(Z)V
    .locals 6
    .param p1, "check"    # Z

    .prologue
    .line 217
    invoke-static {}, Lcom/lgb/canmodule/Can;->updateAC()Z

    .line 218
    if-eqz p1, :cond_0

    sget-object v2, Lcom/lgb/canmodule/Can;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->Update:I

    if-eqz v2, :cond_1

    .line 220
    :cond_0
    invoke-direct {p0}, Lcom/ts/can/zotye/x7/CanZotyetX7ACActivity;->updateACUI()V

    .line 223
    :cond_1
    sget-boolean v2, Lcom/ts/can/zotye/x7/CanZotyetX7ACActivity;->mfgJump:Z

    if-eqz v2, :cond_2

    .line 225
    invoke-static {}, Lcom/ts/can/zotye/x7/CanZotyetX7ACActivity;->GetTickCount()J

    move-result-wide v0

    .line 226
    .local v0, "curTick":J
    sget-wide v2, Lcom/ts/can/CanFunc;->mLastACTick:J

    const-wide/16 v4, 0x1770

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    .line 228
    invoke-virtual {p0}, Lcom/ts/can/zotye/x7/CanZotyetX7ACActivity;->finish()V

    .line 230
    const-string v2, "CanZotyetX7ACActivity"

    const-string v3, "UserAll Exit Ac"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    .end local v0    # "curTick":J
    :cond_2
    return-void
.end method

.method public static ShowAC()V
    .locals 1

    .prologue
    .line 271
    sget-boolean v0, Lcom/ts/can/zotye/x7/CanZotyetX7ACActivity;->mIsAC:Z

    if-nez v0, :cond_0

    .line 273
    const/4 v0, 0x1

    sput-boolean v0, Lcom/ts/can/zotye/x7/CanZotyetX7ACActivity;->mfgJump:Z

    .line 274
    const-class v0, Lcom/ts/can/zotye/x7/CanZotyetX7ACActivity;

    invoke-static {v0}, Lcom/ts/can/CanFunc;->showCanActivity(Ljava/lang/Class;)V

    .line 276
    :cond_0
    return-void
.end method

.method private updateACUI()V
    .locals 3

    .prologue
    .line 181
    sget-object v0, Lcom/lgb/canmodule/Can;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iput-object v0, p0, Lcom/ts/can/zotye/x7/CanZotyetX7ACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    .line 182
    iget-object v0, p0, Lcom/ts/can/zotye/x7/CanZotyetX7ACActivity;->mTvLtTemp:Lcom/ts/other/CustomTextView;

    iget-object v1, p0, Lcom/ts/can/zotye/x7/CanZotyetX7ACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget-object v1, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->szLtTemp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    iget-object v0, p0, Lcom/ts/can/zotye/x7/CanZotyetX7ACActivity;->mBtnOff:Lcom/ts/other/ParamButton;

    iget-object v1, p0, Lcom/ts/can/zotye/x7/CanZotyetX7ACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->PWR:I

    rsub-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->SetSel(I)V

    .line 187
    iget-object v0, p0, Lcom/ts/can/zotye/x7/CanZotyetX7ACActivity;->mIvWindAuto:Lcom/ts/other/CustomImgView;

    iget-object v1, p0, Lcom/ts/can/zotye/x7/CanZotyetX7ACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgAutoWind:I

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomImgView;->Show(I)V

    .line 188
    iget-object v0, p0, Lcom/ts/can/zotye/x7/CanZotyetX7ACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgAutoWind:I

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/ts/can/zotye/x7/CanZotyetX7ACActivity;->mWindProg:Lcom/ts/canview/MyProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/canview/MyProgressBar;->SetCurPos(I)V

    .line 198
    :goto_0
    iget-object v0, p0, Lcom/ts/can/zotye/x7/CanZotyetX7ACActivity;->mIvWindUp:Lcom/ts/other/CustomImgView;

    iget-object v1, p0, Lcom/ts/can/zotye/x7/CanZotyetX7ACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgUpWind:I

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomImgView;->Show(I)V

    .line 199
    iget-object v0, p0, Lcom/ts/can/zotye/x7/CanZotyetX7ACActivity;->mIvWindPx:Lcom/ts/other/CustomImgView;

    iget-object v1, p0, Lcom/ts/can/zotye/x7/CanZotyetX7ACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgParallelWind:I

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomImgView;->Show(I)V

    .line 200
    iget-object v0, p0, Lcom/ts/can/zotye/x7/CanZotyetX7ACActivity;->mIvWindDn:Lcom/ts/other/CustomImgView;

    iget-object v1, p0, Lcom/ts/can/zotye/x7/CanZotyetX7ACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgDownWind:I

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomImgView;->Show(I)V

    .line 201
    iget-object v0, p0, Lcom/ts/can/zotye/x7/CanZotyetX7ACActivity;->mIvWindDirectAuto:Lcom/ts/other/CustomImgView;

    iget-object v1, p0, Lcom/ts/can/zotye/x7/CanZotyetX7ACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->nWindAutoLevel:I

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomImgView;->Show(I)V

    .line 203
    iget-object v0, p0, Lcom/ts/can/zotye/x7/CanZotyetX7ACActivity;->mBtnForeWind:Lcom/ts/other/ParamButton;

    iget-object v1, p0, Lcom/ts/can/zotye/x7/CanZotyetX7ACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgDFBL:I

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->SetSel(I)V

    .line 204
    iget-object v0, p0, Lcom/ts/can/zotye/x7/CanZotyetX7ACActivity;->mBtnRearWind:Lcom/ts/other/ParamButton;

    iget-object v1, p0, Lcom/ts/can/zotye/x7/CanZotyetX7ACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgRearLight:I

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->SetSel(I)V

    .line 205
    iget-object v0, p0, Lcom/ts/can/zotye/x7/CanZotyetX7ACActivity;->mBtnLoopOut:Lcom/ts/other/ParamButton;

    iget-object v1, p0, Lcom/ts/can/zotye/x7/CanZotyetX7ACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgACMax:I

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->SetSel(I)V

    .line 206
    const-string v0, "CanZotyetX7ACActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mACInfo.nAutoLight = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ts/can/zotye/x7/CanZotyetX7ACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->nAutoLight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v0, p0, Lcom/ts/can/zotye/x7/CanZotyetX7ACActivity;->mBtnAC:Lcom/ts/other/ParamButton;

    iget-object v1, p0, Lcom/ts/can/zotye/x7/CanZotyetX7ACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgAC:I

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->SetSel(I)V

    .line 208
    iget-object v0, p0, Lcom/ts/can/zotye/x7/CanZotyetX7ACActivity;->mBtnLoopIn:Lcom/ts/other/ParamButton;

    iget-object v1, p0, Lcom/ts/can/zotye/x7/CanZotyetX7ACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgInnerLoop:I

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->SetSel(I)V

    .line 209
    iget-object v0, p0, Lcom/ts/can/zotye/x7/CanZotyetX7ACActivity;->mBtnLoopOut:Lcom/ts/other/ParamButton;

    iget-object v1, p0, Lcom/ts/can/zotye/x7/CanZotyetX7ACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgInnerLoop:I

    invoke-virtual {p0, v1}, Lcom/ts/can/zotye/x7/CanZotyetX7ACActivity;->Neg(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->SetSel(I)V

    .line 212
    return-void

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/ts/can/zotye/x7/CanZotyetX7ACActivity;->mWindProg:Lcom/ts/canview/MyProgressBar;

    iget-object v1, p0, Lcom/ts/can/zotye/x7/CanZotyetX7ACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->nWindValue:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/MyProgressBar;->SetCurPos(I)V

    goto :goto_0
.end method


# virtual methods
.method protected AddBtn(IIIII)Lcom/ts/other/ParamButton;
    .locals 2
    .param p1, "id"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "up"    # I
    .param p5, "dn"    # I

    .prologue
    .line 137
    iget-object v1, p0, Lcom/ts/can/zotye/x7/CanZotyetX7ACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    invoke-virtual {v1, p2, p3}, Lcom/ts/other/RelativeLayoutManager;->AddButton(II)Lcom/ts/other/ParamButton;

    move-result-object v0

    .line 138
    .local v0, "btn":Lcom/ts/other/ParamButton;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 139
    invoke-virtual {v0, p0}, Lcom/ts/other/ParamButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 140
    invoke-virtual {v0, p4, p5}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 141
    return-object v0
.end method

.method protected AddTemp(IIII)Lcom/ts/other/CustomTextView;
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 146
    iget-object v1, p0, Lcom/ts/can/zotye/x7/CanZotyetX7ACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/ts/other/RelativeLayoutManager;->AddCusText(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v0

    .line 147
    .local v0, "temp":Lcom/ts/other/CustomTextView;
    const/16 v1, 0x37

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->SetPxSize(I)V

    .line 148
    const-string v1, "88.8\u2103"

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setGravity(I)V

    .line 150
    return-object v0
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 259
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ts/can/zotye/x7/CanZotyetX7ACActivity;->ResetData(Z)V

    .line 260
    return-void
.end method

.method public onChanged(II)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "pos"    # I

    .prologue
    .line 267
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 243
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 251
    .local v0, "id":I
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v12, 0x3e

    const/4 v11, 0x7

    const/4 v1, 0x1

    const/4 v10, 0x0

    const/16 v9, 0x1a2

    .line 83
    invoke-super {p0, p1}, Lcom/ts/can/CanBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 84
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_relative:I

    invoke-virtual {p0, v0}, Lcom/ts/can/zotye/x7/CanZotyetX7ACActivity;->setContentView(I)V

    .line 87
    new-instance v0, Lcom/ts/other/RelativeLayoutManager;

    sget v2, Lcom/ts/MainUI/R$id;->can_comm_layout:I

    invoke-direct {v0, p0, v2}, Lcom/ts/other/RelativeLayoutManager;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/ts/can/zotye/x7/CanZotyetX7ACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    .line 89
    sget v0, Lcom/ts/MainUI/R$id;->can_comm_layout:I

    invoke-virtual {p0, v0}, Lcom/ts/can/zotye/x7/CanZotyetX7ACActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    .line 90
    .local v8, "relativeLayout":Landroid/widget/RelativeLayout;
    sget v0, Lcom/ts/MainUI/R$drawable;->can_mg_bg:I

    invoke-virtual {v8, v0}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 93
    invoke-static {p0}, Lcom/ts/can/CanFunc;->IsCanActivityJumped(Landroid/app/Activity;)Z

    move-result v0

    sput-boolean v0, Lcom/ts/can/zotye/x7/CanZotyetX7ACActivity;->mfgJump:Z

    .line 95
    sget-object v0, Lcom/lgb/canmodule/Can;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iput-object v0, p0, Lcom/ts/can/zotye/x7/CanZotyetX7ACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    .line 97
    const/16 v0, 0x6d

    const/16 v2, 0x12

    const/16 v3, 0x83

    invoke-virtual {p0, v0, v2, v3, v12}, Lcom/ts/can/zotye/x7/CanZotyetX7ACActivity;->AddTemp(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/zotye/x7/CanZotyetX7ACActivity;->mTvLtTemp:Lcom/ts/other/CustomTextView;

    .line 98
    const/16 v2, 0x8a

    const/16 v3, 0x6b

    sget v4, Lcom/ts/MainUI/R$drawable;->can_yl_upward_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->can_yl_upward_dn:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/zotye/x7/CanZotyetX7ACActivity;->AddBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/zotye/x7/CanZotyetX7ACActivity;->mBtnLtTempInc:Lcom/ts/other/ParamButton;

    .line 99
    const/4 v3, 0x2

    const/16 v4, 0x8a

    const/16 v5, 0x11f

    sget v6, Lcom/ts/MainUI/R$drawable;->can_yl_down_up:I

    sget v7, Lcom/ts/MainUI/R$drawable;->can_yl_down_dn:I

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/ts/can/zotye/x7/CanZotyetX7ACActivity;->AddBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/zotye/x7/CanZotyetX7ACActivity;->mBtnLtTempDec:Lcom/ts/other/ParamButton;

    .line 101
    new-instance v0, Lcom/ts/canview/MyProgressBar;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_yl_rect_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_yl_rect_dn:I

    invoke-direct {v0, p0, v2, v3}, Lcom/ts/canview/MyProgressBar;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/ts/can/zotye/x7/CanZotyetX7ACActivity;->mWindProg:Lcom/ts/canview/MyProgressBar;

    .line 102
    iget-object v0, p0, Lcom/ts/can/zotye/x7/CanZotyetX7ACActivity;->mWindProg:Lcom/ts/canview/MyProgressBar;

    invoke-virtual {v0, v10, v11}, Lcom/ts/canview/MyProgressBar;->SetMinMax(II)V

    .line 103
    iget-object v0, p0, Lcom/ts/can/zotye/x7/CanZotyetX7ACActivity;->mWindProg:Lcom/ts/canview/MyProgressBar;

    invoke-virtual {v0, v1}, Lcom/ts/canview/MyProgressBar;->SetCurPos(I)V

    .line 104
    iget-object v0, p0, Lcom/ts/can/zotye/x7/CanZotyetX7ACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    iget-object v1, p0, Lcom/ts/can/zotye/x7/CanZotyetX7ACActivity;->mWindProg:Lcom/ts/canview/MyProgressBar;

    const/16 v2, 0x160

    const/16 v3, 0x124

    invoke-virtual {v0, v1, v2, v3}, Lcom/ts/other/RelativeLayoutManager;->AddViewWrapContent(Landroid/view/View;II)V

    .line 106
    const/4 v1, 0x5

    const/16 v2, 0x11f

    const/16 v3, 0x10f

    sget v4, Lcom/ts/MainUI/R$drawable;->can_yl_jian_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->can_yl_jian_dn:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/zotye/x7/CanZotyetX7ACActivity;->AddBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/zotye/x7/CanZotyetX7ACActivity;->mBtnWindDec:Lcom/ts/other/ParamButton;

    .line 107
    const/4 v1, 0x6

    const/16 v2, 0x34e

    const/16 v3, 0x10f

    sget v4, Lcom/ts/MainUI/R$drawable;->can_yl_jia_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->can_yl_jia_dn:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/zotye/x7/CanZotyetX7ACActivity;->AddBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/zotye/x7/CanZotyetX7ACActivity;->mBtnWindInc:Lcom/ts/other/ParamButton;

    .line 108
    iget-object v0, p0, Lcom/ts/can/zotye/x7/CanZotyetX7ACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v1, 0x235

    const/16 v2, 0x128

    sget v3, Lcom/ts/MainUI/R$drawable;->can_yl_wind_auto:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/ts/other/RelativeLayoutManager;->AddImage(III)Lcom/ts/other/CustomImgView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/zotye/x7/CanZotyetX7ACActivity;->mIvWindAuto:Lcom/ts/other/CustomImgView;

    .line 110
    iget-object v0, p0, Lcom/ts/can/zotye/x7/CanZotyetX7ACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v1, 0x233

    const/16 v2, 0x4c

    sget v3, Lcom/ts/MainUI/R$drawable;->can_mg_people:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/ts/other/RelativeLayoutManager;->AddImage(III)Lcom/ts/other/CustomImgView;

    .line 111
    iget-object v0, p0, Lcom/ts/can/zotye/x7/CanZotyetX7ACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v1, 0x24e

    sget v2, Lcom/ts/MainUI/R$drawable;->can_mg_wind:I

    invoke-virtual {v0, v1, v12, v2}, Lcom/ts/other/RelativeLayoutManager;->AddImage(III)Lcom/ts/other/CustomImgView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/zotye/x7/CanZotyetX7ACActivity;->mIvWindUp:Lcom/ts/other/CustomImgView;

    .line 112
    iget-object v0, p0, Lcom/ts/can/zotye/x7/CanZotyetX7ACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v1, 0x239

    const/16 v2, 0x59

    sget v3, Lcom/ts/MainUI/R$drawable;->can_mg_right:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/ts/other/RelativeLayoutManager;->AddImage(III)Lcom/ts/other/CustomImgView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/zotye/x7/CanZotyetX7ACActivity;->mIvWindPx:Lcom/ts/other/CustomImgView;

    .line 113
    iget-object v0, p0, Lcom/ts/can/zotye/x7/CanZotyetX7ACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v1, 0x224

    const/16 v2, 0x70

    sget v3, Lcom/ts/MainUI/R$drawable;->can_mg_down:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/ts/other/RelativeLayoutManager;->AddImage(III)Lcom/ts/other/CustomImgView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/zotye/x7/CanZotyetX7ACActivity;->mIvWindDn:Lcom/ts/other/CustomImgView;

    .line 114
    iget-object v0, p0, Lcom/ts/can/zotye/x7/CanZotyetX7ACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v1, 0x217

    const/16 v2, 0x54

    sget v3, Lcom/ts/MainUI/R$drawable;->can_mg_auto:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/ts/other/RelativeLayoutManager;->AddImage(III)Lcom/ts/other/CustomImgView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/zotye/x7/CanZotyetX7ACActivity;->mIvWindDirectAuto:Lcom/ts/other/CustomImgView;

    .line 116
    const/4 v1, 0x3

    const/16 v2, 0x16e

    const/16 v3, 0x52

    sget v4, Lcom/ts/MainUI/R$drawable;->can_mg_del_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->can_mg_del_dn2:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/zotye/x7/CanZotyetX7ACActivity;->AddBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/zotye/x7/CanZotyetX7ACActivity;->mBtnOff:Lcom/ts/other/ParamButton;

    .line 117
    const/4 v1, 0x4

    const/16 v2, 0x2eb

    const/16 v3, 0x52

    sget v4, Lcom/ts/MainUI/R$drawable;->can_mg_mode_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->can_mg_mode_dn:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/zotye/x7/CanZotyetX7ACActivity;->AddBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/zotye/x7/CanZotyetX7ACActivity;->mBtnMode:Lcom/ts/other/ParamButton;

    .line 118
    const/16 v2, 0x86

    sget v4, Lcom/ts/MainUI/R$drawable;->can_mg_car01_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->can_mg_car01_dn:I

    move-object v0, p0

    move v1, v11

    move v3, v9

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/zotye/x7/CanZotyetX7ACActivity;->AddBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/zotye/x7/CanZotyetX7ACActivity;->mBtnLoopIn:Lcom/ts/other/ParamButton;

    .line 119
    const/16 v1, 0xa

    const/16 v2, 0x12c

    sget v4, Lcom/ts/MainUI/R$drawable;->can_mg_car02_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->can_mg_car02_dn:I

    move-object v0, p0

    move v3, v9

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/zotye/x7/CanZotyetX7ACActivity;->AddBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/zotye/x7/CanZotyetX7ACActivity;->mBtnLoopOut:Lcom/ts/other/ParamButton;

    .line 120
    const/16 v1, 0x8

    const/16 v2, 0x1d2

    sget v4, Lcom/ts/MainUI/R$drawable;->can_mg_wind_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->can_mg_wind_dn:I

    move-object v0, p0

    move v3, v9

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/zotye/x7/CanZotyetX7ACActivity;->AddBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/zotye/x7/CanZotyetX7ACActivity;->mBtnForeWind:Lcom/ts/other/ParamButton;

    .line 121
    const/16 v1, 0x9

    const/16 v2, 0x278

    sget v4, Lcom/ts/MainUI/R$drawable;->can_mg_rear_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->can_mg_rear_dn:I

    move-object v0, p0

    move v3, v9

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/zotye/x7/CanZotyetX7ACActivity;->AddBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/zotye/x7/CanZotyetX7ACActivity;->mBtnRearWind:Lcom/ts/other/ParamButton;

    .line 123
    const/16 v1, 0xb

    const/16 v2, 0x31e

    sget v4, Lcom/ts/MainUI/R$drawable;->can_psa_408_ac_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->can_psa_408_ac_dn:I

    move-object v0, p0

    move v3, v9

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/zotye/x7/CanZotyetX7ACActivity;->AddBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/zotye/x7/CanZotyetX7ACActivity;->mBtnAC:Lcom/ts/other/ParamButton;

    .line 126
    const-string v0, "CanZotyetX7ACActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "jump = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/ts/can/zotye/x7/CanZotyetX7ACActivity;->mfgJump:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    sget-boolean v0, Lcom/ts/can/zotye/x7/CanZotyetX7ACActivity;->mfgJump:Z

    if-nez v0, :cond_0

    .line 129
    const/16 v0, 0x21

    invoke-static {v0, v10}, Lcom/lgb/canmodule/CanJni;->ZotyeQuery(II)V

    .line 132
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 169
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 170
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onPause()V

    .line 171
    const-string v0, "CanZotyetX7ACActivity"

    const-string v1, "-----onPause-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    sput-boolean v2, Lcom/ts/can/zotye/x7/CanZotyetX7ACActivity;->mIsAC:Z

    .line 174
    sput-boolean v2, Lcom/ts/can/zotye/x7/CanZotyetX7ACActivity;->mfgJump:Z

    .line 175
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 157
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onResume()V

    .line 158
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 159
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ts/can/zotye/x7/CanZotyetX7ACActivity;->ResetData(Z)V

    .line 160
    const-string v0, "CanZotyetX7ACActivity"

    const-string v1, "-----onResume-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const/4 v0, 0x1

    sput-boolean v0, Lcom/ts/can/zotye/x7/CanZotyetX7ACActivity;->mIsAC:Z

    .line 163
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 283
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v11

    .line 284
    .local v11, "action":I
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 285
    .local v10, "Id":I
    const/4 v12, 0x0

    .line 286
    .local v12, "temp":I
    invoke-static {}, Lcom/ts/can/zotye/x7/CanZotyetX7ACActivity;->GetTickCount()J

    move-result-wide v5

    sput-wide v5, Lcom/ts/can/CanFunc;->mLastACTick:J

    .line 288
    if-nez v11, :cond_4

    .line 290
    const-string v1, "CanZotyetX7ACActivity"

    const-string v5, "****ACTION_DOWN*****"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    packed-switch v10, :pswitch_data_0

    move v2, v12

    .line 374
    .end local v12    # "temp":I
    .local v2, "temp":I
    :goto_0
    return v0

    .end local v2    # "temp":I
    .restart local v12    # "temp":I
    :pswitch_0
    move v1, v0

    move v2, v0

    move v4, v0

    move v5, v0

    .line 295
    invoke-static/range {v0 .. v5}, Lcom/lgb/canmodule/CanJni;->ZtDmX7CarAcSet(IIIIII)V

    move v2, v12

    .line 296
    .end local v12    # "temp":I
    .restart local v2    # "temp":I
    goto :goto_0

    .end local v2    # "temp":I
    .restart local v12    # "temp":I
    :pswitch_1
    move v1, v0

    move v2, v0

    move v3, v4

    move v4, v0

    move v5, v0

    .line 299
    invoke-static/range {v0 .. v5}, Lcom/lgb/canmodule/CanJni;->ZtDmX7CarAcSet(IIIIII)V

    move v2, v12

    .line 300
    .end local v12    # "temp":I
    .restart local v2    # "temp":I
    goto :goto_0

    .line 303
    .end local v2    # "temp":I
    .restart local v12    # "temp":I
    :pswitch_2
    const/16 v1, 0x80

    move v2, v0

    move v3, v0

    move v4, v0

    move v5, v0

    move v6, v0

    invoke-static/range {v1 .. v6}, Lcom/lgb/canmodule/CanJni;->ZtDmX7CarAcSet(IIIIII)V

    move v2, v12

    .line 304
    .end local v12    # "temp":I
    .restart local v2    # "temp":I
    goto :goto_0

    .line 307
    .end local v2    # "temp":I
    .restart local v12    # "temp":I
    :pswitch_3
    iget-object v1, p0, Lcom/ts/can/zotye/x7/CanZotyetX7ACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgParallelWind:I

    invoke-static {v1}, Lcom/ts/can/zotye/x7/CanZotyetX7ACActivity;->i2b(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ts/can/zotye/x7/CanZotyetX7ACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgDownWind:I

    invoke-static {v1}, Lcom/ts/can/zotye/x7/CanZotyetX7ACActivity;->i2b(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 309
    const/16 v2, 0x60

    .end local v12    # "temp":I
    .restart local v2    # "temp":I
    :goto_1
    move v1, v0

    move v3, v0

    move v4, v0

    move v5, v0

    .line 328
    invoke-static/range {v0 .. v5}, Lcom/lgb/canmodule/CanJni;->ZtDmX7CarAcSet(IIIIII)V

    goto :goto_0

    .line 311
    .end local v2    # "temp":I
    .restart local v12    # "temp":I
    :cond_0
    iget-object v1, p0, Lcom/ts/can/zotye/x7/CanZotyetX7ACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgUpWind:I

    invoke-static {v1}, Lcom/ts/can/zotye/x7/CanZotyetX7ACActivity;->i2b(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ts/can/zotye/x7/CanZotyetX7ACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgDownWind:I

    invoke-static {v1}, Lcom/ts/can/zotye/x7/CanZotyetX7ACActivity;->i2b(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 313
    const/16 v2, 0xa0

    .line 314
    .end local v12    # "temp":I
    .restart local v2    # "temp":I
    goto :goto_1

    .line 315
    .end local v2    # "temp":I
    .restart local v12    # "temp":I
    :cond_1
    iget-object v1, p0, Lcom/ts/can/zotye/x7/CanZotyetX7ACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgDownWind:I

    invoke-static {v1}, Lcom/ts/can/zotye/x7/CanZotyetX7ACActivity;->i2b(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 317
    const/16 v2, 0x80

    .line 318
    .end local v12    # "temp":I
    .restart local v2    # "temp":I
    goto :goto_1

    .line 319
    .end local v2    # "temp":I
    .restart local v12    # "temp":I
    :cond_2
    iget-object v1, p0, Lcom/ts/can/zotye/x7/CanZotyetX7ACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgParallelWind:I

    invoke-static {v1}, Lcom/ts/can/zotye/x7/CanZotyetX7ACActivity;->i2b(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 321
    const/16 v2, 0x40

    .line 322
    .end local v12    # "temp":I
    .restart local v2    # "temp":I
    goto :goto_1

    .line 325
    .end local v2    # "temp":I
    .restart local v12    # "temp":I
    :cond_3
    const/16 v2, 0x20

    .end local v12    # "temp":I
    .restart local v2    # "temp":I
    goto :goto_1

    .end local v2    # "temp":I
    .restart local v12    # "temp":I
    :pswitch_4
    move v3, v0

    move v5, v0

    move v6, v0

    move v7, v0

    move v8, v0

    .line 332
    invoke-static/range {v3 .. v8}, Lcom/lgb/canmodule/CanJni;->ZtDmX7CarAcSet(IIIIII)V

    move v2, v12

    .line 333
    .end local v12    # "temp":I
    .restart local v2    # "temp":I
    goto :goto_0

    .end local v2    # "temp":I
    .restart local v12    # "temp":I
    :pswitch_5
    move v4, v0

    move v5, v3

    move v6, v0

    move v7, v0

    move v8, v0

    move v9, v0

    .line 336
    invoke-static/range {v4 .. v9}, Lcom/lgb/canmodule/CanJni;->ZtDmX7CarAcSet(IIIIII)V

    move v2, v12

    .line 337
    .end local v12    # "temp":I
    .restart local v2    # "temp":I
    goto/16 :goto_0

    .end local v2    # "temp":I
    .restart local v12    # "temp":I
    :pswitch_6
    move v3, v7

    move v4, v0

    move v5, v0

    move v6, v0

    move v7, v0

    move v8, v0

    .line 340
    invoke-static/range {v3 .. v8}, Lcom/lgb/canmodule/CanJni;->ZtDmX7CarAcSet(IIIIII)V

    move v2, v12

    .line 341
    .end local v12    # "temp":I
    .restart local v2    # "temp":I
    goto/16 :goto_0

    .line 344
    .end local v2    # "temp":I
    .restart local v12    # "temp":I
    :pswitch_7
    const/16 v3, 0x10

    move v4, v0

    move v5, v0

    move v6, v0

    move v7, v0

    move v8, v0

    invoke-static/range {v3 .. v8}, Lcom/lgb/canmodule/CanJni;->ZtDmX7CarAcSet(IIIIII)V

    move v2, v12

    .line 345
    .end local v12    # "temp":I
    .restart local v2    # "temp":I
    goto/16 :goto_0

    .end local v2    # "temp":I
    .restart local v12    # "temp":I
    :pswitch_8
    move v3, v0

    move v4, v7

    move v5, v0

    move v6, v0

    move v7, v0

    move v8, v0

    .line 348
    invoke-static/range {v3 .. v8}, Lcom/lgb/canmodule/CanJni;->ZtDmX7CarAcSet(IIIIII)V

    move v2, v12

    .line 349
    .end local v12    # "temp":I
    .restart local v2    # "temp":I
    goto/16 :goto_0

    .line 352
    .end local v2    # "temp":I
    .restart local v12    # "temp":I
    :pswitch_9
    const/16 v3, 0x8

    move v4, v0

    move v5, v0

    move v6, v0

    move v7, v0

    move v8, v0

    invoke-static/range {v3 .. v8}, Lcom/lgb/canmodule/CanJni;->ZtDmX7CarAcSet(IIIIII)V

    move v2, v12

    .line 353
    .end local v12    # "temp":I
    .restart local v2    # "temp":I
    goto/16 :goto_0

    .end local v2    # "temp":I
    .restart local v12    # "temp":I
    :pswitch_a
    move v4, v0

    move v5, v0

    move v6, v0

    move v7, v0

    move v8, v0

    .line 356
    invoke-static/range {v3 .. v8}, Lcom/lgb/canmodule/CanJni;->ZtDmX7CarAcSet(IIIIII)V

    move v2, v12

    .line 357
    .end local v12    # "temp":I
    .restart local v2    # "temp":I
    goto/16 :goto_0

    .line 363
    .end local v2    # "temp":I
    .restart local v12    # "temp":I
    :cond_4
    if-ne v4, v11, :cond_5

    .line 365
    const-string v1, "CanZotyetX7ACActivity"

    const-string v3, "****ACTION_UP*****"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v0

    move v4, v0

    move v5, v0

    move v6, v0

    move v7, v0

    move v8, v0

    .line 366
    invoke-static/range {v3 .. v8}, Lcom/lgb/canmodule/CanJni;->ZtDmX7CarAcSet(IIIIII)V

    move v2, v12

    .line 367
    .end local v12    # "temp":I
    .restart local v2    # "temp":I
    goto/16 :goto_0

    .end local v2    # "temp":I
    .restart local v12    # "temp":I
    :cond_5
    move v2, v12

    .end local v12    # "temp":I
    .restart local v2    # "temp":I
    goto/16 :goto_0

    .line 292
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method
