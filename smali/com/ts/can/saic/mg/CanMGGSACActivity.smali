.class public Lcom/ts/can/saic/mg/CanMGGSACActivity;
.super Lcom/ts/can/saic/mg/CanMGGSBaseActivity;
.source "CanMGGSACActivity.java"

# interfaces
.implements Lcom/ts/MainUI/UserCallBack;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/canview/CanItemProgressList$onPosChange;
.implements Landroid/view/View$OnTouchListener;


# static fields
.field public static final ITEM_AC:I = 0xb

.field public static final ITEM_AUTO:I = 0xa

.field public static final ITEM_FORE_WIND:I = 0x8

.field public static final ITEM_LOOP:I = 0x7

.field public static final ITEM_LTEMP_DEC:I = 0x2

.field public static final ITEM_LTEMP_INC:I = 0x1

.field public static final ITEM_MODE:I = 0x4

.field public static final ITEM_PWR:I = 0x3

.field public static final ITEM_REAR_WIND:I = 0x9

.field public static final ITEM_WIND_DEC:I = 0x5

.field public static final ITEM_WIND_INC:I = 0x6

.field public static final TAG:Ljava/lang/String; = "CanMGGSACActivity"

.field protected static mIsAC:Z

.field protected static mfgJump:Z


# instance fields
.field private mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

.field private mBtnAC:Lcom/ts/other/ParamButton;

.field private mBtnAuto:Lcom/ts/other/ParamButton;

.field private mBtnForeWind:Lcom/ts/other/ParamButton;

.field private mBtnLoop:Lcom/ts/other/ParamButton;

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
    .line 26
    invoke-direct {p0}, Lcom/ts/can/saic/mg/CanMGGSBaseActivity;-><init>()V

    return-void
.end method

.method private ResetData(Z)V
    .locals 6
    .param p1, "check"    # Z

    .prologue
    .line 220
    invoke-static {}, Lcom/lgb/canmodule/Can;->updateAC()Z

    .line 221
    if-eqz p1, :cond_0

    sget-object v2, Lcom/lgb/canmodule/Can;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->Update:I

    if-eqz v2, :cond_1

    .line 223
    :cond_0
    invoke-direct {p0}, Lcom/ts/can/saic/mg/CanMGGSACActivity;->updateACUI()V

    .line 226
    :cond_1
    sget-boolean v2, Lcom/ts/can/saic/mg/CanMGGSACActivity;->mfgJump:Z

    if-eqz v2, :cond_2

    .line 228
    invoke-static {}, Lcom/ts/can/saic/mg/CanMGGSACActivity;->GetTickCount()J

    move-result-wide v0

    .line 229
    .local v0, "curTick":J
    sget-wide v2, Lcom/ts/can/CanFunc;->mLastACTick:J

    const-wide/16 v4, 0xbb8

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    .line 231
    invoke-virtual {p0}, Lcom/ts/can/saic/mg/CanMGGSACActivity;->finish()V

    .line 233
    const-string v2, "CanMGGSACActivity"

    const-string v3, "UserAll Exit Ac"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    .end local v0    # "curTick":J
    :cond_2
    return-void
.end method

.method public static ShowAC()V
    .locals 1

    .prologue
    .line 274
    sget-boolean v0, Lcom/ts/can/saic/mg/CanMGGSACActivity;->mIsAC:Z

    if-nez v0, :cond_0

    .line 276
    const/4 v0, 0x1

    sput-boolean v0, Lcom/ts/can/saic/mg/CanMGGSACActivity;->mfgJump:Z

    .line 277
    const-class v0, Lcom/ts/can/saic/mg/CanMGGSACActivity;

    invoke-static {v0}, Lcom/ts/can/CanFunc;->showCanActivity(Ljava/lang/Class;)V

    .line 279
    :cond_0
    return-void
.end method

