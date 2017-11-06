.class public Lcom/ts/set/SettingSoundActivity;
.super Landroid/app/Activity;
.source "SettingSoundActivity.java"

# interfaces
.implements Lcom/ts/MainUI/UserCallBack;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/set/setview/SettingBalanceView$onTouchBalanceChanged;
.implements Lcom/ts/set/setview/SettingSeekBar$onTouchPosChanged;
.implements Lcom/ts/set/setview/SetSoundProgressList$onPosChange;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final SB_ID_BASE:I = 0x3e8

.field public static final SOUND_BAS:I = 0x0

.field public static final SOUND_MID:I = 0x1

.field public static final SOUND_TRE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SettingSoundActivity"

.field private static final TAG2:Ljava/lang/String; = "SettingBalanceActivity"

.field public static final id_balance:I = 0x50a

.field public static final id_class:I = 0x505

.field public static final id_flate:I = 0x501

.field public static final id_jazz:I = 0x504

.field public static final id_pop:I = 0x502

.field public static final id_rock:I = 0x503

.field public static final id_user:I = 0x500


# instance fields
.field private mBal:I

.field private mBalOld:I

.field private mBas:I

.field private mBkBot:I

.field private mBkRt:I

.field private mBkX:I

.field private mBkY:I

.field private mBtnCenter:Landroid/widget/Button;

.field private mBtnDn:Landroid/widget/Button;

