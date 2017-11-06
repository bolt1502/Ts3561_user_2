.class public Lcom/ts/can/hm/CanHmV70AcActivity;
.super Lcom/ts/can/CanBaseActivity;
.source "CanHmV70AcActivity.java"

# interfaces
.implements Lcom/ts/MainUI/UserCallBack;
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static final ITEM_AC:I = 0x6

.field private static final ITEM_AC_STATE:I = 0x8

.field private static final ITEM_INFO:I = 0xf

.field private static final ITEM_MODE_C:I = 0x5

.field private static final ITEM_MODE_J:I = 0x4

.field private static final ITEM_MODE_JC:I = 0x3

.field private static final ITEM_MODE_PX:I = 0x1

.field private static final ITEM_MODE_PXJ:I = 0x2

.field private static final ITEM_RC:I = 0xa

.field private static final ITEM_R_AC:I = 0x9

.field private static final ITEM_TEMP_DEC:I = 0xb

.field private static final ITEM_TEMP_INC:I = 0xc

.field private static final ITEM_WIND_DEC:I = 0xd

.field private static final ITEM_WIND_INC:I = 0xe

.field private static final ITEM_XH:I = 0x7

.field public static final TAG:Ljava/lang/String; = "CanHmV70AcActivity"

.field protected static mfgJump:Z


# instance fields
.field private mACstate:Lcom/ts/other/ParamButton;

.field private mAcBut:Lcom/ts/other/ParamButton;

.field protected mAutoFinish:Z