.method private updateACUI()V
    .locals 3

    .prologue
    .line 175
    sget-object v0, Lcom/lgb/canmodule/Can;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iput-object v0, p0, Lcom/ts/can/saic/mg/CanMGGSACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    .line 176
    iget-object v0, p0, Lcom/ts/can/saic/mg/CanMGGSACActivity;->mTvLtTemp:Lcom/ts/other/CustomTextView;

    iget-object v1, p0, Lcom/ts/can/saic/mg/CanMGGSACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget-object v1, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->szLtTemp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    iget-object v0, p0, Lcom/ts/can/saic/mg/CanMGGSACActivity;->mBtnOff:Lcom/ts/other/ParamButton;

    iget-object v1, p0, Lcom/ts/can/saic/mg/CanMGGSACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->PWR:I

    rsub-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->SetSel(I)V

    .line 181
    iget-object v0, p0, Lcom/ts/can/saic/mg/CanMGGSACActivity;->mIvWindAuto:Lcom/ts/other/CustomImgView;

    iget-object v1, p0, Lcom/ts/can/saic/mg/CanMGGSACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgAutoWind:I

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomImgView;->Show(I)V

    .line 182
    iget-object v0, p0, Lcom/ts/can/saic/mg/CanMGGSACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgAutoWind:I

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/ts/can/saic/mg/CanMGGSACActivity;->mWindProg:Lcom/ts/canview/MyProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/canview/MyProgressBar;->SetCurPos(I)V

    .line 192
    :goto_0
    iget-object v0, p0, Lcom/ts/can/saic/mg/CanMGGSACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgInnerLoop:I

    if-eqz v0, :cond_1

    .line 194
    iget-object v0, p0, Lcom/ts/can/saic/mg/CanMGGSACActivity;->mBtnLoop:Lcom/ts/other/ParamButton;

    sget v1, Lcom/ts/MainUI/R$drawable;->can_mg_car01_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_mg_car01_dn:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 201
    :goto_1
    iget-object v0, p0, Lcom/ts/can/saic/mg/CanMGGSACActivity;->mIvWindUp:Lcom/ts/other/CustomImgView;

    iget-object v1, p0, Lcom/ts/can/saic/mg/CanMGGSACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgUpWind:I

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomImgView;->Show(I)V

    .line 202
    iget-object v0, p0, Lcom/ts/can/saic/mg/CanMGGSACActivity;->mIvWindPx:Lcom/ts/other/CustomImgView;

    iget-object v1, p0, Lcom/ts/can/saic/mg/CanMGGSACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgParallelWind:I

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomImgView;->Show(I)V

    .line 203
    iget-object v0, p0, Lcom/ts/can/saic/mg/CanMGGSACActivity;->mIvWindDn:Lcom/ts/other/CustomImgView;

    iget-object v1, p0, Lcom/ts/can/saic/mg/CanMGGSACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgDownWind:I

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomImgView;->Show(I)V

    .line 204
    iget-object v0, p0, Lcom/ts/can/saic/mg/CanMGGSACActivity;->mIvWindDirectAuto:Lcom/ts/other/CustomImgView;

    iget-object v1, p0, Lcom/ts/can/saic/mg/CanMGGSACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->nWindAutoLevel:I

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomImgView;->Show(I)V

    .line 206
    iget-object v0, p0, Lcom/ts/can/saic/mg/CanMGGSACActivity;->mBtnForeWind:Lcom/ts/other/ParamButton;

    iget-object v1, p0, Lcom/ts/can/saic/mg/CanMGGSACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgDFBL:I

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->SetSel(I)V

    .line 207
    iget-object v0, p0, Lcom/ts/can/saic/mg/CanMGGSACActivity;->mBtnRearWind:Lcom/ts/other/ParamButton;

    iget-object v1, p0, Lcom/ts/can/saic/mg/CanMGGSACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgRearLight:I

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->SetSel(I)V

    .line 208
    iget-object v0, p0, Lcom/ts/can/saic/mg/CanMGGSACActivity;->mBtnAuto:Lcom/ts/other/ParamButton;

    iget-object v1, p0, Lcom/ts/can/saic/mg/CanMGGSACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->nAutoLight:I

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->SetSel(I)V

    .line 209
    const-string v0, "CanMGGSACActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mACInfo.nAutoLight = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ts/can/saic/mg/CanMGGSACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->nAutoLight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v0, p0, Lcom/ts/can/saic/mg/CanMGGSACActivity;->mBtnAC:Lcom/ts/other/ParamButton;

    iget-object v1, p0, Lcom/ts/can/saic/mg/CanMGGSACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgAC:I

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->SetSel(I)V

    .line 215
    return-void

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/ts/can/saic/mg/CanMGGSACActivity;->mWindProg:Lcom/ts/canview/MyProgressBar;

    iget-object v1, p0, Lcom/ts/can/saic/mg/CanMGGSACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->nWindValue:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/MyProgressBar;->SetCurPos(I)V

    goto :goto_0

    .line 198
    :cond_1
    iget-object v0, p0, Lcom/ts/can/saic/mg/CanMGGSACActivity;->mBtnLoop:Lcom/ts/other/ParamButton;

    sget v1, Lcom/ts/MainUI/R$drawable;->can_mg_car02_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_mg_car02_dn:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    goto :goto_1
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
    .line 131
    iget-object v1, p0, Lcom/ts/can/saic/mg/CanMGGSACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    invoke-virtual {v1, p2, p3}, Lcom/ts/other/RelativeLayoutManager;->AddButton(II)Lcom/ts/other/ParamButton;

    move-result-object v0

    .line 132
    .local v0, "btn":Lcom/ts/other/ParamButton;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 133
    invoke-virtual {v0, p0}, Lcom/ts/other/ParamButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 134
    invoke-virtual {v0, p4, p5}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 135
    return-object v0