.field private mBtnEQ:[Lcom/ts/other/ParamButton;

.field private mBtnLt:Landroid/widget/Button;

.field private mBtnRt:Landroid/widget/Button;

.field private mBtnUp:Landroid/widget/Button;

.field private mEQSbBas:Lcom/ts/set/setview/SetSoundProgressList;

.field private mEQSbMid:Lcom/ts/set/setview/SetSoundProgressList;

.field private mEQSbTre:Lcom/ts/set/setview/SetSoundProgressList;

.field private mEQStrId:[I

.field private mEQTitleId:[I

.field private mEvc:Lcom/ts/MainUI/Evc;

.field private mFad:I

.field private mFadOld:I

.field private mFbView:Lcom/ts/set/setview/SettingBalanceView;

.field private mLastX:I

.field private mLastY:I

.field public mLayoutInflater:Landroid/view/LayoutInflater;

.field private mLud:I

.field private mManager:Lcom/ts/other/RelativeLayoutManager;

.field private mMid:I

.field private mOldEqMode:I

.field private mRlLayout:Landroid/widget/RelativeLayout;

.field private mSub:I

.field private mSwExamp:Landroid/widget/Switch;

.field private mTre:I

.field private mTvLud:Landroid/widget/TextView;

.field private mTvSub:Landroid/widget/TextView;

.field private mTvSw:Landroid/widget/TextView;

.field topname:Lcom/ts/set/setview/SetMainItemTopName;


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 47
    invoke-static {}, Lcom/ts/MainUI/Evc;->GetInstance()Lcom/ts/MainUI/Evc;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/set/SettingSoundActivity;->mEvc:Lcom/ts/MainUI/Evc;

    .line 53
    new-array v0, v6, [Lcom/ts/other/ParamButton;

    iput-object v0, p0, Lcom/ts/set/SettingSoundActivity;->mBtnEQ:[Lcom/ts/other/ParamButton;

    .line 58
    new-array v0, v5, [I

    .line 59
    sget v1, Lcom/ts/MainUI/R$string;->set_general_sound_min:I

    aput v1, v0, v2

    .line 60
    sget v1, Lcom/ts/MainUI/R$string;->set_general_sound_mid:I

    aput v1, v0, v3

    .line 61
    sget v1, Lcom/ts/MainUI/R$string;->set_general_sound_high:I

    aput v1, v0, v4

    iput-object v0, p0, Lcom/ts/set/SettingSoundActivity;->mEQTitleId:[I

    .line 70
    new-array v0, v6, [I

    .line 71
    sget v1, Lcom/ts/MainUI/R$string;->set_sound_user:I

    aput v1, v0, v2

    .line 72
    sget v1, Lcom/ts/MainUI/R$string;->set_sound_flate:I

    aput v1, v0, v3

    .line 73
    sget v1, Lcom/ts/MainUI/R$string;->set_sound_pop:I

    aput v1, v0, v4

    .line 74
    sget v1, Lcom/ts/MainUI/R$string;->set_sound_rock:I

    aput v1, v0, v5

    const/4 v1, 0x4

    .line 75
    sget v2, Lcom/ts/MainUI/R$string;->set_sound_jazz:I

    aput v2, v0, v1

    const/4 v1, 0x5

    .line 76
    sget v2, Lcom/ts/MainUI/R$string;->set_sound_class:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/ts/set/SettingSoundActivity;->mEQStrId:[I

    .line 36
    return-void
.end method

.method private ResetData()V
    .locals 8

    .prologue
    const/4 v7, 0x6

    .line 130
    iget v5, p0, Lcom/ts/set/SettingSoundActivity;->mOldEqMode:I

    invoke-static {}, Lcom/yyw/ts70xhw/Iop;->GetEqm()I

    move-result v6

    if-eq v5, v6, :cond_0

    .line 132
    invoke-static {}, Lcom/yyw/ts70xhw/Iop;->GetEqm()I

    move-result v5

    iput v5, p0, Lcom/ts/set/SettingSoundActivity;->mOldEqMode:I

    .line 133
    invoke-static {}, Lcom/yyw/ts70xhw/Iop;->GetEqm()I

    move-result v4

    .line 134
    .local v4, "mode":I
    if-ge v4, v7, :cond_0

    .line 137
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-lt v3, v7, :cond_3

    .line 141
    iget-object v5, p0, Lcom/ts/set/SettingSoundActivity;->mBtnEQ:[Lcom/ts/other/ParamButton;

    aget-object v5, v5, v4

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    .line 148
    .end local v3    # "i":I
    .end local v4    # "mode":I
    :cond_0
    invoke-static {}, Lcom/yyw/ts70xhw/Iop;->GetBas()I

    move-result v0

    .line 149
    .local v0, "curBas":I
    invoke-static {}, Lcom/yyw/ts70xhw/Iop;->GetMid()I

    move-result v1

    .line 150
    .local v1, "curMid":I
    invoke-static {}, Lcom/yyw/ts70xhw/Iop;->GetTre()I

    move-result v2

    .line 152
    .local v2, "curTre":I
    iget v5, p0, Lcom/ts/set/SettingSoundActivity;->mBas:I

    if-ne v5, v0, :cond_1

    iget v5, p0, Lcom/ts/set/SettingSoundActivity;->mMid:I

    if-ne v5, v1, :cond_1

    iget v5, p0, Lcom/ts/set/SettingSoundActivity;->mTre:I

    if-eq v5, v2, :cond_2

    .line 153
    :cond_1
    iput v0, p0, Lcom/ts/set/SettingSoundActivity;->mBas:I

    .line 154
    iput v1, p0, Lcom/ts/set/SettingSoundActivity;->mMid:I

    .line 155
    iput v2, p0, Lcom/ts/set/SettingSoundActivity;->mTre:I

    .line 156
    iget-object v5, p0, Lcom/ts/set/SettingSoundActivity;->mEQSbBas:Lcom/ts/set/setview/SetSoundProgressList;

    iget v6, p0, Lcom/ts/set/SettingSoundActivity;->mBas:I

    invoke-virtual {v5, v6}, Lcom/ts/set/setview/SetSoundProgressList;->SetCurVal(I)V

    .line 157
    iget-object v5, p0, Lcom/ts/set/SettingSoundActivity;->mEQSbMid:Lcom/ts/set/setview/SetSoundProgressList;

    iget v6, p0, Lcom/ts/set/SettingSoundActivity;->mMid:I

    invoke-virtual {v5, v6}, Lcom/ts/set/setview/SetSoundProgressList;->SetCurVal(I)V

    .line 158
    iget-object v5, p0, Lcom/ts/set/SettingSoundActivity;->mEQSbTre:Lcom/ts/set/setview/SetSoundProgressList;

    iget v6, p0, Lcom/ts/set/SettingSoundActivity;->mTre:I

    invoke-virtual {v5, v6}, Lcom/ts/set/setview/SetSoundProgressList;->SetCurVal(I)V

    .line 162
    :cond_2
    invoke-virtual {p0}, Lcom/ts/set/SettingSoundActivity;->resetFb()V

    .line 163
    invoke-virtual {p0}, Lcom/ts/set/SettingSoundActivity;->resetLud()V

    .line 164
    invoke-virtual {p0}, Lcom/ts/set/SettingSoundActivity;->resetSub()V

    .line 165
    return-void

    .line 139
    .end local v0    # "curBas":I
    .end local v1    # "curMid":I
    .end local v2    # "curTre":I
    .restart local v3    # "i":I
    .restart local v4    # "mode":I
    :cond_3
    iget-object v5, p0, Lcom/ts/set/SettingSoundActivity;->mBtnEQ:[Lcom/ts/other/ParamButton;

    aget-object v5, v5, v3

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    .line 137
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private SetCheck(Landroid/widget/Switch;I)V
    .locals 4
    .param p1, "sw"    # Landroid/widget/Switch;
    .param p2, "val"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 169
    if-eqz p2, :cond_0

    .line 172
    invoke-virtual {p1, v3}, Landroid/widget/Switch;->setSelected(Z)V

    .line 173
    invoke-virtual {p1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 174
    sget v2, Lcom/ts/MainUI/R$drawable;->setup_switch_dn:I

    invoke-virtual {p1, v2}, Landroid/widget/Switch;->setThumbResource(I)V

    .line 175
    sget v2, Lcom/ts/MainUI/R$drawable;->setup_switch_track_dn:I

    invoke-virtual {p1, v2}, Landroid/widget/Switch;->setTrackResource(I)V

    .line 176
    invoke-virtual {p0}, Lcom/ts/set/SettingSoundActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/ts/MainUI/R$string;->set_common_switch_on:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 177
    .local v1, "mSwon":Ljava/lang/String;
    iget-object v2, p0, Lcom/ts/set/SettingSoundActivity;->mTvSw:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    .end local v1    # "mSwon":Ljava/lang/String;
    :goto_0
    return-void

    .line 182
    :cond_0
    invoke-virtual {p1, v2}, Landroid/widget/Switch;->setSelected(Z)V

    .line 183
    invoke-virtual {p1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 184
    sget v2, Lcom/ts/MainUI/R$drawable;->setup_switch_up:I

    invoke-virtual {p1, v2}, Landroid/widget/Switch;->setThumbResource(I)V

    .line 185
    sget v2, Lcom/ts/MainUI/R$drawable;->setup_switch_track_up:I

    invoke-virtual {p1, v2}, Landroid/widget/Switch;->setTrackResource(I)V

    .line 186
    invoke-virtual {p0}, Lcom/ts/set/SettingSoundActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/ts/MainUI/R$string;->set_common_switch_off:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, "mSwoff":Ljava/lang/String;
    iget-object v2, p0, Lcom/ts/set/SettingSoundActivity;->mTvSw:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/ts/set/SettingSoundActivity;)Landroid/widget/Switch;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/ts/set/SettingSoundActivity;->mSwExamp:Landroid/widget/Switch;

    return-object v0
.end method

.method private numApproach(II)I
    .locals 2
    .param p1, "des"    # I
    .param p2, "cal"    # I

    .prologue
    .line 331
    move v0, p2

    .line 332
    .local v0, "src":I
    const/4 v1, 0x1

    .line 333
    .local v1, "step":I
    if-eq p1, v0, :cond_0

    .line 337
    if-ge v0, p1, :cond_1

    .line 339
    add-int/2addr v0, v1

    .line 347
    :cond_0
    :goto_0
    return v0

    .line 343
    :cond_1
    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method private resetData()V
    .locals 2

    .prologue
    .line 469
    iget-object v0, p0, Lcom/ts/set/SettingSoundActivity;->mSwExamp:Landroid/widget/Switch;

    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetExAmp()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/ts/set/SettingSoundActivity;->SetCheck(Landroid/widget/Switch;I)V

    .line 470
    invoke-virtual {p0}, Lcom/ts/set/SettingSoundActivity;->resetFb()V

    .line 471
    invoke-virtual {p0}, Lcom/ts/set/SettingSoundActivity;->resetLud()V

    .line 472
    invoke-virtual {p0}, Lcom/ts/set/SettingSoundActivity;->resetSub()V

    .line 473
    return-void
.end method


# virtual methods
.method protected InitUI()V
    .locals 12

    .prologue
    .line 215
    new-instance v0, Lcom/ts/other/RelativeLayoutManager;

    sget v1, Lcom/ts/MainUI/R$id;->set_relative_layout:I

    invoke-direct {v0, p0, v1}, Lcom/ts/other/RelativeLayoutManager;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/ts/set/SettingSoundActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    .line 217
    invoke-virtual {p0}, Lcom/ts/set/SettingSoundActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/ts/MainUI/R$array;->set_main_options:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    aget-object v10, v0, v1

    .line 218
    .local v10, "name":Ljava/lang/String;
    new-instance v0, Lcom/ts/set/setview/SetMainItemTopName;

    invoke-direct {v0, p0, v10}, Lcom/ts/set/setview/SetMainItemTopName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ts/set/SettingSoundActivity;->topname:Lcom/ts/set/setview/SetMainItemTopName;

    .line 219
    iget-object v0, p0, Lcom/ts/set/SettingSoundActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    iget-object v1, p0, Lcom/ts/set/SettingSoundActivity;->topname:Lcom/ts/set/setview/SetMainItemTopName;

    invoke-virtual {v1}, Lcom/ts/set/setview/SetMainItemTopName;->GetView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x400

    const/16 v5, 0x4b

    invoke-virtual/range {v0 .. v5}, Lcom/ts/other/RelativeLayoutManager;->AddView(Landroid/view/View;IIII)V

    .line 220
    iget-object v0, p0, Lcom/ts/set/SettingSoundActivity;->topname:Lcom/ts/set/setview/SetMainItemTopName;

    iget-object v0, v0, Lcom/ts/set/setview/SetMainItemTopName;->iv:Landroid/widget/Button;

    new-instance v1, Lcom/ts/set/SettingSoundActivity$1;

    invoke-direct {v1, p0}, Lcom/ts/set/SettingSoundActivity$1;-><init>(Lcom/ts/set/SettingSoundActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    invoke-virtual {p0}, Lcom/ts/set/SettingSoundActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/ts/MainUI/R$string;->set_general_sound_min:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 234
    .local v7, "mEQSbBasName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/ts/set/SettingSoundActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/ts/MainUI/R$string;->set_general_sound_mid:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 235
    .local v8, "mEQSbMidName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/ts/set/SettingSoundActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/ts/MainUI/R$string;->set_general_sound_high:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 237
    .local v9, "mEQSbTreName":Ljava/lang/String;
    new-instance v0, Lcom/ts/set/setview/SetSoundProgressList;

    invoke-direct {v0, p0, v7}, Lcom/ts/set/setview/SetSoundProgressList;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ts/set/SettingSoundActivity;->mEQSbBas:Lcom/ts/set/setview/SetSoundProgressList;

    .line 238
    iget-object v0, p0, Lcom/ts/set/SettingSoundActivity;->mEQSbBas:Lcom/ts/set/setview/SetSoundProgressList;

    const/4 v1, 0x0

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2}, Lcom/ts/set/setview/SetSoundProgressList;->SetMinMax(II)V

    .line 239
    iget-object v0, p0, Lcom/ts/set/SettingSoundActivity;->mEQSbBas:Lcom/ts/set/setview/SetSoundProgressList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/ts/set/setview/SetSoundProgressList;->SetIdCallBack(ILcom/ts/set/setview/SetSoundProgressList$onPosChange;)V

    .line 240
    new-instance v0, Lcom/ts/set/setview/SetSoundProgressList;

    invoke-direct {v0, p0, v8}, Lcom/ts/set/setview/SetSoundProgressList;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ts/set/SettingSoundActivity;->mEQSbMid:Lcom/ts/set/setview/SetSoundProgressList;

    .line 241
    iget-object v0, p0, Lcom/ts/set/SettingSoundActivity;->mEQSbMid:Lcom/ts/set/setview/SetSoundProgressList;

    const/4 v1, 0x0

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2}, Lcom/ts/set/setview/SetSoundProgressList;->SetMinMax(II)V

    .line 242
    iget-object v0, p0, Lcom/ts/set/SettingSoundActivity;->mEQSbMid:Lcom/ts/set/setview/SetSoundProgressList;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Lcom/ts/set/setview/SetSoundProgressList;->SetIdCallBack(ILcom/ts/set/setview/SetSoundProgressList$onPosChange;)V

    .line 243
    new-instance v0, Lcom/ts/set/setview/SetSoundProgressList;

    invoke-direct {v0, p0, v9}, Lcom/ts/set/setview/SetSoundProgressList;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ts/set/SettingSoundActivity;->mEQSbTre:Lcom/ts/set/setview/SetSoundProgressList;

    .line 244
    iget-object v0, p0, Lcom/ts/set/SettingSoundActivity;->mEQSbTre:Lcom/ts/set/setview/SetSoundProgressList;

    const/4 v1, 0x0

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2}, Lcom/ts/set/setview/SetSoundProgressList;->SetMinMax(II)V

    .line 245
    iget-object v0, p0, Lcom/ts/set/SettingSoundActivity;->mEQSbTre:Lcom/ts/set/setview/SetSoundProgressList;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p0}, Lcom/ts/set/setview/SetSoundProgressList;->SetIdCallBack(ILcom/ts/set/setview/SetSoundProgressList$onPosChange;)V

    .line 247
    invoke-static {}, Lcom/yyw/ts70xhw/Iop;->GetBas()I

    move-result v0

    iput v0, p0, Lcom/ts/set/SettingSoundActivity;->mBas:I

    .line 248
    invoke-static {}, Lcom/yyw/ts70xhw/Iop;->GetMid()I

    move-result v0

    iput v0, p0, Lcom/ts/set/SettingSoundActivity;->mMid:I

    .line 249
    invoke-static {}, Lcom/yyw/ts70xhw/Iop;->GetTre()I

    move-result v0

    iput v0, p0, Lcom/ts/set/SettingSoundActivity;->mTre:I

    .line 250
    iget-object v0, p0, Lcom/ts/set/SettingSoundActivity;->mEQSbBas:Lcom/ts/set/setview/SetSoundProgressList;

    iget v1, p0, Lcom/ts/set/SettingSoundActivity;->mBas:I

    invoke-virtual {v0, v1}, Lcom/ts/set/setview/SetSoundProgressList;->SetCurVal(I)V

    .line 251
    iget-object v0, p0, Lcom/ts/set/SettingSoundActivity;->mEQSbMid:Lcom/ts/set/setview/SetSoundProgressList;

    iget v1, p0, Lcom/ts/set/SettingSoundActivity;->mMid:I

    invoke-virtual {v0, v1}, Lcom/ts/set/setview/SetSoundProgressList;->SetCurVal(I)V

    .line 252
    iget-object v0, p0, Lcom/ts/set/SettingSoundActivity;->mEQSbTre:Lcom/ts/set/setview/SetSoundProgressList;

    iget v1, p0, Lcom/ts/set/SettingSoundActivity;->mTre:I

    invoke-virtual {v0, v1}, Lcom/ts/set/setview/SetSoundProgressList;->SetCurVal(I)V

    .line 253
    iget-object v0, p0, Lcom/ts/set/SettingSoundActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    iget-object v1, p0, Lcom/ts/set/SettingSoundActivity;->mEQSbBas:Lcom/ts/set/setview/SetSoundProgressList;

    invoke-virtual {v1}, Lcom/ts/set/setview/SetSoundProgressList;->GetView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x1db

    const/16 v3, 0xbd

    const/16 v4, 0x1f4

    const/16 v5, 0x33

    invoke-virtual/range {v0 .. v5}, Lcom/ts/other/RelativeLayoutManager;->AddView(Landroid/view/View;IIII)V

    .line 254
    iget-object v0, p0, Lcom/ts/set/SettingSoundActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    iget-object v1, p0, Lcom/ts/set/SettingSoundActivity;->mEQSbMid:Lcom/ts/set/setview/SetSoundProgressList;

    invoke-virtual {v1}, Lcom/ts/set/setview/SetSoundProgressList;->GetView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x1db

    const/16 v3, 0x10c

    const/16 v4, 0x1f4

    const/16 v5, 0x33

    invoke-virtual/range {v0 .. v5}, Lcom/ts/other/RelativeLayoutManager;->AddView(Landroid/view/View;IIII)V

    .line 255
    iget-object v0, p0, Lcom/ts/set/SettingSoundActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    iget-object v1, p0, Lcom/ts/set/SettingSoundActivity;->mEQSbTre:Lcom/ts/set/setview/SetSoundProgressList;

    invoke-virtual {v1}, Lcom/ts/set/setview/SetSoundProgressList;->GetView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x1db

    const/16 v3, 0x159

    const/16 v4, 0x1f4

    const/16 v5, 0x33

    invoke-virtual/range {v0 .. v5}, Lcom/ts/other/RelativeLayoutManager;->AddView(Landroid/view/View;IIII)V

    .line 264
    sget v0, Lcom/ts/MainUI/R$id;->set_balance_btn_center1:I

    invoke-virtual {p0, v0}, Lcom/ts/set/SettingSoundActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ts/set/SettingSoundActivity;->mBtnCenter:Landroid/widget/Button;

    .line 266
    sget v0, Lcom/ts/MainUI/R$id;->setting_balance_btn_up:I

    invoke-virtual {p0, v0}, Lcom/ts/set/SettingSoundActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ts/set/SettingSoundActivity;->mBtnUp:Landroid/widget/Button;

    .line 267
    sget v0, Lcom/ts/MainUI/R$id;->setting_balance_btn_down:I

    invoke-virtual {p0, v0}, Lcom/ts/set/SettingSoundActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ts/set/SettingSoundActivity;->mBtnDn:Landroid/widget/Button;

    .line 268
    sget v0, Lcom/ts/MainUI/R$id;->setting_balance_btn_left:I

    invoke-virtual {p0, v0}, Lcom/ts/set/SettingSoundActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ts/set/SettingSoundActivity;->mBtnLt:Landroid/widget/Button;

    .line 269
    sget v0, Lcom/ts/MainUI/R$id;->setting_balance_btn_right:I

    invoke-virtual {p0, v0}, Lcom/ts/set/SettingSoundActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ts/set/SettingSoundActivity;->mBtnRt:Landroid/widget/Button;

    .line 270
    sget v0, Lcom/ts/MainUI/R$id;->switch_ctrl2:I

    invoke-virtual {p0, v0}, Lcom/ts/set/SettingSoundActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/ts/set/SettingSoundActivity;->mSwExamp:Landroid/widget/Switch;

    .line 271
    iget-object v0, p0, Lcom/ts/set/SettingSoundActivity;->mSwExamp:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 272
    iget-object v0, p0, Lcom/ts/set/SettingSoundActivity;->mSwExamp:Landroid/widget/Switch;

    new-instance v1, Lcom/ts/set/SettingSoundActivity$2;

    invoke-direct {v1, p0}, Lcom/ts/set/SettingSoundActivity$2;-><init>(Lcom/ts/set/SettingSoundActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 283
    sget v0, Lcom/ts/MainUI/R$id;->set_tv_switch2:I

    invoke-virtual {p0, v0}, Lcom/ts/set/SettingSoundActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ts/set/SettingSoundActivity;->mTvSw:Landroid/widget/TextView;

    .line 285
    sget v0, Lcom/ts/MainUI/R$id;->switch_value2:I

    invoke-virtual {p0, v0}, Lcom/ts/set/SettingSoundActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 286
    .local v11, "tv2":Landroid/widget/TextView;
    sget v0, Lcom/ts/MainUI/R$string;->set_balance_examp:I

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(I)V

    .line 288
    sget v0, Lcom/ts/MainUI/R$id;->setting_balance_img_seat:I

    invoke-virtual {p0, v0}, Lcom/ts/set/SettingSoundActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ts/set/setview/SettingBalanceView;

    iput-object v0, p0, Lcom/ts/set/SettingSoundActivity;->mFbView:Lcom/ts/set/setview/SettingBalanceView;

    .line 289
    iget-object v0, p0, Lcom/ts/set/SettingSoundActivity;->mFbView:Lcom/ts/set/setview/SettingBalanceView;

    invoke-virtual {v0, p0}, Lcom/ts/set/setview/SettingBalanceView;->setBalanceChangedListener(Lcom/ts/set/setview/SettingBalanceView$onTouchBalanceChanged;)V

    .line 291
    iget-object v0, p0, Lcom/ts/set/SettingSoundActivity;->mBtnUp:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 292
    iget-object v0, p0, Lcom/ts/set/SettingSoundActivity;->mBtnDn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    iget-object v0, p0, Lcom/ts/set/SettingSoundActivity;->mBtnLt:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 294
    iget-object v0, p0, Lcom/ts/set/SettingSoundActivity;->mBtnRt:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 297
    iget-object v0, p0, Lcom/ts/set/SettingSoundActivity;->mBtnCenter:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 299
    invoke-virtual {p0}, Lcom/ts/set/SettingSoundActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/ts/MainUI/R$dimen;->x_setting_balance_seat:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/ts/set/SettingSoundActivity;->mBkX:I

    .line 300
    invoke-virtual {p0}, Lcom/ts/set/SettingSoundActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/ts/MainUI/R$dimen;->y_setting_balance_seat:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/ts/set/SettingSoundActivity;->mBkY:I

    .line 301
    iget v0, p0, Lcom/ts/set/SettingSoundActivity;->mBkX:I

    add-int/lit16 v0, v0, 0xfc

    iput v0, p0, Lcom/ts/set/SettingSoundActivity;->mBkRt:I

    .line 302
    iget v0, p0, Lcom/ts/set/SettingSoundActivity;->mBkY:I

    add-int/lit16 v0, v0, 0xfc

    iput v0, p0, Lcom/ts/set/SettingSoundActivity;->mBkBot:I

    .line 307
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget-object v0, p0, Lcom/ts/set/SettingSoundActivity;->mBtnEQ:[Lcom/ts/other/ParamButton;

    array-length v0, v0

    if-lt v6, v0, :cond_0

    .line 327
    return-void

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/ts/set/SettingSoundActivity;->mBtnEQ:[Lcom/ts/other/ParamButton;

    iget-object v1, p0, Lcom/ts/set/SettingSoundActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    mul-int/lit16 v2, v6, 0xaa

    add-int/lit8 v2, v2, 0x2

    const/16 v3, 0x4b

    const/16 v4, 0xaa

    const/16 v5, 0x41

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/ts/other/RelativeLayoutManager;->AddButton(IIII)Lcom/ts/other/ParamButton;

    move-result-object v1

    aput-object v1, v0, v6

    .line 310
    iget-object v0, p0, Lcom/ts/set/SettingSoundActivity;->mBtnEQ:[Lcom/ts/other/ParamButton;

    aget-object v0, v0, v6

    sget v1, Lcom/ts/MainUI/R$drawable;->setup_eq_mode_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->setup_eq_mode_dn:I

    sget v3, Lcom/ts/MainUI/R$drawable;->setup_eq_mode_dn:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/ts/other/ParamButton;->setStateDrawable(III)V

    .line 312
    iget-object v0, p0, Lcom/ts/set/SettingSoundActivity;->mBtnEQ:[Lcom/ts/other/ParamButton;

    aget-object v0, v0, v6

    add-int/lit16 v1, v6, 0x500

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setId(I)V

    .line 313
    iget-object v0, p0, Lcom/ts/set/SettingSoundActivity;->mBtnEQ:[Lcom/ts/other/ParamButton;

    aget-object v0, v0, v6

    iget-object v1, p0, Lcom/ts/set/SettingSoundActivity;->mEQStrId:[I

    aget v1, v1, v6

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setText(I)V

    .line 314
    iget-object v0, p0, Lcom/ts/set/SettingSoundActivity;->mBtnEQ:[Lcom/ts/other/ParamButton;

    aget-object v0, v0, v6

    invoke-virtual {v0, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 315
    iget-object v0, p0, Lcom/ts/set/SettingSoundActivity;->mBtnEQ:[Lcom/ts/other/ParamButton;

    aget-object v0, v0, v6

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setTextColor(I)V

    .line 316
    iget-object v0, p0, Lcom/ts/set/SettingSoundActivity;->mBtnEQ:[Lcom/ts/other/ParamButton;

    aget-object v0, v0, v6

    const/4 v1, 0x0

    const/high16 v2, 0x41d80000    # 27.0f

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/ParamButton;->setTextSize(IF)V

    .line 317
    iget-object v0, p0, Lcom/ts/set/SettingSoundActivity;->mBtnEQ:[Lcom/ts/other/ParamButton;

    aget-object v0, v0, v6

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setSingleLine(Z)V

    .line 318
    iget-object v0, p0, Lcom/ts/set/SettingSoundActivity;->mBtnEQ:[Lcom/ts/other/ParamButton;

    aget-object v0, v0, v6

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 307
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method public UserAll()V
    .locals 0

    .prologue
    .line 358
    invoke-direct {p0}, Lcom/ts/set/SettingSoundActivity;->ResetData()V

    .line 363
    return-void
.end method

.method enterSubWin(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 442
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 443
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 444
    invoke-virtual {p0, v0}, Lcom/ts/set/SettingSoundActivity;->startActivity(Landroid/content/Intent;)V

    .line 446
    return-void
.end method

.method public onChanged(II)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "pos"    # I

    .prologue
    .line 508
    packed-switch p1, :pswitch_data_0

    .line 523
    :goto_0
    return-void

    .line 511
    :pswitch_0
    invoke-static {p2}, Lcom/yyw/ts70xhw/Iop;->BasSet(I)I

    goto :goto_0

    .line 515
    :pswitch_1
    invoke-static {p2}, Lcom/yyw/ts70xhw/Iop;->MidSet(I)I

    goto :goto_0

    .line 519
    :pswitch_2
    invoke-static {p2}, Lcom/yyw/ts70xhw/Iop;->TreSet(I)I

    goto :goto_0

    .line 508
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onChanged(Landroid/view/View;I)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "pos"    # I

    .prologue
    .line 503
    return-void
.end method

.method public onChanged(Landroid/view/View;II)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "fad"    # I
    .param p3, "bal"    # I

    .prologue
    .line 493
    invoke-static {p2}, Lcom/yyw/ts70xhw/Iop;->FadSet(I)I

    .line 494
    invoke-static {p3}, Lcom/yyw/ts70xhw/Iop;->BalSet(I)I

    .line 495
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 528
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    .line 529
    .local v0, "id":I
    sget v1, Lcom/ts/MainUI/R$id;->switch_ctrl2:I

    if-ne v0, v1, :cond_0

    .line 531
    if-eqz p2, :cond_1

    .line 533
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/yyw/ts70xhw/FtSet;->SetExAmp(I)I

    .line 541
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/ts/set/SettingSoundActivity;->mSwExamp:Landroid/widget/Switch;

    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetExAmp()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/ts/set/SettingSoundActivity;->SetCheck(Landroid/widget/Switch;I)V

    .line 542
    return-void

    .line 537
    :cond_1
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/yyw/ts70xhw/FtSet;->SetExAmp(I)I

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x7

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 370
    const/4 v1, 0x0

    .line 371
    .local v1, "val":I
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 372
    .local v0, "id":I
    sget v2, Lcom/ts/MainUI/R$id;->set_balance_btn_center1:I

    if-ne v0, v2, :cond_1

    .line 374
    invoke-static {v5}, Lcom/yyw/ts70xhw/Iop;->BalSet(I)I

    .line 375
    invoke-static {v5}, Lcom/yyw/ts70xhw/Iop;->FadSet(I)I

    .line 395
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/ts/set/SettingSoundActivity;->resetFb()V

    .line 398
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 426
    :goto_1
    invoke-direct {p0}, Lcom/ts/set/SettingSoundActivity;->ResetData()V

    .line 428
    return-void

    .line 378
    :cond_1
    sget v2, Lcom/ts/MainUI/R$id;->setting_balance_btn_up:I

    if-ne v0, v2, :cond_2

    .line 380
    invoke-static {v3}, Lcom/yyw/ts70xhw/Iop;->FadAdj(I)I

    goto :goto_0

    .line 382
    :cond_2
    sget v2, Lcom/ts/MainUI/R$id;->setting_balance_btn_down:I

    if-ne v0, v2, :cond_3

    .line 384
    invoke-static {v4}, Lcom/yyw/ts70xhw/Iop;->FadAdj(I)I

    goto :goto_0

    .line 386
    :cond_3
    sget v2, Lcom/ts/MainUI/R$id;->setting_balance_btn_left:I

    if-ne v0, v2, :cond_4

    .line 388
    invoke-static {v3}, Lcom/yyw/ts70xhw/Iop;->BalAdj(I)I

    goto :goto_0

    .line 390
    :cond_4
    sget v2, Lcom/ts/MainUI/R$id;->setting_balance_btn_right:I

    if-ne v0, v2, :cond_0

    .line 392
    invoke-static {v4}, Lcom/yyw/ts70xhw/Iop;->BalAdj(I)I

    goto :goto_0

    .line 401
    :pswitch_0
    invoke-static {v3}, Lcom/yyw/ts70xhw/Iop;->EqmSet(I)I

    goto :goto_1

    .line 405
    :pswitch_1
    invoke-static {v4}, Lcom/yyw/ts70xhw/Iop;->EqmSet(I)I

    goto :goto_1

    .line 409
    :pswitch_2
    const/4 v2, 0x2

    invoke-static {v2}, Lcom/yyw/ts70xhw/Iop;->EqmSet(I)I

    goto :goto_1

    .line 413
    :pswitch_3
    const/4 v2, 0x3

    invoke-static {v2}, Lcom/yyw/ts70xhw/Iop;->EqmSet(I)I

    goto :goto_1

    .line 417
    :pswitch_4
    const/4 v2, 0x4

    invoke-static {v2}, Lcom/yyw/ts70xhw/Iop;->EqmSet(I)I

    goto :goto_1

    .line 421
    :pswitch_5
    const/4 v2, 0x5

    invoke-static {v2}, Lcom/yyw/ts70xhw/Iop;->EqmSet(I)I

    goto :goto_1

    .line 398
    :pswitch_data_0
    .packed-switch 0x500
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 117
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 118
    sget v0, Lcom/ts/MainUI/R$layout;->set_relative_layout:I

    invoke-virtual {p0, v0}, Lcom/ts/set/SettingSoundActivity;->setContentView(I)V

    .line 120
    invoke-virtual {p0}, Lcom/ts/set/SettingSoundActivity;->InitUI()V

    .line 122
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 207
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 208
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 209
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 194
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 195
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 196
    invoke-direct {p0}, Lcom/ts/set/SettingSoundActivity;->ResetData()V

    .line 197
    iget-object v0, p0, Lcom/ts/set/SettingSoundActivity;->mSwExamp:Landroid/widget/Switch;

    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetExAmp()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/ts/set/SettingSoundActivity;->SetCheck(Landroid/widget/Switch;I)V

    .line 201
    return-void
.end method

.method resetFb()V
    .locals 3

    .prologue
    .line 478
    iget v0, p0, Lcom/ts/set/SettingSoundActivity;->mFad:I

    invoke-static {}, Lcom/yyw/ts70xhw/Iop;->GetFad()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/ts/set/SettingSoundActivity;->mBal:I

    invoke-static {}, Lcom/yyw/ts70xhw/Iop;->GetBal()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 479
    :cond_0
    invoke-static {}, Lcom/yyw/ts70xhw/Iop;->GetFad()I

    move-result v0

    iput v0, p0, Lcom/ts/set/SettingSoundActivity;->mFad:I

    .line 480
    invoke-static {}, Lcom/yyw/ts70xhw/Iop;->GetBal()I

    move-result v0

    iput v0, p0, Lcom/ts/set/SettingSoundActivity;->mBal:I

    .line 481
    iget-object v0, p0, Lcom/ts/set/SettingSoundActivity;->mFbView:Lcom/ts/set/setview/SettingBalanceView;

    iget v1, p0, Lcom/ts/set/SettingSoundActivity;->mFad:I

    iget v2, p0, Lcom/ts/set/SettingSoundActivity;->mBal:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/set/setview/SettingBalanceView;->setBalance(II)V

    .line 483
    :cond_1
    const-string v0, "SettingBalanceActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fad = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/ts/set/SettingSoundActivity;->mFad:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Bal = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ts/set/SettingSoundActivity;->mBal:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    return-void
.end method

.method resetLud()V
    .locals 0

    .prologue
    .line 455
    return-void
.end method

.method resetSub()V
    .locals 0

    .prologue
    .line 462
    return-void
.end method