.field protected mImgTemp:[Lcom/ts/other/CustomImgView;

.field protected mImgWind:[Lcom/ts/other/CustomImgView;

.field private mInfo:Lcom/ts/other/ParamButton;

.field private mManager:Lcom/ts/other/RelativeLayoutManager;

.field private mMode_Px:Lcom/ts/other/ParamButton;

.field private mMode_Pxj:Lcom/ts/other/ParamButton;

.field private mMode_c:Lcom/ts/other/ParamButton;

.field private mMode_j:Lcom/ts/other/ParamButton;

.field private mMode_jc:Lcom/ts/other/ParamButton;

.field private mRac:Lcom/ts/other/ParamButton;

.field private mRc:Lcom/ts/other/ParamButton;

.field private mTempDec:Lcom/ts/other/ParamButton;

.field private mTempInc:Lcom/ts/other/ParamButton;

.field private mWindDec:Lcom/ts/other/ParamButton;

.field private mWindInc:Lcom/ts/other/ParamButton;

.field private mXh:Lcom/ts/other/ParamButton;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/ts/can/CanBaseActivity;-><init>()V

    .line 44
    const/16 v0, 0xf

    new-array v0, v0, [Lcom/ts/other/CustomImgView;

    iput-object v0, p0, Lcom/ts/can/hm/CanHmV70AcActivity;->mImgTemp:[Lcom/ts/other/CustomImgView;

    .line 45
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/ts/other/CustomImgView;

    iput-object v0, p0, Lcom/ts/can/hm/CanHmV70AcActivity;->mImgWind:[Lcom/ts/other/CustomImgView;

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ts/can/hm/CanHmV70AcActivity;->mAutoFinish:Z

    .line 21
    return-void
.end method

.method private AddBtn(III)Lcom/ts/other/ParamButton;
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "id"    # I

    .prologue
    .line 153
    iget-object v1, p0, Lcom/ts/can/hm/CanHmV70AcActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    invoke-virtual {v1, p1, p2}, Lcom/ts/other/RelativeLayoutManager;->AddButton(II)Lcom/ts/other/ParamButton;

    move-result-object v0

    .line 155
    .local v0, "btn":Lcom/ts/other/ParamButton;
    invoke-virtual {v0, p0}, Lcom/ts/other/ParamButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 156
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 157
    return-object v0
.end method

.method protected static uint2Bool(I)I
    .locals 1
    .param p0, "val"    # I

    .prologue
    .line 221
    if-nez p0, :cond_0

    .line 223
    const/4 v0, 0x1

    .line 226
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public UserAll()V
    .locals 6

    .prologue
    .line 199
    invoke-static {}, Lcom/lgb/canmodule/Can;->updateAC()Z

    .line 200
    sget-object v2, Lcom/lgb/canmodule/Can;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->Update:I

    if-eqz v2, :cond_0

    .line 202
    invoke-virtual {p0}, Lcom/ts/can/hm/CanHmV70AcActivity;->updateACUI()V

    .line 204
    :cond_0
    sget-boolean v2, Lcom/ts/can/hm/CanHmV70AcActivity;->mfgJump:Z

    if-eqz v2, :cond_1

    .line 206
    invoke-static {}, Lcom/ts/can/hm/CanHmV70AcActivity;->GetTickCount()J

    move-result-wide v0

    .line 207
    .local v0, "curTick":J
    sget-wide v2, Lcom/ts/can/CanFunc;->mLastACTick:J

    const-wide/16 v4, 0xbb8

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 209
    invoke-virtual {p0}, Lcom/ts/can/hm/CanHmV70AcActivity;->finish()V

    .line 210
    const-string v2, "CanHmV70AcActivity"

    const-string v3, "UserAll Exit Ac"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/ts/can/hm/CanHmV70AcActivity;->mAutoFinish:Z

    .line 216
    .end local v0    # "curTick":J
    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x1

    const/16 v7, 0xff

    const/16 v4, 0x1c5

    const/16 v6, 0xb8

    const/16 v5, 0xf

    .line 74
    invoke-super {p0, p1}, Lcom/ts/can/CanBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    sget v1, Lcom/ts/MainUI/R$layout;->activity_can_hm_v70_ac:I

    invoke-virtual {p0, v1}, Lcom/ts/can/hm/CanHmV70AcActivity;->setContentView(I)V

    .line 77
    invoke-static {p0}, Lcom/ts/can/CanFunc;->IsCanActivityJumped(Landroid/app/Activity;)Z

    move-result v1

    sput-boolean v1, Lcom/ts/can/hm/CanHmV70AcActivity;->mfgJump:Z

    .line 79
    new-instance v1, Lcom/ts/other/RelativeLayoutManager;

    sget v2, Lcom/ts/MainUI/R$id;->can_hm_v70_ac_layout:I

    invoke-direct {v1, p0, v2}, Lcom/ts/other/RelativeLayoutManager;-><init>(Landroid/app/Activity;I)V

    iput-object v1, p0, Lcom/ts/can/hm/CanHmV70AcActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    .line 80
    const/16 v1, 0x4f

    invoke-direct {p0, v1, v5, v8}, Lcom/ts/can/hm/CanHmV70AcActivity;->AddBtn(III)Lcom/ts/other/ParamButton;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/hm/CanHmV70AcActivity;->mMode_Px:Lcom/ts/other/ParamButton;

    .line 81
    iget-object v1, p0, Lcom/ts/can/hm/CanHmV70AcActivity;->mMode_Px:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_haima_icon01_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_haima_icon01_dn:I

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 82
    const/4 v1, 0x2

    invoke-direct {p0, v7, v5, v1}, Lcom/ts/can/hm/CanHmV70AcActivity;->AddBtn(III)Lcom/ts/other/ParamButton;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/hm/CanHmV70AcActivity;->mMode_Pxj:Lcom/ts/other/ParamButton;

    .line 83
    iget-object v1, p0, Lcom/ts/can/hm/CanHmV70AcActivity;->mMode_Pxj:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_haima_icon02_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_haima_icon02_dn:I

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 84
    const/16 v1, 0x1af

    const/4 v2, 0x3

    invoke-direct {p0, v1, v5, v2}, Lcom/ts/can/hm/CanHmV70AcActivity;->AddBtn(III)Lcom/ts/other/ParamButton;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/hm/CanHmV70AcActivity;->mMode_jc:Lcom/ts/other/ParamButton;

    .line 85
    iget-object v1, p0, Lcom/ts/can/hm/CanHmV70AcActivity;->mMode_jc:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_haima_icon03_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_haima_icon03_dn:I

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 86
    const/16 v1, 0x26f

    const/4 v2, 0x4

    invoke-direct {p0, v1, v5, v2}, Lcom/ts/can/hm/CanHmV70AcActivity;->AddBtn(III)Lcom/ts/other/ParamButton;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/hm/CanHmV70AcActivity;->mMode_j:Lcom/ts/other/ParamButton;

    .line 87
    iget-object v1, p0, Lcom/ts/can/hm/CanHmV70AcActivity;->mMode_j:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_haima_icon04_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_haima_icon04_dn:I

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 88
    const/16 v1, 0x320

    const/4 v2, 0x5

    invoke-direct {p0, v1, v5, v2}, Lcom/ts/can/hm/CanHmV70AcActivity;->AddBtn(III)Lcom/ts/other/ParamButton;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/hm/CanHmV70AcActivity;->mMode_c:Lcom/ts/other/ParamButton;

    .line 89
    iget-object v1, p0, Lcom/ts/can/hm/CanHmV70AcActivity;->mMode_c:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_haima_icon05_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_haima_icon05_dn:I

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 90
    const/16 v1, 0x4f

    const/4 v2, 0x6

    invoke-direct {p0, v1, v4, v2}, Lcom/ts/can/hm/CanHmV70AcActivity;->AddBtn(III)Lcom/ts/other/ParamButton;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/hm/CanHmV70AcActivity;->mAcBut:Lcom/ts/other/ParamButton;

    .line 91
    iget-object v1, p0, Lcom/ts/can/hm/CanHmV70AcActivity;->mAcBut:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_haima_icon06_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_haima_icon06_dn:I

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 92
    const/4 v1, 0x7

    invoke-direct {p0, v7, v4, v1}, Lcom/ts/can/hm/CanHmV70AcActivity;->AddBtn(III)Lcom/ts/other/ParamButton;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/hm/CanHmV70AcActivity;->mXh:Lcom/ts/other/ParamButton;

    .line 93
    iget-object v1, p0, Lcom/ts/can/hm/CanHmV70AcActivity;->mXh:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_haima_icon08_dn:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_haima_icon07_dn:I

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 94
    const/16 v1, 0x1af

    const/16 v2, 0x8

    invoke-direct {p0, v1, v4, v2}, Lcom/ts/can/hm/CanHmV70AcActivity;->AddBtn(III)Lcom/ts/other/ParamButton;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/hm/CanHmV70AcActivity;->mACstate:Lcom/ts/other/ParamButton;

    .line 95
    iget-object v1, p0, Lcom/ts/can/hm/CanHmV70AcActivity;->mACstate:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_haima_icon09_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_haima_icon09_dn:I

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 96
    const/16 v1, 0x26f

    const/16 v2, 0x9

    invoke-direct {p0, v1, v4, v2}, Lcom/ts/can/hm/CanHmV70AcActivity;->AddBtn(III)Lcom/ts/other/ParamButton;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/hm/CanHmV70AcActivity;->mRac:Lcom/ts/other/ParamButton;

    .line 97
    iget-object v1, p0, Lcom/ts/can/hm/CanHmV70AcActivity;->mRac:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_haima_icon10_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_haima_icon10_dn:I

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 98
    const/16 v1, 0x320

    const/16 v2, 0xa

    invoke-direct {p0, v1, v4, v2}, Lcom/ts/can/hm/CanHmV70AcActivity;->AddBtn(III)Lcom/ts/other/ParamButton;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/hm/CanHmV70AcActivity;->mRc:Lcom/ts/other/ParamButton;

    .line 99
    iget-object v1, p0, Lcom/ts/can/hm/CanHmV70AcActivity;->mRc:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_haima_icon11_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_haima_icon11_dn:I

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 102
    const/16 v1, 0x1c

    const/16 v2, 0xb

    invoke-direct {p0, v1, v7, v2}, Lcom/ts/can/hm/CanHmV70AcActivity;->AddBtn(III)Lcom/ts/other/ParamButton;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/hm/CanHmV70AcActivity;->mTempDec:Lcom/ts/other/ParamButton;

    .line 103
    iget-object v1, p0, Lcom/ts/can/hm/CanHmV70AcActivity;->mTempDec:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_haima_jian_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_haima_jian_dn:I

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 104
    const/16 v1, 0x1d4

    const/16 v2, 0xc

    invoke-direct {p0, v1, v7, v2}, Lcom/ts/can/hm/CanHmV70AcActivity;->AddBtn(III)Lcom/ts/other/ParamButton;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/hm/CanHmV70AcActivity;->mTempInc:Lcom/ts/other/ParamButton;

    .line 105
    iget-object v1, p0, Lcom/ts/can/hm/CanHmV70AcActivity;->mTempInc:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_haima_jia_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_haima_jia_dn:I

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 107
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v5, :cond_0

    .line 126
    const/16 v1, 0x24a

    const/16 v2, 0x106

    const/16 v3, 0xd

    invoke-direct {p0, v1, v2, v3}, Lcom/ts/can/hm/CanHmV70AcActivity;->AddBtn(III)Lcom/ts/other/ParamButton;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/hm/CanHmV70AcActivity;->mWindDec:Lcom/ts/other/ParamButton;

    .line 127
    iget-object v1, p0, Lcom/ts/can/hm/CanHmV70AcActivity;->mWindDec:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_haima_xfs_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_haima_xfs_dn:I

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 128
    const/16 v1, 0x38a

    const/16 v2, 0x106

    const/16 v3, 0xe

    invoke-direct {p0, v1, v2, v3}, Lcom/ts/can/hm/CanHmV70AcActivity;->AddBtn(III)Lcom/ts/other/ParamButton;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/hm/CanHmV70AcActivity;->mWindInc:Lcom/ts/other/ParamButton;

    .line 129
    iget-object v1, p0, Lcom/ts/can/hm/CanHmV70AcActivity;->mWindInc:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_haima_dfs_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_haima_dfs_dn:I

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 131
    iget-object v1, p0, Lcom/ts/can/hm/CanHmV70AcActivity;->mImgWind:[Lcom/ts/other/CustomImgView;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/ts/can/hm/CanHmV70AcActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v4, 0x2a1

    invoke-virtual {v3, v4, v6}, Lcom/ts/other/RelativeLayoutManager;->AddImage(II)Lcom/ts/other/CustomImgView;

    move-result-object v3

    aput-object v3, v1, v2

    .line 132
    iget-object v1, p0, Lcom/ts/can/hm/CanHmV70AcActivity;->mImgWind:[Lcom/ts/other/CustomImgView;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    sget v2, Lcom/ts/MainUI/R$drawable;->can_haima_fl01_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_haima_fl01_dn:I

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/CustomImgView;->setStateDrawable(II)V

    .line 133
    iget-object v1, p0, Lcom/ts/can/hm/CanHmV70AcActivity;->mImgWind:[Lcom/ts/other/CustomImgView;

    iget-object v2, p0, Lcom/ts/can/hm/CanHmV70AcActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v3, 0x2c2

    invoke-virtual {v2, v3, v6}, Lcom/ts/other/RelativeLayoutManager;->AddImage(II)Lcom/ts/other/CustomImgView;

    move-result-object v2

    aput-object v2, v1, v8

    .line 134
    iget-object v1, p0, Lcom/ts/can/hm/CanHmV70AcActivity;->mImgWind:[Lcom/ts/other/CustomImgView;

    aget-object v1, v1, v8

    sget v2, Lcom/ts/MainUI/R$drawable;->can_haima_fl02_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_haima_fl02_dn:I

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/CustomImgView;->setStateDrawable(II)V

    .line 135
    iget-object v1, p0, Lcom/ts/can/hm/CanHmV70AcActivity;->mImgWind:[Lcom/ts/other/CustomImgView;

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/ts/can/hm/CanHmV70AcActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v4, 0x2e3

    invoke-virtual {v3, v4, v6}, Lcom/ts/other/RelativeLayoutManager;->AddImage(II)Lcom/ts/other/CustomImgView;

    move-result-object v3

    aput-object v3, v1, v2

    .line 136
    iget-object v1, p0, Lcom/ts/can/hm/CanHmV70AcActivity;->mImgWind:[Lcom/ts/other/CustomImgView;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    sget v2, Lcom/ts/MainUI/R$drawable;->can_haima_fl03_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_haima_fl03_dn:I

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/CustomImgView;->setStateDrawable(II)V

    .line 137
    iget-object v1, p0, Lcom/ts/can/hm/CanHmV70AcActivity;->mImgWind:[Lcom/ts/other/CustomImgView;

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/ts/can/hm/CanHmV70AcActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v4, 0x304

    invoke-virtual {v3, v4, v6}, Lcom/ts/other/RelativeLayoutManager;->AddImage(II)Lcom/ts/other/CustomImgView;

    move-result-object v3

    aput-object v3, v1, v2

    .line 138
    iget-object v1, p0, Lcom/ts/can/hm/CanHmV70AcActivity;->mImgWind:[Lcom/ts/other/CustomImgView;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    sget v2, Lcom/ts/MainUI/R$drawable;->can_haima_fl04_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_haima_fl04_dn:I

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/CustomImgView;->setStateDrawable(II)V

    .line 139
    iget-object v1, p0, Lcom/ts/can/hm/CanHmV70AcActivity;->mImgWind:[Lcom/ts/other/CustomImgView;

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/ts/can/hm/CanHmV70AcActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v4, 0x325

    invoke-virtual {v3, v4, v6}, Lcom/ts/other/RelativeLayoutManager;->AddImage(II)Lcom/ts/other/CustomImgView;

    move-result-object v3

    aput-object v3, v1, v2

    .line 140
    iget-object v1, p0, Lcom/ts/can/hm/CanHmV70AcActivity;->mImgWind:[Lcom/ts/other/CustomImgView;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    sget v2, Lcom/ts/MainUI/R$drawable;->can_haima_fl05_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_haima_fl05_dn:I

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/CustomImgView;->setStateDrawable(II)V

    .line 141
    iget-object v1, p0, Lcom/ts/can/hm/CanHmV70AcActivity;->mImgWind:[Lcom/ts/other/CustomImgView;

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/ts/can/hm/CanHmV70AcActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v4, 0x346

    invoke-virtual {v3, v4, v6}, Lcom/ts/other/RelativeLayoutManager;->AddImage(II)Lcom/ts/other/CustomImgView;

    move-result-object v3

    aput-object v3, v1, v2

    .line 142
    iget-object v1, p0, Lcom/ts/can/hm/CanHmV70AcActivity;->mImgWind:[Lcom/ts/other/CustomImgView;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    sget v2, Lcom/ts/MainUI/R$drawable;->can_haima_fl06_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_haima_fl06_dn:I

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/CustomImgView;->setStateDrawable(II)V

    .line 143
    iget-object v1, p0, Lcom/ts/can/hm/CanHmV70AcActivity;->mImgWind:[Lcom/ts/other/CustomImgView;

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/ts/can/hm/CanHmV70AcActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v4, 0x367

    invoke-virtual {v3, v4, v6}, Lcom/ts/other/RelativeLayoutManager;->AddImage(II)Lcom/ts/other/CustomImgView;

    move-result-object v3

    aput-object v3, v1, v2

    .line 144
    iget-object v1, p0, Lcom/ts/can/hm/CanHmV70AcActivity;->mImgWind:[Lcom/ts/other/CustomImgView;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    sget v2, Lcom/ts/MainUI/R$drawable;->can_haima_fl07_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_haima_fl07_dn:I

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/CustomImgView;->setStateDrawable(II)V

    .line 146
    const/16 v1, 0x38d

    const/16 v2, 0x7e

    invoke-direct {p0, v1, v2, v5}, Lcom/ts/can/hm/CanHmV70AcActivity;->AddBtn(III)Lcom/ts/other/ParamButton;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/hm/CanHmV70AcActivity;->mInfo:Lcom/ts/other/ParamButton;

    .line 147
    iget-object v1, p0, Lcom/ts/can/hm/CanHmV70AcActivity;->mInfo:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_haima_info_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_haima_info_dn:I

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 148
    return-void

    .line 109
    :cond_0
    if-nez v0, :cond_1

    .line 111
    iget-object v1, p0, Lcom/ts/can/hm/CanHmV70AcActivity;->mImgTemp:[Lcom/ts/other/CustomImgView;

    iget-object v2, p0, Lcom/ts/can/hm/CanHmV70AcActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v3, 0x82

    const/16 v4, 0xef

    invoke-virtual {v2, v3, v4}, Lcom/ts/other/RelativeLayoutManager;->AddImage(II)Lcom/ts/other/CustomImgView;

    move-result-object v2

    aput-object v2, v1, v0

    .line 112
    iget-object v1, p0, Lcom/ts/can/hm/CanHmV70AcActivity;->mImgTemp:[Lcom/ts/other/CustomImgView;

    aget-object v1, v1, v0

    sget v2, Lcom/ts/MainUI/R$drawable;->can_haima_tmp01_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_haima_tmp01_dn:I

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/CustomImgView;->setStateDrawable(II)V

    .line 107
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 114
    :cond_1
    const/16 v1, 0xe

    if-ne v0, v1, :cond_2

    .line 116
    iget-object v1, p0, Lcom/ts/can/hm/CanHmV70AcActivity;->mImgTemp:[Lcom/ts/other/CustomImgView;

    iget-object v2, p0, Lcom/ts/can/hm/CanHmV70AcActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v3, 0x1aa

    const/16 v4, 0xef

    invoke-virtual {v2, v3, v4}, Lcom/ts/other/RelativeLayoutManager;->AddImage(II)Lcom/ts/other/CustomImgView;

    move-result-object v2

    aput-object v2, v1, v0

    .line 117
    iget-object v1, p0, Lcom/ts/can/hm/CanHmV70AcActivity;->mImgTemp:[Lcom/ts/other/CustomImgView;

    aget-object v1, v1, v0

    sget v2, Lcom/ts/MainUI/R$drawable;->can_haima_tmp03_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_haima_tmp03_dn:I

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/CustomImgView;->setStateDrawable(II)V

    goto :goto_1

    .line 121
    :cond_2
    iget-object v1, p0, Lcom/ts/can/hm/CanHmV70AcActivity;->mImgTemp:[Lcom/ts/other/CustomImgView;

    iget-object v2, p0, Lcom/ts/can/hm/CanHmV70AcActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    add-int/lit8 v3, v0, -0x1

    mul-int/lit8 v3, v3, 0x15

    add-int/lit16 v3, v3, 0x99

    const/16 v4, 0xef

    invoke-virtual {v2, v3, v4}, Lcom/ts/other/RelativeLayoutManager;->AddImage(II)Lcom/ts/other/CustomImgView;

    move-result-object v2

    aput-object v2, v1, v0

    .line 122
    iget-object v1, p0, Lcom/ts/can/hm/CanHmV70AcActivity;->mImgTemp:[Lcom/ts/other/CustomImgView;

    aget-object v1, v1, v0

    sget v2, Lcom/ts/MainUI/R$drawable;->can_haima_tmp02_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_haima_tmp02_dn:I

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/CustomImgView;->setStateDrawable(II)V

    goto :goto_1
.end method

.method protected onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 165
    invoke-static {}, Lcom/lgb/canmodule/Can;->updateAC()Z

    .line 166
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 167
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onPause()V

    .line 168
    const-string v0, "CanHmV70AcActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "-----onPause----- mAutoFinish = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/ts/can/hm/CanHmV70AcActivity;->mAutoFinish:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    sget-boolean v0, Lcom/ts/can/CanFunc;->mfgShowAC:Z

    if-nez v0, :cond_1

    .line 173
    iget-boolean v0, p0, Lcom/ts/can/hm/CanHmV70AcActivity;->mAutoFinish:Z

    if-nez v0, :cond_0

    .line 175
    invoke-virtual {p0}, Lcom/ts/can/hm/CanHmV70AcActivity;->finish()V

    .line 176
    const-string v0, "CanHmV70AcActivity"

    const-string v1, "-----onPause finish-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_0
    sput-boolean v3, Lcom/ts/can/hm/CanHmV70AcActivity;->mfgJump:Z

    .line 179
    iput-boolean v3, p0, Lcom/ts/can/hm/CanHmV70AcActivity;->mAutoFinish:Z

    .line 182
    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 189
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onResume()V

    .line 190
    invoke-virtual {p0}, Lcom/ts/can/hm/CanHmV70AcActivity;->updateACUI()V

    .line 191
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 192
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ts/can/CanFunc;->mfgShowAC:Z

    .line 193
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v8, 0xa1

    const/16 v7, 0xa0

    const/16 v6, 0xa3

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 327
    sget-object v2, Lcom/lgb/canmodule/Can;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    .line 329
    .local v2, "mACInfo":Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 330
    .local v1, "action":I
    if-nez v1, :cond_5

    .line 333
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 334
    .local v0, "Id":I
    packed-switch v0, :pswitch_data_0

    .line 419
    :goto_0
    invoke-static {}, Lcom/ts/can/hm/CanHmV70AcActivity;->GetTickCount()J

    move-result-wide v3

    sput-wide v3, Lcom/ts/can/CanFunc;->mLastACTick:J

    .line 433
    .end local v0    # "Id":I
    :cond_0
    :goto_1
    return v5

    .line 337
    .restart local v0    # "Id":I
    :pswitch_0
    invoke-static {v6, v5}, Lcom/lgb/canmodule/CanJni;->HmV70CarSet(II)V

    goto :goto_0

    .line 340
    :pswitch_1
    invoke-static {v6, v4}, Lcom/lgb/canmodule/CanJni;->HmV70CarSet(II)V

    goto :goto_0

    .line 343
    :pswitch_2
    const/4 v3, 0x2

    invoke-static {v6, v3}, Lcom/lgb/canmodule/CanJni;->HmV70CarSet(II)V

    goto :goto_0

    .line 346
    :pswitch_3
    const/4 v3, 0x3

    invoke-static {v6, v3}, Lcom/lgb/canmodule/CanJni;->HmV70CarSet(II)V

    goto :goto_0

    .line 349
    :pswitch_4
    const/4 v3, 0x4

    invoke-static {v6, v3}, Lcom/lgb/canmodule/CanJni;->HmV70CarSet(II)V

    goto :goto_0

    .line 352
    :pswitch_5
    iget v3, v2, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgAC:I

    if-nez v3, :cond_1

    .line 354
    const/16 v3, 0xa4

    invoke-static {v3, v4}, Lcom/lgb/canmodule/CanJni;->HmV70CarSet(II)V

    goto :goto_0

    .line 358
    :cond_1
    const/16 v3, 0xa4

    invoke-static {v3, v5}, Lcom/lgb/canmodule/CanJni;->HmV70CarSet(II)V

    goto :goto_0

    .line 363
    :pswitch_6
    iget v3, v2, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgInnerLoop:I

    if-nez v3, :cond_2

    .line 365
    const/16 v3, 0xa5

    invoke-static {v3, v5}, Lcom/lgb/canmodule/CanJni;->HmV70CarSet(II)V

    goto :goto_0

    .line 369
    :cond_2
    const/16 v3, 0xa5

    invoke-static {v3, v4}, Lcom/lgb/canmodule/CanJni;->HmV70CarSet(II)V

    goto :goto_0

    .line 374
    :pswitch_7
    const/16 v3, 0xa8

    invoke-static {v3, v4}, Lcom/lgb/canmodule/CanJni;->HmV70CarSet(II)V

    goto :goto_0

    .line 378
    :pswitch_8
    iget v3, v2, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgRac:I

    if-nez v3, :cond_3

    .line 380
    const/16 v3, 0xa6

    invoke-static {v3, v4}, Lcom/lgb/canmodule/CanJni;->HmV70CarSet(II)V

    goto :goto_0

    .line 384
    :cond_3
    const/16 v3, 0xa6

    invoke-static {v3, v5}, Lcom/lgb/canmodule/CanJni;->HmV70CarSet(II)V

    goto :goto_0

    .line 389
    :pswitch_9
    iget v3, v2, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgRearLight:I

    if-nez v3, :cond_4

    .line 391
    const/16 v3, 0xa7

    invoke-static {v3, v4}, Lcom/lgb/canmodule/CanJni;->HmV70CarSet(II)V

    goto :goto_0

    .line 395
    :cond_4
    const/16 v3, 0xa7

    invoke-static {v3, v5}, Lcom/lgb/canmodule/CanJni;->HmV70CarSet(II)V

    goto :goto_0

    .line 400
    :pswitch_a
    invoke-static {v8, v5}, Lcom/lgb/canmodule/CanJni;->HmV70CarSet(II)V

    goto :goto_0

    .line 404
    :pswitch_b
    invoke-static {v8, v4}, Lcom/lgb/canmodule/CanJni;->HmV70CarSet(II)V

    goto :goto_0

    .line 408
    :pswitch_c
    invoke-static {v7, v5}, Lcom/lgb/canmodule/CanJni;->HmV70CarSet(II)V

    goto :goto_0

    .line 412
    :pswitch_d
    invoke-static {v7, v4}, Lcom/lgb/canmodule/CanJni;->HmV70CarSet(II)V

    goto :goto_0

    .line 416
    :pswitch_e
    const/16 v3, 0xb0

    invoke-static {v3, v4}, Lcom/lgb/canmodule/CanJni;->HmV70CarSet(II)V

    goto :goto_0

    .line 421
    .end local v0    # "Id":I
    :cond_5
    if-ne v4, v1, :cond_0

    .line 423
    const-string v3, "CanHmV70AcActivity"

    const-string v4, "****ACTION_UP*****"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 426
    .restart local v0    # "Id":I
    packed-switch v0, :pswitch_data_1

    goto/16 :goto_1

    .line 429
    :pswitch_f
    const/16 v3, 0xb0

    invoke-static {v3, v5}, Lcom/lgb/canmodule/CanJni;->HmV70CarSet(II)V

    goto/16 :goto_1

    .line 334
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
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch

    .line 426
    :pswitch_data_1
    .packed-switch 0xf
        :pswitch_f
    .end packed-switch
.end method

.method protected updateACUI()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 231
    sget-object v1, Lcom/lgb/canmodule/Can;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    .line 232
    .local v1, "mACInfo":Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;
    sget-object v3, Lcom/lgb/canmodule/Can;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iput v5, v3, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->Update:I

    .line 235
    iget-object v3, p0, Lcom/ts/can/hm/CanHmV70AcActivity;->mAcBut:Lcom/ts/other/ParamButton;

    iget v4, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgAC:I

    invoke-virtual {v3, v4}, Lcom/ts/other/ParamButton;->SetSel(I)V

    .line 236
    iget-object v3, p0, Lcom/ts/can/hm/CanHmV70AcActivity;->mXh:Lcom/ts/other/ParamButton;

    iget v4, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgInnerLoop:I

    invoke-virtual {v3, v4}, Lcom/ts/other/ParamButton;->SetSel(I)V

    .line 237
    iget-object v3, p0, Lcom/ts/can/hm/CanHmV70AcActivity;->mACstate:Lcom/ts/other/ParamButton;

    iget v4, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->PWR:I

    invoke-static {v4}, Lcom/ts/can/hm/CanHmV70AcActivity;->uint2Bool(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/ts/other/ParamButton;->SetSel(I)V

    .line 238
    iget-object v3, p0, Lcom/ts/can/hm/CanHmV70AcActivity;->mRac:Lcom/ts/other/ParamButton;

    iget v4, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgRac:I

    invoke-virtual {v3, v4}, Lcom/ts/other/ParamButton;->SetSel(I)V

    .line 239
    iget-object v3, p0, Lcom/ts/can/hm/CanHmV70AcActivity;->mRc:Lcom/ts/other/ParamButton;

    iget v4, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgRearLight:I

    invoke-virtual {v3, v4}, Lcom/ts/other/ParamButton;->SetSel(I)V

    .line 240
    iget-object v3, p0, Lcom/ts/can/hm/CanHmV70AcActivity;->mMode_c:Lcom/ts/other/ParamButton;

    iget v4, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgForeWindMode:I

    invoke-virtual {v3, v4}, Lcom/ts/other/ParamButton;->SetSel(I)V

    .line 242
    iget v3, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgParallelWind:I

    invoke-static {v3}, Lcom/ts/can/hm/CanHmV70AcActivity;->int2Bool(I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgDownWind:I

    invoke-static {v3}, Lcom/ts/can/hm/CanHmV70AcActivity;->int2Bool(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 244
    iget-object v3, p0, Lcom/ts/can/hm/CanHmV70AcActivity;->mMode_Pxj:Lcom/ts/other/ParamButton;

    invoke-virtual {v3, v6}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    .line 245
    iget-object v3, p0, Lcom/ts/can/hm/CanHmV70AcActivity;->mMode_jc:Lcom/ts/other/ParamButton;

    invoke-virtual {v3, v5}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    .line 246
    iget-object v3, p0, Lcom/ts/can/hm/CanHmV70AcActivity;->mMode_Px:Lcom/ts/other/ParamButton;

    invoke-virtual {v3, v5}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    .line 247
    iget-object v3, p0, Lcom/ts/can/hm/CanHmV70AcActivity;->mMode_j:Lcom/ts/other/ParamButton;

    invoke-virtual {v3, v5}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    .line 280
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v3, 0x7

    if-lt v0, v3, :cond_6

    .line 293
    const/4 v2, 0x0

    .line 294
    .local v2, "temp":I
    iget v3, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->nLeftTemp:I

    const/16 v4, 0x20

    if-lt v3, v4, :cond_8

    .line 296
    const/16 v2, 0x8

    .line 302
    :goto_2
    iget v3, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->nLeftTemp:I

    const/16 v4, 0x1f

    if-ne v3, v4, :cond_0

    .line 304
    const/16 v3, 0x24

    iput v3, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->nLeftTemp:I

    .line 306
    :cond_0
    iget v3, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->nLeftTemp:I

    const/4 v4, 0x4

    if-gt v3, v4, :cond_1

    .line 308
    const/4 v3, 0x5

    iput v3, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->nLeftTemp:I

    .line 310
    :cond_1
    const/4 v0, 0x0

    :goto_3
    const/16 v3, 0xf

    if-lt v0, v3, :cond_9

    .line 322
    return-void

    .line 250
    .end local v0    # "i":I
    .end local v2    # "temp":I
    :cond_2
    iget v3, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgUpWind:I

    invoke-static {v3}, Lcom/ts/can/hm/CanHmV70AcActivity;->int2Bool(I)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgDownWind:I

    invoke-static {v3}, Lcom/ts/can/hm/CanHmV70AcActivity;->int2Bool(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 252
    iget-object v3, p0, Lcom/ts/can/hm/CanHmV70AcActivity;->mMode_jc:Lcom/ts/other/ParamButton;

    invoke-virtual {v3, v6}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    .line 253
    iget-object v3, p0, Lcom/ts/can/hm/CanHmV70AcActivity;->mMode_Pxj:Lcom/ts/other/ParamButton;

    invoke-virtual {v3, v5}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    .line 254
    iget-object v3, p0, Lcom/ts/can/hm/CanHmV70AcActivity;->mMode_Px:Lcom/ts/other/ParamButton;

    invoke-virtual {v3, v5}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    .line 255
    iget-object v3, p0, Lcom/ts/can/hm/CanHmV70AcActivity;->mMode_j:Lcom/ts/other/ParamButton;

    invoke-virtual {v3, v5}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    goto :goto_0

    .line 257
    :cond_3
    iget v3, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgParallelWind:I

    invoke-static {v3}, Lcom/ts/can/hm/CanHmV70AcActivity;->int2Bool(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 259
    iget-object v3, p0, Lcom/ts/can/hm/CanHmV70AcActivity;->mMode_Px:Lcom/ts/other/ParamButton;

    invoke-virtual {v3, v6}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    .line 260
    iget-object v3, p0, Lcom/ts/can/hm/CanHmV70AcActivity;->mMode_Pxj:Lcom/ts/other/ParamButton;

    invoke-virtual {v3, v5}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    .line 261
    iget-object v3, p0, Lcom/ts/can/hm/CanHmV70AcActivity;->mMode_jc:Lcom/ts/other/ParamButton;

    invoke-virtual {v3, v5}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    .line 262
    iget-object v3, p0, Lcom/ts/can/hm/CanHmV70AcActivity;->mMode_j:Lcom/ts/other/ParamButton;

    invoke-virtual {v3, v5}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    goto :goto_0

    .line 264
    :cond_4
    iget v3, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgDownWind:I

    invoke-static {v3}, Lcom/ts/can/hm/CanHmV70AcActivity;->int2Bool(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 266
    iget-object v3, p0, Lcom/ts/can/hm/CanHmV70AcActivity;->mMode_j:Lcom/ts/other/ParamButton;

    invoke-virtual {v3, v6}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    .line 267
    iget-object v3, p0, Lcom/ts/can/hm/CanHmV70AcActivity;->mMode_Pxj:Lcom/ts/other/ParamButton;

    invoke-virtual {v3, v5}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    .line 268
    iget-object v3, p0, Lcom/ts/can/hm/CanHmV70AcActivity;->mMode_jc:Lcom/ts/other/ParamButton;

    invoke-virtual {v3, v5}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    .line 269
    iget-object v3, p0, Lcom/ts/can/hm/CanHmV70AcActivity;->mMode_Px:Lcom/ts/other/ParamButton;

    invoke-virtual {v3, v5}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    goto/16 :goto_0

    .line 273
    :cond_5
    iget-object v3, p0, Lcom/ts/can/hm/CanHmV70AcActivity;->mMode_Pxj:Lcom/ts/other/ParamButton;

    invoke-virtual {v3, v5}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    .line 274
    iget-object v3, p0, Lcom/ts/can/hm/CanHmV70AcActivity;->mMode_jc:Lcom/ts/other/ParamButton;

    invoke-virtual {v3, v5}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    .line 275
    iget-object v3, p0, Lcom/ts/can/hm/CanHmV70AcActivity;->mMode_Px:Lcom/ts/other/ParamButton;

    invoke-virtual {v3, v5}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    .line 276
    iget-object v3, p0, Lcom/ts/can/hm/CanHmV70AcActivity;->mMode_j:Lcom/ts/other/ParamButton;

    invoke-virtual {v3, v5}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    goto/16 :goto_0

    .line 282
    .restart local v0    # "i":I
    :cond_6
    iget v3, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->nWindValue:I

    if-ge v0, v3, :cond_7

    .line 284
    iget-object v3, p0, Lcom/ts/can/hm/CanHmV70AcActivity;->mImgWind:[Lcom/ts/other/CustomImgView;

    aget-object v3, v3, v0

    invoke-virtual {v3, v6}, Lcom/ts/other/CustomImgView;->setSelected(Z)V

    .line 280
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 288
    :cond_7
    iget-object v3, p0, Lcom/ts/can/hm/CanHmV70AcActivity;->mImgWind:[Lcom/ts/other/CustomImgView;

    aget-object v3, v3, v0

    invoke-virtual {v3, v5}, Lcom/ts/other/CustomImgView;->setSelected(Z)V

    goto :goto_4

    .line 300
    .restart local v2    # "temp":I
    :cond_8
    const/4 v2, 0x5

    goto/16 :goto_2

    .line 312
    :cond_9
    iget v3, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->nLeftTemp:I

    sub-int/2addr v3, v2

    div-int/lit8 v3, v3, 0x2

    if-gt v0, v3, :cond_a

    .line 314
    iget-object v3, p0, Lcom/ts/can/hm/CanHmV70AcActivity;->mImgTemp:[Lcom/ts/other/CustomImgView;

    aget-object v3, v3, v0

    invoke-virtual {v3, v6}, Lcom/ts/other/CustomImgView;->setSelected(Z)V

    .line 310
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3

    .line 318
    :cond_a
    iget-object v3, p0, Lcom/ts/can/hm/CanHmV70AcActivity;->mImgTemp:[Lcom/ts/other/CustomImgView;

    aget-object v3, v3, v0

    invoke-virtual {v3, v5}, Lcom/ts/other/CustomImgView;->setSelected(Z)V

    goto :goto_5
.end method