.end method

.method protected AddTemp(IIII)Lcom/ts/other/CustomTextView;
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 140
    iget-object v1, p0, Lcom/ts/can/saic/mg/CanMGGSACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/ts/other/RelativeLayoutManager;->AddCusText(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v0

    .line 141
    .local v0, "temp":Lcom/ts/other/CustomTextView;
    const/16 v1, 0x37

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->SetPxSize(I)V

    .line 142
    const-string v1, "88.8\u2103"

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setGravity(I)V

    .line 144
    return-object v0
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 262
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ts/can/saic/mg/CanMGGSACActivity;->ResetData(Z)V

    .line 263
    return-void
.end method

.method public onChanged(II)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "pos"    # I

    .prologue
    .line 270
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 246
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 254
    .local v0, "id":I
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v12, 0x3e

    const/16 v11, 0x8

    const/4 v1, 0x1

    const/4 v10, 0x0

    const/16 v9, 0x1a2

    .line 77
    invoke-super {p0, p1}, Lcom/ts/can/saic/mg/CanMGGSBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_relative:I

    invoke-virtual {p0, v0}, Lcom/ts/can/saic/mg/CanMGGSACActivity;->setContentView(I)V

    .line 81
    new-instance v0, Lcom/ts/other/RelativeLayoutManager;

    sget v2, Lcom/ts/MainUI/R$id;->can_comm_layout:I

    invoke-direct {v0, p0, v2}, Lcom/ts/other/RelativeLayoutManager;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/ts/can/saic/mg/CanMGGSACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    .line 83
    sget v0, Lcom/ts/MainUI/R$id;->can_comm_layout:I

    invoke-virtual {p0, v0}, Lcom/ts/can/saic/mg/CanMGGSACActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    .line 84
    .local v8, "relativeLayout":Landroid/widget/RelativeLayout;
    sget v0, Lcom/ts/MainUI/R$drawable;->can_mg_bg:I

    invoke-virtual {v8, v0}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 87
    invoke-static {p0}, Lcom/ts/can/CanFunc;->IsCanActivityJumped(Landroid/app/Activity;)Z

    move-result v0

    sput-boolean v0, Lcom/ts/can/saic/mg/CanMGGSACActivity;->mfgJump:Z

    .line 89
    sget-object v0, Lcom/lgb/canmodule/Can;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iput-object v0, p0, Lcom/ts/can/saic/mg/CanMGGSACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    .line 91
    const/16 v0, 0x6d

    const/16 v2, 0x12

    const/16 v3, 0x83

    invoke-virtual {p0, v0, v2, v3, v12}, Lcom/ts/can/saic/mg/CanMGGSACActivity;->AddTemp(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/saic/mg/CanMGGSACActivity;->mTvLtTemp:Lcom/ts/other/CustomTextView;

    .line 92
    const/16 v2, 0x8a

    const/16 v3, 0x6b

    sget v4, Lcom/ts/MainUI/R$drawable;->can_yl_upward_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->can_yl_upward_dn:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/saic/mg/CanMGGSACActivity;->AddBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/saic/mg/CanMGGSACActivity;->mBtnLtTempInc:Lcom/ts/other/ParamButton;

    .line 93
    const/4 v3, 0x2

    const/16 v4, 0x8a

    const/16 v5, 0x11f

    sget v6, Lcom/ts/MainUI/R$drawable;->can_yl_down_up:I

    sget v7, Lcom/ts/MainUI/R$drawable;->can_yl_down_dn:I

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/ts/can/saic/mg/CanMGGSACActivity;->AddBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/saic/mg/CanMGGSACActivity;->mBtnLtTempDec:Lcom/ts/other/ParamButton;

    .line 95
    new-instance v0, Lcom/ts/canview/MyProgressBar;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_yl_rect_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_yl_rect_dn:I

    invoke-direct {v0, p0, v2, v3}, Lcom/ts/canview/MyProgressBar;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/ts/can/saic/mg/CanMGGSACActivity;->mWindProg:Lcom/ts/canview/MyProgressBar;

    .line 96
    iget-object v0, p0, Lcom/ts/can/saic/mg/CanMGGSACActivity;->mWindProg:Lcom/ts/canview/MyProgressBar;

    invoke-virtual {v0, v10, v11}, Lcom/ts/canview/MyProgressBar;->SetMinMax(II)V

    .line 97
    iget-object v0, p0, Lcom/ts/can/saic/mg/CanMGGSACActivity;->mWindProg:Lcom/ts/canview/MyProgressBar;

    invoke-virtual {v0, v1}, Lcom/ts/canview/MyProgressBar;->SetCurPos(I)V

    .line 98
    iget-object v0, p0, Lcom/ts/can/saic/mg/CanMGGSACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    iget-object v1, p0, Lcom/ts/can/saic/mg/CanMGGSACActivity;->mWindProg:Lcom/ts/canview/MyProgressBar;

    const/16 v2, 0x160

    const/16 v3, 0x124

    invoke-virtual {v0, v1, v2, v3}, Lcom/ts/other/RelativeLayoutManager;->AddViewWrapContent(Landroid/view/View;II)V

    .line 100
    const/4 v1, 0x5

    const/16 v2, 0x11f

    const/16 v3, 0x10f

    sget v4, Lcom/ts/MainUI/R$drawable;->can_yl_jian_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->can_yl_jian_dn:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/saic/mg/CanMGGSACActivity;->AddBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/saic/mg/CanMGGSACActivity;->mBtnWindDec:Lcom/ts/other/ParamButton;

    .line 101
    const/4 v1, 0x6

    const/16 v2, 0x34e

    const/16 v3, 0x10f

    sget v4, Lcom/ts/MainUI/R$drawable;->can_yl_jia_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->can_yl_jia_dn:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/saic/mg/CanMGGSACActivity;->AddBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/saic/mg/CanMGGSACActivity;->mBtnWindInc:Lcom/ts/other/ParamButton;

    .line 102
    iget-object v0, p0, Lcom/ts/can/saic/mg/CanMGGSACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v1, 0x235

    const/16 v2, 0x128

    sget v3, Lcom/ts/MainUI/R$drawable;->can_yl_wind_auto:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/ts/other/RelativeLayoutManager;->AddImage(III)Lcom/ts/other/CustomImgView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/saic/mg/CanMGGSACActivity;->mIvWindAuto:Lcom/ts/other/CustomImgView;

    .line 104
    iget-object v0, p0, Lcom/ts/can/saic/mg/CanMGGSACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v1, 0x233

    const/16 v2, 0x4c

    sget v3, Lcom/ts/MainUI/R$drawable;->can_mg_people:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/ts/other/RelativeLayoutManager;->AddImage(III)Lcom/ts/other/CustomImgView;

    .line 105
    iget-object v0, p0, Lcom/ts/can/saic/mg/CanMGGSACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v1, 0x24e

    sget v2, Lcom/ts/MainUI/R$drawable;->can_mg_wind:I

    invoke-virtual {v0, v1, v12, v2}, Lcom/ts/other/RelativeLayoutManager;->AddImage(III)Lcom/ts/other/CustomImgView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/saic/mg/CanMGGSACActivity;->mIvWindUp:Lcom/ts/other/CustomImgView;

    .line 106
    iget-object v0, p0, Lcom/ts/can/saic/mg/CanMGGSACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v1, 0x239

    const/16 v2, 0x59

    sget v3, Lcom/ts/MainUI/R$drawable;->can_mg_right:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/ts/other/RelativeLayoutManager;->AddImage(III)Lcom/ts/other/CustomImgView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/saic/mg/CanMGGSACActivity;->mIvWindPx:Lcom/ts/other/CustomImgView;

    .line 107
    iget-object v0, p0, Lcom/ts/can/saic/mg/CanMGGSACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v1, 0x224

    const/16 v2, 0x70

    sget v3, Lcom/ts/MainUI/R$drawable;->can_mg_down:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/ts/other/RelativeLayoutManager;->AddImage(III)Lcom/ts/other/CustomImgView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/saic/mg/CanMGGSACActivity;->mIvWindDn:Lcom/ts/other/CustomImgView;

    .line 108
    iget-object v0, p0, Lcom/ts/can/saic/mg/CanMGGSACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v1, 0x217

    const/16 v2, 0x54

    sget v3, Lcom/ts/MainUI/R$drawable;->can_mg_auto:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/ts/other/RelativeLayoutManager;->AddImage(III)Lcom/ts/other/CustomImgView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/saic/mg/CanMGGSACActivity;->mIvWindDirectAuto:Lcom/ts/other/CustomImgView;

    .line 110
    const/4 v1, 0x3

    const/16 v2, 0x16e

    const/16 v3, 0x52

    sget v4, Lcom/ts/MainUI/R$drawable;->can_mg_del_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->can_mg_del_dn2:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/saic/mg/CanMGGSACActivity;->AddBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/saic/mg/CanMGGSACActivity;->mBtnOff:Lcom/ts/other/ParamButton;

    .line 111
    const/4 v1, 0x4

    const/16 v2, 0x2eb

    const/16 v3, 0x52

    sget v4, Lcom/ts/MainUI/R$drawable;->can_mg_mode_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->can_mg_mode_dn:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/saic/mg/CanMGGSACActivity;->AddBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/saic/mg/CanMGGSACActivity;->mBtnMode:Lcom/ts/other/ParamButton;

    .line 112
    const/4 v1, 0x7

    const/16 v2, 0x86

    sget v4, Lcom/ts/MainUI/R$drawable;->can_mg_car01_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->can_mg_car01_dn:I

    move-object v0, p0

    move v3, v9

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/saic/mg/CanMGGSACActivity;->AddBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/saic/mg/CanMGGSACActivity;->mBtnLoop:Lcom/ts/other/ParamButton;

    .line 113
    const/16 v2, 0x12c

    sget v4, Lcom/ts/MainUI/R$drawable;->can_mg_wind_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->can_mg_wind_dn:I

    move-object v0, p0

    move v1, v11

    move v3, v9

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/saic/mg/CanMGGSACActivity;->AddBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/saic/mg/CanMGGSACActivity;->mBtnForeWind:Lcom/ts/other/ParamButton;

    .line 114
    const/16 v1, 0x9

    const/16 v2, 0x1d2

    sget v4, Lcom/ts/MainUI/R$drawable;->can_mg_rear_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->can_mg_rear_dn:I

    move-object v0, p0

    move v3, v9

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/saic/mg/CanMGGSACActivity;->AddBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/saic/mg/CanMGGSACActivity;->mBtnRearWind:Lcom/ts/other/ParamButton;

    .line 115
    const/16 v1, 0xa

    const/16 v2, 0x278

    sget v4, Lcom/ts/MainUI/R$drawable;->can_psa_408_auto_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->can_psa_408_auto_dn:I

    move-object v0, p0

    move v3, v9

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/saic/mg/CanMGGSACActivity;->AddBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/saic/mg/CanMGGSACActivity;->mBtnAuto:Lcom/ts/other/ParamButton;

    .line 116
    const/16 v1, 0xb

    const/16 v2, 0x31e

    sget v4, Lcom/ts/MainUI/R$drawable;->can_psa_408_ac_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->can_psa_408_ac_dn:I

    move-object v0, p0

    move v3, v9

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/saic/mg/CanMGGSACActivity;->AddBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/saic/mg/CanMGGSACActivity;->mBtnAC:Lcom/ts/other/ParamButton;

    .line 120
    const-string v0, "CanMGGSACActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "jump = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/ts/can/saic/mg/CanMGGSACActivity;->mfgJump:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    sget-boolean v0, Lcom/ts/can/saic/mg/CanMGGSACActivity;->mfgJump:Z

    if-nez v0, :cond_0

    .line 123
    const/16 v0, 0x21

    invoke-static {v0, v10}, Lcom/lgb/canmodule/CanJni;->PSAQuery(II)V

    .line 126
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 163
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 164
    invoke-super {p0}, Lcom/ts/can/saic/mg/CanMGGSBaseActivity;->onPause()V

    .line 165
    const-string v0, "CanMGGSACActivity"

    const-string v1, "-----onPause-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    sput-boolean v2, Lcom/ts/can/saic/mg/CanMGGSACActivity;->mIsAC:Z

    .line 168
    sput-boolean v2, Lcom/ts/can/saic/mg/CanMGGSACActivity;->mfgJump:Z

    .line 169
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 151
    invoke-super {p0}, Lcom/ts/can/saic/mg/CanMGGSBaseActivity;->onResume()V

    .line 152
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 153
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ts/can/saic/mg/CanMGGSACActivity;->ResetData(Z)V

    .line 154
    const-string v0, "CanMGGSACActivity"

    const-string v1, "-----onResume-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const/4 v0, 0x1

    sput-boolean v0, Lcom/ts/can/saic/mg/CanMGGSACActivity;->mIsAC:Z

    .line 157
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 286
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 287
    .local v1, "action":I
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 288
    .local v0, "Id":I
    if-nez v1, :cond_1

    .line 290
    const-string v2, "CanMGGSACActivity"

    const-string v3, "****ACTION_DOWN*****"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    packed-switch v0, :pswitch_data_0

    .line 395
    :cond_0
    :goto_0
    return v5

    .line 295
    :pswitch_0
    invoke-virtual {p0, v4, v4}, Lcom/ts/can/saic/mg/CanMGGSACActivity;->ACSet(II)V

    goto :goto_0

    .line 299
    :pswitch_1
    invoke-virtual {p0, v4, v6}, Lcom/ts/can/saic/mg/CanMGGSACActivity;->ACSet(II)V

    goto :goto_0

    .line 303
    :pswitch_2
    const/4 v2, 0x5

    invoke-virtual {p0, v2, v4}, Lcom/ts/can/saic/mg/CanMGGSACActivity;->ACSet(II)V

    goto :goto_0

    .line 307
    :pswitch_3
    invoke-virtual {p0, v6, v4}, Lcom/ts/can/saic/mg/CanMGGSACActivity;->ACSet(II)V

    goto :goto_0

    .line 311
    :pswitch_4
    invoke-virtual {p0, v7, v6}, Lcom/ts/can/saic/mg/CanMGGSACActivity;->ACSet(II)V

    goto :goto_0

    .line 315
    :pswitch_5
    invoke-virtual {p0, v7, v4}, Lcom/ts/can/saic/mg/CanMGGSACActivity;->ACSet(II)V

    goto :goto_0

    .line 319
    :pswitch_6
    invoke-virtual {p0, v8, v4}, Lcom/ts/can/saic/mg/CanMGGSACActivity;->ACSet(II)V

    goto :goto_0

    .line 323
    :pswitch_7
    const/4 v2, 0x6

    invoke-virtual {p0, v2, v4}, Lcom/ts/can/saic/mg/CanMGGSACActivity;->ACSet(II)V

    goto :goto_0

    .line 327
    :pswitch_8
    const/4 v2, 0x7

    invoke-virtual {p0, v2, v4}, Lcom/ts/can/saic/mg/CanMGGSACActivity;->ACSet(II)V

    goto :goto_0

    .line 331
    :pswitch_9
    const/16 v2, 0x9

    invoke-virtual {p0, v2, v4}, Lcom/ts/can/saic/mg/CanMGGSACActivity;->ACSet(II)V

    goto :goto_0

    .line 335
    :pswitch_a
    const/16 v2, 0x8

    invoke-virtual {p0, v2, v4}, Lcom/ts/can/saic/mg/CanMGGSACActivity;->ACSet(II)V

    goto :goto_0

    .line 342
    :cond_1
    if-ne v4, v1, :cond_0

    .line 344
    const-string v2, "CanMGGSACActivity"

    const-string v3, "****ACTION_UP*****"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 348
    :pswitch_b
    invoke-virtual {p0, v4, v5}, Lcom/ts/can/saic/mg/CanMGGSACActivity;->ACSet(II)V

    goto :goto_0

    .line 352
    :pswitch_c
    invoke-virtual {p0, v4, v5}, Lcom/ts/can/saic/mg/CanMGGSACActivity;->ACSet(II)V

    goto :goto_0

    .line 356
    :pswitch_d
    const/4 v2, 0x5

    invoke-virtual {p0, v2, v5}, Lcom/ts/can/saic/mg/CanMGGSACActivity;->ACSet(II)V

    goto :goto_0

    .line 360
    :pswitch_e
    invoke-virtual {p0, v6, v5}, Lcom/ts/can/saic/mg/CanMGGSACActivity;->ACSet(II)V

    goto :goto_0

    .line 364
    :pswitch_f
    invoke-virtual {p0, v7, v5}, Lcom/ts/can/saic/mg/CanMGGSACActivity;->ACSet(II)V

    goto :goto_0

    .line 368
    :pswitch_10
    invoke-virtual {p0, v7, v5}, Lcom/ts/can/saic/mg/CanMGGSACActivity;->ACSet(II)V

    goto :goto_0

    .line 372
    :pswitch_11
    invoke-virtual {p0, v8, v5}, Lcom/ts/can/saic/mg/CanMGGSACActivity;->ACSet(II)V

    goto :goto_0

    .line 376
    :pswitch_12
    const/4 v2, 0x6

    invoke-virtual {p0, v2, v5}, Lcom/ts/can/saic/mg/CanMGGSACActivity;->ACSet(II)V

    goto :goto_0

    .line 380
    :pswitch_13
    const/4 v2, 0x7

    invoke-virtual {p0, v2, v5}, Lcom/ts/can/saic/mg/CanMGGSACActivity;->ACSet(II)V

    goto :goto_0

    .line 384
    :pswitch_14
    const/16 v2, 0x9

    invoke-virtual {p0, v2, v5}, Lcom/ts/can/saic/mg/CanMGGSACActivity;->ACSet(II)V

    goto :goto_0

    .line 388
    :pswitch_15
    const/16 v2, 0x8

    invoke-virtual {p0, v2, v5}, Lcom/ts/can/saic/mg/CanMGGSACActivity;->ACSet(II)V

    goto :goto_0

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

    .line 345
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch
.end method
